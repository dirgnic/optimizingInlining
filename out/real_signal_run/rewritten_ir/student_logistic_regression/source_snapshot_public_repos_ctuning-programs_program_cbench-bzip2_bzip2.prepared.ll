; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/bzip2.c'
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
  %call = call ptr @signal(i32 noundef 11, ptr noundef @mySIGSEGVorSIGBUScatcher)
  %call1 = call ptr @signal(i32 noundef 10, ptr noundef @mySIGSEGVorSIGBUScatcher)
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.6)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6)
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @copyFileName(ptr noundef @progNameReally, ptr noundef %1)
  store ptr @progNameReally, ptr @progName, align 8
  store ptr @progNameReally, ptr %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %tmp, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %tmp, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %tmp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr, ptr @progName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %tmp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %argList, align 8
  call void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef @.str.7)
  call void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef @.str.8)
  store i32 1, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %9, 1
  %cmp7 = icmp sle i32 %8, %sub
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %10 = load ptr, ptr %argList, align 8
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx10, align 8
  %call11 = call ptr @snocString(ptr noundef %10, ptr noundef %13)
  store ptr %call11, ptr %argList, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end13:                                        ; preds = %for.cond6
  store i32 7, ptr @longestFileName, align 4
  store i32 0, ptr @numFileNames, align 4
  store i8 1, ptr %decode, align 1
  %15 = load ptr, ptr %argList, align 8
  store ptr %15, ptr %aa, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %for.end13
  %16 = load ptr, ptr %aa, align 8
  %cmp15 = icmp ne ptr %16, null
  br i1 %cmp15, label %for.body17, label %for.end43

for.body17:                                       ; preds = %for.cond14
  %17 = load ptr, ptr %aa, align 8
  %name = getelementptr inbounds %struct.zzzz, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %name, align 8
  %call18 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.9)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body17
  store i8 0, ptr %decode, align 1
  br label %for.inc42

if.end22:                                         ; preds = %for.body17
  %19 = load ptr, ptr %aa, align 8
  %name23 = getelementptr inbounds %struct.zzzz, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %name23, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %21 to i32
  %cmp26 = icmp eq i32 %conv25, 45
  br i1 %cmp26, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %22 = load i8, ptr %decode, align 1
  %conv28 = zext i8 %22 to i32
  %tobool = icmp ne i32 %conv28, 0
  br i1 %tobool, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  br label %for.inc42

if.end30:                                         ; preds = %land.lhs.true, %if.end22
  %23 = load i32, ptr @numFileNames, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, ptr @numFileNames, align 4
  %24 = load i32, ptr @longestFileName, align 4
  %25 = load ptr, ptr %aa, align 8
  %name32 = getelementptr inbounds %struct.zzzz, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %name32, align 8
  %call33 = call i64 @strlen(ptr noundef %26)
  %conv34 = trunc i64 %call33 to i32
  %cmp35 = icmp slt i32 %24, %conv34
  br i1 %cmp35, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end30
  %27 = load ptr, ptr %aa, align 8
  %name38 = getelementptr inbounds %struct.zzzz, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %name38, align 8
  %call39 = call i64 @strlen(ptr noundef %28)
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, ptr @longestFileName, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end30
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41, %if.then29, %if.then21
  %29 = load ptr, ptr %aa, align 8
  %link = getelementptr inbounds %struct.zzzz, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %link, align 8
  store ptr %30, ptr %aa, align 8
  br label %for.cond14, !llvm.loop !9

for.end43:                                        ; preds = %for.cond14
  %31 = load i32, ptr @numFileNames, align 4
  %cmp44 = icmp eq i32 %31, 0
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end43
  store i32 1, ptr @srcMode, align 4
  br label %if.end47

if.else:                                          ; preds = %for.end43
  store i32 3, ptr @srcMode, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then46
  store i32 1, ptr @opMode, align 4
  %32 = load ptr, ptr @progName, align 8
  %call48 = call ptr @strstr(ptr noundef %32, ptr noundef @.str.10)
  %cmp49 = icmp ne ptr %call48, null
  br i1 %cmp49, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %33 = load ptr, ptr @progName, align 8
  %call51 = call ptr @strstr(ptr noundef %33, ptr noundef @.str.11)
  %cmp52 = icmp ne ptr %call51, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false, %if.end47
  store i32 2, ptr @opMode, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %lor.lhs.false
  %34 = load ptr, ptr @progName, align 8
  %call56 = call ptr @strstr(ptr noundef %34, ptr noundef @.str.12)
  %cmp57 = icmp ne ptr %call56, null
  br i1 %cmp57, label %if.then71, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end55
  %35 = load ptr, ptr @progName, align 8
  %call60 = call ptr @strstr(ptr noundef %35, ptr noundef @.str.13)
  %cmp61 = icmp ne ptr %call60, null
  br i1 %cmp61, label %if.then71, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %36 = load ptr, ptr @progName, align 8
  %call64 = call ptr @strstr(ptr noundef %36, ptr noundef @.str.14)
  %cmp65 = icmp ne ptr %call64, null
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %37 = load ptr, ptr @progName, align 8
  %call68 = call ptr @strstr(ptr noundef %37, ptr noundef @.str.15)
  %cmp69 = icmp ne ptr %call68, null
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %lor.lhs.false67, %lor.lhs.false63, %lor.lhs.false59, %if.end55
  store i32 2, ptr @opMode, align 4
  %38 = load i32, ptr @numFileNames, align 4
  %cmp72 = icmp eq i32 %38, 0
  %39 = zext i1 %cmp72 to i64
  %cond = select i1 %cmp72, i32 1, i32 2
  store i32 %cond, ptr @srcMode, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %lor.lhs.false67
  %40 = load ptr, ptr %argList, align 8
  store ptr %40, ptr %aa, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc135, %if.end74
  %41 = load ptr, ptr %aa, align 8
  %cmp76 = icmp ne ptr %41, null
  br i1 %cmp76, label %for.body78, label %for.end137

for.body78:                                       ; preds = %for.cond75
  %42 = load ptr, ptr %aa, align 8
  %name79 = getelementptr inbounds %struct.zzzz, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %name79, align 8
  %call80 = call i32 @strcmp(ptr noundef %43, ptr noundef @.str.9)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body78
  br label %for.end137

if.end84:                                         ; preds = %for.body78
  %44 = load ptr, ptr %aa, align 8
  %name85 = getelementptr inbounds %struct.zzzz, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %name85, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %46 to i32
  %cmp88 = icmp eq i32 %conv87, 45
  br i1 %cmp88, label %land.lhs.true90, label %if.end134

land.lhs.true90:                                  ; preds = %if.end84
  %47 = load ptr, ptr %aa, align 8
  %name91 = getelementptr inbounds %struct.zzzz, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %name91, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx92, align 1
  %conv93 = sext i8 %49 to i32
  %cmp94 = icmp ne i32 %conv93, 45
  br i1 %cmp94, label %if.then96, label %if.end134

if.then96:                                        ; preds = %land.lhs.true90
  store i32 1, ptr %j, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc131, %if.then96
  %50 = load ptr, ptr %aa, align 8
  %name98 = getelementptr inbounds %struct.zzzz, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %name98, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %51, i64 %idxprom99
  %53 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %53 to i32
  %cmp102 = icmp ne i32 %conv101, 0
  br i1 %cmp102, label %for.body104, label %for.end133

for.body104:                                      ; preds = %for.cond97
  %54 = load ptr, ptr %aa, align 8
  %name105 = getelementptr inbounds %struct.zzzz, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %name105, align 8
  %56 = load i32, ptr %j, align 4
  %idxprom106 = sext i32 %56 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %55, i64 %idxprom106
  %57 = load i8, ptr %arrayidx107, align 1
  %conv108 = sext i8 %57 to i32
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
  br label %sw.epilog

sw.bb109:                                         ; preds = %for.body104
  store i32 2, ptr @opMode, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %for.body104
  store i32 1, ptr @opMode, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.body104
  store i8 1, ptr @forceOverwrite, align 1
  br label %sw.epilog

sw.bb112:                                         ; preds = %for.body104
  store i32 3, ptr @opMode, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %for.body104
  store i8 1, ptr @keepInputFiles, align 1
  br label %sw.epilog

sw.bb114:                                         ; preds = %for.body104
  store i8 1, ptr @smallMode, align 1
  br label %sw.epilog

sw.bb115:                                         ; preds = %for.body104
  store i8 0, ptr @noisy, align 1
  br label %sw.epilog

sw.bb116:                                         ; preds = %for.body104
  store i32 1, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb117:                                         ; preds = %for.body104
  store i32 2, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %for.body104
  store i32 3, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %for.body104
  store i32 4, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %for.body104
  store i32 5, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb121:                                         ; preds = %for.body104
  store i32 6, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb122:                                         ; preds = %for.body104
  store i32 7, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %for.body104
  store i32 8, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %for.body104
  store i32 9, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb125:                                         ; preds = %for.body104, %for.body104
  call void @license()
  br label %sw.epilog

sw.bb126:                                         ; preds = %for.body104
  %58 = load i32, ptr @verbosity, align 4
  %inc127 = add nsw i32 %58, 1
  store i32 %inc127, ptr @verbosity, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %for.body104
  %59 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %59)
  call void @exit(i32 noundef 0) #10
  unreachable

sw.default:                                       ; preds = %for.body104
  %60 = load ptr, ptr @__stderrp, align 8
  %61 = load ptr, ptr @progName, align 8
  %62 = load ptr, ptr %aa, align 8
  %name129 = getelementptr inbounds %struct.zzzz, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %name129, align 8
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.16, ptr noundef %61, ptr noundef %63)
  %64 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %64)
  call void @exit(i32 noundef 1) #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb
  br label %for.inc131

for.inc131:                                       ; preds = %sw.epilog
  %65 = load i32, ptr %j, align 4
  %inc132 = add nsw i32 %65, 1
  store i32 %inc132, ptr %j, align 4
  br label %for.cond97, !llvm.loop !10

for.end133:                                       ; preds = %for.cond97
  br label %if.end134

if.end134:                                        ; preds = %for.end133, %land.lhs.true90, %if.end84
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %66 = load ptr, ptr %aa, align 8
  %link136 = getelementptr inbounds %struct.zzzz, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %link136, align 8
  store ptr %67, ptr %aa, align 8
  br label %for.cond75, !llvm.loop !11

for.end137:                                       ; preds = %if.then83, %for.cond75
  %68 = load ptr, ptr %argList, align 8
  store ptr %68, ptr %aa, align 8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc278, %for.end137
  %69 = load ptr, ptr %aa, align 8
  %cmp139 = icmp ne ptr %69, null
  br i1 %cmp139, label %for.body141, label %for.end280

for.body141:                                      ; preds = %for.cond138
  %70 = load ptr, ptr %aa, align 8
  %name142 = getelementptr inbounds %struct.zzzz, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %name142, align 8
  %call143 = call i32 @strcmp(ptr noundef %71, ptr noundef @.str.9)
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %for.body141
  br label %for.end280

if.end147:                                        ; preds = %for.body141
  %72 = load ptr, ptr %aa, align 8
  %name148 = getelementptr inbounds %struct.zzzz, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %name148, align 8
  %call149 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.17)
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %if.end147
  store i32 2, ptr @srcMode, align 4
  br label %if.end277

if.else153:                                       ; preds = %if.end147
  %74 = load ptr, ptr %aa, align 8
  %name154 = getelementptr inbounds %struct.zzzz, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %name154, align 8
  %call155 = call i32 @strcmp(ptr noundef %75, ptr noundef @.str.18)
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.else153
  store i32 2, ptr @opMode, align 4
  br label %if.end276

if.else159:                                       ; preds = %if.else153
  %76 = load ptr, ptr %aa, align 8
  %name160 = getelementptr inbounds %struct.zzzz, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %name160, align 8
  %call161 = call i32 @strcmp(ptr noundef %77, ptr noundef @.str.19)
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else159
  store i32 1, ptr @opMode, align 4
  br label %if.end275

if.else165:                                       ; preds = %if.else159
  %78 = load ptr, ptr %aa, align 8
  %name166 = getelementptr inbounds %struct.zzzz, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %name166, align 8
  %call167 = call i32 @strcmp(ptr noundef %79, ptr noundef @.str.20)
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %if.else165
  store i8 1, ptr @forceOverwrite, align 1
  br label %if.end274

if.else171:                                       ; preds = %if.else165
  %80 = load ptr, ptr %aa, align 8
  %name172 = getelementptr inbounds %struct.zzzz, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %name172, align 8
  %call173 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.21)
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.else171
  store i32 3, ptr @opMode, align 4
  br label %if.end273

if.else177:                                       ; preds = %if.else171
  %82 = load ptr, ptr %aa, align 8
  %name178 = getelementptr inbounds %struct.zzzz, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %name178, align 8
  %call179 = call i32 @strcmp(ptr noundef %83, ptr noundef @.str.22)
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.else183

if.then182:                                       ; preds = %if.else177
  store i8 1, ptr @keepInputFiles, align 1
  br label %if.end272

if.else183:                                       ; preds = %if.else177
  %84 = load ptr, ptr %aa, align 8
  %name184 = getelementptr inbounds %struct.zzzz, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %name184, align 8
  %call185 = call i32 @strcmp(ptr noundef %85, ptr noundef @.str.23)
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %if.else183
  store i8 1, ptr @smallMode, align 1
  br label %if.end271

if.else189:                                       ; preds = %if.else183
  %86 = load ptr, ptr %aa, align 8
  %name190 = getelementptr inbounds %struct.zzzz, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %name190, align 8
  %call191 = call i32 @strcmp(ptr noundef %87, ptr noundef @.str.24)
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.else195

if.then194:                                       ; preds = %if.else189
  store i8 0, ptr @noisy, align 1
  br label %if.end270

if.else195:                                       ; preds = %if.else189
  %88 = load ptr, ptr %aa, align 8
  %name196 = getelementptr inbounds %struct.zzzz, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %name196, align 8
  %call197 = call i32 @strcmp(ptr noundef %89, ptr noundef @.str.25)
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %if.else195
  call void @license()
  br label %if.end269

if.else201:                                       ; preds = %if.else195
  %90 = load ptr, ptr %aa, align 8
  %name202 = getelementptr inbounds %struct.zzzz, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %name202, align 8
  %call203 = call i32 @strcmp(ptr noundef %91, ptr noundef @.str.26)
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.else207

if.then206:                                       ; preds = %if.else201
  call void @license()
  br label %if.end268

if.else207:                                       ; preds = %if.else201
  %92 = load ptr, ptr %aa, align 8
  %name208 = getelementptr inbounds %struct.zzzz, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %name208, align 8
  %call209 = call i32 @strcmp(ptr noundef %93, ptr noundef @.str.27)
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.else213

if.then212:                                       ; preds = %if.else207
  store i32 1, ptr @workFactor, align 4
  br label %if.end267

if.else213:                                       ; preds = %if.else207
  %94 = load ptr, ptr %aa, align 8
  %name214 = getelementptr inbounds %struct.zzzz, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %name214, align 8
  %call215 = call i32 @strcmp(ptr noundef %95, ptr noundef @.str.28)
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then218, label %if.else220

if.then218:                                       ; preds = %if.else213
  %96 = load ptr, ptr %aa, align 8
  %name219 = getelementptr inbounds %struct.zzzz, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %name219, align 8
  call void @redundant(ptr noundef %97)
  br label %if.end266

if.else220:                                       ; preds = %if.else213
  %98 = load ptr, ptr %aa, align 8
  %name221 = getelementptr inbounds %struct.zzzz, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %name221, align 8
  %call222 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.29)
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.else227

if.then225:                                       ; preds = %if.else220
  %100 = load ptr, ptr %aa, align 8
  %name226 = getelementptr inbounds %struct.zzzz, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %name226, align 8
  call void @redundant(ptr noundef %101)
  br label %if.end265

if.else227:                                       ; preds = %if.else220
  %102 = load ptr, ptr %aa, align 8
  %name228 = getelementptr inbounds %struct.zzzz, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %name228, align 8
  %call229 = call i32 @strcmp(ptr noundef %103, ptr noundef @.str.30)
  %cmp230 = icmp eq i32 %call229, 0
  br i1 %cmp230, label %if.then232, label %if.else233

if.then232:                                       ; preds = %if.else227
  store i32 1, ptr @blockSize100k, align 4
  br label %if.end264

if.else233:                                       ; preds = %if.else227
  %104 = load ptr, ptr %aa, align 8
  %name234 = getelementptr inbounds %struct.zzzz, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %name234, align 8
  %call235 = call i32 @strcmp(ptr noundef %105, ptr noundef @.str.31)
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.else233
  store i32 9, ptr @blockSize100k, align 4
  br label %if.end263

if.else239:                                       ; preds = %if.else233
  %106 = load ptr, ptr %aa, align 8
  %name240 = getelementptr inbounds %struct.zzzz, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %name240, align 8
  %call241 = call i32 @strcmp(ptr noundef %107, ptr noundef @.str.32)
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %if.else239
  %108 = load i32, ptr @verbosity, align 4
  %inc245 = add nsw i32 %108, 1
  store i32 %inc245, ptr @verbosity, align 4
  br label %if.end262

if.else246:                                       ; preds = %if.else239
  %109 = load ptr, ptr %aa, align 8
  %name247 = getelementptr inbounds %struct.zzzz, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %name247, align 8
  %call248 = call i32 @strcmp(ptr noundef %110, ptr noundef @.str.33)
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.else252

if.then251:                                       ; preds = %if.else246
  %111 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %111)
  call void @exit(i32 noundef 0) #10
  unreachable

if.else252:                                       ; preds = %if.else246
  %112 = load ptr, ptr %aa, align 8
  %name253 = getelementptr inbounds %struct.zzzz, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %name253, align 8
  %call254 = call i32 @strncmp(ptr noundef %113, ptr noundef @.str.9, i64 noundef 2)
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.end260

if.then257:                                       ; preds = %if.else252
  %114 = load ptr, ptr @__stderrp, align 8
  %115 = load ptr, ptr @progName, align 8
  %116 = load ptr, ptr %aa, align 8
  %name258 = getelementptr inbounds %struct.zzzz, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %name258, align 8
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.16, ptr noundef %115, ptr noundef %117)
  %118 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %118)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end260:                                        ; preds = %if.else252
  br label %if.end261

if.end261:                                        ; preds = %if.end260
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then244
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.then238
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.then232
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then225
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.then218
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then212
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then206
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then200
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.then194
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.then188
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.then182
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.then176
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then170
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.then164
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.then158
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then152
  br label %for.inc278

for.inc278:                                       ; preds = %if.end277
  %119 = load ptr, ptr %aa, align 8
  %link279 = getelementptr inbounds %struct.zzzz, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %link279, align 8
  store ptr %120, ptr %aa, align 8
  br label %for.cond138, !llvm.loop !12

for.end280:                                       ; preds = %if.then146, %for.cond138
  %121 = load i32, ptr @verbosity, align 4
  %cmp281 = icmp sgt i32 %121, 4
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %for.end280
  store i32 4, ptr @verbosity, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %for.end280
  %122 = load i32, ptr @opMode, align 4
  %cmp285 = icmp eq i32 %122, 1
  br i1 %cmp285, label %land.lhs.true287, label %if.end294

land.lhs.true287:                                 ; preds = %if.end284
  %123 = load i8, ptr @smallMode, align 1
  %conv288 = zext i8 %123 to i32
  %tobool289 = icmp ne i32 %conv288, 0
  br i1 %tobool289, label %land.lhs.true290, label %if.end294

land.lhs.true290:                                 ; preds = %land.lhs.true287
  %124 = load i32, ptr @blockSize100k, align 4
  %cmp291 = icmp sgt i32 %124, 2
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %land.lhs.true290
  store i32 2, ptr @blockSize100k, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then293, %land.lhs.true290, %land.lhs.true287, %if.end284
  %125 = load i32, ptr @opMode, align 4
  %cmp295 = icmp eq i32 %125, 3
  br i1 %cmp295, label %land.lhs.true297, label %if.end302

land.lhs.true297:                                 ; preds = %if.end294
  %126 = load i32, ptr @srcMode, align 4
  %cmp298 = icmp eq i32 %126, 2
  br i1 %cmp298, label %if.then300, label %if.end302

if.then300:                                       ; preds = %land.lhs.true297
  %127 = load ptr, ptr @__stderrp, align 8
  %128 = load ptr, ptr @progName, align 8
  %call301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.34, ptr noundef %128)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end302:                                        ; preds = %land.lhs.true297, %if.end294
  %129 = load i32, ptr @srcMode, align 4
  %cmp303 = icmp eq i32 %129, 2
  br i1 %cmp303, label %land.lhs.true305, label %if.end309

land.lhs.true305:                                 ; preds = %if.end302
  %130 = load i32, ptr @numFileNames, align 4
  %cmp306 = icmp eq i32 %130, 0
  br i1 %cmp306, label %if.then308, label %if.end309

if.then308:                                       ; preds = %land.lhs.true305
  store i32 1, ptr @srcMode, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then308, %land.lhs.true305, %if.end302
  %131 = load i32, ptr @opMode, align 4
  %cmp310 = icmp ne i32 %131, 1
  br i1 %cmp310, label %if.then312, label %if.end313

if.then312:                                       ; preds = %if.end309
  store i32 0, ptr @blockSize100k, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.end309
  %132 = load i32, ptr @srcMode, align 4
  %cmp314 = icmp eq i32 %132, 3
  br i1 %cmp314, label %if.then316, label %if.end320

if.then316:                                       ; preds = %if.end313
  %call317 = call ptr @signal(i32 noundef 2, ptr noundef @mySignalCatcher)
  %call318 = call ptr @signal(i32 noundef 15, ptr noundef @mySignalCatcher)
  %call319 = call ptr @signal(i32 noundef 1, ptr noundef @mySignalCatcher)
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %if.end313
  %133 = load i32, ptr @opMode, align 4
  %cmp321 = icmp eq i32 %133, 1
  br i1 %cmp321, label %if.then323, label %if.else354

if.then323:                                       ; preds = %if.end320
  %134 = load i32, ptr @srcMode, align 4
  %cmp324 = icmp eq i32 %134, 1
  br i1 %cmp324, label %if.then326, label %if.else327

if.then326:                                       ; preds = %if.then323
  call void @compress(ptr noundef null)
  br label %if.end353

if.else327:                                       ; preds = %if.then323
  store i8 1, ptr %decode, align 1
  %135 = load ptr, ptr %argList, align 8
  store ptr %135, ptr %aa, align 8
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc350, %if.else327
  %136 = load ptr, ptr %aa, align 8
  %cmp329 = icmp ne ptr %136, null
  br i1 %cmp329, label %for.body331, label %for.end352

for.body331:                                      ; preds = %for.cond328
  %137 = load ptr, ptr %aa, align 8
  %name332 = getelementptr inbounds %struct.zzzz, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %name332, align 8
  %call333 = call i32 @strcmp(ptr noundef %138, ptr noundef @.str.9)
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then336, label %if.end337

if.then336:                                       ; preds = %for.body331
  store i8 0, ptr %decode, align 1
  br label %for.inc350

if.end337:                                        ; preds = %for.body331
  %139 = load ptr, ptr %aa, align 8
  %name338 = getelementptr inbounds %struct.zzzz, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %name338, align 8
  %arrayidx339 = getelementptr inbounds i8, ptr %140, i64 0
  %141 = load i8, ptr %arrayidx339, align 1
  %conv340 = sext i8 %141 to i32
  %cmp341 = icmp eq i32 %conv340, 45
  br i1 %cmp341, label %land.lhs.true343, label %if.end347

land.lhs.true343:                                 ; preds = %if.end337
  %142 = load i8, ptr %decode, align 1
  %conv344 = zext i8 %142 to i32
  %tobool345 = icmp ne i32 %conv344, 0
  br i1 %tobool345, label %if.then346, label %if.end347

if.then346:                                       ; preds = %land.lhs.true343
  br label %for.inc350

if.end347:                                        ; preds = %land.lhs.true343, %if.end337
  %143 = load i32, ptr @numFilesProcessed, align 4
  %inc348 = add nsw i32 %143, 1
  store i32 %inc348, ptr @numFilesProcessed, align 4
  %144 = load ptr, ptr %aa, align 8
  %name349 = getelementptr inbounds %struct.zzzz, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %name349, align 8
  call void @compress(ptr noundef %145)
  br label %for.inc350

for.inc350:                                       ; preds = %if.end347, %if.then346, %if.then336
  %146 = load ptr, ptr %aa, align 8
  %link351 = getelementptr inbounds %struct.zzzz, ptr %146, i32 0, i32 1
  %147 = load ptr, ptr %link351, align 8
  store ptr %147, ptr %aa, align 8
  br label %for.cond328, !llvm.loop !13

for.end352:                                       ; preds = %for.cond328
  br label %if.end353

if.end353:                                        ; preds = %for.end352, %if.then326
  br label %if.end431

if.else354:                                       ; preds = %if.end320
  %148 = load i32, ptr @opMode, align 4
  %cmp355 = icmp eq i32 %148, 2
  br i1 %cmp355, label %if.then357, label %if.else391

if.then357:                                       ; preds = %if.else354
  store i8 0, ptr @unzFailsExist, align 1
  %149 = load i32, ptr @srcMode, align 4
  %cmp358 = icmp eq i32 %149, 1
  br i1 %cmp358, label %if.then360, label %if.else361

if.then360:                                       ; preds = %if.then357
  call void @uncompress(ptr noundef null)
  br label %if.end387

if.else361:                                       ; preds = %if.then357
  store i8 1, ptr %decode, align 1
  %150 = load ptr, ptr %argList, align 8
  store ptr %150, ptr %aa, align 8
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc384, %if.else361
  %151 = load ptr, ptr %aa, align 8
  %cmp363 = icmp ne ptr %151, null
  br i1 %cmp363, label %for.body365, label %for.end386

for.body365:                                      ; preds = %for.cond362
  %152 = load ptr, ptr %aa, align 8
  %name366 = getelementptr inbounds %struct.zzzz, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %name366, align 8
  %call367 = call i32 @strcmp(ptr noundef %153, ptr noundef @.str.9)
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end371

if.then370:                                       ; preds = %for.body365
  store i8 0, ptr %decode, align 1
  br label %for.inc384

if.end371:                                        ; preds = %for.body365
  %154 = load ptr, ptr %aa, align 8
  %name372 = getelementptr inbounds %struct.zzzz, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %name372, align 8
  %arrayidx373 = getelementptr inbounds i8, ptr %155, i64 0
  %156 = load i8, ptr %arrayidx373, align 1
  %conv374 = sext i8 %156 to i32
  %cmp375 = icmp eq i32 %conv374, 45
  br i1 %cmp375, label %land.lhs.true377, label %if.end381

land.lhs.true377:                                 ; preds = %if.end371
  %157 = load i8, ptr %decode, align 1
  %conv378 = zext i8 %157 to i32
  %tobool379 = icmp ne i32 %conv378, 0
  br i1 %tobool379, label %if.then380, label %if.end381

if.then380:                                       ; preds = %land.lhs.true377
  br label %for.inc384

if.end381:                                        ; preds = %land.lhs.true377, %if.end371
  %158 = load i32, ptr @numFilesProcessed, align 4
  %inc382 = add nsw i32 %158, 1
  store i32 %inc382, ptr @numFilesProcessed, align 4
  %159 = load ptr, ptr %aa, align 8
  %name383 = getelementptr inbounds %struct.zzzz, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %name383, align 8
  call void @uncompress(ptr noundef %160)
  br label %for.inc384

for.inc384:                                       ; preds = %if.end381, %if.then380, %if.then370
  %161 = load ptr, ptr %aa, align 8
  %link385 = getelementptr inbounds %struct.zzzz, ptr %161, i32 0, i32 1
  %162 = load ptr, ptr %link385, align 8
  store ptr %162, ptr %aa, align 8
  br label %for.cond362, !llvm.loop !14

for.end386:                                       ; preds = %for.cond362
  br label %if.end387

if.end387:                                        ; preds = %for.end386, %if.then360
  %163 = load i8, ptr @unzFailsExist, align 1
  %tobool388 = icmp ne i8 %163, 0
  br i1 %tobool388, label %if.then389, label %if.end390

if.then389:                                       ; preds = %if.end387
  call void @setExit(i32 noundef 2)
  %164 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %164) #10
  unreachable

if.end390:                                        ; preds = %if.end387
  br label %if.end430

if.else391:                                       ; preds = %if.else354
  store i8 0, ptr @testFailsExist, align 1
  %165 = load i32, ptr @srcMode, align 4
  %cmp392 = icmp eq i32 %165, 1
  br i1 %cmp392, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.else391
  call void @testf(ptr noundef null)
  br label %if.end421

if.else395:                                       ; preds = %if.else391
  store i8 1, ptr %decode, align 1
  %166 = load ptr, ptr %argList, align 8
  store ptr %166, ptr %aa, align 8
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc418, %if.else395
  %167 = load ptr, ptr %aa, align 8
  %cmp397 = icmp ne ptr %167, null
  br i1 %cmp397, label %for.body399, label %for.end420

for.body399:                                      ; preds = %for.cond396
  %168 = load ptr, ptr %aa, align 8
  %name400 = getelementptr inbounds %struct.zzzz, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %name400, align 8
  %call401 = call i32 @strcmp(ptr noundef %169, ptr noundef @.str.9)
  %cmp402 = icmp eq i32 %call401, 0
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %for.body399
  store i8 0, ptr %decode, align 1
  br label %for.inc418

if.end405:                                        ; preds = %for.body399
  %170 = load ptr, ptr %aa, align 8
  %name406 = getelementptr inbounds %struct.zzzz, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %name406, align 8
  %arrayidx407 = getelementptr inbounds i8, ptr %171, i64 0
  %172 = load i8, ptr %arrayidx407, align 1
  %conv408 = sext i8 %172 to i32
  %cmp409 = icmp eq i32 %conv408, 45
  br i1 %cmp409, label %land.lhs.true411, label %if.end415

land.lhs.true411:                                 ; preds = %if.end405
  %173 = load i8, ptr %decode, align 1
  %conv412 = zext i8 %173 to i32
  %tobool413 = icmp ne i32 %conv412, 0
  br i1 %tobool413, label %if.then414, label %if.end415

if.then414:                                       ; preds = %land.lhs.true411
  br label %for.inc418

if.end415:                                        ; preds = %land.lhs.true411, %if.end405
  %174 = load i32, ptr @numFilesProcessed, align 4
  %inc416 = add nsw i32 %174, 1
  store i32 %inc416, ptr @numFilesProcessed, align 4
  %175 = load ptr, ptr %aa, align 8
  %name417 = getelementptr inbounds %struct.zzzz, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %name417, align 8
  call void @testf(ptr noundef %176)
  br label %for.inc418

for.inc418:                                       ; preds = %if.end415, %if.then414, %if.then404
  %177 = load ptr, ptr %aa, align 8
  %link419 = getelementptr inbounds %struct.zzzz, ptr %177, i32 0, i32 1
  %178 = load ptr, ptr %link419, align 8
  store ptr %178, ptr %aa, align 8
  br label %for.cond396, !llvm.loop !15

for.end420:                                       ; preds = %for.cond396
  br label %if.end421

if.end421:                                        ; preds = %for.end420, %if.then394
  %179 = load i8, ptr @testFailsExist, align 1
  %conv422 = zext i8 %179 to i32
  %tobool423 = icmp ne i32 %conv422, 0
  br i1 %tobool423, label %land.lhs.true424, label %if.end429

land.lhs.true424:                                 ; preds = %if.end421
  %180 = load i8, ptr @noisy, align 1
  %conv425 = zext i8 %180 to i32
  %tobool426 = icmp ne i32 %conv425, 0
  br i1 %tobool426, label %if.then427, label %if.end429

if.then427:                                       ; preds = %land.lhs.true424
  %181 = load ptr, ptr @__stderrp, align 8
  %call428 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str.35)
  call void @setExit(i32 noundef 2)
  %182 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %182) #10
  unreachable

if.end429:                                        ; preds = %land.lhs.true424, %if.end421
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %if.end390
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.end353
  %183 = load ptr, ptr %argList, align 8
  store ptr %183, ptr %aa, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end440, %if.end431
  %184 = load ptr, ptr %aa, align 8
  %cmp432 = icmp ne ptr %184, null
  br i1 %cmp432, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %185 = load ptr, ptr %aa, align 8
  %link434 = getelementptr inbounds %struct.zzzz, ptr %185, i32 0, i32 1
  %186 = load ptr, ptr %link434, align 8
  store ptr %186, ptr %aa2, align 8
  %187 = load ptr, ptr %aa, align 8
  %name435 = getelementptr inbounds %struct.zzzz, ptr %187, i32 0, i32 0
  %188 = load ptr, ptr %name435, align 8
  %cmp436 = icmp ne ptr %188, null
  br i1 %cmp436, label %if.then438, label %if.end440

if.then438:                                       ; preds = %while.body
  %189 = load ptr, ptr %aa, align 8
  %name439 = getelementptr inbounds %struct.zzzz, ptr %189, i32 0, i32 0
  %190 = load ptr, ptr %name439, align 8
  call void @free(ptr noundef %190)
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %while.body
  %191 = load ptr, ptr %aa, align 8
  call void @free(ptr noundef %191)
  %192 = load ptr, ptr %aa2, align 8
  store ptr %192, ptr %aa, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %193 = load i32, ptr @exitValue, align 4
  ret i32 %193
}

declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr @opMode, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.36, ptr noundef %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %4 = load ptr, ptr @progName, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.37, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @showFileNames()
  %5 = load i32, ptr @opMode, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @cleanUpAndFail(i32 noundef 3) #10
  unreachable

if.else4:                                         ; preds = %if.end
  call void @cadvise()
  call void @cleanUpAndFail(i32 noundef 2) #10
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @copyFileName(ptr noundef %to, ptr noundef %from) #0 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  store ptr %from, ptr %from.addr, align 8
  %0 = load ptr, ptr %from.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %cmp = icmp ugt i64 %call, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %from.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.47, ptr noundef %2, i32 noundef 1024)
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_0(i32 noundef 1)
  %3 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %3) #10
  unreachable

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %to.addr, align 8
  %5 = load ptr, ptr %from.addr, align 8
  %6 = load ptr, ptr %to.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call2 = call ptr @__strncpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef 1024, i64 noundef %7) #11
  %8 = load ptr, ptr %to.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 1024
  store i8 0, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef %varName) #0 {
entry:
  %argList.addr = alloca ptr, align 8
  %varName.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %envbase = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %argList, ptr %argList.addr, align 8
  store ptr %varName, ptr %varName.addr, align 8
  %0 = load ptr, ptr %varName.addr, align 8
  %call = call ptr @getenv(ptr noundef %0)
  store ptr %call, ptr %envbase, align 8
  %1 = load ptr, ptr %envbase, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %envbase, align 8
  store ptr %2, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end39
  %3 = load ptr, ptr %p, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body
  br label %while.end40

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body8, %if.end
  %8 = load ptr, ptr %p, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %call7 = call i32 @isspace(i32 noundef %conv6) #12
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %while.body8, label %while.end

while.body8:                                      ; preds = %while.cond4
  %10 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond4, !llvm.loop !17

while.end:                                        ; preds = %while.cond4
  br label %while.cond9

while.cond9:                                      ; preds = %while.body20, %while.end
  %11 = load ptr, ptr %p, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom10
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond9
  %14 = load ptr, ptr %p, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i64 %idxprom15
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %16 to i32
  %call18 = call i32 @isspace(i32 noundef %conv17) #12
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond9
  %17 = phi i1 [ false, %while.cond9 ], [ %lnot, %land.rhs ]
  br i1 %17, label %while.body20, label %while.end21

while.body20:                                     ; preds = %land.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond9, !llvm.loop !18

while.end21:                                      ; preds = %land.end
  %19 = load i32, ptr %i, align 4
  %cmp22 = icmp sgt i32 %19, 0
  br i1 %cmp22, label %if.then24, label %if.end39

if.then24:                                        ; preds = %while.end21
  %20 = load i32, ptr %i, align 4
  store i32 %20, ptr %k, align 4
  %21 = load i32, ptr %k, align 4
  %cmp25 = icmp sgt i32 %21, 1024
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  store i32 1024, ptr %k, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then24
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %k, align 4
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %p, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 %idxprom31
  %26 = load i8, ptr %arrayidx32, align 1
  %27 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %idxprom33
  store i8 %26, ptr %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %j, align 4
  %inc35 = add nsw i32 %28, 1
  store i32 %inc35, ptr %j, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %k, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %idxprom36
  store i8 0, ptr %arrayidx37, align 1
  %30 = load ptr, ptr %argList.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %call38 = call ptr @snocString(ptr noundef %31, ptr noundef @tmpName)
  %32 = load ptr, ptr %argList.addr, align 8
  store ptr %call38, ptr %32, align 8
  br label %if.end39

if.end39:                                         ; preds = %for.end, %while.end21
  br label %while.body

while.end40:                                      ; preds = %if.then3
  br label %if.end41

if.end41:                                         ; preds = %while.end40, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @snocString(ptr noundef %root, ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @mkCell()
  store ptr %call, ptr %tmp, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1)
  %add = add i64 5, %call1
  %conv = trunc i64 %add to i32
  %call2 = call ptr @myMalloc(i32 noundef %conv)
  %2 = load ptr, ptr %tmp, align 8
  %name3 = getelementptr inbounds %struct.zzzz, ptr %2, i32 0, i32 0
  store ptr %call2, ptr %name3, align 8
  %3 = load ptr, ptr %tmp, align 8
  %name4 = getelementptr inbounds %struct.zzzz, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name4, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load ptr, ptr %tmp, align 8
  %name5 = getelementptr inbounds %struct.zzzz, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %name5, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call6 = call ptr @__strcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %8) #11
  %9 = load ptr, ptr %tmp, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %root.addr, align 8
  store ptr %10, ptr %tmp7, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %11 = load ptr, ptr %tmp7, align 8
  %link = getelementptr inbounds %struct.zzzz, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %link, align 8
  %cmp8 = icmp ne ptr %12, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %tmp7, align 8
  %link10 = getelementptr inbounds %struct.zzzz, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %link10, align 8
  store ptr %14, ptr %tmp7, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %tmp7, align 8
  %link11 = getelementptr inbounds %struct.zzzz, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %link11, align 8
  %17 = load ptr, ptr %name.addr, align 8
  %call12 = call ptr @snocString(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %tmp7, align 8
  %link13 = getelementptr inbounds %struct.zzzz, ptr %18, i32 0, i32 1
  store ptr %call12, ptr %link13, align 8
  %19 = load ptr, ptr %root.addr, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare ptr @strstr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @license() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call ptr @BZ2_bzlibVersion()
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.49, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @usage(ptr noundef %fullProgName) #0 {
entry:
  %fullProgName.addr = alloca ptr, align 8
  store ptr %fullProgName, ptr %fullProgName.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call ptr @BZ2_bzlibVersion()
  %1 = load ptr, ptr %fullProgName.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.50, ptr noundef %call, ptr noundef %1)
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @redundant(ptr noundef %flag) #0 {
entry:
  %flag.addr = alloca ptr, align 8
  store ptr %flag, ptr %flag.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %2 = load ptr, ptr %flag.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.51, ptr noundef %1, ptr noundef %2)
  ret void
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @mySignalCatcher(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.52, ptr noundef %1)
  call void @cleanUpAndFail(i32 noundef 1) #10
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @compress(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %outStr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  %retVal = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %0 = load ptr, ptr %name.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(ptr noundef @.str.53) #10
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %3)
  %4 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @outName, ptr noundef %4)
  %call = call ptr @__strcat_chk(ptr noundef @outName, ptr noundef @.str, i64 noundef 1034) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %5 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %5)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2, %sw.bb
  %call4 = call ptr @__strcpy_chk(ptr noundef @outName, ptr noundef @.str.56, i64 noundef 1034) #11
  store i8 1, ptr @forceOverwrite, align 1
  %6 = load i32, ptr @srcMode, align 4
  %cmp5 = icmp ne i32 %6, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.end13

land.lhs.true6:                                   ; preds = %sw.epilog
  %call7 = call zeroext i8 @containsDubiousChars(ptr noundef @inName)
  %conv = zext i8 %call7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then8, label %if.end13

if.then8:                                         ; preds = %land.lhs.true6
  %7 = load i8, ptr @noisy, align 1
  %tobool9 = icmp ne i8 %7, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr @progName, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.57, ptr noundef %9, ptr noundef @inName)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  call void @setExit(i32 noundef 1)
  br label %return

if.end13:                                         ; preds = %land.lhs.true6, %sw.epilog
  %10 = load i32, ptr @srcMode, align 4
  %cmp14 = icmp ne i32 %10, 1
  br i1 %cmp14, label %land.lhs.true16, label %if.end23

land.lhs.true16:                                  ; preds = %if.end13
  %call17 = call zeroext i8 @fileExists(ptr noundef @inName)
  %tobool18 = icmp ne i8 %call17, 0
  br i1 %tobool18, label %if.end23, label %if.then19

if.then19:                                        ; preds = %land.lhs.true16
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr @progName, align 8
  %call20 = call ptr @__error()
  %13 = load i32, ptr %call20, align 4
  %call21 = call ptr @"\01_strerror"(i32 noundef %13)
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.58, ptr noundef %12, ptr noundef @inName, ptr noundef %call21)
  call void @setExit(i32 noundef 1)
  br label %return

if.end23:                                         ; preds = %land.lhs.true16, %if.end13
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %14 = load i32, ptr %i, align 4
  %cmp24 = icmp slt i32 %14, 4
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %call26 = call zeroext i8 @hasSuffix(ptr noundef @inName, ptr noundef %16)
  %tobool27 = icmp ne i8 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %for.body
  %17 = load i8, ptr @noisy, align 1
  %tobool29 = icmp ne i8 %17, 0
  br i1 %tobool29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.then28
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = load ptr, ptr @progName, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom31
  %21 = load ptr, ptr %arrayidx32, align 8
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.59, ptr noundef %19, ptr noundef @inName, ptr noundef %21)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then28
  call void @setExit(i32 noundef 1)
  br label %return

if.end35:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr @srcMode, align 4
  %cmp36 = icmp eq i32 %23, 3
  br i1 %cmp36, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i32, ptr @srcMode, align 4
  %cmp38 = icmp eq i32 %24, 2
  br i1 %cmp38, label %if.then40, label %if.end48

if.then40:                                        ; preds = %lor.lhs.false, %for.end
  %call41 = call i32 @"\01_stat"(ptr noundef @inName, ptr noundef %statBuf)
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i32 0, i32 1
  %25 = load i16, ptr %st_mode, align 4
  %conv42 = zext i16 %25 to i32
  %and = and i32 %conv42, 61440
  %cmp43 = icmp eq i32 %and, 16384
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then40
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = load ptr, ptr @progName, align 8
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.60, ptr noundef %27, ptr noundef @inName)
  call void @setExit(i32 noundef 1)
  br label %return

if.end47:                                         ; preds = %if.then40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %lor.lhs.false
  %28 = load i32, ptr @srcMode, align 4
  %cmp49 = icmp eq i32 %28, 3
  br i1 %cmp49, label %land.lhs.true51, label %if.end62

land.lhs.true51:                                  ; preds = %if.end48
  %29 = load i8, ptr @forceOverwrite, align 1
  %tobool52 = icmp ne i8 %29, 0
  br i1 %tobool52, label %if.end62, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true51
  %call54 = call zeroext i8 @notAStandardFile(ptr noundef @inName)
  %conv55 = zext i8 %call54 to i32
  %tobool56 = icmp ne i32 %conv55, 0
  br i1 %tobool56, label %if.then57, label %if.end62

if.then57:                                        ; preds = %land.lhs.true53
  %30 = load i8, ptr @noisy, align 1
  %tobool58 = icmp ne i8 %30, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then57
  %31 = load ptr, ptr @__stderrp, align 8
  %32 = load ptr, ptr @progName, align 8
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.61, ptr noundef %32, ptr noundef @inName)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57
  call void @setExit(i32 noundef 1)
  br label %return

if.end62:                                         ; preds = %land.lhs.true53, %land.lhs.true51, %if.end48
  %33 = load i32, ptr @srcMode, align 4
  %cmp63 = icmp eq i32 %33, 3
  br i1 %cmp63, label %land.lhs.true65, label %if.end75

land.lhs.true65:                                  ; preds = %if.end62
  %call66 = call zeroext i8 @fileExists(ptr noundef @outName)
  %conv67 = zext i8 %call66 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br i1 %tobool68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %land.lhs.true65
  %34 = load i8, ptr @forceOverwrite, align 1
  %tobool70 = icmp ne i8 %34, 0
  br i1 %tobool70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then69
  %call72 = call i32 @remove(ptr noundef @outName)
  br label %if.end74

if.else:                                          ; preds = %if.then69
  %35 = load ptr, ptr @__stderrp, align 8
  %36 = load ptr, ptr @progName, align 8
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.62, ptr noundef %36, ptr noundef @outName)
  call void @setExit(i32 noundef 1)
  br label %return

if.end74:                                         ; preds = %if.then71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %land.lhs.true65, %if.end62
  %37 = load i32, ptr @srcMode, align 4
  %cmp76 = icmp eq i32 %37, 3
  br i1 %cmp76, label %land.lhs.true78, label %if.end88

land.lhs.true78:                                  ; preds = %if.end75
  %38 = load i8, ptr @forceOverwrite, align 1
  %tobool79 = icmp ne i8 %38, 0
  br i1 %tobool79, label %if.end88, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %call81 = call i32 @countHardLinks(ptr noundef @inName)
  store i32 %call81, ptr %n, align 4
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true80
  %39 = load ptr, ptr @__stderrp, align 8
  %40 = load ptr, ptr @progName, align 8
  %41 = load i32, ptr %n, align 4
  %42 = load i32, ptr %n, align 4
  %cmp85 = icmp sgt i32 %42, 1
  %43 = zext i1 %cmp85 to i64
  %cond = select i1 %cmp85, ptr @.str.64, ptr @.str.4
  %call87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.63, ptr noundef %40, ptr noundef @inName, i32 noundef %41, ptr noundef %cond)
  call void @setExit(i32 noundef 1)
  br label %return

if.end88:                                         ; preds = %land.lhs.true80, %land.lhs.true78, %if.end75
  %44 = load i32, ptr @srcMode, align 4
  %cmp89 = icmp eq i32 %44, 3
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @saveInputFileMetaInfo(ptr noundef @inName)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  %45 = load i32, ptr @srcMode, align 4
  switch i32 %45, label %sw.default [
    i32 1, label %sw.bb93
    i32 2, label %sw.bb101
    i32 3, label %sw.bb122
  ]

sw.bb93:                                          ; preds = %if.end92
  %46 = load ptr, ptr @__stdinp, align 8
  store ptr %46, ptr %inStr, align 8
  %47 = load ptr, ptr @__stdoutp, align 8
  store ptr %47, ptr %outStr, align 8
  %48 = load ptr, ptr @__stdoutp, align 8
  %call94 = call i32 @fileno(ptr noundef %48)
  %call95 = call i32 @isatty(i32 noundef %call94)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end100

if.then97:                                        ; preds = %sw.bb93
  %49 = load ptr, ptr @__stderrp, align 8
  %50 = load ptr, ptr @progName, align 8
  %call98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.65, ptr noundef %50)
  %51 = load ptr, ptr @__stderrp, align 8
  %52 = load ptr, ptr @progName, align 8
  %53 = load ptr, ptr @progName, align 8
  %call99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.66, ptr noundef %52, ptr noundef %53)
  call void @setExit(i32 noundef 1)
  br label %return

if.end100:                                        ; preds = %sw.bb93
  br label %sw.epilog149

sw.bb101:                                         ; preds = %if.end92
  %call102 = call ptr @"\01_fopen"(ptr noundef @inName, ptr noundef @.str.67)
  store ptr %call102, ptr %inStr, align 8
  %54 = load ptr, ptr @__stdoutp, align 8
  store ptr %54, ptr %outStr, align 8
  %55 = load ptr, ptr @__stdoutp, align 8
  %call103 = call i32 @fileno(ptr noundef %55)
  %call104 = call i32 @isatty(i32 noundef %call103)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then106, label %if.end114

if.then106:                                       ; preds = %sw.bb101
  %56 = load ptr, ptr @__stderrp, align 8
  %57 = load ptr, ptr @progName, align 8
  %call107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.65, ptr noundef %57)
  %58 = load ptr, ptr @__stderrp, align 8
  %59 = load ptr, ptr @progName, align 8
  %60 = load ptr, ptr @progName, align 8
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.66, ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %inStr, align 8
  %cmp109 = icmp ne ptr %61, null
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then106
  %62 = load ptr, ptr %inStr, align 8
  %call112 = call i32 @fclose(ptr noundef %62)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then106
  call void @setExit(i32 noundef 1)
  br label %return

if.end114:                                        ; preds = %sw.bb101
  %63 = load ptr, ptr %inStr, align 8
  %cmp115 = icmp eq ptr %63, null
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.end114
  %64 = load ptr, ptr @__stderrp, align 8
  %65 = load ptr, ptr @progName, align 8
  %call118 = call ptr @__error()
  %66 = load i32, ptr %call118, align 4
  %call119 = call ptr @"\01_strerror"(i32 noundef %66)
  %call120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.58, ptr noundef %65, ptr noundef @inName, ptr noundef %call119)
  call void @setExit(i32 noundef 1)
  br label %return

if.end121:                                        ; preds = %if.end114
  br label %sw.epilog149

sw.bb122:                                         ; preds = %if.end92
  %call123 = call ptr @"\01_fopen"(ptr noundef @inName, ptr noundef @.str.67)
  store ptr %call123, ptr %inStr, align 8
  %call124 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.68)
  store ptr %call124, ptr %outStr, align 8
  %67 = load ptr, ptr %outStr, align 8
  %cmp125 = icmp eq ptr %67, null
  br i1 %cmp125, label %if.then127, label %if.end136

if.then127:                                       ; preds = %sw.bb122
  %68 = load ptr, ptr @__stderrp, align 8
  %69 = load ptr, ptr @progName, align 8
  %call128 = call ptr @__error()
  %70 = load i32, ptr %call128, align 4
  %call129 = call ptr @"\01_strerror"(i32 noundef %70)
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.69, ptr noundef %69, ptr noundef @outName, ptr noundef %call129)
  %71 = load ptr, ptr %inStr, align 8
  %cmp131 = icmp ne ptr %71, null
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.then127
  %72 = load ptr, ptr %inStr, align 8
  %call134 = call i32 @fclose(ptr noundef %72)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.then127
  call void @setExit(i32 noundef 1)
  br label %return

if.end136:                                        ; preds = %sw.bb122
  %73 = load ptr, ptr %inStr, align 8
  %cmp137 = icmp eq ptr %73, null
  br i1 %cmp137, label %if.then139, label %if.end148

if.then139:                                       ; preds = %if.end136
  %74 = load ptr, ptr @__stderrp, align 8
  %75 = load ptr, ptr @progName, align 8
  %call140 = call ptr @__error()
  %76 = load i32, ptr %call140, align 4
  %call141 = call ptr @"\01_strerror"(i32 noundef %76)
  %call142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.58, ptr noundef %75, ptr noundef @inName, ptr noundef %call141)
  %77 = load ptr, ptr %outStr, align 8
  %cmp143 = icmp ne ptr %77, null
  br i1 %cmp143, label %if.then145, label %if.end147

if.then145:                                       ; preds = %if.then139
  %78 = load ptr, ptr %outStr, align 8
  %call146 = call i32 @fclose(ptr noundef %78)
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.then139
  call void @setExit(i32 noundef 1)
  br label %return

if.end148:                                        ; preds = %if.end136
  br label %sw.epilog149

sw.default:                                       ; preds = %if.end92
  call void @panic(ptr noundef @.str.70) #10
  unreachable

sw.epilog149:                                     ; preds = %if.end148, %if.end121, %if.end100
  %79 = load i32, ptr @verbosity, align 4
  %cmp150 = icmp sge i32 %79, 1
  br i1 %cmp150, label %if.then152, label %if.end155

if.then152:                                       ; preds = %sw.epilog149
  %80 = load ptr, ptr @__stderrp, align 8
  %call153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str.71, ptr noundef @inName)
  call void @pad(ptr noundef @inName)
  %81 = load ptr, ptr @__stderrp, align 8
  %call154 = call i32 @fflush(ptr noundef %81)
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %sw.epilog149
  %82 = load ptr, ptr %outStr, align 8
  store ptr %82, ptr @outputHandleJustInCase, align 8
  store i8 1, ptr @deleteOutputOnInterrupt, align 1
  %83 = load ptr, ptr %inStr, align 8
  %84 = load ptr, ptr %outStr, align 8
  call void @compressStream(ptr noundef %83, ptr noundef %84)
  store ptr null, ptr @outputHandleJustInCase, align 8
  %85 = load i32, ptr @srcMode, align 4
  %cmp156 = icmp eq i32 %85, 3
  br i1 %cmp156, label %if.then158, label %if.end167

if.then158:                                       ; preds = %if.end155
  call void @applySavedTimeInfoToOutputFile(ptr noundef @outName)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %86 = load i8, ptr @keepInputFiles, align 1
  %tobool159 = icmp ne i8 %86, 0
  br i1 %tobool159, label %if.end166, label %if.then160

if.then160:                                       ; preds = %if.then158
  %call161 = call i32 @remove(ptr noundef @inName)
  store i32 %call161, ptr %retVal, align 4
  %87 = load i32, ptr %retVal, align 4
  %cmp162 = icmp ne i32 %87, 0
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.then160
  call void @ioError() #10
  unreachable

if.end165:                                        ; preds = %if.then160
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.then158
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.end155
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  br label %return

return:                                           ; preds = %if.end167, %if.end147, %if.end135, %if.then117, %if.end113, %if.then97, %if.then84, %if.else, %if.end61, %if.then45, %if.end34, %if.then19, %if.end12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @uncompress(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %outStr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %magicNumberOK = alloca i8, align 1
  %cantGuess = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  %retVal = alloca i32, align 4
  %retVal170 = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %0 = load ptr, ptr %name.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(ptr noundef @.str.80) #10
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8 0, ptr %cantGuess, align 1
  %2 = load i32, ptr @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %3)
  %4 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @outName, ptr noundef %4)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb2
  %5 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %5, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr @unzSuffix, i64 0, i64 %idxprom4
  %9 = load ptr, ptr %arrayidx5, align 8
  %call = call zeroext i8 @mapSuffix(ptr noundef @outName, ptr noundef %7, ptr noundef %9)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %zzz

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %cantGuess, align 1
  %call8 = call ptr @__strcat_chk(ptr noundef @outName, ptr noundef @.str.81, i64 noundef 1034) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %11 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %11)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb9, %for.end, %sw.bb
  br label %zzz

zzz:                                              ; preds = %sw.epilog, %if.then6
  %call10 = call ptr @__strcpy_chk(ptr noundef @outName, ptr noundef @.str.56, i64 noundef 1034) #11
  store i8 1, ptr @forceOverwrite, align 1
  %12 = load i32, ptr @srcMode, align 4
  %cmp11 = icmp ne i32 %12, 1
  br i1 %cmp11, label %land.lhs.true12, label %if.end20

land.lhs.true12:                                  ; preds = %zzz
  %call13 = call zeroext i8 @containsDubiousChars(ptr noundef @inName)
  %conv = zext i8 %call13 to i32
  %tobool14 = icmp ne i32 %conv, 0
  br i1 %tobool14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %land.lhs.true12
  %13 = load i8, ptr @noisy, align 1
  %tobool16 = icmp ne i8 %13, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then15
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr @progName, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.57, ptr noundef %15, ptr noundef @inName)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end20:                                         ; preds = %land.lhs.true12, %zzz
  %16 = load i32, ptr @srcMode, align 4
  %cmp21 = icmp ne i32 %16, 1
  br i1 %cmp21, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = call zeroext i8 @fileExists(ptr noundef @inName)
  %tobool25 = icmp ne i8 %call24, 0
  br i1 %tobool25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23
  %17 = load ptr, ptr @__stderrp, align 8
  %18 = load ptr, ptr @progName, align 8
  %call27 = call ptr @__error()
  %19 = load i32, ptr %call27, align 4
  %call28 = call ptr @"\01_strerror"(i32 noundef %19)
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.58, ptr noundef %18, ptr noundef @inName, ptr noundef %call28)
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end30:                                         ; preds = %land.lhs.true23, %if.end20
  %20 = load i32, ptr @srcMode, align 4
  %cmp31 = icmp eq i32 %20, 3
  br i1 %cmp31, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %21 = load i32, ptr @srcMode, align 4
  %cmp33 = icmp eq i32 %21, 2
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %lor.lhs.false, %if.end30
  %call36 = call i32 @"\01_stat"(ptr noundef @inName, ptr noundef %statBuf)
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i32 0, i32 1
  %22 = load i16, ptr %st_mode, align 4
  %conv37 = zext i16 %22 to i32
  %and = and i32 %conv37, 61440
  %cmp38 = icmp eq i32 %and, 16384
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then35
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load ptr, ptr @progName, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.60, ptr noundef %24, ptr noundef @inName)
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end42:                                         ; preds = %if.then35
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %lor.lhs.false
  %25 = load i32, ptr @srcMode, align 4
  %cmp44 = icmp eq i32 %25, 3
  br i1 %cmp44, label %land.lhs.true46, label %if.end57

land.lhs.true46:                                  ; preds = %if.end43
  %26 = load i8, ptr @forceOverwrite, align 1
  %tobool47 = icmp ne i8 %26, 0
  br i1 %tobool47, label %if.end57, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true46
  %call49 = call zeroext i8 @notAStandardFile(ptr noundef @inName)
  %conv50 = zext i8 %call49 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  br i1 %tobool51, label %if.then52, label %if.end57

if.then52:                                        ; preds = %land.lhs.true48
  %27 = load i8, ptr @noisy, align 1
  %tobool53 = icmp ne i8 %27, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.then52
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = load ptr, ptr @progName, align 8
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.61, ptr noundef %29, ptr noundef @inName)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.then52
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end57:                                         ; preds = %land.lhs.true48, %land.lhs.true46, %if.end43
  %30 = load i8, ptr %cantGuess, align 1
  %tobool58 = icmp ne i8 %30, 0
  br i1 %tobool58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.end57
  %31 = load i8, ptr @noisy, align 1
  %tobool60 = icmp ne i8 %31, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then59
  %32 = load ptr, ptr @__stderrp, align 8
  %33 = load ptr, ptr @progName, align 8
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.82, ptr noundef %33, ptr noundef @inName, ptr noundef @outName)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end57
  %34 = load i32, ptr @srcMode, align 4
  %cmp65 = icmp eq i32 %34, 3
  br i1 %cmp65, label %land.lhs.true67, label %if.end77

land.lhs.true67:                                  ; preds = %if.end64
  %call68 = call zeroext i8 @fileExists(ptr noundef @outName)
  %conv69 = zext i8 %call68 to i32
  %tobool70 = icmp ne i32 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end77

if.then71:                                        ; preds = %land.lhs.true67
  %35 = load i8, ptr @forceOverwrite, align 1
  %tobool72 = icmp ne i8 %35, 0
  br i1 %tobool72, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then71
  %call74 = call i32 @remove(ptr noundef @outName)
  br label %if.end76

if.else:                                          ; preds = %if.then71
  %36 = load ptr, ptr @__stderrp, align 8
  %37 = load ptr, ptr @progName, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.62, ptr noundef %37, ptr noundef @outName)
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end76:                                         ; preds = %if.then73
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %land.lhs.true67, %if.end64
  %38 = load i32, ptr @srcMode, align 4
  %cmp78 = icmp eq i32 %38, 3
  br i1 %cmp78, label %land.lhs.true80, label %if.end90

land.lhs.true80:                                  ; preds = %if.end77
  %39 = load i8, ptr @forceOverwrite, align 1
  %tobool81 = icmp ne i8 %39, 0
  br i1 %tobool81, label %if.end90, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %land.lhs.true80
  %call83 = call i32 @countHardLinks(ptr noundef @inName)
  store i32 %call83, ptr %n, align 4
  %cmp84 = icmp sgt i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end90

if.then86:                                        ; preds = %land.lhs.true82
  %40 = load ptr, ptr @__stderrp, align 8
  %41 = load ptr, ptr @progName, align 8
  %42 = load i32, ptr %n, align 4
  %43 = load i32, ptr %n, align 4
  %cmp87 = icmp sgt i32 %43, 1
  %44 = zext i1 %cmp87 to i64
  %cond = select i1 %cmp87, ptr @.str.64, ptr @.str.4
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.63, ptr noundef %41, ptr noundef @inName, i32 noundef %42, ptr noundef %cond)
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end90:                                         ; preds = %land.lhs.true82, %land.lhs.true80, %if.end77
  %45 = load i32, ptr @srcMode, align 4
  %cmp91 = icmp eq i32 %45, 3
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  call void @saveInputFileMetaInfo(ptr noundef @inName)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90
  %46 = load i32, ptr @srcMode, align 4
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb95
    i32 2, label %sw.bb103
    i32 3, label %sw.bb117
  ]

sw.bb95:                                          ; preds = %if.end94
  %47 = load ptr, ptr @__stdinp, align 8
  store ptr %47, ptr %inStr, align 8
  %48 = load ptr, ptr @__stdoutp, align 8
  store ptr %48, ptr %outStr, align 8
  %49 = load ptr, ptr @__stdinp, align 8
  %call96 = call i32 @fileno(ptr noundef %49)
  %call97 = call i32 @isatty(i32 noundef %call96)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.end102

if.then99:                                        ; preds = %sw.bb95
  %50 = load ptr, ptr @__stderrp, align 8
  %51 = load ptr, ptr @progName, align 8
  %call100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.83, ptr noundef %51)
  %52 = load ptr, ptr @__stderrp, align 8
  %53 = load ptr, ptr @progName, align 8
  %54 = load ptr, ptr @progName, align 8
  %call101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.66, ptr noundef %53, ptr noundef %54)
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end102:                                        ; preds = %sw.bb95
  br label %sw.epilog144

sw.bb103:                                         ; preds = %if.end94
  %call104 = call ptr @"\01_fopen"(ptr noundef @inName, ptr noundef @.str.67)
  store ptr %call104, ptr %inStr, align 8
  %55 = load ptr, ptr @__stdoutp, align 8
  store ptr %55, ptr %outStr, align 8
  %56 = load ptr, ptr %inStr, align 8
  %cmp105 = icmp eq ptr %56, null
  br i1 %cmp105, label %if.then107, label %if.end116

if.then107:                                       ; preds = %sw.bb103
  %57 = load ptr, ptr @__stderrp, align 8
  %58 = load ptr, ptr @progName, align 8
  %call108 = call ptr @__error()
  %59 = load i32, ptr %call108, align 4
  %call109 = call ptr @"\01_strerror"(i32 noundef %59)
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.84, ptr noundef %58, ptr noundef @inName, ptr noundef %call109)
  %60 = load ptr, ptr %inStr, align 8
  %cmp111 = icmp ne ptr %60, null
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.then107
  %61 = load ptr, ptr %inStr, align 8
  %call114 = call i32 @fclose(ptr noundef %61)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.then107
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end116:                                        ; preds = %sw.bb103
  br label %sw.epilog144

sw.bb117:                                         ; preds = %if.end94
  %call118 = call ptr @"\01_fopen"(ptr noundef @inName, ptr noundef @.str.67)
  store ptr %call118, ptr %inStr, align 8
  %call119 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.68)
  store ptr %call119, ptr %outStr, align 8
  %62 = load ptr, ptr %outStr, align 8
  %cmp120 = icmp eq ptr %62, null
  br i1 %cmp120, label %if.then122, label %if.end131

if.then122:                                       ; preds = %sw.bb117
  %63 = load ptr, ptr @__stderrp, align 8
  %64 = load ptr, ptr @progName, align 8
  %call123 = call ptr @__error()
  %65 = load i32, ptr %call123, align 4
  %call124 = call ptr @"\01_strerror"(i32 noundef %65)
  %call125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.69, ptr noundef %64, ptr noundef @outName, ptr noundef %call124)
  %66 = load ptr, ptr %inStr, align 8
  %cmp126 = icmp ne ptr %66, null
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then122
  %67 = load ptr, ptr %inStr, align 8
  %call129 = call i32 @fclose(ptr noundef %67)
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.then122
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end131:                                        ; preds = %sw.bb117
  %68 = load ptr, ptr %inStr, align 8
  %cmp132 = icmp eq ptr %68, null
  br i1 %cmp132, label %if.then134, label %if.end143

if.then134:                                       ; preds = %if.end131
  %69 = load ptr, ptr @__stderrp, align 8
  %70 = load ptr, ptr @progName, align 8
  %call135 = call ptr @__error()
  %71 = load i32, ptr %call135, align 4
  %call136 = call ptr @"\01_strerror"(i32 noundef %71)
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.58, ptr noundef %70, ptr noundef @inName, ptr noundef %call136)
  %72 = load ptr, ptr %outStr, align 8
  %cmp138 = icmp ne ptr %72, null
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %if.then134
  %73 = load ptr, ptr %outStr, align 8
  %call141 = call i32 @fclose(ptr noundef %73)
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.then134
  call void @setExit(i32 noundef 1)
  br label %if.end193

if.end143:                                        ; preds = %if.end131
  br label %sw.epilog144

sw.default:                                       ; preds = %if.end94
  call void @panic(ptr noundef @.str.85) #10
  unreachable

sw.epilog144:                                     ; preds = %if.end143, %if.end116, %if.end102
  %74 = load i32, ptr @verbosity, align 4
  %cmp145 = icmp sge i32 %74, 1
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %sw.epilog144
  %75 = load ptr, ptr @__stderrp, align 8
  %call148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.71, ptr noundef @inName)
  call void @pad(ptr noundef @inName)
  %76 = load ptr, ptr @__stderrp, align 8
  %call149 = call i32 @fflush(ptr noundef %76)
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %sw.epilog144
  %77 = load ptr, ptr %outStr, align 8
  store ptr %77, ptr @outputHandleJustInCase, align 8
  store i8 1, ptr @deleteOutputOnInterrupt, align 1
  %78 = load ptr, ptr %inStr, align 8
  %79 = load ptr, ptr %outStr, align 8
  %call151 = call zeroext i8 @uncompressStream(ptr noundef %78, ptr noundef %79)
  store i8 %call151, ptr %magicNumberOK, align 1
  store ptr null, ptr @outputHandleJustInCase, align 8
  %80 = load i8, ptr %magicNumberOK, align 1
  %tobool152 = icmp ne i8 %80, 0
  br i1 %tobool152, label %if.then153, label %if.else166

if.then153:                                       ; preds = %if.end150
  %81 = load i32, ptr @srcMode, align 4
  %cmp154 = icmp eq i32 %81, 3
  br i1 %cmp154, label %if.then156, label %if.end165

if.then156:                                       ; preds = %if.then153
  call void @applySavedTimeInfoToOutputFile(ptr noundef @outName)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %82 = load i8, ptr @keepInputFiles, align 1
  %tobool157 = icmp ne i8 %82, 0
  br i1 %tobool157, label %if.end164, label %if.then158

if.then158:                                       ; preds = %if.then156
  %call159 = call i32 @remove(ptr noundef @inName)
  store i32 %call159, ptr %retVal, align 4
  %83 = load i32, ptr %retVal, align 4
  %cmp160 = icmp ne i32 %83, 0
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.then158
  call void @ioError() #10
  unreachable

if.end163:                                        ; preds = %if.then158
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then156
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then153
  br label %if.end177

if.else166:                                       ; preds = %if.end150
  store i8 1, ptr @unzFailsExist, align 1
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %84 = load i32, ptr @srcMode, align 4
  %cmp167 = icmp eq i32 %84, 3
  br i1 %cmp167, label %if.then169, label %if.end176

if.then169:                                       ; preds = %if.else166
  %call171 = call i32 @remove(ptr noundef @outName)
  store i32 %call171, ptr %retVal170, align 4
  %85 = load i32, ptr %retVal170, align 4
  %cmp172 = icmp ne i32 %85, 0
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.then169
  call void @ioError() #10
  unreachable

if.end175:                                        ; preds = %if.then169
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.else166
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.end165
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %86 = load i8, ptr %magicNumberOK, align 1
  %tobool178 = icmp ne i8 %86, 0
  br i1 %tobool178, label %if.then179, label %if.else185

if.then179:                                       ; preds = %if.end177
  %87 = load i32, ptr @verbosity, align 4
  %cmp180 = icmp sge i32 %87, 1
  br i1 %cmp180, label %if.then182, label %if.end184

if.then182:                                       ; preds = %if.then179
  %88 = load ptr, ptr @__stderrp, align 8
  %call183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.86)
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.then179
  br label %if.end193

if.else185:                                       ; preds = %if.end177
  call void @setExit(i32 noundef 2)
  %89 = load i32, ptr @verbosity, align 4
  %cmp186 = icmp sge i32 %89, 1
  br i1 %cmp186, label %if.then188, label %if.else190

if.then188:                                       ; preds = %if.else185
  %90 = load ptr, ptr @__stderrp, align 8
  %call189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str.87)
  br label %if.end192

if.else190:                                       ; preds = %if.else185
  %91 = load ptr, ptr @__stderrp, align 8
  %92 = load ptr, ptr @progName, align 8
  %call191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.88, ptr noundef %92, ptr noundef @inName)
  br label %if.end192

if.end192:                                        ; preds = %if.else190, %if.then188
  br label %if.end193

if.end193:                                        ; preds = %if.end19, %if.then26, %if.then40, %if.end56, %if.else, %if.then86, %if.then99, %if.end115, %if.end130, %if.end142, %if.end192, %if.end184
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @setExit(i32 noundef %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr @exitValue, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %v.addr, align 4
  store i32 %2, ptr @exitValue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @testf(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %allOK = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %0 = load ptr, ptr %name.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(ptr noundef @.str.95) #10
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6)
  %2 = load i32, ptr @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %4 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2, %sw.bb
  %5 = load i32, ptr @srcMode, align 4
  %cmp4 = icmp ne i32 %5, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end11

land.lhs.true5:                                   ; preds = %sw.epilog
  %call = call zeroext i8 @containsDubiousChars(ptr noundef @inName)
  %conv = zext i8 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true5
  %6 = load i8, ptr @noisy, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load ptr, ptr @progName, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.57, ptr noundef %8, ptr noundef @inName)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  call void @setExit(i32 noundef 1)
  br label %if.end68

if.end11:                                         ; preds = %land.lhs.true5, %sw.epilog
  %9 = load i32, ptr @srcMode, align 4
  %cmp12 = icmp ne i32 %9, 1
  br i1 %cmp12, label %land.lhs.true14, label %if.end21

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = call zeroext i8 @fileExists(ptr noundef @inName)
  %tobool16 = icmp ne i8 %call15, 0
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progName, align 8
  %call18 = call ptr @__error()
  %12 = load i32, ptr %call18, align 4
  %call19 = call ptr @"\01_strerror"(i32 noundef %12)
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.96, ptr noundef %11, ptr noundef @inName, ptr noundef %call19)
  call void @setExit(i32 noundef 1)
  br label %if.end68

if.end21:                                         ; preds = %land.lhs.true14, %if.end11
  %13 = load i32, ptr @srcMode, align 4
  %cmp22 = icmp ne i32 %13, 1
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @"\01_stat"(ptr noundef @inName, ptr noundef %statBuf)
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i32 0, i32 1
  %14 = load i16, ptr %st_mode, align 4
  %conv26 = zext i16 %14 to i32
  %and = and i32 %conv26, 61440
  %cmp27 = icmp eq i32 %and, 16384
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then24
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr @progName, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.60, ptr noundef %16, ptr noundef @inName)
  call void @setExit(i32 noundef 1)
  br label %if.end68

if.end31:                                         ; preds = %if.then24
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end21
  %17 = load i32, ptr @srcMode, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb41
    i32 3, label %sw.bb41
  ]

sw.bb33:                                          ; preds = %if.end32
  %18 = load ptr, ptr @__stdinp, align 8
  %call34 = call i32 @fileno(ptr noundef %18)
  %call35 = call i32 @isatty(i32 noundef %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %sw.bb33
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr @progName, align 8
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.83, ptr noundef %20)
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = load ptr, ptr @progName, align 8
  %23 = load ptr, ptr @progName, align 8
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.66, ptr noundef %22, ptr noundef %23)
  call void @setExit(i32 noundef 1)
  br label %if.end68

if.end40:                                         ; preds = %sw.bb33
  %24 = load ptr, ptr @__stdinp, align 8
  store ptr %24, ptr %inStr, align 8
  br label %sw.epilog50

sw.bb41:                                          ; preds = %if.end32, %if.end32
  %call42 = call ptr @"\01_fopen"(ptr noundef @inName, ptr noundef @.str.67)
  store ptr %call42, ptr %inStr, align 8
  %25 = load ptr, ptr %inStr, align 8
  %cmp43 = icmp eq ptr %25, null
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %sw.bb41
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = load ptr, ptr @progName, align 8
  %call46 = call ptr @__error()
  %28 = load i32, ptr %call46, align 4
  %call47 = call ptr @"\01_strerror"(i32 noundef %28)
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.84, ptr noundef %27, ptr noundef @inName, ptr noundef %call47)
  call void @setExit(i32 noundef 1)
  br label %if.end68

if.end49:                                         ; preds = %sw.bb41
  br label %sw.epilog50

sw.default:                                       ; preds = %if.end32
  call void @panic(ptr noundef @.str.97) #10
  unreachable

sw.epilog50:                                      ; preds = %if.end49, %if.end40
  %29 = load i32, ptr @verbosity, align 4
  %cmp51 = icmp sge i32 %29, 1
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %sw.epilog50
  %30 = load ptr, ptr @__stderrp, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.71, ptr noundef @inName)
  call void @pad(ptr noundef @inName)
  %31 = load ptr, ptr @__stderrp, align 8
  %call55 = call i32 @fflush(ptr noundef %31)
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %sw.epilog50
  store ptr null, ptr @outputHandleJustInCase, align 8
  %32 = load ptr, ptr %inStr, align 8
  %call57 = call zeroext i8 @testStream(ptr noundef %32)
  store i8 %call57, ptr %allOK, align 1
  %33 = load i8, ptr %allOK, align 1
  %conv58 = zext i8 %33 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %land.lhs.true60, label %if.end65

land.lhs.true60:                                  ; preds = %if.end56
  %34 = load i32, ptr @verbosity, align 4
  %cmp61 = icmp sge i32 %34, 1
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %land.lhs.true60
  %35 = load ptr, ptr @__stderrp, align 8
  %call64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.98)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %land.lhs.true60, %if.end56
  %36 = load i8, ptr %allOK, align 1
  %tobool66 = icmp ne i8 %36, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end65
  store i8 1, ptr @testFailsExist, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.end10, %if.then17, %if.then29, %if.then37, %if.then45, %if.then67, %if.end65
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @showFileNames() #0 {
entry:
  %0 = load i8, ptr @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.38, ptr noundef @inName, ptr noundef @outName)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @cleanUpAndFail(i32 noundef %ec) #3 {
entry:
  %ec.addr = alloca i32, align 4
  %retVal = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i32 %ec, ptr %ec.addr, align 4
  %0 = load i32, ptr @srcMode, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @opMode, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %land.lhs.true2, label %if.end25

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i8, ptr @deleteOutputOnInterrupt, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true2
  %call = call i32 @"\01_stat"(ptr noundef @inName, ptr noundef %statBuf)
  store i32 %call, ptr %retVal, align 4
  %3 = load i32, ptr %retVal, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %4 = load i8, ptr @noisy, align 1
  %tobool6 = icmp ne i8 %4, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progName, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.39, ptr noundef %6, ptr noundef @outName)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %7 = load ptr, ptr @outputHandleJustInCase, align 8
  %cmp9 = icmp ne ptr %7, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr @outputHandleJustInCase, align 8
  %call12 = call i32 @fclose(ptr noundef %8)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %call14 = call i32 @remove(ptr noundef @outName)
  store i32 %call14, ptr %retVal, align 4
  %9 = load i32, ptr %retVal, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progName, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.40, ptr noundef %11)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  br label %if.end24

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = load ptr, ptr @progName, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.41, ptr noundef %13)
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr @progName, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.42, ptr noundef %15)
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load ptr, ptr @progName, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.43, ptr noundef %17, ptr noundef @outName)
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = load ptr, ptr @progName, align 8
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.44, ptr noundef %19)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true2, %land.lhs.true, %entry
  %20 = load i8, ptr @noisy, align 1
  %conv26 = zext i8 %20 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %if.end25
  %21 = load i32, ptr @numFileNames, align 4
  %cmp29 = icmp sgt i32 %21, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %22 = load i32, ptr @numFilesProcessed, align 4
  %23 = load i32, ptr @numFileNames, align 4
  %cmp32 = icmp slt i32 %22, %23
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true31
  %24 = load ptr, ptr @__stderrp, align 8
  %25 = load ptr, ptr @progName, align 8
  %26 = load ptr, ptr @progName, align 8
  %27 = load i32, ptr @numFileNames, align 4
  %28 = load i32, ptr @numFileNames, align 4
  %29 = load i32, ptr @numFilesProcessed, align 4
  %sub = sub nsw i32 %28, %29
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.45, ptr noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %sub)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true31, %land.lhs.true28, %if.end25
  %30 = load i32, ptr %ec.addr, align 4
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_1(i32 noundef %30)
  %31 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %31) #10
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @cadvise() #0 {
entry:
  %0 = load i8, ptr @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.46)
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
  %c = alloca ptr, align 8
  %call = call ptr @myMalloc(i32 noundef 16)
  store ptr %call, ptr %c, align 8
  %0 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.zzzz, ptr %0, i32 0, i32 0
  store ptr null, ptr %name, align 8
  %1 = load ptr, ptr %c, align 8
  %link = getelementptr inbounds %struct.zzzz, ptr %1, i32 0, i32 1
  store ptr null, ptr %link, align 8
  %2 = load ptr, ptr %c, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @myMalloc(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @malloc(i64 noundef %conv) #13
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @outOfMemory() #10
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  ret ptr %2
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.48, ptr noundef %1)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 noundef 1) #10
  unreachable
}

declare ptr @BZ2_bzlibVersion() #1

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @panic(ptr noundef %s) #3 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.72, ptr noundef %1, ptr noundef %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 noundef 3) #10
  unreachable
}

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @containsDubiousChars(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  ret i8 0
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @fileExists(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %exists = alloca i8, align 1
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.67)
  store ptr %call, ptr %tmp, align 8
  %1 = load ptr, ptr %tmp, align 8
  %cmp = icmp ne ptr %1, null
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, ptr %exists, align 1
  %2 = load ptr, ptr %tmp, align 8
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tmp, align 8
  %call4 = call i32 @fclose(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, ptr %exists, align 1
  ret i8 %4
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
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %ns, align 4
  %1 = load ptr, ptr %suffix.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %nx, align 4
  %2 = load i32, ptr %ns, align 4
  %3 = load i32, ptr %nx, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %ns, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %6 = load i32, ptr %nx, align 4
  %idx.ext4 = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %7 = load ptr, ptr %suffix.addr, align 8
  %call6 = call i32 @strcmp(ptr noundef %add.ptr5, ptr noundef %7)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i8 1, ptr %retval, align 1
  br label %return

if.end10:                                         ; preds = %if.end
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %8 = load i8, ptr %retval, align 1
  ret i8 %8
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @notAStandardFile(ptr noundef %name) #0 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %0, ptr noundef %statBuf)
  store i32 %call, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %statBuf, i32 0, i32 1
  %2 = load i16, ptr %st_mode, align 4
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, ptr %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @countHardLinks(ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store ptr %name, ptr %name.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i32 @"\01_lstat"(ptr noundef %0, ptr noundef %statBuf)
  store i32 %call, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %st_nlink = getelementptr inbounds %struct.stat, ptr %statBuf, i32 0, i32 2
  %2 = load i16, ptr %st_nlink, align 2
  %conv = zext i16 %2 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal void @saveInputFileMetaInfo(ptr noundef %srcName) #0 {
entry:
  %srcName.addr = alloca ptr, align 8
  %retVal = alloca i32, align 4
  store ptr %srcName, ptr %srcName.addr, align 8
  %0 = load ptr, ptr %srcName.addr, align 8
  %call = call i32 @"\01_stat"(ptr noundef %0, ptr noundef @fileMetaInfo)
  store i32 %call, ptr %retVal, align 4
  %1 = load i32, ptr %retVal, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ioError() #10
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
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %fh = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %0, i32 noundef 2561, i32 noundef 384)
  store i32 %call, ptr %fh, align 4
  %1 = load i32, ptr %fh, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fh, align 4
  %3 = load ptr, ptr %mode.addr, align 8
  %call1 = call ptr @"\01_fdopen"(i32 noundef %2, ptr noundef %3)
  store ptr %call1, ptr %fp, align 8
  %4 = load ptr, ptr %fp, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %fh, align 4
  %call4 = call i32 @"\01_close"(i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load ptr, ptr %fp, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define internal void @pad(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  %1 = load i32, ptr @longestFileName, align 4
  %cmp = icmp sge i32 %conv, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr @longestFileName, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %call2 = call i64 @strlen(ptr noundef %4)
  %conv3 = trunc i64 %call2 to i32
  %sub = sub nsw i32 %3, %conv3
  %cmp4 = icmp sle i32 %2, %sub
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.73)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %if.then, %for.cond
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
  %ret = alloca i32, align 4
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
  %0 = load ptr, ptr %stream.addr, align 8
  %call = call i32 @ferror(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zStream.addr, align 8
  %call1 = call i32 @ferror(ptr noundef %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %errhandler_io

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %zStream.addr, align 8
  %3 = load i32, ptr @blockSize100k, align 4
  %4 = load i32, ptr @verbosity, align 4
  %5 = load i32, ptr @workFactor, align 4
  %call5 = call ptr @BZ2_bzWriteOpen(ptr noundef %bzerr, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  store ptr %call5, ptr %bzf, align 8
  %6 = load i32, ptr %bzerr, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  br label %errhandler

if.end7:                                          ; preds = %if.end4
  %7 = load i32, ptr @verbosity, align 4
  %cmp8 = icmp sge i32 %7, 2
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.74)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  br label %while.body

while.body:                                       ; preds = %if.end11, %if.end29
  %9 = load ptr, ptr %stream.addr, align 8
  %call12 = call zeroext i8 @myfeof(ptr noundef %9)
  %tobool13 = icmp ne i8 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  br label %while.end

if.end15:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %ibuf, i64 0, i64 0
  %10 = load ptr, ptr %stream.addr, align 8
  %call16 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 5000, ptr noundef %10)
  %conv = trunc i64 %call16 to i32
  store i32 %conv, ptr %nIbuf, align 4
  %11 = load ptr, ptr %stream.addr, align 8
  %call17 = call i32 @ferror(ptr noundef %11)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  br label %errhandler_io

if.end20:                                         ; preds = %if.end15
  %12 = load i32, ptr %nIbuf, align 4
  %cmp21 = icmp sgt i32 %12, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %13 = load ptr, ptr %bzf, align 8
  %arraydecay24 = getelementptr inbounds [5000 x i8], ptr %ibuf, i64 0, i64 0
  %14 = load i32, ptr %nIbuf, align 4
  call void @BZ2_bzWrite(ptr noundef %bzerr, ptr noundef %13, ptr noundef %arraydecay24, i32 noundef %14)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %15 = load i32, ptr %bzerr, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  br label %errhandler

if.end29:                                         ; preds = %if.end25
  br label %while.body

while.end:                                        ; preds = %if.then14
  %16 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzWriteClose64(ptr noundef %bzerr, ptr noundef %16, i32 noundef 0, ptr noundef %nbytes_in_lo32, ptr noundef %nbytes_in_hi32, ptr noundef %nbytes_out_lo32, ptr noundef %nbytes_out_hi32)
  %17 = load i32, ptr %bzerr, align 4
  %cmp30 = icmp ne i32 %17, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.end
  br label %errhandler

if.end33:                                         ; preds = %while.end
  %18 = load ptr, ptr %zStream.addr, align 8
  %call34 = call i32 @ferror(ptr noundef %18)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  br label %errhandler_io

if.end37:                                         ; preds = %if.end33
  %19 = load ptr, ptr %zStream.addr, align 8
  %call38 = call i32 @fflush(ptr noundef %19)
  store i32 %call38, ptr %ret, align 4
  %20 = load i32, ptr %ret, align 4
  %cmp39 = icmp eq i32 %20, -1
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  br label %errhandler_io

if.end42:                                         ; preds = %if.end37
  %21 = load ptr, ptr %zStream.addr, align 8
  %22 = load ptr, ptr @__stdoutp, align 8
  %cmp43 = icmp ne ptr %21, %22
  br i1 %cmp43, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end42
  %23 = load ptr, ptr %zStream.addr, align 8
  %call46 = call i32 @fileno(ptr noundef %23)
  store i32 %call46, ptr %fd, align 4
  %24 = load i32, ptr %fd, align 4
  %cmp47 = icmp slt i32 %24, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  br label %errhandler_io

if.end50:                                         ; preds = %if.then45
  %25 = load i32, ptr %fd, align 4
  call void @applySavedFileAttrToOutputFile(i32 noundef %25)
  %26 = load ptr, ptr %zStream.addr, align 8
  %call51 = call i32 @fclose(ptr noundef %26)
  store i32 %call51, ptr %ret, align 4
  store ptr null, ptr @outputHandleJustInCase, align 8
  %27 = load i32, ptr %ret, align 4
  %cmp52 = icmp eq i32 %27, -1
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  br label %errhandler_io

if.end55:                                         ; preds = %if.end50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end42
  store ptr null, ptr @outputHandleJustInCase, align 8
  %28 = load ptr, ptr %stream.addr, align 8
  %call57 = call i32 @ferror(ptr noundef %28)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  br label %errhandler_io

if.end60:                                         ; preds = %if.end56
  %29 = load ptr, ptr %stream.addr, align 8
  %call61 = call i32 @fclose(ptr noundef %29)
  store i32 %call61, ptr %ret, align 4
  %30 = load i32, ptr %ret, align 4
  %cmp62 = icmp eq i32 %30, -1
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  br label %errhandler_io

if.end65:                                         ; preds = %if.end60
  %31 = load i32, ptr @verbosity, align 4
  %cmp66 = icmp sge i32 %31, 1
  br i1 %cmp66, label %if.then68, label %if.end86

if.then68:                                        ; preds = %if.end65
  %32 = load i32, ptr %nbytes_in_lo32, align 4
  %cmp69 = icmp eq i32 %32, 0
  br i1 %cmp69, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then68
  %33 = load i32, ptr %nbytes_in_hi32, align 4
  %cmp71 = icmp eq i32 %33, 0
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr @__stderrp, align 8
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.75)
  br label %if.end85

if.else:                                          ; preds = %land.lhs.true, %if.then68
  %35 = load i32, ptr %nbytes_in_lo32, align 4
  %36 = load i32, ptr %nbytes_in_hi32, align 4
  call void @uInt64_from_UInt32s(ptr noundef %nbytes_in, i32 noundef %35, i32 noundef %36)
  %37 = load i32, ptr %nbytes_out_lo32, align 4
  %38 = load i32, ptr %nbytes_out_hi32, align 4
  call void @uInt64_from_UInt32s(ptr noundef %nbytes_out, i32 noundef %37, i32 noundef %38)
  %call75 = call double @uInt64_to_double(ptr noundef %nbytes_in)
  store double %call75, ptr %nbytes_in_d, align 8
  %call76 = call double @uInt64_to_double(ptr noundef %nbytes_out)
  store double %call76, ptr %nbytes_out_d, align 8
  %arraydecay77 = getelementptr inbounds [32 x i8], ptr %buf_nin, i64 0, i64 0
  call void @uInt64_toAscii(ptr noundef %arraydecay77, ptr noundef %nbytes_in)
  %arraydecay78 = getelementptr inbounds [32 x i8], ptr %buf_nout, i64 0, i64 0
  call void @uInt64_toAscii(ptr noundef %arraydecay78, ptr noundef %nbytes_out)
  %39 = load ptr, ptr @__stderrp, align 8
  %40 = load double, ptr %nbytes_in_d, align 8
  %41 = load double, ptr %nbytes_out_d, align 8
  %div = fdiv double %40, %41
  %42 = load double, ptr %nbytes_out_d, align 8
  %mul = fmul double 8.000000e+00, %42
  %43 = load double, ptr %nbytes_in_d, align 8
  %div79 = fdiv double %mul, %43
  %44 = load double, ptr %nbytes_out_d, align 8
  %45 = load double, ptr %nbytes_in_d, align 8
  %div80 = fdiv double %44, %45
  %sub = fsub double 1.000000e+00, %div80
  %mul81 = fmul double 1.000000e+02, %sub
  %arraydecay82 = getelementptr inbounds [32 x i8], ptr %buf_nin, i64 0, i64 0
  %arraydecay83 = getelementptr inbounds [32 x i8], ptr %buf_nout, i64 0, i64 0
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.76, double noundef %div, double noundef %div79, double noundef %mul81, ptr noundef %arraydecay82, ptr noundef %arraydecay83)
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then73
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end65
  ret void

errhandler:                                       ; preds = %if.then32, %if.then28, %if.then6
  %46 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzWriteClose64(ptr noundef %bzerr_dummy, ptr noundef %46, i32 noundef 1, ptr noundef %nbytes_in_lo32, ptr noundef %nbytes_in_hi32, ptr noundef %nbytes_out_lo32, ptr noundef %nbytes_out_hi32)
  %47 = load i32, ptr %bzerr, align 4
  switch i32 %47, label %sw.default [
    i32 -9, label %sw.bb
    i32 -3, label %sw.bb87
    i32 -6, label %sw.bb88
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #10
  unreachable

sw.bb87:                                          ; preds = %errhandler
  call void @outOfMemory() #10
  unreachable

sw.bb88:                                          ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb88, %if.then64, %if.then59, %if.then54, %if.then49, %if.then41, %if.then36, %if.then19, %if.then3, %if.then
  call void @ioError() #10
  unreachable

sw.default:                                       ; preds = %errhandler
  call void @panic(ptr noundef @.str.77) #10
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @applySavedTimeInfoToOutputFile(ptr noundef %dstName) #0 {
entry:
  %dstName.addr = alloca ptr, align 8
  %retVal = alloca i32, align 4
  %uTimBuf = alloca %struct.utimbuf, align 8
  store ptr %dstName, ptr %dstName.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i32 0, i32 7), align 8
  %actime = getelementptr inbounds %struct.utimbuf, ptr %uTimBuf, i32 0, i32 0
  store i64 %0, ptr %actime, align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i32 0, i32 8), align 8
  %modtime = getelementptr inbounds %struct.utimbuf, ptr %uTimBuf, i32 0, i32 1
  store i64 %1, ptr %modtime, align 8
  %2 = load ptr, ptr %dstName.addr, align 8
  %call = call i32 @utime(ptr noundef %2, ptr noundef %uTimBuf)
  store i32 %call, ptr %retVal, align 4
  %3 = load i32, ptr %retVal, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ioError() #10
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @ioError() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.79, ptr noundef %1)
  %2 = load ptr, ptr @progName, align 8
  call void @perror(ptr noundef %2) #14
  call void @showFileNames()
  call void @cleanUpAndFail(i32 noundef 1) #10
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
  %retval = alloca i8, align 1
  %f.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  %0 = load ptr, ptr %f.addr, align 8
  %call = call i32 @fgetc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %1 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %c, align 4
  %3 = load ptr, ptr %f.addr, align 8
  %call1 = call i32 @ungetc(i32 noundef %2, ptr noundef %3)
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @BZ2_bzWrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @applySavedFileAttrToOutputFile(i32 noundef %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %retVal = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  %0 = load i32, ptr %fd.addr, align 4
  %1 = load i16, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i32 0, i32 1), align 4
  %call = call i32 @"\01_fchmod"(i32 noundef %0, i16 noundef zeroext %1)
  store i32 %call, ptr %retVal, align 4
  %2 = load i32, ptr %retVal, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ioError() #10
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %fd.addr, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i32 0, i32 4), align 8
  %5 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @fileMetaInfo, i32 0, i32 5), align 4
  %call1 = call i32 @fchown(i32 noundef %3, i32 noundef %4, i32 noundef %5)
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
  %0 = load i32, ptr %hi32.addr, align 4
  %shr = lshr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 7
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %hi32.addr, align 4
  %shr1 = lshr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load ptr, ptr %n.addr, align 8
  %b4 = getelementptr inbounds %struct.UInt64, ptr %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr %b4, i64 0, i64 6
  store i8 %conv3, ptr %arrayidx5, align 1
  %4 = load i32, ptr %hi32.addr, align 4
  %shr6 = lshr i32 %4, 8
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load ptr, ptr %n.addr, align 8
  %b9 = getelementptr inbounds %struct.UInt64, ptr %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr %b9, i64 0, i64 5
  store i8 %conv8, ptr %arrayidx10, align 1
  %6 = load i32, ptr %hi32.addr, align 4
  %and11 = and i32 %6, 255
  %conv12 = trunc i32 %and11 to i8
  %7 = load ptr, ptr %n.addr, align 8
  %b13 = getelementptr inbounds %struct.UInt64, ptr %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i8], ptr %b13, i64 0, i64 4
  store i8 %conv12, ptr %arrayidx14, align 1
  %8 = load i32, ptr %lo32.addr, align 4
  %shr15 = lshr i32 %8, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %9 = load ptr, ptr %n.addr, align 8
  %b18 = getelementptr inbounds %struct.UInt64, ptr %9, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i8], ptr %b18, i64 0, i64 3
  store i8 %conv17, ptr %arrayidx19, align 1
  %10 = load i32, ptr %lo32.addr, align 4
  %shr20 = lshr i32 %10, 16
  %and21 = and i32 %shr20, 255
  %conv22 = trunc i32 %and21 to i8
  %11 = load ptr, ptr %n.addr, align 8
  %b23 = getelementptr inbounds %struct.UInt64, ptr %11, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [8 x i8], ptr %b23, i64 0, i64 2
  store i8 %conv22, ptr %arrayidx24, align 1
  %12 = load i32, ptr %lo32.addr, align 4
  %shr25 = lshr i32 %12, 8
  %and26 = and i32 %shr25, 255
  %conv27 = trunc i32 %and26 to i8
  %13 = load ptr, ptr %n.addr, align 8
  %b28 = getelementptr inbounds %struct.UInt64, ptr %13, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i8], ptr %b28, i64 0, i64 1
  store i8 %conv27, ptr %arrayidx29, align 1
  %14 = load i32, ptr %lo32.addr, align 4
  %and30 = and i32 %14, 255
  %conv31 = trunc i32 %and30 to i8
  %15 = load ptr, ptr %n.addr, align 8
  %b32 = getelementptr inbounds %struct.UInt64, ptr %15, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [8 x i8], ptr %b32, i64 0, i64 0
  store i8 %conv31, ptr %arrayidx33, align 1
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
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, ptr %base, align 8
  %2 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = uitofp i8 %4 to double
  %5 = load double, ptr %sum, align 8
  %6 = call double @llvm.fmuladd.f64(double %1, double %conv, double %5)
  store double %6, ptr %sum, align 8
  %7 = load double, ptr %base, align 8
  %mul = fmul double %7, 2.560000e+02
  store double %mul, ptr %base, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %9 = load double, ptr %sum, align 8
  ret double %9
}

; Function Attrs: nounwind ssp uwtable
define internal void @uInt64_toAscii(ptr noundef %outbuf, ptr noundef %n) #0 {
entry:
  %outbuf.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  %nBuf = alloca i32, align 4
  %n_copy = alloca %struct.UInt64, align 1
  store ptr %outbuf, ptr %outbuf.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store i32 0, ptr %nBuf, align 4
  %0 = load ptr, ptr %n.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %n_copy, ptr align 1 %0, i64 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @uInt64_qrm10(ptr noundef %n_copy)
  store i32 %call, ptr %q, align 4
  %1 = load i32, ptr %q, align 4
  %add = add nsw i32 %1, 48
  %conv = trunc i32 %add to i8
  %2 = load i32, ptr %nBuf, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %nBuf, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nBuf, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %call1 = call zeroext i8 @uInt64_isZero(ptr noundef %n_copy)
  %tobool = icmp ne i8 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !25

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %outbuf.addr, align 8
  %5 = load i32, ptr %nBuf, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  store i8 0, ptr %arrayidx3, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %nBuf, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %nBuf, align 4
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %8, %9
  %sub5 = sub nsw i32 %sub, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1
  %11 = load ptr, ptr %outbuf.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 %10, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @configError() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.78)
  call void @setExit(i32 noundef 3)
  %1 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %1) #10
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
  store i32 7, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %rem, align 4
  %mul = mul i32 %1, 256
  %2 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %add = add i32 %mul, %conv
  store i32 %add, ptr %tmp, align 4
  %5 = load i32, ptr %tmp, align 4
  %div = udiv i32 %5, 10
  %conv1 = trunc i32 %div to i8
  %6 = load ptr, ptr %n.addr, align 8
  %b2 = getelementptr inbounds %struct.UInt64, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8], ptr %b2, i64 0, i64 %idxprom3
  store i8 %conv1, ptr %arrayidx4, align 1
  %8 = load i32, ptr %tmp, align 4
  %rem5 = urem i32 %8, 10
  store i32 %rem5, ptr %rem, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %rem, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @uInt64_isZero(ptr noundef %n) #0 {
entry:
  %retval = alloca i8, align 1
  %n.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i8, ptr %retval, align 1
  ret i8 %5
}

declare i32 @utime(ptr noundef, ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @mapSuffix(ptr noundef %name, ptr noundef %oldSuffix, ptr noundef %newSuffix) #0 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca ptr, align 8
  %oldSuffix.addr = alloca ptr, align 8
  %newSuffix.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %oldSuffix, ptr %oldSuffix.addr, align 8
  store ptr %newSuffix, ptr %newSuffix.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load ptr, ptr %oldSuffix.addr, align 8
  %call = call zeroext i8 @hasSuffix(ptr noundef %0, ptr noundef %1)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8
  %3 = load ptr, ptr %name.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %3)
  %4 = load ptr, ptr %oldSuffix.addr, align 8
  %call2 = call i64 @strlen(ptr noundef %4)
  %sub = sub i64 %call1, %call2
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %sub
  store i8 0, ptr %arrayidx, align 1
  %5 = load ptr, ptr %name.addr, align 8
  %6 = load ptr, ptr %newSuffix.addr, align 8
  %7 = load ptr, ptr %name.addr, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call3 = call ptr @__strcat_chk(ptr noundef %5, ptr noundef %6, i64 noundef %8) #11
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8, ptr %retval, align 1
  ret i8 %9
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
  %ret = alloca i32, align 4
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
  %0 = load ptr, ptr %stream.addr, align 8
  %call = call i32 @ferror(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zStream.addr, align 8
  %call1 = call i32 @ferror(ptr noundef %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %errhandler_io

if.end4:                                          ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end4, %if.end61
  %2 = load ptr, ptr %zStream.addr, align 8
  %3 = load i32, ptr @verbosity, align 4
  %4 = load i8, ptr @smallMode, align 1
  %conv = zext i8 %4 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 0
  %5 = load i32, ptr %nUnused, align 4
  %call5 = call ptr @BZ2_bzReadOpen(ptr noundef %bzerr, ptr noundef %2, i32 noundef %3, i32 noundef %conv, ptr noundef %arraydecay, i32 noundef %5)
  store ptr %call5, ptr %bzf, align 8
  %6 = load ptr, ptr %bzf, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i32, ptr %bzerr, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end10:                                         ; preds = %lor.lhs.false
  %8 = load i32, ptr %streamNo, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %streamNo, align 4
  br label %while.cond11

while.cond11:                                     ; preds = %if.end36, %if.end10
  %9 = load i32, ptr %bzerr, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond11
  %10 = load ptr, ptr %bzf, align 8
  %arraydecay15 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %call16 = call i32 @BZ2_bzRead(ptr noundef %bzerr, ptr noundef %10, ptr noundef %arraydecay15, i32 noundef 5000)
  store i32 %call16, ptr %nread, align 4
  %11 = load i32, ptr %bzerr, align 4
  %cmp17 = icmp eq i32 %11, -5
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body14
  br label %trycat

if.end20:                                         ; preds = %while.body14
  %12 = load i32, ptr %bzerr, align 4
  %cmp21 = icmp eq i32 %12, 0
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end20
  %13 = load i32, ptr %bzerr, align 4
  %cmp24 = icmp eq i32 %13, 4
  br i1 %cmp24, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false23, %if.end20
  %14 = load i32, ptr %nread, align 4
  %cmp26 = icmp sgt i32 %14, 0
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true
  %arraydecay29 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %15 = load i32, ptr %nread, align 4
  %conv30 = sext i32 %15 to i64
  %16 = load ptr, ptr %stream.addr, align 8
  %call31 = call i64 @"\01_fwrite"(ptr noundef %arraydecay29, i64 noundef 1, i64 noundef %conv30, ptr noundef %16)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true, %lor.lhs.false23
  %17 = load ptr, ptr %stream.addr, align 8
  %call33 = call i32 @ferror(ptr noundef %17)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  br label %errhandler_io

if.end36:                                         ; preds = %if.end32
  br label %while.cond11, !llvm.loop !29

while.end:                                        ; preds = %while.cond11
  %18 = load i32, ptr %bzerr, align 4
  %cmp37 = icmp ne i32 %18, 4
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.end
  br label %errhandler

if.end40:                                         ; preds = %while.end
  %19 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadGetUnused(ptr noundef %bzerr, ptr noundef %19, ptr noundef %unusedTmpV, ptr noundef %nUnused)
  %20 = load i32, ptr %bzerr, align 4
  %cmp41 = icmp ne i32 %20, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @panic(ptr noundef @.str.89) #10
  unreachable

if.end44:                                         ; preds = %if.end40
  %21 = load ptr, ptr %unusedTmpV, align 8
  store ptr %21, ptr %unusedTmp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %nUnused, align 4
  %cmp45 = icmp slt i32 %22, %23
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %unusedTmp, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load i8, ptr %arrayidx, align 1
  %27 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 %idxprom47
  store i8 %26, ptr %arrayidx48, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %28, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr, ptr noundef %29)
  %30 = load i32, ptr %bzerr, align 4
  %cmp50 = icmp ne i32 %30, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.end
  call void @panic(ptr noundef @.str.89) #10
  unreachable

if.end53:                                         ; preds = %for.end
  %31 = load i32, ptr %nUnused, align 4
  %cmp54 = icmp eq i32 %31, 0
  br i1 %cmp54, label %land.lhs.true56, label %if.end61

land.lhs.true56:                                  ; preds = %if.end53
  %32 = load ptr, ptr %zStream.addr, align 8
  %call57 = call zeroext i8 @myfeof(ptr noundef %32)
  %conv58 = zext i8 %call57 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true56
  br label %while.end62

if.end61:                                         ; preds = %land.lhs.true56, %if.end53
  br label %while.body

while.end62:                                      ; preds = %if.then60
  br label %closeok

closeok:                                          ; preds = %while.end129, %while.end62
  %33 = load ptr, ptr %zStream.addr, align 8
  %call63 = call i32 @ferror(ptr noundef %33)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %closeok
  br label %errhandler_io

if.end66:                                         ; preds = %closeok
  %34 = load ptr, ptr %stream.addr, align 8
  %35 = load ptr, ptr @__stdoutp, align 8
  %cmp67 = icmp ne ptr %34, %35
  br i1 %cmp67, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.end66
  %36 = load ptr, ptr %stream.addr, align 8
  %call70 = call i32 @fileno(ptr noundef %36)
  store i32 %call70, ptr %fd, align 4
  %37 = load i32, ptr %fd, align 4
  %cmp71 = icmp slt i32 %37, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then69
  br label %errhandler_io

if.end74:                                         ; preds = %if.then69
  %38 = load i32, ptr %fd, align 4
  call void @applySavedFileAttrToOutputFile(i32 noundef %38)
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end66
  %39 = load ptr, ptr %zStream.addr, align 8
  %call76 = call i32 @fclose(ptr noundef %39)
  store i32 %call76, ptr %ret, align 4
  %40 = load i32, ptr %ret, align 4
  %cmp77 = icmp eq i32 %40, -1
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end75
  br label %errhandler_io

if.end80:                                         ; preds = %if.end75
  %41 = load ptr, ptr %stream.addr, align 8
  %call81 = call i32 @ferror(ptr noundef %41)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  br label %errhandler_io

if.end84:                                         ; preds = %if.end80
  %42 = load ptr, ptr %stream.addr, align 8
  %call85 = call i32 @fflush(ptr noundef %42)
  store i32 %call85, ptr %ret, align 4
  %43 = load i32, ptr %ret, align 4
  %cmp86 = icmp ne i32 %43, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end84
  br label %errhandler_io

if.end89:                                         ; preds = %if.end84
  %44 = load ptr, ptr %stream.addr, align 8
  %45 = load ptr, ptr @__stdoutp, align 8
  %cmp90 = icmp ne ptr %44, %45
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end89
  %46 = load ptr, ptr %stream.addr, align 8
  %call93 = call i32 @fclose(ptr noundef %46)
  store i32 %call93, ptr %ret, align 4
  store ptr null, ptr @outputHandleJustInCase, align 8
  %47 = load i32, ptr %ret, align 4
  %cmp94 = icmp eq i32 %47, -1
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.then92
  br label %errhandler_io

if.end97:                                         ; preds = %if.then92
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end89
  store ptr null, ptr @outputHandleJustInCase, align 8
  %48 = load i32, ptr @verbosity, align 4
  %cmp99 = icmp sge i32 %48, 2
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end98
  %49 = load ptr, ptr @__stderrp, align 8
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.90)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end98
  store i8 1, ptr %retval, align 1
  br label %return

trycat:                                           ; preds = %if.then19
  %50 = load i8, ptr @forceOverwrite, align 1
  %tobool104 = icmp ne i8 %50, 0
  br i1 %tobool104, label %if.then105, label %if.end130

if.then105:                                       ; preds = %trycat
  %51 = load ptr, ptr %zStream.addr, align 8
  call void @rewind(ptr noundef %51)
  br label %while.body106

while.body106:                                    ; preds = %if.then105, %if.end128
  %52 = load ptr, ptr %zStream.addr, align 8
  %call107 = call zeroext i8 @myfeof(ptr noundef %52)
  %tobool108 = icmp ne i8 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %while.body106
  br label %while.end129

if.end110:                                        ; preds = %while.body106
  %arraydecay111 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %53 = load ptr, ptr %zStream.addr, align 8
  %call112 = call i64 @fread(ptr noundef %arraydecay111, i64 noundef 1, i64 noundef 5000, ptr noundef %53)
  %conv113 = trunc i64 %call112 to i32
  store i32 %conv113, ptr %nread, align 4
  %54 = load ptr, ptr %zStream.addr, align 8
  %call114 = call i32 @ferror(ptr noundef %54)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end110
  br label %errhandler_io

if.end117:                                        ; preds = %if.end110
  %55 = load i32, ptr %nread, align 4
  %cmp118 = icmp sgt i32 %55, 0
  br i1 %cmp118, label %if.then120, label %if.end124

if.then120:                                       ; preds = %if.end117
  %arraydecay121 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %56 = load i32, ptr %nread, align 4
  %conv122 = sext i32 %56 to i64
  %57 = load ptr, ptr %stream.addr, align 8
  %call123 = call i64 @"\01_fwrite"(ptr noundef %arraydecay121, i64 noundef 1, i64 noundef %conv122, ptr noundef %57)
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end117
  %58 = load ptr, ptr %stream.addr, align 8
  %call125 = call i32 @ferror(ptr noundef %58)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  br label %errhandler_io

if.end128:                                        ; preds = %if.end124
  br label %while.body106

while.end129:                                     ; preds = %if.then109
  br label %closeok

if.end130:                                        ; preds = %trycat
  br label %errhandler

errhandler:                                       ; preds = %if.end130, %if.then39, %if.then9
  %59 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr_dummy, ptr noundef %59)
  %60 = load i32, ptr %bzerr, align 4
  switch i32 %60, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb131
    i32 -4, label %sw.bb132
    i32 -3, label %sw.bb133
    i32 -7, label %sw.bb134
    i32 -5, label %sw.bb135
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #10
  unreachable

sw.bb131:                                         ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb131, %if.then127, %if.then116, %if.then96, %if.then88, %if.then83, %if.then79, %if.then73, %if.then65, %if.then35, %if.then3, %if.then
  call void @ioError() #10
  unreachable

sw.bb132:                                         ; preds = %errhandler
  call void @crcError() #10
  unreachable

sw.bb133:                                         ; preds = %errhandler
  call void @outOfMemory() #10
  unreachable

sw.bb134:                                         ; preds = %errhandler
  call void @compressedStreamEOF() #10
  unreachable

sw.bb135:                                         ; preds = %errhandler
  %61 = load ptr, ptr %zStream.addr, align 8
  %62 = load ptr, ptr @__stdinp, align 8
  %cmp136 = icmp ne ptr %61, %62
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %sw.bb135
  %63 = load ptr, ptr %zStream.addr, align 8
  %call139 = call i32 @fclose(ptr noundef %63)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %sw.bb135
  %64 = load ptr, ptr %stream.addr, align 8
  %65 = load ptr, ptr @__stdoutp, align 8
  %cmp141 = icmp ne ptr %64, %65
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end140
  %66 = load ptr, ptr %stream.addr, align 8
  %call144 = call i32 @fclose(ptr noundef %66)
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end140
  %67 = load i32, ptr %streamNo, align 4
  %cmp146 = icmp eq i32 %67, 1
  br i1 %cmp146, label %if.then148, label %if.else

if.then148:                                       ; preds = %if.end145
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end145
  %68 = load i8, ptr @noisy, align 1
  %tobool149 = icmp ne i8 %68, 0
  br i1 %tobool149, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.else
  %69 = load ptr, ptr @__stderrp, align 8
  %70 = load ptr, ptr @progName, align 8
  %call151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.91, ptr noundef %70, ptr noundef @inName)
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.else
  store i8 1, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %errhandler
  call void @panic(ptr noundef @.str.92) #10
  unreachable

return:                                           ; preds = %if.end152, %if.then148, %if.end103
  %71 = load i8, ptr %retval, align 1
  ret i8 %71
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
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.93, ptr noundef %1)
  call void @showFileNames()
  call void @cadvise()
  call void @cleanUpAndFail(i32 noundef 2) #10
  unreachable
}

; Function Attrs: noreturn nounwind ssp uwtable
define internal void @compressedStreamEOF() #3 {
entry:
  %0 = load i8, ptr @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr @progName, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.94, ptr noundef %2)
  %3 = load ptr, ptr @progName, align 8
  call void @perror(ptr noundef %3) #14
  call void @showFileNames()
  call void @cadvise()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @cleanUpAndFail(i32 noundef 2) #10
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
  %ret = alloca i32, align 4
  %nread = alloca i32, align 4
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
  %0 = load ptr, ptr %zStream.addr, align 8
  %call = call i32 @ferror(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end40
  %1 = load ptr, ptr %zStream.addr, align 8
  %2 = load i32, ptr @verbosity, align 4
  %3 = load i8, ptr @smallMode, align 1
  %conv = zext i8 %3 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 0
  %4 = load i32, ptr %nUnused, align 4
  %call1 = call ptr @BZ2_bzReadOpen(ptr noundef %bzerr, ptr noundef %1, i32 noundef %2, i32 noundef %conv, ptr noundef %arraydecay, i32 noundef %4)
  store ptr %call1, ptr %bzf, align 8
  %5 = load ptr, ptr %bzf, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, ptr %bzerr, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end6:                                          ; preds = %lor.lhs.false
  %7 = load i32, ptr %streamNo, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %streamNo, align 4
  br label %while.cond7

while.cond7:                                      ; preds = %if.end16, %if.end6
  %8 = load i32, ptr %bzerr, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond7
  %9 = load ptr, ptr %bzf, align 8
  %arraydecay11 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %call12 = call i32 @BZ2_bzRead(ptr noundef %bzerr, ptr noundef %9, ptr noundef %arraydecay11, i32 noundef 5000)
  store i32 %call12, ptr %nread, align 4
  %10 = load i32, ptr %bzerr, align 4
  %cmp13 = icmp eq i32 %10, -5
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body10
  br label %errhandler

if.end16:                                         ; preds = %while.body10
  br label %while.cond7, !llvm.loop !31

while.end:                                        ; preds = %while.cond7
  %11 = load i32, ptr %bzerr, align 4
  %cmp17 = icmp ne i32 %11, 4
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  br label %errhandler

if.end20:                                         ; preds = %while.end
  %12 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadGetUnused(ptr noundef %bzerr, ptr noundef %12, ptr noundef %unusedTmpV, ptr noundef %nUnused)
  %13 = load i32, ptr %bzerr, align 4
  %cmp21 = icmp ne i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @panic(ptr noundef @.str.99) #10
  unreachable

if.end24:                                         ; preds = %if.end20
  %14 = load ptr, ptr %unusedTmpV, align 8
  store ptr %14, ptr %unusedTmp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %nUnused, align 4
  %cmp25 = icmp slt i32 %15, %16
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %unusedTmp, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 %idxprom
  %19 = load i8, ptr %arrayidx, align 1
  %20 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 %idxprom27
  store i8 %19, ptr %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr, ptr noundef %22)
  %23 = load i32, ptr %bzerr, align 4
  %cmp30 = icmp ne i32 %23, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end
  call void @panic(ptr noundef @.str.99) #10
  unreachable

if.end33:                                         ; preds = %for.end
  %24 = load i32, ptr %nUnused, align 4
  %cmp34 = icmp eq i32 %24, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end33
  %25 = load ptr, ptr %zStream.addr, align 8
  %call36 = call zeroext i8 @myfeof(ptr noundef %25)
  %conv37 = zext i8 %call36 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  br label %while.end41

if.end40:                                         ; preds = %land.lhs.true, %if.end33
  br label %while.body

while.end41:                                      ; preds = %if.then39
  %26 = load ptr, ptr %zStream.addr, align 8
  %call42 = call i32 @ferror(ptr noundef %26)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %while.end41
  br label %errhandler_io

if.end45:                                         ; preds = %while.end41
  %27 = load ptr, ptr %zStream.addr, align 8
  %call46 = call i32 @fclose(ptr noundef %27)
  store i32 %call46, ptr %ret, align 4
  %28 = load i32, ptr %ret, align 4
  %cmp47 = icmp eq i32 %28, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  br label %errhandler_io

if.end50:                                         ; preds = %if.end45
  %29 = load i32, ptr @verbosity, align 4
  %cmp51 = icmp sge i32 %29, 2
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %30 = load ptr, ptr @__stderrp, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.90)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50
  store i8 1, ptr %retval, align 1
  br label %return

errhandler:                                       ; preds = %if.then19, %if.then15, %if.then5
  %31 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr_dummy, ptr noundef %31)
  %32 = load i32, ptr @verbosity, align 4
  %cmp56 = icmp eq i32 %32, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %errhandler
  %33 = load ptr, ptr @__stderrp, align 8
  %34 = load ptr, ptr @progName, align 8
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.100, ptr noundef %34, ptr noundef @inName)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %errhandler
  %35 = load i32, ptr %bzerr, align 4
  switch i32 %35, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb61
    i32 -4, label %sw.bb62
    i32 -3, label %sw.bb64
    i32 -7, label %sw.bb65
    i32 -5, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.end60
  call void @configError() #10
  unreachable

sw.bb61:                                          ; preds = %if.end60
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb61, %if.then49, %if.then44, %if.then
  call void @ioError() #10
  unreachable

sw.bb62:                                          ; preds = %if.end60
  %36 = load ptr, ptr @__stderrp, align 8
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.101)
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb64:                                          ; preds = %if.end60
  call void @outOfMemory() #10
  unreachable

sw.bb65:                                          ; preds = %if.end60
  %37 = load ptr, ptr @__stderrp, align 8
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.102)
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb67:                                          ; preds = %if.end60
  %38 = load ptr, ptr %zStream.addr, align 8
  %39 = load ptr, ptr @__stdinp, align 8
  %cmp68 = icmp ne ptr %38, %39
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %sw.bb67
  %40 = load ptr, ptr %zStream.addr, align 8
  %call71 = call i32 @fclose(ptr noundef %40)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.bb67
  %41 = load i32, ptr %streamNo, align 4
  %cmp73 = icmp eq i32 %41, 1
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end72
  %42 = load ptr, ptr @__stderrp, align 8
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.103)
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end72
  %43 = load i8, ptr @noisy, align 1
  %tobool77 = icmp ne i8 %43, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else
  %44 = load ptr, ptr @__stderrp, align 8
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.104)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else
  store i8 1, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %if.end60
  call void @panic(ptr noundef @.str.105) #10
  unreachable

return:                                           ; preds = %if.end80, %if.then75, %sw.bb65, %sw.bb62, %if.end55
  %45 = load i8, ptr %retval, align 1
  ret i8 %45
}

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
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { allocsize(0) }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_0(i32 noundef %v)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr @exitValue, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %v.addr, align 4
  store i32 %2, ptr @exitValue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzip2_1(i32 noundef %v)  alwaysinline#0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr @exitValue, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %v.addr, align 4
  store i32 %2, ptr @exitValue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

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
