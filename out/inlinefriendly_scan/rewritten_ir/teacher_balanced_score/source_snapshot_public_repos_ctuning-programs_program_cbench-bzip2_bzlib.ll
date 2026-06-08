; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_ctuning-programs_program_cbench-bzip2_bzlib.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/bzlib.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.4, 20-Dec-2006\00", align 1
@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@bzerrorstrings = internal global [16 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], align 8
@BZ2_crc32Table = external global [256 x i32], align 4
@BZ2_rNums = external global [512 x i32], align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bz__AssertH__fail(i32 noundef %errcode) #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %errcode, ptr noundef nonnull @.str.5) #11
  %cmp = icmp eq i32 %errcode, 1007
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = call i64 @fwrite(ptr nonnull @.str.1, i64 1056, i64 1, ptr %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 noundef 3) #12
  unreachable
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define ptr @BZ2_bzlibVersion() #0 {
entry:
  ret ptr @.str.5
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzCompressInit(ptr noundef %strm, i32 noundef %blockSize100k, i32 noundef %verbosity, i32 noundef %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %blockSize100k, ptr %blockSize100k.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %workFactor, ptr %workFactor.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load i32, ptr %blockSize100k.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load i32, ptr %blockSize100k.addr, align 4
  %cmp3 = icmp sgt i32 %2, 9
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp3
  %3 = load i32, ptr %workFactor.addr, align 4
  %cmp5 = icmp slt i32 %3, 0
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp5
  %4 = load i32, ptr %workFactor.addr, align 4
  %cmp7 = icmp sgt i32 %4, 250
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp7
  br i1 %or.cond3, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %5 = load i32, ptr %workFactor.addr, align 4
  %cmp10 = icmp eq i32 %5, 0
  %spec.store.select = select i1 %cmp10, i32 30, i32 %5
  store i32 %spec.store.select, ptr %workFactor.addr, align 4
  %6 = load ptr, ptr %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, ptr %6, i64 0, i32 9
  %7 = load ptr, ptr %bzalloc, align 8
  %cmp13 = icmp eq ptr %7, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %8 = load ptr, ptr %strm.addr, align 8
  %bzalloc15 = getelementptr inbounds %struct.bz_stream, ptr %8, i64 0, i32 9
  store ptr @default_bzalloc, ptr %bzalloc15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9
  %9 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, ptr %9, i64 0, i32 10
  %10 = load ptr, ptr %bzfree, align 8
  %cmp17 = icmp eq ptr %10, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %11 = load ptr, ptr %strm.addr, align 8
  %bzfree19 = getelementptr inbounds %struct.bz_stream, ptr %11, i64 0, i32 10
  store ptr @default_bzfree, ptr %bzfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %12 = load ptr, ptr %strm.addr, align 8
  %bzalloc21 = getelementptr inbounds %struct.bz_stream, ptr %12, i64 0, i32 9
  %13 = load ptr, ptr %bzalloc21, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %opaque, align 8
  %call22 = call ptr %13(ptr noundef %14, i32 noundef 55768, i32 noundef 1) #11
  store ptr %call22, ptr %s, align 8
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -3, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end20
  %15 = load ptr, ptr %strm.addr, align 8
  %16 = load ptr, ptr %s, align 8
  store ptr %15, ptr %16, align 8
  %arr1 = getelementptr inbounds %struct.EState, ptr %16, i64 0, i32 4
  store ptr null, ptr %arr1, align 8
  %arr2 = getelementptr inbounds %struct.EState, ptr %16, i64 0, i32 5
  store ptr null, ptr %arr2, align 8
  %ftab = getelementptr inbounds %struct.EState, ptr %16, i64 0, i32 6
  store ptr null, ptr %ftab, align 8
  %17 = load i32, ptr %blockSize100k.addr, align 4
  %mul = mul nsw i32 %17, 100000
  store i32 %mul, ptr %n, align 4
  %18 = load ptr, ptr %strm.addr, align 8
  %bzalloc27 = getelementptr inbounds %struct.bz_stream, ptr %18, i64 0, i32 9
  %19 = load ptr, ptr %bzalloc27, align 8
  %opaque28 = getelementptr inbounds %struct.bz_stream, ptr %18, i64 0, i32 11
  %20 = load ptr, ptr %opaque28, align 8
  %mul29 = mul i32 %17, 400000
  %call31 = call ptr %19(ptr noundef %20, i32 noundef %mul29, i32 noundef 1) #11
  %21 = load ptr, ptr %s, align 8
  %arr132 = getelementptr inbounds %struct.EState, ptr %21, i64 0, i32 4
  store ptr %call31, ptr %arr132, align 8
  %22 = load ptr, ptr %strm.addr, align 8
  %bzalloc33 = getelementptr inbounds %struct.bz_stream, ptr %22, i64 0, i32 9
  %23 = load ptr, ptr %bzalloc33, align 8
  %opaque34 = getelementptr inbounds %struct.bz_stream, ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %opaque34, align 8
  %25 = load i32, ptr %n, align 4
  %add = shl i32 %25, 2
  %mul36 = add i32 %add, 136
  %call38 = call ptr %23(ptr noundef %24, i32 noundef %mul36, i32 noundef 1) #11
  %26 = load ptr, ptr %s, align 8
  %arr239 = getelementptr inbounds %struct.EState, ptr %26, i64 0, i32 5
  store ptr %call38, ptr %arr239, align 8
  %27 = load ptr, ptr %strm.addr, align 8
  %bzalloc40 = getelementptr inbounds %struct.bz_stream, ptr %27, i64 0, i32 9
  %28 = load ptr, ptr %bzalloc40, align 8
  %opaque41 = getelementptr inbounds %struct.bz_stream, ptr %27, i64 0, i32 11
  %29 = load ptr, ptr %opaque41, align 8
  %call42 = call ptr %28(ptr noundef %29, i32 noundef 262148, i32 noundef 1) #11
  %30 = load ptr, ptr %s, align 8
  %ftab43 = getelementptr inbounds %struct.EState, ptr %30, i64 0, i32 6
  store ptr %call42, ptr %ftab43, align 8
  %arr144 = getelementptr inbounds %struct.EState, ptr %30, i64 0, i32 4
  %31 = load ptr, ptr %arr144, align 8
  %cmp45 = icmp eq ptr %31, null
  br i1 %cmp45, label %if.then55, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end25
  %32 = load ptr, ptr %s, align 8
  %arr248 = getelementptr inbounds %struct.EState, ptr %32, i64 0, i32 5
  %33 = load ptr, ptr %arr248, align 8
  %cmp49 = icmp eq ptr %33, null
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %34 = load ptr, ptr %s, align 8
  %ftab52 = getelementptr inbounds %struct.EState, ptr %34, i64 0, i32 6
  %35 = load ptr, ptr %ftab52, align 8
  %cmp53 = icmp eq ptr %35, null
  br i1 %cmp53, label %if.then55, label %if.end86

if.then55:                                        ; preds = %lor.lhs.false51, %lor.lhs.false47, %if.end25
  %36 = load ptr, ptr %s, align 8
  %arr156 = getelementptr inbounds %struct.EState, ptr %36, i64 0, i32 4
  %37 = load ptr, ptr %arr156, align 8
  %cmp57.not = icmp eq ptr %37, null
  br i1 %cmp57.not, label %if.end63, label %if.then59

if.then59:                                        ; preds = %if.then55
  %38 = load ptr, ptr %strm.addr, align 8
  %bzfree60 = getelementptr inbounds %struct.bz_stream, ptr %38, i64 0, i32 10
  %39 = load ptr, ptr %bzfree60, align 8
  %opaque61 = getelementptr inbounds %struct.bz_stream, ptr %38, i64 0, i32 11
  %40 = load ptr, ptr %opaque61, align 8
  %41 = load ptr, ptr %s, align 8
  %arr162 = getelementptr inbounds %struct.EState, ptr %41, i64 0, i32 4
  %42 = load ptr, ptr %arr162, align 8
  call void %39(ptr noundef %40, ptr noundef %42) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then55
  %43 = load ptr, ptr %s, align 8
  %arr264 = getelementptr inbounds %struct.EState, ptr %43, i64 0, i32 5
  %44 = load ptr, ptr %arr264, align 8
  %cmp65.not = icmp eq ptr %44, null
  br i1 %cmp65.not, label %if.end71, label %if.then67

if.then67:                                        ; preds = %if.end63
  %45 = load ptr, ptr %strm.addr, align 8
  %bzfree68 = getelementptr inbounds %struct.bz_stream, ptr %45, i64 0, i32 10
  %46 = load ptr, ptr %bzfree68, align 8
  %opaque69 = getelementptr inbounds %struct.bz_stream, ptr %45, i64 0, i32 11
  %47 = load ptr, ptr %opaque69, align 8
  %48 = load ptr, ptr %s, align 8
  %arr270 = getelementptr inbounds %struct.EState, ptr %48, i64 0, i32 5
  %49 = load ptr, ptr %arr270, align 8
  call void %46(ptr noundef %47, ptr noundef %49) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63
  %50 = load ptr, ptr %s, align 8
  %ftab72 = getelementptr inbounds %struct.EState, ptr %50, i64 0, i32 6
  %51 = load ptr, ptr %ftab72, align 8
  %cmp73.not = icmp eq ptr %51, null
  br i1 %cmp73.not, label %if.end79, label %if.then75

if.then75:                                        ; preds = %if.end71
  %52 = load ptr, ptr %strm.addr, align 8
  %bzfree76 = getelementptr inbounds %struct.bz_stream, ptr %52, i64 0, i32 10
  %53 = load ptr, ptr %bzfree76, align 8
  %opaque77 = getelementptr inbounds %struct.bz_stream, ptr %52, i64 0, i32 11
  %54 = load ptr, ptr %opaque77, align 8
  %55 = load ptr, ptr %s, align 8
  %ftab78 = getelementptr inbounds %struct.EState, ptr %55, i64 0, i32 6
  %56 = load ptr, ptr %ftab78, align 8
  call void %53(ptr noundef %54, ptr noundef %56) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71
  %57 = load ptr, ptr %s, align 8
  %cmp80.not = icmp eq ptr %57, null
  br i1 %cmp80.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %if.end79
  %58 = load ptr, ptr %strm.addr, align 8
  %bzfree83 = getelementptr inbounds %struct.bz_stream, ptr %58, i64 0, i32 10
  %59 = load ptr, ptr %bzfree83, align 8
  %opaque84 = getelementptr inbounds %struct.bz_stream, ptr %58, i64 0, i32 11
  %60 = load ptr, ptr %opaque84, align 8
  %61 = load ptr, ptr %s, align 8
  call void %59(ptr noundef %60, ptr noundef %61) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end79
  store i32 -3, ptr %retval, align 4
  br label %return

if.end86:                                         ; preds = %lor.lhs.false51
  %62 = load ptr, ptr %s, align 8
  %blockNo = getelementptr inbounds %struct.EState, ptr %62, i64 0, i32 29
  store i32 0, ptr %blockNo, align 4
  %state = getelementptr inbounds %struct.EState, ptr %62, i64 0, i32 2
  store i32 2, ptr %state, align 4
  %mode = getelementptr inbounds %struct.EState, ptr %62, i64 0, i32 1
  store i32 2, ptr %mode, align 8
  %63 = load ptr, ptr %s, align 8
  %combinedCRC = getelementptr inbounds %struct.EState, ptr %63, i64 0, i32 27
  store i32 0, ptr %combinedCRC, align 4
  %64 = load i32, ptr %blockSize100k.addr, align 4
  %blockSize100k87 = getelementptr inbounds %struct.EState, ptr %63, i64 0, i32 30
  store i32 %64, ptr %blockSize100k87, align 8
  %mul88 = mul nsw i32 %64, 100000
  %sub = add nsw i32 %mul88, -19
  %65 = load ptr, ptr %s, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, ptr %65, i64 0, i32 18
  store i32 %sub, ptr %nblockMAX, align 8
  %66 = load i32, ptr %verbosity.addr, align 4
  %verbosity89 = getelementptr inbounds %struct.EState, ptr %65, i64 0, i32 28
  store i32 %66, ptr %verbosity89, align 8
  %67 = load i32, ptr %workFactor.addr, align 4
  %68 = load ptr, ptr %s, align 8
  %workFactor90 = getelementptr inbounds %struct.EState, ptr %68, i64 0, i32 12
  store i32 %67, ptr %workFactor90, align 8
  %arr291 = getelementptr inbounds %struct.EState, ptr %68, i64 0, i32 5
  %69 = load ptr, ptr %arr291, align 8
  %block = getelementptr inbounds %struct.EState, ptr %68, i64 0, i32 9
  store ptr %69, ptr %block, align 8
  %70 = load ptr, ptr %s, align 8
  %arr192 = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 4
  %71 = load ptr, ptr %arr192, align 8
  %mtfv = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 10
  store ptr %71, ptr %mtfv, align 8
  %zbits = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 11
  store ptr null, ptr %zbits, align 8
  %72 = load ptr, ptr %s, align 8
  %arr193 = getelementptr inbounds %struct.EState, ptr %72, i64 0, i32 4
  %73 = load ptr, ptr %arr193, align 8
  %ptr = getelementptr inbounds %struct.EState, ptr %72, i64 0, i32 8
  store ptr %73, ptr %ptr, align 8
  %74 = load ptr, ptr %strm.addr, align 8
  %state94 = getelementptr inbounds %struct.bz_stream, ptr %74, i64 0, i32 8
  store ptr %72, ptr %state94, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, ptr %74, i64 0, i32 2
  store i32 0, ptr %total_in_lo32, align 4
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, ptr %74, i64 0, i32 3
  store i32 0, ptr %total_in_hi32, align 8
  %75 = load ptr, ptr %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, ptr %75, i64 0, i32 6
  store i32 0, ptr %total_out_lo32, align 4
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, ptr %75, i64 0, i32 7
  store i32 0, ptr %total_out_hi32, align 8
  %76 = load ptr, ptr %s, align 8
  call void @init_RL(ptr noundef %76)
  call void @prepare_new_block(ptr noundef %76)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end86, %if.end85, %if.then24, %if.then8, %if.then
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @bz_config_ok() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @default_bzalloc(ptr noundef %opaque, i32 noundef %items, i32 noundef %size) #0 {
entry:
  %mul = mul nsw i32 %items, %size
  %conv = sext i32 %mul to i64
  %call = call ptr @malloc(i64 noundef %conv) #13
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal void @default_bzfree(ptr noundef %opaque, ptr noundef %addr) #0 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  %cmp.not = icmp eq ptr %addr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %addr.addr, align 8
  call void @free(ptr noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @init_RL(ptr noundef %s) #0 {
entry:
  %state_in_ch = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 13
  store i32 256, ptr %state_in_ch, align 4
  %state_in_len = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 14
  store i32 0, ptr %state_in_len, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_new_block(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 17
  store i32 0, ptr %nblock, align 4
  %numZ = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 19
  store i32 0, ptr %numZ, align 4
  %state_out_pos = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 20
  store i32 0, ptr %state_out_pos, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, ptr %0, i64 0, i32 26
  store i32 -1, ptr %blockCRC, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.EState, ptr %1, i64 0, i32 22, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8
  %blockNo = getelementptr inbounds %struct.EState, ptr %4, i64 0, i32 29
  %5 = load i32, ptr %blockNo, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, ptr %blockNo, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzCompress(ptr noundef %strm, i32 noundef %action) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %action.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %action, ptr %action.addr, align 4
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, ptr %0, i64 0, i32 8
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %s, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %cmp5.not = icmp eq ptr %3, %4
  br i1 %cmp5.not, label %preswitch, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

preswitch:                                        ; preds = %if.end3, %if.then18, %if.then13
  %5 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.EState, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %mode, align 8
  switch i32 %6, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb23
    i32 4, label %sw.bb47
  ]

sw.bb:                                            ; preds = %preswitch
  store i32 -1, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %preswitch
  %7 = load i32, ptr %action.addr, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  %8 = load ptr, ptr %strm.addr, align 8
  %call = call zeroext i8 @handle_compress(ptr noundef %8)
  %tobool.not = icmp eq i8 %call, 0
  %cond = select i1 %tobool.not, i32 -2, i32 1
  store i32 %cond, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb8
  %9 = load i32, ptr %action.addr, align 4
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  %10 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %10, i64 0, i32 1
  %11 = load i32, ptr %avail_in, align 8
  %12 = load ptr, ptr %s, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, ptr %12, i64 0, i32 3
  store i32 %11, ptr %avail_in_expect, align 8
  %mode14 = getelementptr inbounds %struct.EState, ptr %12, i64 0, i32 1
  store i32 3, ptr %mode14, align 8
  br label %preswitch

if.else15:                                        ; preds = %if.else
  %13 = load i32, ptr %action.addr, align 4
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else15
  %14 = load ptr, ptr %strm.addr, align 8
  %avail_in19 = getelementptr inbounds %struct.bz_stream, ptr %14, i64 0, i32 1
  %15 = load i32, ptr %avail_in19, align 8
  %16 = load ptr, ptr %s, align 8
  %avail_in_expect20 = getelementptr inbounds %struct.EState, ptr %16, i64 0, i32 3
  store i32 %15, ptr %avail_in_expect20, align 8
  %mode21 = getelementptr inbounds %struct.EState, ptr %16, i64 0, i32 1
  store i32 4, ptr %mode21, align 8
  br label %preswitch

if.else22:                                        ; preds = %if.else15
  store i32 -2, ptr %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %preswitch
  %17 = load i32, ptr %action.addr, align 4
  %cmp24.not = icmp eq i32 %17, 1
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.bb23
  store i32 -1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %sw.bb23
  %18 = load ptr, ptr %s, align 8
  %avail_in_expect28 = getelementptr inbounds %struct.EState, ptr %18, i64 0, i32 3
  %19 = load i32, ptr %avail_in_expect28, align 8
  %20 = load ptr, ptr %18, align 8
  %avail_in30 = getelementptr inbounds %struct.bz_stream, ptr %20, i64 0, i32 1
  %21 = load i32, ptr %avail_in30, align 8
  %cmp31.not = icmp eq i32 %19, %21
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end27
  store i32 -1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  %22 = load ptr, ptr %strm.addr, align 8
  %call35 = call zeroext i8 @handle_compress(ptr noundef %22)
  %23 = load ptr, ptr %s, align 8
  %avail_in_expect36 = getelementptr inbounds %struct.EState, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %avail_in_expect36, align 8
  %cmp37.not = icmp eq i32 %24, 0
  br i1 %cmp37.not, label %lor.lhs.false, label %if.then44

lor.lhs.false:                                    ; preds = %if.end34
  %25 = load ptr, ptr %s, align 8
  %call39 = call zeroext i8 @isempty_RL(ptr noundef %25)
  %tobool40.not = icmp eq i8 %call39, 0
  br i1 %tobool40.not, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %26 = load ptr, ptr %s, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, ptr %26, i64 0, i32 20
  %27 = load i32, ptr %state_out_pos, align 8
  %numZ = getelementptr inbounds %struct.EState, ptr %26, i64 0, i32 19
  %28 = load i32, ptr %numZ, align 4
  %cmp42 = icmp slt i32 %27, %28
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false41, %lor.lhs.false, %if.end34
  store i32 2, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %lor.lhs.false41
  %29 = load ptr, ptr %s, align 8
  %mode46 = getelementptr inbounds %struct.EState, ptr %29, i64 0, i32 1
  store i32 2, ptr %mode46, align 8
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb47:                                          ; preds = %preswitch
  %30 = load i32, ptr %action.addr, align 4
  %cmp48.not = icmp eq i32 %30, 2
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %sw.bb47
  store i32 -1, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %sw.bb47
  %31 = load ptr, ptr %s, align 8
  %avail_in_expect52 = getelementptr inbounds %struct.EState, ptr %31, i64 0, i32 3
  %32 = load i32, ptr %avail_in_expect52, align 8
  %33 = load ptr, ptr %31, align 8
  %avail_in54 = getelementptr inbounds %struct.bz_stream, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %avail_in54, align 8
  %cmp55.not = icmp eq i32 %32, %34
  br i1 %cmp55.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.end51
  store i32 -1, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end51
  %35 = load ptr, ptr %strm.addr, align 8
  %call59 = call zeroext i8 @handle_compress(ptr noundef %35)
  %tobool60.not = icmp eq i8 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end58
  store i32 -1, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end58
  %36 = load ptr, ptr %s, align 8
  %avail_in_expect63 = getelementptr inbounds %struct.EState, ptr %36, i64 0, i32 3
  %37 = load i32, ptr %avail_in_expect63, align 8
  %cmp64.not = icmp eq i32 %37, 0
  br i1 %cmp64.not, label %lor.lhs.false66, label %if.then74

lor.lhs.false66:                                  ; preds = %if.end62
  %38 = load ptr, ptr %s, align 8
  %call67 = call zeroext i8 @isempty_RL(ptr noundef %38)
  %tobool68.not = icmp eq i8 %call67, 0
  br i1 %tobool68.not, label %if.then74, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %39 = load ptr, ptr %s, align 8
  %state_out_pos70 = getelementptr inbounds %struct.EState, ptr %39, i64 0, i32 20
  %40 = load i32, ptr %state_out_pos70, align 8
  %numZ71 = getelementptr inbounds %struct.EState, ptr %39, i64 0, i32 19
  %41 = load i32, ptr %numZ71, align 4
  %cmp72 = icmp slt i32 %40, %41
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %lor.lhs.false66, %if.end62
  store i32 3, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %lor.lhs.false69
  %42 = load ptr, ptr %s, align 8
  %mode76 = getelementptr inbounds %struct.EState, ptr %42, i64 0, i32 1
  store i32 1, ptr %mode76, align 8
  store i32 4, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %preswitch
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end75, %if.then74, %if.then61, %if.then57, %if.then50, %if.end45, %if.then44, %if.then33, %if.then26, %if.else22, %if.then10, %sw.bb, %if.then6, %if.then2, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @handle_compress(ptr noundef %strm) #0 {
entry:
  %progress_in = alloca i8, align 1
  %progress_out = alloca i8, align 1
  %s = alloca ptr, align 8
  store i8 0, ptr %progress_in, align 1
  store i8 0, ptr %progress_out, align 1
  %state = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 8
  %0 = load ptr, ptr %state, align 8
  store ptr %0, ptr %s, align 8
  br label %while.body

while.body:                                       ; preds = %if.end65, %entry
  %1 = load ptr, ptr %s, align 8
  %state1 = getelementptr inbounds %struct.EState, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %state1, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %s, align 8
  %call = call zeroext i8 @copy_output_until_stop(ptr noundef %3)
  %4 = load i8, ptr %progress_out, align 1
  %or2 = or i8 %4, %call
  store i8 %or2, ptr %progress_out, align 1
  %state_out_pos = getelementptr inbounds %struct.EState, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %state_out_pos, align 8
  %6 = load ptr, ptr %s, align 8
  %numZ = getelementptr inbounds %struct.EState, ptr %6, i64 0, i32 19
  %7 = load i32, ptr %numZ, align 4
  %cmp4 = icmp slt i32 %5, %7
  br i1 %cmp4, label %while.end, label %if.end

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %s, align 8
  %mode = getelementptr inbounds %struct.EState, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %mode, align 8
  %cmp7 = icmp eq i32 %9, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %s, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, ptr %10, i64 0, i32 3
  %11 = load i32, ptr %avail_in_expect, align 8
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %12 = load ptr, ptr %s, align 8
  %call12 = call zeroext i8 @isempty_RL(ptr noundef %12)
  %tobool.not = icmp eq i8 %call12, 0
  br i1 %tobool.not, label %if.end15, label %while.end

if.end15:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.end
  %13 = load ptr, ptr %s, align 8
  call void @prepare_new_block(ptr noundef %13)
  %state16 = getelementptr inbounds %struct.EState, ptr %13, i64 0, i32 2
  store i32 2, ptr %state16, align 4
  %mode17 = getelementptr inbounds %struct.EState, ptr %13, i64 0, i32 1
  %14 = load i32, ptr %mode17, align 8
  %cmp18 = icmp eq i32 %14, 3
  br i1 %cmp18, label %land.lhs.true20, label %if.end30

land.lhs.true20:                                  ; preds = %if.end15
  %15 = load ptr, ptr %s, align 8
  %avail_in_expect21 = getelementptr inbounds %struct.EState, ptr %15, i64 0, i32 3
  %16 = load i32, ptr %avail_in_expect21, align 8
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end30

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %17 = load ptr, ptr %s, align 8
  %call25 = call zeroext i8 @isempty_RL(ptr noundef %17)
  %tobool27.not = icmp eq i8 %call25, 0
  br i1 %tobool27.not, label %if.end30, label %while.end

if.end30:                                         ; preds = %if.end15, %land.lhs.true20, %land.lhs.true24, %while.body
  %18 = load ptr, ptr %s, align 8
  %state31 = getelementptr inbounds %struct.EState, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %state31, align 4
  %cmp32 = icmp eq i32 %19, 2
  br i1 %cmp32, label %if.then34, label %if.end65

if.then34:                                        ; preds = %if.end30
  %20 = load ptr, ptr %s, align 8
  %call35 = call zeroext i8 @copy_input_until_stop(ptr noundef %20)
  %21 = load i8, ptr %progress_in, align 1
  %or381 = or i8 %21, %call35
  store i8 %or381, ptr %progress_in, align 1
  %mode40 = getelementptr inbounds %struct.EState, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %mode40, align 8
  %cmp41.not = icmp eq i32 %22, 2
  br i1 %cmp41.not, label %if.else, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.then34
  %23 = load ptr, ptr %s, align 8
  %avail_in_expect44 = getelementptr inbounds %struct.EState, ptr %23, i64 0, i32 3
  %24 = load i32, ptr %avail_in_expect44, align 8
  %cmp45 = icmp eq i32 %24, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true43
  %25 = load ptr, ptr %s, align 8
  call void @flush_RL(ptr noundef %25)
  %mode48 = getelementptr inbounds %struct.EState, ptr %25, i64 0, i32 1
  %26 = load i32, ptr %mode48, align 8
  %cmp49 = icmp eq i32 %26, 4
  %conv51 = zext i1 %cmp49 to i8
  call void @BZ2_compressBlock(ptr noundef %25, i8 noundef zeroext %conv51) #11
  %27 = load ptr, ptr %s, align 8
  %state52 = getelementptr inbounds %struct.EState, ptr %27, i64 0, i32 2
  store i32 1, ptr %state52, align 4
  br label %if.end65

if.else:                                          ; preds = %land.lhs.true43, %if.then34
  %28 = load ptr, ptr %s, align 8
  %nblock = getelementptr inbounds %struct.EState, ptr %28, i64 0, i32 17
  %29 = load i32, ptr %nblock, align 4
  %nblockMAX = getelementptr inbounds %struct.EState, ptr %28, i64 0, i32 18
  %30 = load i32, ptr %nblockMAX, align 8
  %cmp53.not = icmp slt i32 %29, %30
  br i1 %cmp53.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.else
  %31 = load ptr, ptr %s, align 8
  call void @BZ2_compressBlock(ptr noundef %31, i8 noundef zeroext 0) #11
  %state56 = getelementptr inbounds %struct.EState, ptr %31, i64 0, i32 2
  store i32 1, ptr %state56, align 4
  br label %if.end65

if.else57:                                        ; preds = %if.else
  %32 = load ptr, ptr %s, align 8
  %33 = load ptr, ptr %32, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %33, i64 0, i32 1
  %34 = load i32, ptr %avail_in, align 8
  %cmp59 = icmp eq i32 %34, 0
  br i1 %cmp59, label %while.end, label %if.end65

if.end65:                                         ; preds = %if.then47, %if.else57, %if.then55, %if.end30
  br label %while.body

while.end:                                        ; preds = %if.else57, %land.lhs.true24, %land.lhs.true11, %if.then
  %35 = load i8, ptr %progress_in, align 1
  %tobool67.not = icmp eq i8 %35, 0
  %36 = load i8, ptr %progress_out, align 1
  %tobool69 = icmp ne i8 %36, 0
  %37 = select i1 %tobool67.not, i1 %tobool69, i1 true
  %conv70 = zext i1 %37 to i8
  ret i8 %conv70
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @isempty_RL(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 13
  %0 = load i32, ptr %state_in_ch, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, ptr %1, i64 0, i32 14
  %2 = load i32, ptr %state_in_len, align 8
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %return, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else
  %storemerge = phi i8 [ 1, %if.else ], [ 0, %land.lhs.true ]
  ret i8 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzCompressEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, ptr %0, i64 0, i32 8
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %s, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %cmp5.not = icmp eq ptr %3, %4
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %s, align 8
  %arr1 = getelementptr inbounds %struct.EState, ptr %5, i64 0, i32 4
  %6 = load ptr, ptr %arr1, align 8
  %cmp8.not = icmp eq ptr %6, null
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %7 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, ptr %7, i64 0, i32 10
  %8 = load ptr, ptr %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %opaque, align 8
  %10 = load ptr, ptr %s, align 8
  %arr110 = getelementptr inbounds %struct.EState, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %arr110, align 8
  call void %8(ptr noundef %9, ptr noundef %11) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %12 = load ptr, ptr %s, align 8
  %arr2 = getelementptr inbounds %struct.EState, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %arr2, align 8
  %cmp12.not = icmp eq ptr %13, null
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end11
  %14 = load ptr, ptr %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.bz_stream, ptr %14, i64 0, i32 10
  %15 = load ptr, ptr %bzfree14, align 8
  %opaque15 = getelementptr inbounds %struct.bz_stream, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %opaque15, align 8
  %17 = load ptr, ptr %s, align 8
  %arr216 = getelementptr inbounds %struct.EState, ptr %17, i64 0, i32 5
  %18 = load ptr, ptr %arr216, align 8
  call void %15(ptr noundef %16, ptr noundef %18) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %19 = load ptr, ptr %s, align 8
  %ftab = getelementptr inbounds %struct.EState, ptr %19, i64 0, i32 6
  %20 = load ptr, ptr %ftab, align 8
  %cmp18.not = icmp eq ptr %20, null
  br i1 %cmp18.not, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end17
  %21 = load ptr, ptr %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.bz_stream, ptr %21, i64 0, i32 10
  %22 = load ptr, ptr %bzfree20, align 8
  %opaque21 = getelementptr inbounds %struct.bz_stream, ptr %21, i64 0, i32 11
  %23 = load ptr, ptr %opaque21, align 8
  %24 = load ptr, ptr %s, align 8
  %ftab22 = getelementptr inbounds %struct.EState, ptr %24, i64 0, i32 6
  %25 = load ptr, ptr %ftab22, align 8
  call void %22(ptr noundef %23, ptr noundef %25) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %26 = load ptr, ptr %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.bz_stream, ptr %26, i64 0, i32 10
  %27 = load ptr, ptr %bzfree24, align 8
  %opaque25 = getelementptr inbounds %struct.bz_stream, ptr %26, i64 0, i32 11
  %28 = load ptr, ptr %opaque25, align 8
  %state26 = getelementptr inbounds %struct.bz_stream, ptr %26, i64 0, i32 8
  %29 = load ptr, ptr %state26, align 8
  call void %27(ptr noundef %28, ptr noundef %29) #11
  %30 = load ptr, ptr %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.bz_stream, ptr %30, i64 0, i32 8
  store ptr null, ptr %state27, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzDecompressInit(ptr noundef %strm, i32 noundef %verbosity, i32 noundef %small) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %small, ptr %small.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %1 = load i32, ptr %small.addr, align 4
  %cmp3.not = icmp eq i32 %1, 0
  %2 = load i32, ptr %small.addr, align 4
  %cmp4.not = icmp eq i32 %2, 1
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  store i32 -2, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end2
  %3 = load i32, ptr %verbosity.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  %4 = load i32, ptr %verbosity.addr, align 4
  %cmp8 = icmp sgt i32 %4, 4
  %or.cond1 = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond1, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 -2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %5 = load ptr, ptr %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, ptr %5, i64 0, i32 9
  %6 = load ptr, ptr %bzalloc, align 8
  %cmp11 = icmp eq ptr %6, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %7 = load ptr, ptr %strm.addr, align 8
  %bzalloc13 = getelementptr inbounds %struct.bz_stream, ptr %7, i64 0, i32 9
  store ptr @default_bzalloc, ptr %bzalloc13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %8 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, ptr %8, i64 0, i32 10
  %9 = load ptr, ptr %bzfree, align 8
  %cmp15 = icmp eq ptr %9, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %10 = load ptr, ptr %strm.addr, align 8
  %bzfree17 = getelementptr inbounds %struct.bz_stream, ptr %10, i64 0, i32 10
  store ptr @default_bzfree, ptr %bzfree17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %11 = load ptr, ptr %strm.addr, align 8
  %bzalloc19 = getelementptr inbounds %struct.bz_stream, ptr %11, i64 0, i32 9
  %12 = load ptr, ptr %bzalloc19, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %opaque, align 8
  %call20 = call ptr %12(ptr noundef %13, i32 noundef 64144, i32 noundef 1) #11
  store ptr %call20, ptr %s, align 8
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -3, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %14 = load ptr, ptr %strm.addr, align 8
  %15 = load ptr, ptr %s, align 8
  store ptr %14, ptr %15, align 8
  %state = getelementptr inbounds %struct.bz_stream, ptr %14, i64 0, i32 8
  store ptr %15, ptr %state, align 8
  %state25 = getelementptr inbounds %struct.DState, ptr %15, i64 0, i32 1
  store i32 10, ptr %state25, align 8
  %bsLive = getelementptr inbounds %struct.DState, ptr %15, i64 0, i32 8
  store i32 0, ptr %bsLive, align 4
  %16 = load ptr, ptr %s, align 8
  %bsBuff = getelementptr inbounds %struct.DState, ptr %16, i64 0, i32 7
  store i32 0, ptr %bsBuff, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, ptr %16, i64 0, i32 26
  store i32 0, ptr %calculatedCombinedCRC, align 4
  %17 = load ptr, ptr %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, ptr %17, i64 0, i32 2
  store i32 0, ptr %total_in_lo32, align 4
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, ptr %17, i64 0, i32 3
  store i32 0, ptr %total_in_hi32, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, ptr %17, i64 0, i32 6
  store i32 0, ptr %total_out_lo32, align 4
  %18 = load ptr, ptr %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, ptr %18, i64 0, i32 7
  store i32 0, ptr %total_out_hi32, align 8
  %19 = load i32, ptr %small.addr, align 4
  %conv = trunc i32 %19 to i8
  %20 = load ptr, ptr %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, ptr %20, i64 0, i32 10
  store i8 %conv, ptr %smallDecompress, align 4
  %ll4 = getelementptr inbounds %struct.DState, ptr %20, i64 0, i32 22
  store ptr null, ptr %ll4, align 8
  %ll16 = getelementptr inbounds %struct.DState, ptr %20, i64 0, i32 21
  store ptr null, ptr %ll16, align 8
  %21 = load ptr, ptr %s, align 8
  %tt = getelementptr inbounds %struct.DState, ptr %21, i64 0, i32 20
  store ptr null, ptr %tt, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, ptr %21, i64 0, i32 11
  store i32 0, ptr %currBlockNo, align 8
  %22 = load i32, ptr %verbosity.addr, align 4
  %verbosity26 = getelementptr inbounds %struct.DState, ptr %21, i64 0, i32 12
  store i32 %22, ptr %verbosity26, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then9, %if.then5, %if.then1
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_indexIntoF(i32 noundef %indx, ptr noundef %cftab) #0 {
entry:
  %indx.addr = alloca i32, align 4
  %cftab.addr = alloca ptr, align 8
  %nb = alloca i32, align 4
  %na = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %indx, ptr %indx.addr, align 4
  store ptr %cftab, ptr %cftab.addr, align 8
  store i32 0, ptr %nb, align 4
  store i32 256, ptr %na, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %nb, align 4
  %1 = load i32, ptr %na, align 4
  %add = add nsw i32 %0, %1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %mid, align 4
  %2 = load i32, ptr %indx.addr, align 4
  %3 = load ptr, ptr %cftab.addr, align 8
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp slt i32 %2, %4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32, ptr %mid, align 4
  store i32 %5, ptr %nb, align 4
  br label %do.cond

if.else:                                          ; preds = %do.body
  %6 = load i32, ptr %mid, align 4
  store i32 %6, ptr %na, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.then, %if.else
  %7 = load i32, ptr %na, align 4
  %8 = load i32, ptr %nb, align 4
  %sub = sub nsw i32 %7, %8
  %cmp1.not = icmp eq i32 %sub, 1
  br i1 %cmp1.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %nb, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzDecompress(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %r = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, ptr %0, i64 0, i32 8
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %s, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %cmp5.not = icmp eq ptr %3, %4
  br i1 %cmp5.not, label %while.body, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

while.body:                                       ; preds = %if.end3, %if.end70
  %5 = load ptr, ptr %s, align 8
  %state8 = getelementptr inbounds %struct.DState, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %state8, align 8
  %cmp9 = icmp eq i32 %6, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %7 = load ptr, ptr %s, align 8
  %state12 = getelementptr inbounds %struct.DState, ptr %7, i64 0, i32 1
  %8 = load i32, ptr %state12, align 8
  %cmp13 = icmp eq i32 %8, 2
  br i1 %cmp13, label %if.then14, label %if.end47

if.then14:                                        ; preds = %if.end11
  %9 = load ptr, ptr %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, ptr %9, i64 0, i32 10
  %10 = load i8, ptr %smallDecompress, align 4
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then14
  %11 = load ptr, ptr %s, align 8
  %call = call zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %11)
  br label %if.end17

if.else:                                          ; preds = %if.then14
  %12 = load ptr, ptr %s, align 8
  %call16 = call zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %12)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %storemerge = phi i8 [ %call16, %if.else ], [ %call, %if.then15 ]
  %tobool18.not = icmp eq i8 %storemerge, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  store i32 -4, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %13 = load ptr, ptr %s, align 8
  %nblock_used = getelementptr inbounds %struct.DState, ptr %13, i64 0, i32 17
  %14 = load i32, ptr %nblock_used, align 4
  %save_nblock = getelementptr inbounds %struct.DState, ptr %13, i64 0, i32 51
  %15 = load i32, ptr %save_nblock, align 8
  %add = add nsw i32 %15, 1
  %cmp21 = icmp eq i32 %14, %add
  br i1 %cmp21, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %if.end20
  %16 = load ptr, ptr %s, align 8
  %state_out_len = getelementptr inbounds %struct.DState, ptr %16, i64 0, i32 3
  %17 = load i32, ptr %state_out_len, align 8
  %cmp22 = icmp eq i32 %17, 0
  br i1 %cmp22, label %if.then23, label %if.else45

if.then23:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %s, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, ptr %18, i64 0, i32 25
  %19 = load i32, ptr %calculatedBlockCRC, align 8
  %neg = xor i32 %19, -1
  %calculatedBlockCRC24 = getelementptr inbounds %struct.DState, ptr %18, i64 0, i32 25
  store i32 %neg, ptr %calculatedBlockCRC24, align 8
  %verbosity = getelementptr inbounds %struct.DState, ptr %18, i64 0, i32 12
  %20 = load i32, ptr %verbosity, align 4
  %cmp25 = icmp sgt i32 %20, 2
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then23
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = load ptr, ptr %s, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, ptr %22, i64 0, i32 23
  %23 = load i32, ptr %storedBlockCRC, align 8
  %calculatedBlockCRC27 = getelementptr inbounds %struct.DState, ptr %22, i64 0, i32 25
  %24 = load i32, ptr %calculatedBlockCRC27, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %24) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23
  %25 = load ptr, ptr %s, align 8
  %verbosity30 = getelementptr inbounds %struct.DState, ptr %25, i64 0, i32 12
  %26 = load i32, ptr %verbosity30, align 4
  %cmp31 = icmp sgt i32 %26, 1
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %27 = load ptr, ptr @__stderrp, align 8
  %fputc = call i32 @fputc(i32 93, ptr %27)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %28 = load ptr, ptr %s, align 8
  %calculatedBlockCRC35 = getelementptr inbounds %struct.DState, ptr %28, i64 0, i32 25
  %29 = load i32, ptr %calculatedBlockCRC35, align 8
  %storedBlockCRC36 = getelementptr inbounds %struct.DState, ptr %28, i64 0, i32 23
  %30 = load i32, ptr %storedBlockCRC36, align 8
  %cmp37.not = icmp eq i32 %29, %30
  br i1 %cmp37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end34
  store i32 -4, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end34
  %31 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, ptr %31, i64 0, i32 26
  %32 = load i32, ptr %calculatedCombinedCRC, align 4
  %or = call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 1)
  %calculatedCombinedCRC41 = getelementptr inbounds %struct.DState, ptr %31, i64 0, i32 26
  store i32 %or, ptr %calculatedCombinedCRC41, align 4
  %calculatedBlockCRC42 = getelementptr inbounds %struct.DState, ptr %31, i64 0, i32 25
  %33 = load i32, ptr %calculatedBlockCRC42, align 8
  %34 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC43 = getelementptr inbounds %struct.DState, ptr %34, i64 0, i32 26
  %35 = load i32, ptr %calculatedCombinedCRC43, align 4
  %xor = xor i32 %35, %33
  store i32 %xor, ptr %calculatedCombinedCRC43, align 4
  %state44 = getelementptr inbounds %struct.DState, ptr %34, i64 0, i32 1
  store i32 14, ptr %state44, align 8
  br label %if.end47

if.else45:                                        ; preds = %land.lhs.true, %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end39, %if.end11
  %36 = load ptr, ptr %s, align 8
  %state48 = getelementptr inbounds %struct.DState, ptr %36, i64 0, i32 1
  %37 = load i32, ptr %state48, align 8
  %cmp49 = icmp sgt i32 %37, 9
  br i1 %cmp49, label %if.then50, label %if.end70

if.then50:                                        ; preds = %if.end47
  %38 = load ptr, ptr %s, align 8
  %call51 = call i32 @BZ2_decompress(ptr noundef %38) #11
  store i32 %call51, ptr %r, align 4
  %cmp52 = icmp eq i32 %call51, 4
  br i1 %cmp52, label %if.then53, label %if.end65

if.then53:                                        ; preds = %if.then50
  %39 = load ptr, ptr %s, align 8
  %verbosity54 = getelementptr inbounds %struct.DState, ptr %39, i64 0, i32 12
  %40 = load i32, ptr %verbosity54, align 4
  %cmp55 = icmp sgt i32 %40, 2
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.then53
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = load ptr, ptr %s, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, ptr %42, i64 0, i32 24
  %43 = load i32, ptr %storedCombinedCRC, align 4
  %calculatedCombinedCRC57 = getelementptr inbounds %struct.DState, ptr %42, i64 0, i32 26
  %44 = load i32, ptr %calculatedCombinedCRC57, align 4
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef %44) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then53
  %45 = load ptr, ptr %s, align 8
  %calculatedCombinedCRC60 = getelementptr inbounds %struct.DState, ptr %45, i64 0, i32 26
  %46 = load i32, ptr %calculatedCombinedCRC60, align 4
  %storedCombinedCRC61 = getelementptr inbounds %struct.DState, ptr %45, i64 0, i32 24
  %47 = load i32, ptr %storedCombinedCRC61, align 4
  %cmp62.not = icmp eq i32 %46, %47
  br i1 %cmp62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  store i32 -4, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end59
  %48 = load i32, ptr %r, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.then50
  %49 = load ptr, ptr %s, align 8
  %state66 = getelementptr inbounds %struct.DState, ptr %49, i64 0, i32 1
  %50 = load i32, ptr %state66, align 8
  %cmp67.not = icmp eq i32 %50, 2
  br i1 %cmp67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end65
  %51 = load i32, ptr %r, align 4
  store i32 %51, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end65, %if.end47
  br label %while.body

return:                                           ; preds = %if.then68, %if.end64, %if.then63, %if.else45, %if.then38, %if.then19, %if.then10, %if.then6, %if.then2, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(ptr noundef %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca ptr, align 8
  %k1 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, ptr %s, i64 0, i32 4
  %0 = load i8, ptr %blockRandomised, align 4
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %while.body339, label %while.body

while.body:                                       ; preds = %if.end206, %if.end138, %if.end71, %entry, %if.end328, %if.then229, %if.then161, %if.then93
  br label %while.body2

while.body2:                                      ; preds = %if.end26, %while.body
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, ptr %2, i64 0, i32 5
  %3 = load i32, ptr %avail_out, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body2
  %4 = load ptr, ptr %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %state_out_len, align 8
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %while.end, label %if.end6

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, ptr %6, i64 0, i32 2
  %7 = load i8, ptr %state_out_ch, align 4
  %8 = load ptr, ptr %6, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %next_out, align 8
  store i8 %7, ptr %9, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 25
  %11 = load i32, ptr %calculatedBlockCRC, align 8
  %shl = shl i32 %11, 8
  %shr = lshr i32 %11, 24
  %state_out_ch9 = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 2
  %12 = load i8, ptr %state_out_ch9, align 4
  %conv = zext i8 %12 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  %xor10 = xor i32 %shl, %13
  %14 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, ptr %14, i64 0, i32 25
  store i32 %xor10, ptr %calculatedBlockCRC11, align 8
  %state_out_len12 = getelementptr inbounds %struct.DState, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %state_out_len12, align 8
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %state_out_len12, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %next_out14 = getelementptr inbounds %struct.bz_stream, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %next_out14, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %next_out14, align 8
  %19 = load ptr, ptr %16, align 8
  %avail_out16 = getelementptr inbounds %struct.bz_stream, ptr %19, i64 0, i32 5
  %20 = load i32, ptr %avail_out16, align 8
  %dec17 = add i32 %20, -1
  store i32 %dec17, ptr %avail_out16, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, ptr %22, i64 0, i32 6
  %23 = load i32, ptr %total_out_lo32, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %total_out_lo32, align 4
  %24 = load ptr, ptr %21, align 8
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, ptr %24, i64 0, i32 6
  %25 = load i32, ptr %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %25, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %26 = load ptr, ptr %s.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, ptr %27, i64 0, i32 7
  %28 = load i32, ptr %total_out_hi32, align 8
  %inc25 = add i32 %28, 1
  store i32 %inc25, ptr %total_out_hi32, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.body2

while.end:                                        ; preds = %if.end
  %29 = load ptr, ptr %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, ptr %29, i64 0, i32 17
  %30 = load i32, ptr %nblock_used, align 4
  %save_nblock = getelementptr inbounds %struct.DState, ptr %29, i64 0, i32 51
  %31 = load i32, ptr %save_nblock, align 8
  %add = add nsw i32 %31, 1
  %cmp27 = icmp eq i32 %30, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i8 0, ptr %retval, align 1
  br label %return

if.end30:                                         ; preds = %while.end
  %32 = load ptr, ptr %s.addr, align 8
  %nblock_used31 = getelementptr inbounds %struct.DState, ptr %32, i64 0, i32 17
  %33 = load i32, ptr %nblock_used31, align 4
  %save_nblock32 = getelementptr inbounds %struct.DState, ptr %32, i64 0, i32 51
  %34 = load i32, ptr %save_nblock32, align 8
  %add33 = add nsw i32 %34, 1
  %cmp34 = icmp sgt i32 %33, %add33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  store i8 1, ptr %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end30
  %35 = load ptr, ptr %s.addr, align 8
  %state_out_len38 = getelementptr inbounds %struct.DState, ptr %35, i64 0, i32 3
  store i32 1, ptr %state_out_len38, align 8
  %k0 = getelementptr inbounds %struct.DState, ptr %35, i64 0, i32 15
  %36 = load i32, ptr %k0, align 8
  %conv39 = trunc i32 %36 to i8
  %state_out_ch40 = getelementptr inbounds %struct.DState, ptr %35, i64 0, i32 2
  store i8 %conv39, ptr %state_out_ch40, align 4
  %37 = load ptr, ptr %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, ptr %37, i64 0, i32 14
  %38 = load i32, ptr %tPos, align 4
  %cftab = getelementptr inbounds %struct.DState, ptr %37, i64 0, i32 18
  %call = call i32 @BZ2_indexIntoF(i32 noundef %38, ptr noundef nonnull %cftab)
  %conv41 = trunc i32 %call to i8
  store i8 %conv41, ptr %k1, align 1
  %39 = load ptr, ptr %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, ptr %39, i64 0, i32 21
  %40 = load ptr, ptr %ll16, align 8
  %tPos42 = getelementptr inbounds %struct.DState, ptr %39, i64 0, i32 14
  %41 = load i32, ptr %tPos42, align 4
  %idxprom43 = zext i32 %41 to i64
  %arrayidx44 = getelementptr inbounds i16, ptr %40, i64 %idxprom43
  %42 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %42 to i32
  %43 = load ptr, ptr %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, ptr %43, i64 0, i32 22
  %44 = load ptr, ptr %ll4, align 8
  %tPos46 = getelementptr inbounds %struct.DState, ptr %43, i64 0, i32 14
  %45 = load i32, ptr %tPos46, align 4
  %shr47 = lshr i32 %45, 1
  %idxprom48 = zext i32 %shr47 to i64
  %arrayidx49 = getelementptr inbounds i8, ptr %44, i64 %idxprom48
  %46 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %46 to i32
  %47 = load ptr, ptr %s.addr, align 8
  %tPos51 = getelementptr inbounds %struct.DState, ptr %47, i64 0, i32 14
  %48 = load i32, ptr %tPos51, align 4
  %shl52 = shl i32 %48, 2
  %and = and i32 %shl52, 4
  %shr53 = lshr i32 %conv50, %and
  %and54 = shl nuw nsw i32 %shr53, 16
  %shl55 = and i32 %and54, 983040
  %or = or i32 %shl55, %conv45
  %49 = load ptr, ptr %s.addr, align 8
  %tPos56 = getelementptr inbounds %struct.DState, ptr %49, i64 0, i32 14
  store i32 %or, ptr %tPos56, align 4
  %rNToGo = getelementptr inbounds %struct.DState, ptr %49, i64 0, i32 5
  %50 = load i32, ptr %rNToGo, align 8
  %cmp57 = icmp eq i32 %50, 0
  br i1 %cmp57, label %if.then59, label %if.end71

if.then59:                                        ; preds = %if.end37
  %51 = load ptr, ptr %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, ptr %51, i64 0, i32 6
  %52 = load i32, ptr %rTPos, align 4
  %idxprom60 = sext i32 %52 to i64
  %arrayidx61 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom60
  %53 = load i32, ptr %arrayidx61, align 4
  %rNToGo62 = getelementptr inbounds %struct.DState, ptr %51, i64 0, i32 5
  store i32 %53, ptr %rNToGo62, align 8
  %54 = load ptr, ptr %s.addr, align 8
  %rTPos63 = getelementptr inbounds %struct.DState, ptr %54, i64 0, i32 6
  %55 = load i32, ptr %rTPos63, align 4
  %inc64 = add nsw i32 %55, 1
  store i32 %inc64, ptr %rTPos63, align 4
  %cmp66 = icmp eq i32 %inc64, 512
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.then59
  %56 = load ptr, ptr %s.addr, align 8
  %rTPos69 = getelementptr inbounds %struct.DState, ptr %56, i64 0, i32 6
  store i32 0, ptr %rTPos69, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then59, %if.then68, %if.end37
  %57 = load ptr, ptr %s.addr, align 8
  %rNToGo72 = getelementptr inbounds %struct.DState, ptr %57, i64 0, i32 5
  %58 = load i32, ptr %rNToGo72, align 8
  %dec73 = add nsw i32 %58, -1
  store i32 %dec73, ptr %rNToGo72, align 8
  %cmp75 = icmp eq i32 %dec73, 1
  %cond = zext i1 %cmp75 to i8
  %59 = load i8, ptr %k1, align 1
  %xor78 = xor i8 %59, %cond
  store i8 %xor78, ptr %k1, align 1
  %60 = load ptr, ptr %s.addr, align 8
  %nblock_used80 = getelementptr inbounds %struct.DState, ptr %60, i64 0, i32 17
  %61 = load i32, ptr %nblock_used80, align 4
  %inc81 = add nsw i32 %61, 1
  store i32 %inc81, ptr %nblock_used80, align 4
  %save_nblock83 = getelementptr inbounds %struct.DState, ptr %60, i64 0, i32 51
  %62 = load i32, ptr %save_nblock83, align 8
  %cmp85 = icmp eq i32 %61, %62
  br i1 %cmp85, label %while.body, label %if.end88

if.end88:                                         ; preds = %if.end71
  %63 = load i8, ptr %k1, align 1
  %conv89 = zext i8 %63 to i32
  %64 = load ptr, ptr %s.addr, align 8
  %k090 = getelementptr inbounds %struct.DState, ptr %64, i64 0, i32 15
  %65 = load i32, ptr %k090, align 8
  %cmp91.not = icmp eq i32 %65, %conv89
  br i1 %cmp91.not, label %if.end96, label %if.then93

if.then93:                                        ; preds = %if.end88
  %66 = load i8, ptr %k1, align 1
  %conv94 = zext i8 %66 to i32
  %67 = load ptr, ptr %s.addr, align 8
  %k095 = getelementptr inbounds %struct.DState, ptr %67, i64 0, i32 15
  store i32 %conv94, ptr %k095, align 8
  br label %while.body

if.end96:                                         ; preds = %if.end88
  %68 = load ptr, ptr %s.addr, align 8
  %state_out_len97 = getelementptr inbounds %struct.DState, ptr %68, i64 0, i32 3
  store i32 2, ptr %state_out_len97, align 8
  %tPos98 = getelementptr inbounds %struct.DState, ptr %68, i64 0, i32 14
  %69 = load i32, ptr %tPos98, align 4
  %cftab99 = getelementptr inbounds %struct.DState, ptr %68, i64 0, i32 18
  %call101 = call i32 @BZ2_indexIntoF(i32 noundef %69, ptr noundef nonnull %cftab99)
  %conv102 = trunc i32 %call101 to i8
  store i8 %conv102, ptr %k1, align 1
  %70 = load ptr, ptr %s.addr, align 8
  %ll16103 = getelementptr inbounds %struct.DState, ptr %70, i64 0, i32 21
  %71 = load ptr, ptr %ll16103, align 8
  %tPos104 = getelementptr inbounds %struct.DState, ptr %70, i64 0, i32 14
  %72 = load i32, ptr %tPos104, align 4
  %idxprom105 = zext i32 %72 to i64
  %arrayidx106 = getelementptr inbounds i16, ptr %71, i64 %idxprom105
  %73 = load i16, ptr %arrayidx106, align 2
  %conv107 = zext i16 %73 to i32
  %74 = load ptr, ptr %s.addr, align 8
  %ll4108 = getelementptr inbounds %struct.DState, ptr %74, i64 0, i32 22
  %75 = load ptr, ptr %ll4108, align 8
  %tPos109 = getelementptr inbounds %struct.DState, ptr %74, i64 0, i32 14
  %76 = load i32, ptr %tPos109, align 4
  %shr110 = lshr i32 %76, 1
  %idxprom111 = zext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds i8, ptr %75, i64 %idxprom111
  %77 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %77 to i32
  %78 = load ptr, ptr %s.addr, align 8
  %tPos114 = getelementptr inbounds %struct.DState, ptr %78, i64 0, i32 14
  %79 = load i32, ptr %tPos114, align 4
  %shl115 = shl i32 %79, 2
  %and116 = and i32 %shl115, 4
  %shr117 = lshr i32 %conv113, %and116
  %and118 = shl nuw nsw i32 %shr117, 16
  %shl119 = and i32 %and118, 983040
  %or120 = or i32 %shl119, %conv107
  %80 = load ptr, ptr %s.addr, align 8
  %tPos121 = getelementptr inbounds %struct.DState, ptr %80, i64 0, i32 14
  store i32 %or120, ptr %tPos121, align 4
  %rNToGo122 = getelementptr inbounds %struct.DState, ptr %80, i64 0, i32 5
  %81 = load i32, ptr %rNToGo122, align 8
  %cmp123 = icmp eq i32 %81, 0
  br i1 %cmp123, label %if.then125, label %if.end138

if.then125:                                       ; preds = %if.end96
  %82 = load ptr, ptr %s.addr, align 8
  %rTPos126 = getelementptr inbounds %struct.DState, ptr %82, i64 0, i32 6
  %83 = load i32, ptr %rTPos126, align 4
  %idxprom127 = sext i32 %83 to i64
  %arrayidx128 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom127
  %84 = load i32, ptr %arrayidx128, align 4
  %rNToGo129 = getelementptr inbounds %struct.DState, ptr %82, i64 0, i32 5
  store i32 %84, ptr %rNToGo129, align 8
  %85 = load ptr, ptr %s.addr, align 8
  %rTPos130 = getelementptr inbounds %struct.DState, ptr %85, i64 0, i32 6
  %86 = load i32, ptr %rTPos130, align 4
  %inc131 = add nsw i32 %86, 1
  store i32 %inc131, ptr %rTPos130, align 4
  %cmp133 = icmp eq i32 %inc131, 512
  br i1 %cmp133, label %if.then135, label %if.end138

if.then135:                                       ; preds = %if.then125
  %87 = load ptr, ptr %s.addr, align 8
  %rTPos136 = getelementptr inbounds %struct.DState, ptr %87, i64 0, i32 6
  store i32 0, ptr %rTPos136, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then125, %if.then135, %if.end96
  %88 = load ptr, ptr %s.addr, align 8
  %rNToGo139 = getelementptr inbounds %struct.DState, ptr %88, i64 0, i32 5
  %89 = load i32, ptr %rNToGo139, align 8
  %dec140 = add nsw i32 %89, -1
  store i32 %dec140, ptr %rNToGo139, align 8
  %cmp142 = icmp eq i32 %dec140, 1
  %cond144 = zext i1 %cmp142 to i8
  %90 = load i8, ptr %k1, align 1
  %xor146 = xor i8 %90, %cond144
  store i8 %xor146, ptr %k1, align 1
  %91 = load ptr, ptr %s.addr, align 8
  %nblock_used148 = getelementptr inbounds %struct.DState, ptr %91, i64 0, i32 17
  %92 = load i32, ptr %nblock_used148, align 4
  %inc149 = add nsw i32 %92, 1
  store i32 %inc149, ptr %nblock_used148, align 4
  %save_nblock151 = getelementptr inbounds %struct.DState, ptr %91, i64 0, i32 51
  %93 = load i32, ptr %save_nblock151, align 8
  %cmp153 = icmp eq i32 %92, %93
  br i1 %cmp153, label %while.body, label %if.end156

if.end156:                                        ; preds = %if.end138
  %94 = load i8, ptr %k1, align 1
  %conv157 = zext i8 %94 to i32
  %95 = load ptr, ptr %s.addr, align 8
  %k0158 = getelementptr inbounds %struct.DState, ptr %95, i64 0, i32 15
  %96 = load i32, ptr %k0158, align 8
  %cmp159.not = icmp eq i32 %96, %conv157
  br i1 %cmp159.not, label %if.end164, label %if.then161

if.then161:                                       ; preds = %if.end156
  %97 = load i8, ptr %k1, align 1
  %conv162 = zext i8 %97 to i32
  %98 = load ptr, ptr %s.addr, align 8
  %k0163 = getelementptr inbounds %struct.DState, ptr %98, i64 0, i32 15
  store i32 %conv162, ptr %k0163, align 8
  br label %while.body

if.end164:                                        ; preds = %if.end156
  %99 = load ptr, ptr %s.addr, align 8
  %state_out_len165 = getelementptr inbounds %struct.DState, ptr %99, i64 0, i32 3
  store i32 3, ptr %state_out_len165, align 8
  %tPos166 = getelementptr inbounds %struct.DState, ptr %99, i64 0, i32 14
  %100 = load i32, ptr %tPos166, align 4
  %cftab167 = getelementptr inbounds %struct.DState, ptr %99, i64 0, i32 18
  %call169 = call i32 @BZ2_indexIntoF(i32 noundef %100, ptr noundef nonnull %cftab167)
  %conv170 = trunc i32 %call169 to i8
  store i8 %conv170, ptr %k1, align 1
  %101 = load ptr, ptr %s.addr, align 8
  %ll16171 = getelementptr inbounds %struct.DState, ptr %101, i64 0, i32 21
  %102 = load ptr, ptr %ll16171, align 8
  %tPos172 = getelementptr inbounds %struct.DState, ptr %101, i64 0, i32 14
  %103 = load i32, ptr %tPos172, align 4
  %idxprom173 = zext i32 %103 to i64
  %arrayidx174 = getelementptr inbounds i16, ptr %102, i64 %idxprom173
  %104 = load i16, ptr %arrayidx174, align 2
  %conv175 = zext i16 %104 to i32
  %105 = load ptr, ptr %s.addr, align 8
  %ll4176 = getelementptr inbounds %struct.DState, ptr %105, i64 0, i32 22
  %106 = load ptr, ptr %ll4176, align 8
  %tPos177 = getelementptr inbounds %struct.DState, ptr %105, i64 0, i32 14
  %107 = load i32, ptr %tPos177, align 4
  %shr178 = lshr i32 %107, 1
  %idxprom179 = zext i32 %shr178 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %106, i64 %idxprom179
  %108 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %108 to i32
  %109 = load ptr, ptr %s.addr, align 8
  %tPos182 = getelementptr inbounds %struct.DState, ptr %109, i64 0, i32 14
  %110 = load i32, ptr %tPos182, align 4
  %shl183 = shl i32 %110, 2
  %and184 = and i32 %shl183, 4
  %shr185 = lshr i32 %conv181, %and184
  %and186 = shl nuw nsw i32 %shr185, 16
  %shl187 = and i32 %and186, 983040
  %or188 = or i32 %shl187, %conv175
  %111 = load ptr, ptr %s.addr, align 8
  %tPos189 = getelementptr inbounds %struct.DState, ptr %111, i64 0, i32 14
  store i32 %or188, ptr %tPos189, align 4
  %rNToGo190 = getelementptr inbounds %struct.DState, ptr %111, i64 0, i32 5
  %112 = load i32, ptr %rNToGo190, align 8
  %cmp191 = icmp eq i32 %112, 0
  br i1 %cmp191, label %if.then193, label %if.end206

if.then193:                                       ; preds = %if.end164
  %113 = load ptr, ptr %s.addr, align 8
  %rTPos194 = getelementptr inbounds %struct.DState, ptr %113, i64 0, i32 6
  %114 = load i32, ptr %rTPos194, align 4
  %idxprom195 = sext i32 %114 to i64
  %arrayidx196 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom195
  %115 = load i32, ptr %arrayidx196, align 4
  %rNToGo197 = getelementptr inbounds %struct.DState, ptr %113, i64 0, i32 5
  store i32 %115, ptr %rNToGo197, align 8
  %116 = load ptr, ptr %s.addr, align 8
  %rTPos198 = getelementptr inbounds %struct.DState, ptr %116, i64 0, i32 6
  %117 = load i32, ptr %rTPos198, align 4
  %inc199 = add nsw i32 %117, 1
  store i32 %inc199, ptr %rTPos198, align 4
  %cmp201 = icmp eq i32 %inc199, 512
  br i1 %cmp201, label %if.then203, label %if.end206

if.then203:                                       ; preds = %if.then193
  %118 = load ptr, ptr %s.addr, align 8
  %rTPos204 = getelementptr inbounds %struct.DState, ptr %118, i64 0, i32 6
  store i32 0, ptr %rTPos204, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then193, %if.then203, %if.end164
  %119 = load ptr, ptr %s.addr, align 8
  %rNToGo207 = getelementptr inbounds %struct.DState, ptr %119, i64 0, i32 5
  %120 = load i32, ptr %rNToGo207, align 8
  %dec208 = add nsw i32 %120, -1
  store i32 %dec208, ptr %rNToGo207, align 8
  %cmp210 = icmp eq i32 %dec208, 1
  %cond212 = zext i1 %cmp210 to i8
  %121 = load i8, ptr %k1, align 1
  %xor214 = xor i8 %121, %cond212
  store i8 %xor214, ptr %k1, align 1
  %122 = load ptr, ptr %s.addr, align 8
  %nblock_used216 = getelementptr inbounds %struct.DState, ptr %122, i64 0, i32 17
  %123 = load i32, ptr %nblock_used216, align 4
  %inc217 = add nsw i32 %123, 1
  store i32 %inc217, ptr %nblock_used216, align 4
  %save_nblock219 = getelementptr inbounds %struct.DState, ptr %122, i64 0, i32 51
  %124 = load i32, ptr %save_nblock219, align 8
  %cmp221 = icmp eq i32 %123, %124
  br i1 %cmp221, label %while.body, label %if.end224

if.end224:                                        ; preds = %if.end206
  %125 = load i8, ptr %k1, align 1
  %conv225 = zext i8 %125 to i32
  %126 = load ptr, ptr %s.addr, align 8
  %k0226 = getelementptr inbounds %struct.DState, ptr %126, i64 0, i32 15
  %127 = load i32, ptr %k0226, align 8
  %cmp227.not = icmp eq i32 %127, %conv225
  br i1 %cmp227.not, label %if.end232, label %if.then229

if.then229:                                       ; preds = %if.end224
  %128 = load i8, ptr %k1, align 1
  %conv230 = zext i8 %128 to i32
  %129 = load ptr, ptr %s.addr, align 8
  %k0231 = getelementptr inbounds %struct.DState, ptr %129, i64 0, i32 15
  store i32 %conv230, ptr %k0231, align 8
  br label %while.body

if.end232:                                        ; preds = %if.end224
  %130 = load ptr, ptr %s.addr, align 8
  %tPos233 = getelementptr inbounds %struct.DState, ptr %130, i64 0, i32 14
  %131 = load i32, ptr %tPos233, align 4
  %cftab234 = getelementptr inbounds %struct.DState, ptr %130, i64 0, i32 18
  %call236 = call i32 @BZ2_indexIntoF(i32 noundef %131, ptr noundef nonnull %cftab234)
  %conv237 = trunc i32 %call236 to i8
  store i8 %conv237, ptr %k1, align 1
  %132 = load ptr, ptr %s.addr, align 8
  %ll16238 = getelementptr inbounds %struct.DState, ptr %132, i64 0, i32 21
  %133 = load ptr, ptr %ll16238, align 8
  %tPos239 = getelementptr inbounds %struct.DState, ptr %132, i64 0, i32 14
  %134 = load i32, ptr %tPos239, align 4
  %idxprom240 = zext i32 %134 to i64
  %arrayidx241 = getelementptr inbounds i16, ptr %133, i64 %idxprom240
  %135 = load i16, ptr %arrayidx241, align 2
  %conv242 = zext i16 %135 to i32
  %136 = load ptr, ptr %s.addr, align 8
  %ll4243 = getelementptr inbounds %struct.DState, ptr %136, i64 0, i32 22
  %137 = load ptr, ptr %ll4243, align 8
  %tPos244 = getelementptr inbounds %struct.DState, ptr %136, i64 0, i32 14
  %138 = load i32, ptr %tPos244, align 4
  %shr245 = lshr i32 %138, 1
  %idxprom246 = zext i32 %shr245 to i64
  %arrayidx247 = getelementptr inbounds i8, ptr %137, i64 %idxprom246
  %139 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %139 to i32
  %140 = load ptr, ptr %s.addr, align 8
  %tPos249 = getelementptr inbounds %struct.DState, ptr %140, i64 0, i32 14
  %141 = load i32, ptr %tPos249, align 4
  %shl250 = shl i32 %141, 2
  %and251 = and i32 %shl250, 4
  %shr252 = lshr i32 %conv248, %and251
  %and253 = shl nuw nsw i32 %shr252, 16
  %shl254 = and i32 %and253, 983040
  %or255 = or i32 %shl254, %conv242
  %142 = load ptr, ptr %s.addr, align 8
  %tPos256 = getelementptr inbounds %struct.DState, ptr %142, i64 0, i32 14
  store i32 %or255, ptr %tPos256, align 4
  %rNToGo257 = getelementptr inbounds %struct.DState, ptr %142, i64 0, i32 5
  %143 = load i32, ptr %rNToGo257, align 8
  %cmp258 = icmp eq i32 %143, 0
  br i1 %cmp258, label %if.then260, label %if.end273

if.then260:                                       ; preds = %if.end232
  %144 = load ptr, ptr %s.addr, align 8
  %rTPos261 = getelementptr inbounds %struct.DState, ptr %144, i64 0, i32 6
  %145 = load i32, ptr %rTPos261, align 4
  %idxprom262 = sext i32 %145 to i64
  %arrayidx263 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom262
  %146 = load i32, ptr %arrayidx263, align 4
  %rNToGo264 = getelementptr inbounds %struct.DState, ptr %144, i64 0, i32 5
  store i32 %146, ptr %rNToGo264, align 8
  %147 = load ptr, ptr %s.addr, align 8
  %rTPos265 = getelementptr inbounds %struct.DState, ptr %147, i64 0, i32 6
  %148 = load i32, ptr %rTPos265, align 4
  %inc266 = add nsw i32 %148, 1
  store i32 %inc266, ptr %rTPos265, align 4
  %cmp268 = icmp eq i32 %inc266, 512
  br i1 %cmp268, label %if.then270, label %if.end273

if.then270:                                       ; preds = %if.then260
  %149 = load ptr, ptr %s.addr, align 8
  %rTPos271 = getelementptr inbounds %struct.DState, ptr %149, i64 0, i32 6
  store i32 0, ptr %rTPos271, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then260, %if.then270, %if.end232
  %150 = load ptr, ptr %s.addr, align 8
  %rNToGo274 = getelementptr inbounds %struct.DState, ptr %150, i64 0, i32 5
  %151 = load i32, ptr %rNToGo274, align 8
  %dec275 = add nsw i32 %151, -1
  store i32 %dec275, ptr %rNToGo274, align 8
  %cmp277 = icmp eq i32 %dec275, 1
  %cond279 = zext i1 %cmp277 to i8
  %152 = load i8, ptr %k1, align 1
  %xor281 = xor i8 %152, %cond279
  store i8 %xor281, ptr %k1, align 1
  %153 = load ptr, ptr %s.addr, align 8
  %nblock_used283 = getelementptr inbounds %struct.DState, ptr %153, i64 0, i32 17
  %154 = load i32, ptr %nblock_used283, align 4
  %inc284 = add nsw i32 %154, 1
  store i32 %inc284, ptr %nblock_used283, align 4
  %conv285 = zext i8 %xor281 to i32
  %add286 = add nuw nsw i32 %conv285, 4
  %155 = load ptr, ptr %s.addr, align 8
  %state_out_len287 = getelementptr inbounds %struct.DState, ptr %155, i64 0, i32 3
  store i32 %add286, ptr %state_out_len287, align 8
  %tPos288 = getelementptr inbounds %struct.DState, ptr %155, i64 0, i32 14
  %156 = load i32, ptr %tPos288, align 4
  %cftab289 = getelementptr inbounds %struct.DState, ptr %155, i64 0, i32 18
  %call291 = call i32 @BZ2_indexIntoF(i32 noundef %156, ptr noundef nonnull %cftab289)
  %157 = load ptr, ptr %s.addr, align 8
  %k0292 = getelementptr inbounds %struct.DState, ptr %157, i64 0, i32 15
  store i32 %call291, ptr %k0292, align 8
  %ll16293 = getelementptr inbounds %struct.DState, ptr %157, i64 0, i32 21
  %158 = load ptr, ptr %ll16293, align 8
  %tPos294 = getelementptr inbounds %struct.DState, ptr %157, i64 0, i32 14
  %159 = load i32, ptr %tPos294, align 4
  %idxprom295 = zext i32 %159 to i64
  %arrayidx296 = getelementptr inbounds i16, ptr %158, i64 %idxprom295
  %160 = load i16, ptr %arrayidx296, align 2
  %conv297 = zext i16 %160 to i32
  %161 = load ptr, ptr %s.addr, align 8
  %ll4298 = getelementptr inbounds %struct.DState, ptr %161, i64 0, i32 22
  %162 = load ptr, ptr %ll4298, align 8
  %tPos299 = getelementptr inbounds %struct.DState, ptr %161, i64 0, i32 14
  %163 = load i32, ptr %tPos299, align 4
  %shr300 = lshr i32 %163, 1
  %idxprom301 = zext i32 %shr300 to i64
  %arrayidx302 = getelementptr inbounds i8, ptr %162, i64 %idxprom301
  %164 = load i8, ptr %arrayidx302, align 1
  %conv303 = zext i8 %164 to i32
  %165 = load ptr, ptr %s.addr, align 8
  %tPos304 = getelementptr inbounds %struct.DState, ptr %165, i64 0, i32 14
  %166 = load i32, ptr %tPos304, align 4
  %shl305 = shl i32 %166, 2
  %and306 = and i32 %shl305, 4
  %shr307 = lshr i32 %conv303, %and306
  %and308 = shl nuw nsw i32 %shr307, 16
  %shl309 = and i32 %and308, 983040
  %or310 = or i32 %shl309, %conv297
  %167 = load ptr, ptr %s.addr, align 8
  %tPos311 = getelementptr inbounds %struct.DState, ptr %167, i64 0, i32 14
  store i32 %or310, ptr %tPos311, align 4
  %rNToGo312 = getelementptr inbounds %struct.DState, ptr %167, i64 0, i32 5
  %168 = load i32, ptr %rNToGo312, align 8
  %cmp313 = icmp eq i32 %168, 0
  br i1 %cmp313, label %if.then315, label %if.end328

if.then315:                                       ; preds = %if.end273
  %169 = load ptr, ptr %s.addr, align 8
  %rTPos316 = getelementptr inbounds %struct.DState, ptr %169, i64 0, i32 6
  %170 = load i32, ptr %rTPos316, align 4
  %idxprom317 = sext i32 %170 to i64
  %arrayidx318 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom317
  %171 = load i32, ptr %arrayidx318, align 4
  %rNToGo319 = getelementptr inbounds %struct.DState, ptr %169, i64 0, i32 5
  store i32 %171, ptr %rNToGo319, align 8
  %172 = load ptr, ptr %s.addr, align 8
  %rTPos320 = getelementptr inbounds %struct.DState, ptr %172, i64 0, i32 6
  %173 = load i32, ptr %rTPos320, align 4
  %inc321 = add nsw i32 %173, 1
  store i32 %inc321, ptr %rTPos320, align 4
  %cmp323 = icmp eq i32 %inc321, 512
  br i1 %cmp323, label %if.then325, label %if.end328

if.then325:                                       ; preds = %if.then315
  %174 = load ptr, ptr %s.addr, align 8
  %rTPos326 = getelementptr inbounds %struct.DState, ptr %174, i64 0, i32 6
  store i32 0, ptr %rTPos326, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then315, %if.then325, %if.end273
  %175 = load ptr, ptr %s.addr, align 8
  %rNToGo329 = getelementptr inbounds %struct.DState, ptr %175, i64 0, i32 5
  %176 = load i32, ptr %rNToGo329, align 8
  %dec330 = add nsw i32 %176, -1
  store i32 %dec330, ptr %rNToGo329, align 8
  %cmp332 = icmp eq i32 %dec330, 1
  %cond334 = zext i1 %cmp332 to i32
  %177 = load ptr, ptr %s.addr, align 8
  %k0335 = getelementptr inbounds %struct.DState, ptr %177, i64 0, i32 15
  %178 = load i32, ptr %k0335, align 8
  %xor336 = xor i32 %178, %cond334
  store i32 %xor336, ptr %k0335, align 8
  %nblock_used337 = getelementptr inbounds %struct.DState, ptr %177, i64 0, i32 17
  %179 = load i32, ptr %nblock_used337, align 4
  %inc338 = add nsw i32 %179, 1
  store i32 %inc338, ptr %nblock_used337, align 4
  br label %while.body

while.body339:                                    ; preds = %if.end488, %if.end446, %if.end401, %entry, %if.end530, %if.then527, %if.then485, %if.then443
  br label %while.body341

while.body341:                                    ; preds = %if.end386, %while.body339
  %180 = load ptr, ptr %s.addr, align 8
  %181 = load ptr, ptr %180, align 8
  %avail_out343 = getelementptr inbounds %struct.bz_stream, ptr %181, i64 0, i32 5
  %182 = load i32, ptr %avail_out343, align 8
  %cmp344 = icmp eq i32 %182, 0
  br i1 %cmp344, label %if.then346, label %if.end347

if.then346:                                       ; preds = %while.body341
  store i8 0, ptr %retval, align 1
  br label %return

if.end347:                                        ; preds = %while.body341
  %183 = load ptr, ptr %s.addr, align 8
  %state_out_len348 = getelementptr inbounds %struct.DState, ptr %183, i64 0, i32 3
  %184 = load i32, ptr %state_out_len348, align 8
  %cmp349 = icmp eq i32 %184, 0
  br i1 %cmp349, label %while.end387, label %if.end352

if.end352:                                        ; preds = %if.end347
  %185 = load ptr, ptr %s.addr, align 8
  %state_out_ch353 = getelementptr inbounds %struct.DState, ptr %185, i64 0, i32 2
  %186 = load i8, ptr %state_out_ch353, align 4
  %187 = load ptr, ptr %185, align 8
  %next_out355 = getelementptr inbounds %struct.bz_stream, ptr %187, i64 0, i32 4
  %188 = load ptr, ptr %next_out355, align 8
  store i8 %186, ptr %188, align 1
  %189 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC356 = getelementptr inbounds %struct.DState, ptr %189, i64 0, i32 25
  %190 = load i32, ptr %calculatedBlockCRC356, align 8
  %shl357 = shl i32 %190, 8
  %shr359 = lshr i32 %190, 24
  %state_out_ch360 = getelementptr inbounds %struct.DState, ptr %189, i64 0, i32 2
  %191 = load i8, ptr %state_out_ch360, align 4
  %conv361 = zext i8 %191 to i32
  %xor362 = xor i32 %shr359, %conv361
  %idxprom363 = zext i32 %xor362 to i64
  %arrayidx364 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom363
  %192 = load i32, ptr %arrayidx364, align 4
  %xor365 = xor i32 %shl357, %192
  %193 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC366 = getelementptr inbounds %struct.DState, ptr %193, i64 0, i32 25
  store i32 %xor365, ptr %calculatedBlockCRC366, align 8
  %state_out_len367 = getelementptr inbounds %struct.DState, ptr %193, i64 0, i32 3
  %194 = load i32, ptr %state_out_len367, align 8
  %dec368 = add nsw i32 %194, -1
  store i32 %dec368, ptr %state_out_len367, align 8
  %195 = load ptr, ptr %s.addr, align 8
  %196 = load ptr, ptr %195, align 8
  %next_out370 = getelementptr inbounds %struct.bz_stream, ptr %196, i64 0, i32 4
  %197 = load ptr, ptr %next_out370, align 8
  %incdec.ptr371 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %incdec.ptr371, ptr %next_out370, align 8
  %198 = load ptr, ptr %195, align 8
  %avail_out373 = getelementptr inbounds %struct.bz_stream, ptr %198, i64 0, i32 5
  %199 = load i32, ptr %avail_out373, align 8
  %dec374 = add i32 %199, -1
  store i32 %dec374, ptr %avail_out373, align 8
  %200 = load ptr, ptr %s.addr, align 8
  %201 = load ptr, ptr %200, align 8
  %total_out_lo32376 = getelementptr inbounds %struct.bz_stream, ptr %201, i64 0, i32 6
  %202 = load i32, ptr %total_out_lo32376, align 4
  %inc377 = add i32 %202, 1
  store i32 %inc377, ptr %total_out_lo32376, align 4
  %203 = load ptr, ptr %200, align 8
  %total_out_lo32379 = getelementptr inbounds %struct.bz_stream, ptr %203, i64 0, i32 6
  %204 = load i32, ptr %total_out_lo32379, align 4
  %cmp380 = icmp eq i32 %204, 0
  br i1 %cmp380, label %if.then382, label %if.end386

if.then382:                                       ; preds = %if.end352
  %205 = load ptr, ptr %s.addr, align 8
  %206 = load ptr, ptr %205, align 8
  %total_out_hi32384 = getelementptr inbounds %struct.bz_stream, ptr %206, i64 0, i32 7
  %207 = load i32, ptr %total_out_hi32384, align 8
  %inc385 = add i32 %207, 1
  store i32 %inc385, ptr %total_out_hi32384, align 8
  br label %if.end386

if.end386:                                        ; preds = %if.then382, %if.end352
  br label %while.body341

while.end387:                                     ; preds = %if.end347
  %208 = load ptr, ptr %s.addr, align 8
  %nblock_used388 = getelementptr inbounds %struct.DState, ptr %208, i64 0, i32 17
  %209 = load i32, ptr %nblock_used388, align 4
  %save_nblock389 = getelementptr inbounds %struct.DState, ptr %208, i64 0, i32 51
  %210 = load i32, ptr %save_nblock389, align 8
  %add390 = add nsw i32 %210, 1
  %cmp391 = icmp eq i32 %209, %add390
  br i1 %cmp391, label %if.then393, label %if.end394

if.then393:                                       ; preds = %while.end387
  store i8 0, ptr %retval, align 1
  br label %return

if.end394:                                        ; preds = %while.end387
  %211 = load ptr, ptr %s.addr, align 8
  %nblock_used395 = getelementptr inbounds %struct.DState, ptr %211, i64 0, i32 17
  %212 = load i32, ptr %nblock_used395, align 4
  %save_nblock396 = getelementptr inbounds %struct.DState, ptr %211, i64 0, i32 51
  %213 = load i32, ptr %save_nblock396, align 8
  %add397 = add nsw i32 %213, 1
  %cmp398 = icmp sgt i32 %212, %add397
  br i1 %cmp398, label %if.then400, label %if.end401

if.then400:                                       ; preds = %if.end394
  store i8 1, ptr %retval, align 1
  br label %return

if.end401:                                        ; preds = %if.end394
  %214 = load ptr, ptr %s.addr, align 8
  %state_out_len402 = getelementptr inbounds %struct.DState, ptr %214, i64 0, i32 3
  store i32 1, ptr %state_out_len402, align 8
  %k0403 = getelementptr inbounds %struct.DState, ptr %214, i64 0, i32 15
  %215 = load i32, ptr %k0403, align 8
  %conv404 = trunc i32 %215 to i8
  %state_out_ch405 = getelementptr inbounds %struct.DState, ptr %214, i64 0, i32 2
  store i8 %conv404, ptr %state_out_ch405, align 4
  %216 = load ptr, ptr %s.addr, align 8
  %tPos406 = getelementptr inbounds %struct.DState, ptr %216, i64 0, i32 14
  %217 = load i32, ptr %tPos406, align 4
  %cftab407 = getelementptr inbounds %struct.DState, ptr %216, i64 0, i32 18
  %call409 = call i32 @BZ2_indexIntoF(i32 noundef %217, ptr noundef nonnull %cftab407)
  %conv410 = trunc i32 %call409 to i8
  store i8 %conv410, ptr %k1, align 1
  %218 = load ptr, ptr %s.addr, align 8
  %ll16411 = getelementptr inbounds %struct.DState, ptr %218, i64 0, i32 21
  %219 = load ptr, ptr %ll16411, align 8
  %tPos412 = getelementptr inbounds %struct.DState, ptr %218, i64 0, i32 14
  %220 = load i32, ptr %tPos412, align 4
  %idxprom413 = zext i32 %220 to i64
  %arrayidx414 = getelementptr inbounds i16, ptr %219, i64 %idxprom413
  %221 = load i16, ptr %arrayidx414, align 2
  %conv415 = zext i16 %221 to i32
  %222 = load ptr, ptr %s.addr, align 8
  %ll4416 = getelementptr inbounds %struct.DState, ptr %222, i64 0, i32 22
  %223 = load ptr, ptr %ll4416, align 8
  %tPos417 = getelementptr inbounds %struct.DState, ptr %222, i64 0, i32 14
  %224 = load i32, ptr %tPos417, align 4
  %shr418 = lshr i32 %224, 1
  %idxprom419 = zext i32 %shr418 to i64
  %arrayidx420 = getelementptr inbounds i8, ptr %223, i64 %idxprom419
  %225 = load i8, ptr %arrayidx420, align 1
  %conv421 = zext i8 %225 to i32
  %226 = load ptr, ptr %s.addr, align 8
  %tPos422 = getelementptr inbounds %struct.DState, ptr %226, i64 0, i32 14
  %227 = load i32, ptr %tPos422, align 4
  %shl423 = shl i32 %227, 2
  %and424 = and i32 %shl423, 4
  %shr425 = lshr i32 %conv421, %and424
  %and426 = shl nuw nsw i32 %shr425, 16
  %shl427 = and i32 %and426, 983040
  %or428 = or i32 %shl427, %conv415
  %228 = load ptr, ptr %s.addr, align 8
  %tPos429 = getelementptr inbounds %struct.DState, ptr %228, i64 0, i32 14
  store i32 %or428, ptr %tPos429, align 4
  %nblock_used430 = getelementptr inbounds %struct.DState, ptr %228, i64 0, i32 17
  %229 = load i32, ptr %nblock_used430, align 4
  %inc431 = add nsw i32 %229, 1
  store i32 %inc431, ptr %nblock_used430, align 4
  %230 = load ptr, ptr %s.addr, align 8
  %nblock_used432 = getelementptr inbounds %struct.DState, ptr %230, i64 0, i32 17
  %231 = load i32, ptr %nblock_used432, align 4
  %save_nblock433 = getelementptr inbounds %struct.DState, ptr %230, i64 0, i32 51
  %232 = load i32, ptr %save_nblock433, align 8
  %add434 = add nsw i32 %232, 1
  %cmp435 = icmp eq i32 %231, %add434
  br i1 %cmp435, label %while.body339, label %if.end438

if.end438:                                        ; preds = %if.end401
  %233 = load i8, ptr %k1, align 1
  %conv439 = zext i8 %233 to i32
  %234 = load ptr, ptr %s.addr, align 8
  %k0440 = getelementptr inbounds %struct.DState, ptr %234, i64 0, i32 15
  %235 = load i32, ptr %k0440, align 8
  %cmp441.not = icmp eq i32 %235, %conv439
  br i1 %cmp441.not, label %if.end446, label %if.then443

if.then443:                                       ; preds = %if.end438
  %236 = load i8, ptr %k1, align 1
  %conv444 = zext i8 %236 to i32
  %237 = load ptr, ptr %s.addr, align 8
  %k0445 = getelementptr inbounds %struct.DState, ptr %237, i64 0, i32 15
  store i32 %conv444, ptr %k0445, align 8
  br label %while.body339

if.end446:                                        ; preds = %if.end438
  %238 = load ptr, ptr %s.addr, align 8
  %state_out_len447 = getelementptr inbounds %struct.DState, ptr %238, i64 0, i32 3
  store i32 2, ptr %state_out_len447, align 8
  %tPos448 = getelementptr inbounds %struct.DState, ptr %238, i64 0, i32 14
  %239 = load i32, ptr %tPos448, align 4
  %cftab449 = getelementptr inbounds %struct.DState, ptr %238, i64 0, i32 18
  %call451 = call i32 @BZ2_indexIntoF(i32 noundef %239, ptr noundef nonnull %cftab449)
  %conv452 = trunc i32 %call451 to i8
  store i8 %conv452, ptr %k1, align 1
  %240 = load ptr, ptr %s.addr, align 8
  %ll16453 = getelementptr inbounds %struct.DState, ptr %240, i64 0, i32 21
  %241 = load ptr, ptr %ll16453, align 8
  %tPos454 = getelementptr inbounds %struct.DState, ptr %240, i64 0, i32 14
  %242 = load i32, ptr %tPos454, align 4
  %idxprom455 = zext i32 %242 to i64
  %arrayidx456 = getelementptr inbounds i16, ptr %241, i64 %idxprom455
  %243 = load i16, ptr %arrayidx456, align 2
  %conv457 = zext i16 %243 to i32
  %244 = load ptr, ptr %s.addr, align 8
  %ll4458 = getelementptr inbounds %struct.DState, ptr %244, i64 0, i32 22
  %245 = load ptr, ptr %ll4458, align 8
  %tPos459 = getelementptr inbounds %struct.DState, ptr %244, i64 0, i32 14
  %246 = load i32, ptr %tPos459, align 4
  %shr460 = lshr i32 %246, 1
  %idxprom461 = zext i32 %shr460 to i64
  %arrayidx462 = getelementptr inbounds i8, ptr %245, i64 %idxprom461
  %247 = load i8, ptr %arrayidx462, align 1
  %conv463 = zext i8 %247 to i32
  %248 = load ptr, ptr %s.addr, align 8
  %tPos464 = getelementptr inbounds %struct.DState, ptr %248, i64 0, i32 14
  %249 = load i32, ptr %tPos464, align 4
  %shl465 = shl i32 %249, 2
  %and466 = and i32 %shl465, 4
  %shr467 = lshr i32 %conv463, %and466
  %and468 = shl nuw nsw i32 %shr467, 16
  %shl469 = and i32 %and468, 983040
  %or470 = or i32 %shl469, %conv457
  %250 = load ptr, ptr %s.addr, align 8
  %tPos471 = getelementptr inbounds %struct.DState, ptr %250, i64 0, i32 14
  store i32 %or470, ptr %tPos471, align 4
  %nblock_used472 = getelementptr inbounds %struct.DState, ptr %250, i64 0, i32 17
  %251 = load i32, ptr %nblock_used472, align 4
  %inc473 = add nsw i32 %251, 1
  store i32 %inc473, ptr %nblock_used472, align 4
  %252 = load ptr, ptr %s.addr, align 8
  %nblock_used474 = getelementptr inbounds %struct.DState, ptr %252, i64 0, i32 17
  %253 = load i32, ptr %nblock_used474, align 4
  %save_nblock475 = getelementptr inbounds %struct.DState, ptr %252, i64 0, i32 51
  %254 = load i32, ptr %save_nblock475, align 8
  %add476 = add nsw i32 %254, 1
  %cmp477 = icmp eq i32 %253, %add476
  br i1 %cmp477, label %while.body339, label %if.end480

if.end480:                                        ; preds = %if.end446
  %255 = load i8, ptr %k1, align 1
  %conv481 = zext i8 %255 to i32
  %256 = load ptr, ptr %s.addr, align 8
  %k0482 = getelementptr inbounds %struct.DState, ptr %256, i64 0, i32 15
  %257 = load i32, ptr %k0482, align 8
  %cmp483.not = icmp eq i32 %257, %conv481
  br i1 %cmp483.not, label %if.end488, label %if.then485

if.then485:                                       ; preds = %if.end480
  %258 = load i8, ptr %k1, align 1
  %conv486 = zext i8 %258 to i32
  %259 = load ptr, ptr %s.addr, align 8
  %k0487 = getelementptr inbounds %struct.DState, ptr %259, i64 0, i32 15
  store i32 %conv486, ptr %k0487, align 8
  br label %while.body339

if.end488:                                        ; preds = %if.end480
  %260 = load ptr, ptr %s.addr, align 8
  %state_out_len489 = getelementptr inbounds %struct.DState, ptr %260, i64 0, i32 3
  store i32 3, ptr %state_out_len489, align 8
  %tPos490 = getelementptr inbounds %struct.DState, ptr %260, i64 0, i32 14
  %261 = load i32, ptr %tPos490, align 4
  %cftab491 = getelementptr inbounds %struct.DState, ptr %260, i64 0, i32 18
  %call493 = call i32 @BZ2_indexIntoF(i32 noundef %261, ptr noundef nonnull %cftab491)
  %conv494 = trunc i32 %call493 to i8
  store i8 %conv494, ptr %k1, align 1
  %262 = load ptr, ptr %s.addr, align 8
  %ll16495 = getelementptr inbounds %struct.DState, ptr %262, i64 0, i32 21
  %263 = load ptr, ptr %ll16495, align 8
  %tPos496 = getelementptr inbounds %struct.DState, ptr %262, i64 0, i32 14
  %264 = load i32, ptr %tPos496, align 4
  %idxprom497 = zext i32 %264 to i64
  %arrayidx498 = getelementptr inbounds i16, ptr %263, i64 %idxprom497
  %265 = load i16, ptr %arrayidx498, align 2
  %conv499 = zext i16 %265 to i32
  %266 = load ptr, ptr %s.addr, align 8
  %ll4500 = getelementptr inbounds %struct.DState, ptr %266, i64 0, i32 22
  %267 = load ptr, ptr %ll4500, align 8
  %tPos501 = getelementptr inbounds %struct.DState, ptr %266, i64 0, i32 14
  %268 = load i32, ptr %tPos501, align 4
  %shr502 = lshr i32 %268, 1
  %idxprom503 = zext i32 %shr502 to i64
  %arrayidx504 = getelementptr inbounds i8, ptr %267, i64 %idxprom503
  %269 = load i8, ptr %arrayidx504, align 1
  %conv505 = zext i8 %269 to i32
  %270 = load ptr, ptr %s.addr, align 8
  %tPos506 = getelementptr inbounds %struct.DState, ptr %270, i64 0, i32 14
  %271 = load i32, ptr %tPos506, align 4
  %shl507 = shl i32 %271, 2
  %and508 = and i32 %shl507, 4
  %shr509 = lshr i32 %conv505, %and508
  %and510 = shl nuw nsw i32 %shr509, 16
  %shl511 = and i32 %and510, 983040
  %or512 = or i32 %shl511, %conv499
  %272 = load ptr, ptr %s.addr, align 8
  %tPos513 = getelementptr inbounds %struct.DState, ptr %272, i64 0, i32 14
  store i32 %or512, ptr %tPos513, align 4
  %nblock_used514 = getelementptr inbounds %struct.DState, ptr %272, i64 0, i32 17
  %273 = load i32, ptr %nblock_used514, align 4
  %inc515 = add nsw i32 %273, 1
  store i32 %inc515, ptr %nblock_used514, align 4
  %274 = load ptr, ptr %s.addr, align 8
  %nblock_used516 = getelementptr inbounds %struct.DState, ptr %274, i64 0, i32 17
  %275 = load i32, ptr %nblock_used516, align 4
  %save_nblock517 = getelementptr inbounds %struct.DState, ptr %274, i64 0, i32 51
  %276 = load i32, ptr %save_nblock517, align 8
  %add518 = add nsw i32 %276, 1
  %cmp519 = icmp eq i32 %275, %add518
  br i1 %cmp519, label %while.body339, label %if.end522

if.end522:                                        ; preds = %if.end488
  %277 = load i8, ptr %k1, align 1
  %conv523 = zext i8 %277 to i32
  %278 = load ptr, ptr %s.addr, align 8
  %k0524 = getelementptr inbounds %struct.DState, ptr %278, i64 0, i32 15
  %279 = load i32, ptr %k0524, align 8
  %cmp525.not = icmp eq i32 %279, %conv523
  br i1 %cmp525.not, label %if.end530, label %if.then527

if.then527:                                       ; preds = %if.end522
  %280 = load i8, ptr %k1, align 1
  %conv528 = zext i8 %280 to i32
  %281 = load ptr, ptr %s.addr, align 8
  %k0529 = getelementptr inbounds %struct.DState, ptr %281, i64 0, i32 15
  store i32 %conv528, ptr %k0529, align 8
  br label %while.body339

if.end530:                                        ; preds = %if.end522
  %282 = load ptr, ptr %s.addr, align 8
  %tPos531 = getelementptr inbounds %struct.DState, ptr %282, i64 0, i32 14
  %283 = load i32, ptr %tPos531, align 4
  %cftab532 = getelementptr inbounds %struct.DState, ptr %282, i64 0, i32 18
  %call534 = call i32 @BZ2_indexIntoF(i32 noundef %283, ptr noundef nonnull %cftab532)
  %conv535 = trunc i32 %call534 to i8
  store i8 %conv535, ptr %k1, align 1
  %284 = load ptr, ptr %s.addr, align 8
  %ll16536 = getelementptr inbounds %struct.DState, ptr %284, i64 0, i32 21
  %285 = load ptr, ptr %ll16536, align 8
  %tPos537 = getelementptr inbounds %struct.DState, ptr %284, i64 0, i32 14
  %286 = load i32, ptr %tPos537, align 4
  %idxprom538 = zext i32 %286 to i64
  %arrayidx539 = getelementptr inbounds i16, ptr %285, i64 %idxprom538
  %287 = load i16, ptr %arrayidx539, align 2
  %conv540 = zext i16 %287 to i32
  %288 = load ptr, ptr %s.addr, align 8
  %ll4541 = getelementptr inbounds %struct.DState, ptr %288, i64 0, i32 22
  %289 = load ptr, ptr %ll4541, align 8
  %tPos542 = getelementptr inbounds %struct.DState, ptr %288, i64 0, i32 14
  %290 = load i32, ptr %tPos542, align 4
  %shr543 = lshr i32 %290, 1
  %idxprom544 = zext i32 %shr543 to i64
  %arrayidx545 = getelementptr inbounds i8, ptr %289, i64 %idxprom544
  %291 = load i8, ptr %arrayidx545, align 1
  %conv546 = zext i8 %291 to i32
  %292 = load ptr, ptr %s.addr, align 8
  %tPos547 = getelementptr inbounds %struct.DState, ptr %292, i64 0, i32 14
  %293 = load i32, ptr %tPos547, align 4
  %shl548 = shl i32 %293, 2
  %and549 = and i32 %shl548, 4
  %shr550 = lshr i32 %conv546, %and549
  %and551 = shl nuw nsw i32 %shr550, 16
  %shl552 = and i32 %and551, 983040
  %or553 = or i32 %shl552, %conv540
  %294 = load ptr, ptr %s.addr, align 8
  %tPos554 = getelementptr inbounds %struct.DState, ptr %294, i64 0, i32 14
  store i32 %or553, ptr %tPos554, align 4
  %nblock_used555 = getelementptr inbounds %struct.DState, ptr %294, i64 0, i32 17
  %295 = load i32, ptr %nblock_used555, align 4
  %inc556 = add nsw i32 %295, 1
  store i32 %inc556, ptr %nblock_used555, align 4
  %296 = load i8, ptr %k1, align 1
  %conv557 = zext i8 %296 to i32
  %add558 = add nuw nsw i32 %conv557, 4
  %297 = load ptr, ptr %s.addr, align 8
  %state_out_len559 = getelementptr inbounds %struct.DState, ptr %297, i64 0, i32 3
  store i32 %add558, ptr %state_out_len559, align 8
  %tPos560 = getelementptr inbounds %struct.DState, ptr %297, i64 0, i32 14
  %298 = load i32, ptr %tPos560, align 4
  %cftab561 = getelementptr inbounds %struct.DState, ptr %297, i64 0, i32 18
  %call563 = call i32 @BZ2_indexIntoF(i32 noundef %298, ptr noundef nonnull %cftab561)
  %299 = load ptr, ptr %s.addr, align 8
  %k0564 = getelementptr inbounds %struct.DState, ptr %299, i64 0, i32 15
  store i32 %call563, ptr %k0564, align 8
  %ll16565 = getelementptr inbounds %struct.DState, ptr %299, i64 0, i32 21
  %300 = load ptr, ptr %ll16565, align 8
  %tPos566 = getelementptr inbounds %struct.DState, ptr %299, i64 0, i32 14
  %301 = load i32, ptr %tPos566, align 4
  %idxprom567 = zext i32 %301 to i64
  %arrayidx568 = getelementptr inbounds i16, ptr %300, i64 %idxprom567
  %302 = load i16, ptr %arrayidx568, align 2
  %conv569 = zext i16 %302 to i32
  %303 = load ptr, ptr %s.addr, align 8
  %ll4570 = getelementptr inbounds %struct.DState, ptr %303, i64 0, i32 22
  %304 = load ptr, ptr %ll4570, align 8
  %tPos571 = getelementptr inbounds %struct.DState, ptr %303, i64 0, i32 14
  %305 = load i32, ptr %tPos571, align 4
  %shr572 = lshr i32 %305, 1
  %idxprom573 = zext i32 %shr572 to i64
  %arrayidx574 = getelementptr inbounds i8, ptr %304, i64 %idxprom573
  %306 = load i8, ptr %arrayidx574, align 1
  %conv575 = zext i8 %306 to i32
  %307 = load ptr, ptr %s.addr, align 8
  %tPos576 = getelementptr inbounds %struct.DState, ptr %307, i64 0, i32 14
  %308 = load i32, ptr %tPos576, align 4
  %shl577 = shl i32 %308, 2
  %and578 = and i32 %shl577, 4
  %shr579 = lshr i32 %conv575, %and578
  %and580 = shl nuw nsw i32 %shr579, 16
  %shl581 = and i32 %and580, 983040
  %or582 = or i32 %shl581, %conv569
  %309 = load ptr, ptr %s.addr, align 8
  %tPos583 = getelementptr inbounds %struct.DState, ptr %309, i64 0, i32 14
  store i32 %or582, ptr %tPos583, align 4
  %nblock_used584 = getelementptr inbounds %struct.DState, ptr %309, i64 0, i32 17
  %310 = load i32, ptr %nblock_used584, align 4
  %inc585 = add nsw i32 %310, 1
  store i32 %inc585, ptr %nblock_used584, align 4
  br label %while.body339

return:                                           ; preds = %if.then400, %if.then393, %if.then346, %if.then36, %if.then29, %if.then3
  %311 = load i8, ptr %retval, align 1
  ret i8 %311
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(ptr noundef %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca ptr, align 8
  %k1 = alloca i8, align 1
  %c_calculatedBlockCRC = alloca i32, align 4
  %c_state_out_ch = alloca i8, align 1
  %c_state_out_len = alloca i32, align 4
  %c_nblock_used = alloca i32, align 4
  %c_k0 = alloca i32, align 4
  %c_tt = alloca ptr, align 8
  %c_tPos = alloca i32, align 4
  %cs_next_out = alloca ptr, align 8
  %cs_avail_out = alloca i32, align 4
  %avail_out_INIT = alloca i32, align 4
  %s_save_nblockPP = alloca i32, align 4
  %total_out_lo32_old = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, ptr %s, i64 0, i32 4
  %0 = load i8, ptr %blockRandomised, align 4
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %while.body

while.body:                                       ; preds = %if.end169, %if.end115, %if.end62, %entry, %if.end265, %if.then192, %if.then138, %if.then84
  br label %while.body2

while.body2:                                      ; preds = %if.end26, %while.body
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, ptr %2, i64 0, i32 5
  %3 = load i32, ptr %avail_out, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body2
  %4 = load ptr, ptr %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %state_out_len, align 8
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %while.end, label %if.end6

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, ptr %6, i64 0, i32 2
  %7 = load i8, ptr %state_out_ch, align 4
  %8 = load ptr, ptr %6, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, ptr %8, i64 0, i32 4
  %9 = load ptr, ptr %next_out, align 8
  store i8 %7, ptr %9, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 25
  %11 = load i32, ptr %calculatedBlockCRC, align 8
  %shl = shl i32 %11, 8
  %shr = lshr i32 %11, 24
  %state_out_ch9 = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 2
  %12 = load i8, ptr %state_out_ch9, align 4
  %conv = zext i8 %12 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  %xor10 = xor i32 %shl, %13
  %14 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, ptr %14, i64 0, i32 25
  store i32 %xor10, ptr %calculatedBlockCRC11, align 8
  %state_out_len12 = getelementptr inbounds %struct.DState, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %state_out_len12, align 8
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %state_out_len12, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %next_out14 = getelementptr inbounds %struct.bz_stream, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %next_out14, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %next_out14, align 8
  %19 = load ptr, ptr %16, align 8
  %avail_out16 = getelementptr inbounds %struct.bz_stream, ptr %19, i64 0, i32 5
  %20 = load i32, ptr %avail_out16, align 8
  %dec17 = add i32 %20, -1
  store i32 %dec17, ptr %avail_out16, align 8
  %21 = load ptr, ptr %s.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, ptr %22, i64 0, i32 6
  %23 = load i32, ptr %total_out_lo32, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %total_out_lo32, align 4
  %24 = load ptr, ptr %21, align 8
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, ptr %24, i64 0, i32 6
  %25 = load i32, ptr %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %25, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %26 = load ptr, ptr %s.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, ptr %27, i64 0, i32 7
  %28 = load i32, ptr %total_out_hi32, align 8
  %inc25 = add i32 %28, 1
  store i32 %inc25, ptr %total_out_hi32, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.body2

while.end:                                        ; preds = %if.end
  %29 = load ptr, ptr %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, ptr %29, i64 0, i32 17
  %30 = load i32, ptr %nblock_used, align 4
  %save_nblock = getelementptr inbounds %struct.DState, ptr %29, i64 0, i32 51
  %31 = load i32, ptr %save_nblock, align 8
  %add = add nsw i32 %31, 1
  %cmp27 = icmp eq i32 %30, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i8 0, ptr %retval, align 1
  br label %return

if.end30:                                         ; preds = %while.end
  %32 = load ptr, ptr %s.addr, align 8
  %nblock_used31 = getelementptr inbounds %struct.DState, ptr %32, i64 0, i32 17
  %33 = load i32, ptr %nblock_used31, align 4
  %save_nblock32 = getelementptr inbounds %struct.DState, ptr %32, i64 0, i32 51
  %34 = load i32, ptr %save_nblock32, align 8
  %add33 = add nsw i32 %34, 1
  %cmp34 = icmp sgt i32 %33, %add33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  store i8 1, ptr %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end30
  %35 = load ptr, ptr %s.addr, align 8
  %state_out_len38 = getelementptr inbounds %struct.DState, ptr %35, i64 0, i32 3
  store i32 1, ptr %state_out_len38, align 8
  %k0 = getelementptr inbounds %struct.DState, ptr %35, i64 0, i32 15
  %36 = load i32, ptr %k0, align 8
  %conv39 = trunc i32 %36 to i8
  %state_out_ch40 = getelementptr inbounds %struct.DState, ptr %35, i64 0, i32 2
  store i8 %conv39, ptr %state_out_ch40, align 4
  %37 = load ptr, ptr %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, ptr %37, i64 0, i32 20
  %38 = load ptr, ptr %tt, align 8
  %tPos = getelementptr inbounds %struct.DState, ptr %37, i64 0, i32 14
  %39 = load i32, ptr %tPos, align 4
  %idxprom41 = zext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %38, i64 %idxprom41
  %40 = load i32, ptr %arrayidx42, align 4
  %41 = load ptr, ptr %s.addr, align 8
  %tPos43 = getelementptr inbounds %struct.DState, ptr %41, i64 0, i32 14
  store i32 %40, ptr %tPos43, align 4
  %conv45 = trunc i32 %40 to i8
  store i8 %conv45, ptr %k1, align 1
  %tPos46 = getelementptr inbounds %struct.DState, ptr %41, i64 0, i32 14
  %shr47 = lshr i32 %40, 8
  store i32 %shr47, ptr %tPos46, align 4
  %42 = load ptr, ptr %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, ptr %42, i64 0, i32 5
  %43 = load i32, ptr %rNToGo, align 8
  %cmp48 = icmp eq i32 %43, 0
  br i1 %cmp48, label %if.then50, label %if.end62

if.then50:                                        ; preds = %if.end37
  %44 = load ptr, ptr %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, ptr %44, i64 0, i32 6
  %45 = load i32, ptr %rTPos, align 4
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom51
  %46 = load i32, ptr %arrayidx52, align 4
  %rNToGo53 = getelementptr inbounds %struct.DState, ptr %44, i64 0, i32 5
  store i32 %46, ptr %rNToGo53, align 8
  %47 = load ptr, ptr %s.addr, align 8
  %rTPos54 = getelementptr inbounds %struct.DState, ptr %47, i64 0, i32 6
  %48 = load i32, ptr %rTPos54, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, ptr %rTPos54, align 4
  %cmp57 = icmp eq i32 %inc55, 512
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.then50
  %49 = load ptr, ptr %s.addr, align 8
  %rTPos60 = getelementptr inbounds %struct.DState, ptr %49, i64 0, i32 6
  store i32 0, ptr %rTPos60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then50, %if.then59, %if.end37
  %50 = load ptr, ptr %s.addr, align 8
  %rNToGo63 = getelementptr inbounds %struct.DState, ptr %50, i64 0, i32 5
  %51 = load i32, ptr %rNToGo63, align 8
  %dec64 = add nsw i32 %51, -1
  store i32 %dec64, ptr %rNToGo63, align 8
  %cmp66 = icmp eq i32 %dec64, 1
  %cond = zext i1 %cmp66 to i8
  %52 = load i8, ptr %k1, align 1
  %xor69 = xor i8 %52, %cond
  store i8 %xor69, ptr %k1, align 1
  %53 = load ptr, ptr %s.addr, align 8
  %nblock_used71 = getelementptr inbounds %struct.DState, ptr %53, i64 0, i32 17
  %54 = load i32, ptr %nblock_used71, align 4
  %inc72 = add nsw i32 %54, 1
  store i32 %inc72, ptr %nblock_used71, align 4
  %save_nblock74 = getelementptr inbounds %struct.DState, ptr %53, i64 0, i32 51
  %55 = load i32, ptr %save_nblock74, align 8
  %cmp76 = icmp eq i32 %54, %55
  br i1 %cmp76, label %while.body, label %if.end79

if.end79:                                         ; preds = %if.end62
  %56 = load i8, ptr %k1, align 1
  %conv80 = zext i8 %56 to i32
  %57 = load ptr, ptr %s.addr, align 8
  %k081 = getelementptr inbounds %struct.DState, ptr %57, i64 0, i32 15
  %58 = load i32, ptr %k081, align 8
  %cmp82.not = icmp eq i32 %58, %conv80
  br i1 %cmp82.not, label %if.end87, label %if.then84

if.then84:                                        ; preds = %if.end79
  %59 = load i8, ptr %k1, align 1
  %conv85 = zext i8 %59 to i32
  %60 = load ptr, ptr %s.addr, align 8
  %k086 = getelementptr inbounds %struct.DState, ptr %60, i64 0, i32 15
  store i32 %conv85, ptr %k086, align 8
  br label %while.body

if.end87:                                         ; preds = %if.end79
  %61 = load ptr, ptr %s.addr, align 8
  %state_out_len88 = getelementptr inbounds %struct.DState, ptr %61, i64 0, i32 3
  store i32 2, ptr %state_out_len88, align 8
  %tt89 = getelementptr inbounds %struct.DState, ptr %61, i64 0, i32 20
  %62 = load ptr, ptr %tt89, align 8
  %tPos90 = getelementptr inbounds %struct.DState, ptr %61, i64 0, i32 14
  %63 = load i32, ptr %tPos90, align 4
  %idxprom91 = zext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %62, i64 %idxprom91
  %64 = load i32, ptr %arrayidx92, align 4
  %65 = load ptr, ptr %s.addr, align 8
  %tPos93 = getelementptr inbounds %struct.DState, ptr %65, i64 0, i32 14
  store i32 %64, ptr %tPos93, align 4
  %conv96 = trunc i32 %64 to i8
  store i8 %conv96, ptr %k1, align 1
  %tPos97 = getelementptr inbounds %struct.DState, ptr %65, i64 0, i32 14
  %shr98 = lshr i32 %64, 8
  store i32 %shr98, ptr %tPos97, align 4
  %66 = load ptr, ptr %s.addr, align 8
  %rNToGo99 = getelementptr inbounds %struct.DState, ptr %66, i64 0, i32 5
  %67 = load i32, ptr %rNToGo99, align 8
  %cmp100 = icmp eq i32 %67, 0
  br i1 %cmp100, label %if.then102, label %if.end115

if.then102:                                       ; preds = %if.end87
  %68 = load ptr, ptr %s.addr, align 8
  %rTPos103 = getelementptr inbounds %struct.DState, ptr %68, i64 0, i32 6
  %69 = load i32, ptr %rTPos103, align 4
  %idxprom104 = sext i32 %69 to i64
  %arrayidx105 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom104
  %70 = load i32, ptr %arrayidx105, align 4
  %rNToGo106 = getelementptr inbounds %struct.DState, ptr %68, i64 0, i32 5
  store i32 %70, ptr %rNToGo106, align 8
  %71 = load ptr, ptr %s.addr, align 8
  %rTPos107 = getelementptr inbounds %struct.DState, ptr %71, i64 0, i32 6
  %72 = load i32, ptr %rTPos107, align 4
  %inc108 = add nsw i32 %72, 1
  store i32 %inc108, ptr %rTPos107, align 4
  %cmp110 = icmp eq i32 %inc108, 512
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.then102
  %73 = load ptr, ptr %s.addr, align 8
  %rTPos113 = getelementptr inbounds %struct.DState, ptr %73, i64 0, i32 6
  store i32 0, ptr %rTPos113, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then102, %if.then112, %if.end87
  %74 = load ptr, ptr %s.addr, align 8
  %rNToGo116 = getelementptr inbounds %struct.DState, ptr %74, i64 0, i32 5
  %75 = load i32, ptr %rNToGo116, align 8
  %dec117 = add nsw i32 %75, -1
  store i32 %dec117, ptr %rNToGo116, align 8
  %cmp119 = icmp eq i32 %dec117, 1
  %cond121 = zext i1 %cmp119 to i8
  %76 = load i8, ptr %k1, align 1
  %xor123 = xor i8 %76, %cond121
  store i8 %xor123, ptr %k1, align 1
  %77 = load ptr, ptr %s.addr, align 8
  %nblock_used125 = getelementptr inbounds %struct.DState, ptr %77, i64 0, i32 17
  %78 = load i32, ptr %nblock_used125, align 4
  %inc126 = add nsw i32 %78, 1
  store i32 %inc126, ptr %nblock_used125, align 4
  %save_nblock128 = getelementptr inbounds %struct.DState, ptr %77, i64 0, i32 51
  %79 = load i32, ptr %save_nblock128, align 8
  %cmp130 = icmp eq i32 %78, %79
  br i1 %cmp130, label %while.body, label %if.end133

if.end133:                                        ; preds = %if.end115
  %80 = load i8, ptr %k1, align 1
  %conv134 = zext i8 %80 to i32
  %81 = load ptr, ptr %s.addr, align 8
  %k0135 = getelementptr inbounds %struct.DState, ptr %81, i64 0, i32 15
  %82 = load i32, ptr %k0135, align 8
  %cmp136.not = icmp eq i32 %82, %conv134
  br i1 %cmp136.not, label %if.end141, label %if.then138

if.then138:                                       ; preds = %if.end133
  %83 = load i8, ptr %k1, align 1
  %conv139 = zext i8 %83 to i32
  %84 = load ptr, ptr %s.addr, align 8
  %k0140 = getelementptr inbounds %struct.DState, ptr %84, i64 0, i32 15
  store i32 %conv139, ptr %k0140, align 8
  br label %while.body

if.end141:                                        ; preds = %if.end133
  %85 = load ptr, ptr %s.addr, align 8
  %state_out_len142 = getelementptr inbounds %struct.DState, ptr %85, i64 0, i32 3
  store i32 3, ptr %state_out_len142, align 8
  %tt143 = getelementptr inbounds %struct.DState, ptr %85, i64 0, i32 20
  %86 = load ptr, ptr %tt143, align 8
  %tPos144 = getelementptr inbounds %struct.DState, ptr %85, i64 0, i32 14
  %87 = load i32, ptr %tPos144, align 4
  %idxprom145 = zext i32 %87 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %86, i64 %idxprom145
  %88 = load i32, ptr %arrayidx146, align 4
  %89 = load ptr, ptr %s.addr, align 8
  %tPos147 = getelementptr inbounds %struct.DState, ptr %89, i64 0, i32 14
  store i32 %88, ptr %tPos147, align 4
  %conv150 = trunc i32 %88 to i8
  store i8 %conv150, ptr %k1, align 1
  %tPos151 = getelementptr inbounds %struct.DState, ptr %89, i64 0, i32 14
  %shr152 = lshr i32 %88, 8
  store i32 %shr152, ptr %tPos151, align 4
  %90 = load ptr, ptr %s.addr, align 8
  %rNToGo153 = getelementptr inbounds %struct.DState, ptr %90, i64 0, i32 5
  %91 = load i32, ptr %rNToGo153, align 8
  %cmp154 = icmp eq i32 %91, 0
  br i1 %cmp154, label %if.then156, label %if.end169

if.then156:                                       ; preds = %if.end141
  %92 = load ptr, ptr %s.addr, align 8
  %rTPos157 = getelementptr inbounds %struct.DState, ptr %92, i64 0, i32 6
  %93 = load i32, ptr %rTPos157, align 4
  %idxprom158 = sext i32 %93 to i64
  %arrayidx159 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom158
  %94 = load i32, ptr %arrayidx159, align 4
  %rNToGo160 = getelementptr inbounds %struct.DState, ptr %92, i64 0, i32 5
  store i32 %94, ptr %rNToGo160, align 8
  %95 = load ptr, ptr %s.addr, align 8
  %rTPos161 = getelementptr inbounds %struct.DState, ptr %95, i64 0, i32 6
  %96 = load i32, ptr %rTPos161, align 4
  %inc162 = add nsw i32 %96, 1
  store i32 %inc162, ptr %rTPos161, align 4
  %cmp164 = icmp eq i32 %inc162, 512
  br i1 %cmp164, label %if.then166, label %if.end169

if.then166:                                       ; preds = %if.then156
  %97 = load ptr, ptr %s.addr, align 8
  %rTPos167 = getelementptr inbounds %struct.DState, ptr %97, i64 0, i32 6
  store i32 0, ptr %rTPos167, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then156, %if.then166, %if.end141
  %98 = load ptr, ptr %s.addr, align 8
  %rNToGo170 = getelementptr inbounds %struct.DState, ptr %98, i64 0, i32 5
  %99 = load i32, ptr %rNToGo170, align 8
  %dec171 = add nsw i32 %99, -1
  store i32 %dec171, ptr %rNToGo170, align 8
  %cmp173 = icmp eq i32 %dec171, 1
  %cond175 = zext i1 %cmp173 to i8
  %100 = load i8, ptr %k1, align 1
  %xor177 = xor i8 %100, %cond175
  store i8 %xor177, ptr %k1, align 1
  %101 = load ptr, ptr %s.addr, align 8
  %nblock_used179 = getelementptr inbounds %struct.DState, ptr %101, i64 0, i32 17
  %102 = load i32, ptr %nblock_used179, align 4
  %inc180 = add nsw i32 %102, 1
  store i32 %inc180, ptr %nblock_used179, align 4
  %save_nblock182 = getelementptr inbounds %struct.DState, ptr %101, i64 0, i32 51
  %103 = load i32, ptr %save_nblock182, align 8
  %cmp184 = icmp eq i32 %102, %103
  br i1 %cmp184, label %while.body, label %if.end187

if.end187:                                        ; preds = %if.end169
  %104 = load i8, ptr %k1, align 1
  %conv188 = zext i8 %104 to i32
  %105 = load ptr, ptr %s.addr, align 8
  %k0189 = getelementptr inbounds %struct.DState, ptr %105, i64 0, i32 15
  %106 = load i32, ptr %k0189, align 8
  %cmp190.not = icmp eq i32 %106, %conv188
  br i1 %cmp190.not, label %if.end195, label %if.then192

if.then192:                                       ; preds = %if.end187
  %107 = load i8, ptr %k1, align 1
  %conv193 = zext i8 %107 to i32
  %108 = load ptr, ptr %s.addr, align 8
  %k0194 = getelementptr inbounds %struct.DState, ptr %108, i64 0, i32 15
  store i32 %conv193, ptr %k0194, align 8
  br label %while.body

if.end195:                                        ; preds = %if.end187
  %109 = load ptr, ptr %s.addr, align 8
  %tt196 = getelementptr inbounds %struct.DState, ptr %109, i64 0, i32 20
  %110 = load ptr, ptr %tt196, align 8
  %tPos197 = getelementptr inbounds %struct.DState, ptr %109, i64 0, i32 14
  %111 = load i32, ptr %tPos197, align 4
  %idxprom198 = zext i32 %111 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %110, i64 %idxprom198
  %112 = load i32, ptr %arrayidx199, align 4
  %113 = load ptr, ptr %s.addr, align 8
  %tPos200 = getelementptr inbounds %struct.DState, ptr %113, i64 0, i32 14
  store i32 %112, ptr %tPos200, align 4
  %conv203 = trunc i32 %112 to i8
  store i8 %conv203, ptr %k1, align 1
  %tPos204 = getelementptr inbounds %struct.DState, ptr %113, i64 0, i32 14
  %shr205 = lshr i32 %112, 8
  store i32 %shr205, ptr %tPos204, align 4
  %114 = load ptr, ptr %s.addr, align 8
  %rNToGo206 = getelementptr inbounds %struct.DState, ptr %114, i64 0, i32 5
  %115 = load i32, ptr %rNToGo206, align 8
  %cmp207 = icmp eq i32 %115, 0
  br i1 %cmp207, label %if.then209, label %if.end222

if.then209:                                       ; preds = %if.end195
  %116 = load ptr, ptr %s.addr, align 8
  %rTPos210 = getelementptr inbounds %struct.DState, ptr %116, i64 0, i32 6
  %117 = load i32, ptr %rTPos210, align 4
  %idxprom211 = sext i32 %117 to i64
  %arrayidx212 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom211
  %118 = load i32, ptr %arrayidx212, align 4
  %rNToGo213 = getelementptr inbounds %struct.DState, ptr %116, i64 0, i32 5
  store i32 %118, ptr %rNToGo213, align 8
  %119 = load ptr, ptr %s.addr, align 8
  %rTPos214 = getelementptr inbounds %struct.DState, ptr %119, i64 0, i32 6
  %120 = load i32, ptr %rTPos214, align 4
  %inc215 = add nsw i32 %120, 1
  store i32 %inc215, ptr %rTPos214, align 4
  %cmp217 = icmp eq i32 %inc215, 512
  br i1 %cmp217, label %if.then219, label %if.end222

if.then219:                                       ; preds = %if.then209
  %121 = load ptr, ptr %s.addr, align 8
  %rTPos220 = getelementptr inbounds %struct.DState, ptr %121, i64 0, i32 6
  store i32 0, ptr %rTPos220, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then209, %if.then219, %if.end195
  %122 = load ptr, ptr %s.addr, align 8
  %rNToGo223 = getelementptr inbounds %struct.DState, ptr %122, i64 0, i32 5
  %123 = load i32, ptr %rNToGo223, align 8
  %dec224 = add nsw i32 %123, -1
  store i32 %dec224, ptr %rNToGo223, align 8
  %cmp226 = icmp eq i32 %dec224, 1
  %cond228 = zext i1 %cmp226 to i8
  %124 = load i8, ptr %k1, align 1
  %xor230 = xor i8 %124, %cond228
  store i8 %xor230, ptr %k1, align 1
  %125 = load ptr, ptr %s.addr, align 8
  %nblock_used232 = getelementptr inbounds %struct.DState, ptr %125, i64 0, i32 17
  %126 = load i32, ptr %nblock_used232, align 4
  %inc233 = add nsw i32 %126, 1
  store i32 %inc233, ptr %nblock_used232, align 4
  %conv234 = zext i8 %xor230 to i32
  %add235 = add nuw nsw i32 %conv234, 4
  %127 = load ptr, ptr %s.addr, align 8
  %state_out_len236 = getelementptr inbounds %struct.DState, ptr %127, i64 0, i32 3
  store i32 %add235, ptr %state_out_len236, align 8
  %tt237 = getelementptr inbounds %struct.DState, ptr %127, i64 0, i32 20
  %128 = load ptr, ptr %tt237, align 8
  %tPos238 = getelementptr inbounds %struct.DState, ptr %127, i64 0, i32 14
  %129 = load i32, ptr %tPos238, align 4
  %idxprom239 = zext i32 %129 to i64
  %arrayidx240 = getelementptr inbounds i32, ptr %128, i64 %idxprom239
  %130 = load i32, ptr %arrayidx240, align 4
  %131 = load ptr, ptr %s.addr, align 8
  %tPos241 = getelementptr inbounds %struct.DState, ptr %131, i64 0, i32 14
  store i32 %130, ptr %tPos241, align 4
  %conv245 = and i32 %130, 255
  %k0246 = getelementptr inbounds %struct.DState, ptr %131, i64 0, i32 15
  store i32 %conv245, ptr %k0246, align 8
  %tPos247 = getelementptr inbounds %struct.DState, ptr %131, i64 0, i32 14
  %shr248 = lshr i32 %130, 8
  store i32 %shr248, ptr %tPos247, align 4
  %132 = load ptr, ptr %s.addr, align 8
  %rNToGo249 = getelementptr inbounds %struct.DState, ptr %132, i64 0, i32 5
  %133 = load i32, ptr %rNToGo249, align 8
  %cmp250 = icmp eq i32 %133, 0
  br i1 %cmp250, label %if.then252, label %if.end265

if.then252:                                       ; preds = %if.end222
  %134 = load ptr, ptr %s.addr, align 8
  %rTPos253 = getelementptr inbounds %struct.DState, ptr %134, i64 0, i32 6
  %135 = load i32, ptr %rTPos253, align 4
  %idxprom254 = sext i32 %135 to i64
  %arrayidx255 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom254
  %136 = load i32, ptr %arrayidx255, align 4
  %rNToGo256 = getelementptr inbounds %struct.DState, ptr %134, i64 0, i32 5
  store i32 %136, ptr %rNToGo256, align 8
  %137 = load ptr, ptr %s.addr, align 8
  %rTPos257 = getelementptr inbounds %struct.DState, ptr %137, i64 0, i32 6
  %138 = load i32, ptr %rTPos257, align 4
  %inc258 = add nsw i32 %138, 1
  store i32 %inc258, ptr %rTPos257, align 4
  %cmp260 = icmp eq i32 %inc258, 512
  br i1 %cmp260, label %if.then262, label %if.end265

if.then262:                                       ; preds = %if.then252
  %139 = load ptr, ptr %s.addr, align 8
  %rTPos263 = getelementptr inbounds %struct.DState, ptr %139, i64 0, i32 6
  store i32 0, ptr %rTPos263, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.then252, %if.then262, %if.end222
  %140 = load ptr, ptr %s.addr, align 8
  %rNToGo266 = getelementptr inbounds %struct.DState, ptr %140, i64 0, i32 5
  %141 = load i32, ptr %rNToGo266, align 8
  %dec267 = add nsw i32 %141, -1
  store i32 %dec267, ptr %rNToGo266, align 8
  %cmp269 = icmp eq i32 %dec267, 1
  %cond271 = zext i1 %cmp269 to i32
  %142 = load ptr, ptr %s.addr, align 8
  %k0272 = getelementptr inbounds %struct.DState, ptr %142, i64 0, i32 15
  %143 = load i32, ptr %k0272, align 8
  %xor273 = xor i32 %143, %cond271
  store i32 %xor273, ptr %k0272, align 8
  %nblock_used274 = getelementptr inbounds %struct.DState, ptr %142, i64 0, i32 17
  %144 = load i32, ptr %nblock_used274, align 4
  %inc275 = add nsw i32 %144, 1
  store i32 %inc275, ptr %nblock_used274, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  %145 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC276 = getelementptr inbounds %struct.DState, ptr %145, i64 0, i32 25
  %146 = load i32, ptr %calculatedBlockCRC276, align 8
  store i32 %146, ptr %c_calculatedBlockCRC, align 4
  %state_out_ch277 = getelementptr inbounds %struct.DState, ptr %145, i64 0, i32 2
  %147 = load i8, ptr %state_out_ch277, align 4
  store i8 %147, ptr %c_state_out_ch, align 1
  %148 = load ptr, ptr %s.addr, align 8
  %state_out_len278 = getelementptr inbounds %struct.DState, ptr %148, i64 0, i32 3
  %149 = load i32, ptr %state_out_len278, align 8
  store i32 %149, ptr %c_state_out_len, align 4
  %nblock_used279 = getelementptr inbounds %struct.DState, ptr %148, i64 0, i32 17
  %150 = load i32, ptr %nblock_used279, align 4
  store i32 %150, ptr %c_nblock_used, align 4
  %151 = load ptr, ptr %s.addr, align 8
  %k0280 = getelementptr inbounds %struct.DState, ptr %151, i64 0, i32 15
  %152 = load i32, ptr %k0280, align 8
  store i32 %152, ptr %c_k0, align 4
  %tt281 = getelementptr inbounds %struct.DState, ptr %151, i64 0, i32 20
  %153 = load ptr, ptr %tt281, align 8
  store ptr %153, ptr %c_tt, align 8
  %154 = load ptr, ptr %s.addr, align 8
  %tPos282 = getelementptr inbounds %struct.DState, ptr %154, i64 0, i32 14
  %155 = load i32, ptr %tPos282, align 4
  store i32 %155, ptr %c_tPos, align 4
  %156 = load ptr, ptr %154, align 8
  %next_out284 = getelementptr inbounds %struct.bz_stream, ptr %156, i64 0, i32 4
  %157 = load ptr, ptr %next_out284, align 8
  store ptr %157, ptr %cs_next_out, align 8
  %158 = load ptr, ptr %s.addr, align 8
  %159 = load ptr, ptr %158, align 8
  %avail_out286 = getelementptr inbounds %struct.bz_stream, ptr %159, i64 0, i32 5
  %160 = load i32, ptr %avail_out286, align 8
  store i32 %160, ptr %cs_avail_out, align 4
  store i32 %160, ptr %avail_out_INIT, align 4
  %save_nblock287 = getelementptr inbounds %struct.DState, ptr %158, i64 0, i32 51
  %161 = load i32, ptr %save_nblock287, align 8
  %add288 = add nsw i32 %161, 1
  store i32 %add288, ptr %s_save_nblockPP, align 4
  br label %while.body289

while.body289:                                    ; preds = %if.end368, %if.end352, %if.end384, %if.then382, %if.then366, %if.else
  %162 = load i32, ptr %c_state_out_len, align 4
  %cmp290 = icmp sgt i32 %162, 0
  br i1 %cmp290, label %while.body294, label %if.end327

while.body294:                                    ; preds = %while.body289, %if.end302
  %163 = load i32, ptr %cs_avail_out, align 4
  %cmp295 = icmp eq i32 %163, 0
  br i1 %cmp295, label %return_notr, label %if.end298

if.end298:                                        ; preds = %while.body294
  %164 = load i32, ptr %c_state_out_len, align 4
  %cmp299 = icmp eq i32 %164, 1
  br i1 %cmp299, label %s_state_out_len_eq_one, label %if.end302

if.end302:                                        ; preds = %if.end298
  %165 = load i8, ptr %c_state_out_ch, align 1
  %166 = load ptr, ptr %cs_next_out, align 8
  store i8 %165, ptr %166, align 1
  %167 = load i32, ptr %c_calculatedBlockCRC, align 4
  %shl303 = shl i32 %167, 8
  %shr304 = lshr i32 %167, 24
  %conv305 = zext i8 %165 to i32
  %xor306 = xor i32 %shr304, %conv305
  %idxprom307 = zext i32 %xor306 to i64
  %arrayidx308 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom307
  %168 = load i32, ptr %arrayidx308, align 4
  %xor309 = xor i32 %shl303, %168
  store i32 %xor309, ptr %c_calculatedBlockCRC, align 4
  %169 = load i32, ptr %c_state_out_len, align 4
  %dec310 = add nsw i32 %169, -1
  store i32 %dec310, ptr %c_state_out_len, align 4
  %170 = load ptr, ptr %cs_next_out, align 8
  %incdec.ptr311 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %incdec.ptr311, ptr %cs_next_out, align 8
  %171 = load i32, ptr %cs_avail_out, align 4
  %dec312 = add i32 %171, -1
  store i32 %dec312, ptr %cs_avail_out, align 4
  br label %while.body294

s_state_out_len_eq_one:                           ; preds = %if.end348, %if.end298, %if.then346
  %172 = load i32, ptr %cs_avail_out, align 4
  %cmp314 = icmp eq i32 %172, 0
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %s_state_out_len_eq_one
  store i32 1, ptr %c_state_out_len, align 4
  br label %return_notr

if.end317:                                        ; preds = %s_state_out_len_eq_one
  %173 = load i8, ptr %c_state_out_ch, align 1
  %174 = load ptr, ptr %cs_next_out, align 8
  store i8 %173, ptr %174, align 1
  %175 = load i32, ptr %c_calculatedBlockCRC, align 4
  %shl318 = shl i32 %175, 8
  %shr319 = lshr i32 %175, 24
  %conv320 = zext i8 %173 to i32
  %xor321 = xor i32 %shr319, %conv320
  %idxprom322 = zext i32 %xor321 to i64
  %arrayidx323 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom322
  %176 = load i32, ptr %arrayidx323, align 4
  %xor324 = xor i32 %shl318, %176
  store i32 %xor324, ptr %c_calculatedBlockCRC, align 4
  %177 = load ptr, ptr %cs_next_out, align 8
  %incdec.ptr325 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %incdec.ptr325, ptr %cs_next_out, align 8
  %178 = load i32, ptr %cs_avail_out, align 4
  %dec326 = add i32 %178, -1
  store i32 %dec326, ptr %cs_avail_out, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.end317, %while.body289
  %179 = load i32, ptr %c_nblock_used, align 4
  %180 = load i32, ptr %s_save_nblockPP, align 4
  %cmp328 = icmp sgt i32 %179, %180
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %if.end327
  store i8 1, ptr %retval, align 1
  br label %return

if.end331:                                        ; preds = %if.end327
  %181 = load i32, ptr %c_nblock_used, align 4
  %182 = load i32, ptr %s_save_nblockPP, align 4
  %cmp332 = icmp eq i32 %181, %182
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end331
  store i32 0, ptr %c_state_out_len, align 4
  br label %return_notr

if.end335:                                        ; preds = %if.end331
  %183 = load i32, ptr %c_k0, align 4
  %conv336 = trunc i32 %183 to i8
  store i8 %conv336, ptr %c_state_out_ch, align 1
  %184 = load ptr, ptr %c_tt, align 8
  %185 = load i32, ptr %c_tPos, align 4
  %idxprom337 = zext i32 %185 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %184, i64 %idxprom337
  %186 = load i32, ptr %arrayidx338, align 4
  store i32 %186, ptr %c_tPos, align 4
  %conv340 = trunc i32 %186 to i8
  store i8 %conv340, ptr %k1, align 1
  %shr341 = lshr i32 %186, 8
  store i32 %shr341, ptr %c_tPos, align 4
  %187 = load i32, ptr %c_nblock_used, align 4
  %inc342 = add nsw i32 %187, 1
  store i32 %inc342, ptr %c_nblock_used, align 4
  %conv343 = and i32 %186, 255
  %188 = load i32, ptr %c_k0, align 4
  %cmp344.not = icmp eq i32 %conv343, %188
  br i1 %cmp344.not, label %if.end348, label %if.then346

if.then346:                                       ; preds = %if.end335
  %189 = load i8, ptr %k1, align 1
  %conv347 = zext i8 %189 to i32
  store i32 %conv347, ptr %c_k0, align 4
  br label %s_state_out_len_eq_one

if.end348:                                        ; preds = %if.end335
  %190 = load i32, ptr %c_nblock_used, align 4
  %191 = load i32, ptr %s_save_nblockPP, align 4
  %cmp349 = icmp eq i32 %190, %191
  br i1 %cmp349, label %s_state_out_len_eq_one, label %if.end352

if.end352:                                        ; preds = %if.end348
  store i32 2, ptr %c_state_out_len, align 4
  %192 = load ptr, ptr %c_tt, align 8
  %193 = load i32, ptr %c_tPos, align 4
  %idxprom353 = zext i32 %193 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %192, i64 %idxprom353
  %194 = load i32, ptr %arrayidx354, align 4
  store i32 %194, ptr %c_tPos, align 4
  %conv356 = trunc i32 %194 to i8
  store i8 %conv356, ptr %k1, align 1
  %shr357 = lshr i32 %194, 8
  store i32 %shr357, ptr %c_tPos, align 4
  %195 = load i32, ptr %c_nblock_used, align 4
  %inc358 = add nsw i32 %195, 1
  store i32 %inc358, ptr %c_nblock_used, align 4
  %196 = load i32, ptr %s_save_nblockPP, align 4
  %cmp359 = icmp eq i32 %inc358, %196
  br i1 %cmp359, label %while.body289, label %if.end362

if.end362:                                        ; preds = %if.end352
  %197 = load i8, ptr %k1, align 1
  %conv363 = zext i8 %197 to i32
  %198 = load i32, ptr %c_k0, align 4
  %cmp364.not = icmp eq i32 %198, %conv363
  br i1 %cmp364.not, label %if.end368, label %if.then366

if.then366:                                       ; preds = %if.end362
  %199 = load i8, ptr %k1, align 1
  %conv367 = zext i8 %199 to i32
  store i32 %conv367, ptr %c_k0, align 4
  br label %while.body289

if.end368:                                        ; preds = %if.end362
  store i32 3, ptr %c_state_out_len, align 4
  %200 = load ptr, ptr %c_tt, align 8
  %201 = load i32, ptr %c_tPos, align 4
  %idxprom369 = zext i32 %201 to i64
  %arrayidx370 = getelementptr inbounds i32, ptr %200, i64 %idxprom369
  %202 = load i32, ptr %arrayidx370, align 4
  store i32 %202, ptr %c_tPos, align 4
  %conv372 = trunc i32 %202 to i8
  store i8 %conv372, ptr %k1, align 1
  %shr373 = lshr i32 %202, 8
  store i32 %shr373, ptr %c_tPos, align 4
  %203 = load i32, ptr %c_nblock_used, align 4
  %inc374 = add nsw i32 %203, 1
  store i32 %inc374, ptr %c_nblock_used, align 4
  %204 = load i32, ptr %s_save_nblockPP, align 4
  %cmp375 = icmp eq i32 %inc374, %204
  br i1 %cmp375, label %while.body289, label %if.end378

if.end378:                                        ; preds = %if.end368
  %205 = load i8, ptr %k1, align 1
  %conv379 = zext i8 %205 to i32
  %206 = load i32, ptr %c_k0, align 4
  %cmp380.not = icmp eq i32 %206, %conv379
  br i1 %cmp380.not, label %if.end384, label %if.then382

if.then382:                                       ; preds = %if.end378
  %207 = load i8, ptr %k1, align 1
  %conv383 = zext i8 %207 to i32
  store i32 %conv383, ptr %c_k0, align 4
  br label %while.body289

if.end384:                                        ; preds = %if.end378
  %208 = load ptr, ptr %c_tt, align 8
  %209 = load i32, ptr %c_tPos, align 4
  %idxprom385 = zext i32 %209 to i64
  %arrayidx386 = getelementptr inbounds i32, ptr %208, i64 %idxprom385
  %210 = load i32, ptr %arrayidx386, align 4
  store i32 %210, ptr %c_tPos, align 4
  %conv388 = trunc i32 %210 to i8
  store i8 %conv388, ptr %k1, align 1
  %shr389 = lshr i32 %210, 8
  store i32 %shr389, ptr %c_tPos, align 4
  %211 = load i32, ptr %c_nblock_used, align 4
  %inc390 = add nsw i32 %211, 1
  store i32 %inc390, ptr %c_nblock_used, align 4
  %conv391 = and i32 %210, 255
  %add392 = add nuw nsw i32 %conv391, 4
  store i32 %add392, ptr %c_state_out_len, align 4
  %212 = load ptr, ptr %c_tt, align 8
  %213 = load i32, ptr %c_tPos, align 4
  %idxprom393 = zext i32 %213 to i64
  %arrayidx394 = getelementptr inbounds i32, ptr %212, i64 %idxprom393
  %214 = load i32, ptr %arrayidx394, align 4
  store i32 %214, ptr %c_tPos, align 4
  %conv397 = and i32 %214, 255
  store i32 %conv397, ptr %c_k0, align 4
  %shr398 = lshr i32 %214, 8
  store i32 %shr398, ptr %c_tPos, align 4
  %215 = load i32, ptr %c_nblock_used, align 4
  %inc399 = add nsw i32 %215, 1
  store i32 %inc399, ptr %c_nblock_used, align 4
  br label %while.body289

return_notr:                                      ; preds = %while.body294, %if.then334, %if.then316
  %216 = load ptr, ptr %s.addr, align 8
  %217 = load ptr, ptr %216, align 8
  %total_out_lo32401 = getelementptr inbounds %struct.bz_stream, ptr %217, i64 0, i32 6
  %218 = load i32, ptr %total_out_lo32401, align 4
  store i32 %218, ptr %total_out_lo32_old, align 4
  %219 = load i32, ptr %avail_out_INIT, align 4
  %220 = load i32, ptr %cs_avail_out, align 4
  %sub = sub i32 %219, %220
  %221 = load ptr, ptr %s.addr, align 8
  %222 = load ptr, ptr %221, align 8
  %total_out_lo32403 = getelementptr inbounds %struct.bz_stream, ptr %222, i64 0, i32 6
  %223 = load i32, ptr %total_out_lo32403, align 4
  %add404 = add i32 %223, %sub
  store i32 %add404, ptr %total_out_lo32403, align 4
  %224 = load ptr, ptr %221, align 8
  %total_out_lo32406 = getelementptr inbounds %struct.bz_stream, ptr %224, i64 0, i32 6
  %225 = load i32, ptr %total_out_lo32406, align 4
  %226 = load i32, ptr %total_out_lo32_old, align 4
  %cmp407 = icmp ult i32 %225, %226
  br i1 %cmp407, label %if.then409, label %if.end413

if.then409:                                       ; preds = %return_notr
  %227 = load ptr, ptr %s.addr, align 8
  %228 = load ptr, ptr %227, align 8
  %total_out_hi32411 = getelementptr inbounds %struct.bz_stream, ptr %228, i64 0, i32 7
  %229 = load i32, ptr %total_out_hi32411, align 8
  %inc412 = add i32 %229, 1
  store i32 %inc412, ptr %total_out_hi32411, align 8
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %return_notr
  %230 = load i32, ptr %c_calculatedBlockCRC, align 4
  %231 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC414 = getelementptr inbounds %struct.DState, ptr %231, i64 0, i32 25
  store i32 %230, ptr %calculatedBlockCRC414, align 8
  %232 = load i8, ptr %c_state_out_ch, align 1
  %state_out_ch415 = getelementptr inbounds %struct.DState, ptr %231, i64 0, i32 2
  store i8 %232, ptr %state_out_ch415, align 4
  %233 = load i32, ptr %c_state_out_len, align 4
  %234 = load ptr, ptr %s.addr, align 8
  %state_out_len416 = getelementptr inbounds %struct.DState, ptr %234, i64 0, i32 3
  store i32 %233, ptr %state_out_len416, align 8
  %235 = load i32, ptr %c_nblock_used, align 4
  %nblock_used417 = getelementptr inbounds %struct.DState, ptr %234, i64 0, i32 17
  store i32 %235, ptr %nblock_used417, align 4
  %236 = load i32, ptr %c_k0, align 4
  %237 = load ptr, ptr %s.addr, align 8
  %k0418 = getelementptr inbounds %struct.DState, ptr %237, i64 0, i32 15
  store i32 %236, ptr %k0418, align 8
  %238 = load ptr, ptr %c_tt, align 8
  %tt419 = getelementptr inbounds %struct.DState, ptr %237, i64 0, i32 20
  store ptr %238, ptr %tt419, align 8
  %239 = load i32, ptr %c_tPos, align 4
  %240 = load ptr, ptr %s.addr, align 8
  %tPos420 = getelementptr inbounds %struct.DState, ptr %240, i64 0, i32 14
  store i32 %239, ptr %tPos420, align 4
  %241 = load ptr, ptr %cs_next_out, align 8
  %242 = load ptr, ptr %240, align 8
  %next_out422 = getelementptr inbounds %struct.bz_stream, ptr %242, i64 0, i32 4
  store ptr %241, ptr %next_out422, align 8
  %243 = load i32, ptr %cs_avail_out, align 4
  %244 = load ptr, ptr %s.addr, align 8
  %245 = load ptr, ptr %244, align 8
  %avail_out424 = getelementptr inbounds %struct.bz_stream, ptr %245, i64 0, i32 5
  store i32 %243, ptr %avail_out424, align 8
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end413, %if.then330, %if.then36, %if.then29, %if.then3
  %246 = load i8, ptr %retval, align 1
  ret i8 %246
}

declare i32 @BZ2_decompress(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzDecompressEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, ptr %0, i64 0, i32 8
  %1 = load ptr, ptr %state, align 8
  store ptr %1, ptr %s, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %s, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %strm.addr, align 8
  %cmp5.not = icmp eq ptr %3, %4
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %s, align 8
  %tt = getelementptr inbounds %struct.DState, ptr %5, i64 0, i32 20
  %6 = load ptr, ptr %tt, align 8
  %cmp8.not = icmp eq ptr %6, null
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %7 = load ptr, ptr %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, ptr %7, i64 0, i32 10
  %8 = load ptr, ptr %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %opaque, align 8
  %10 = load ptr, ptr %s, align 8
  %tt10 = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 20
  %11 = load ptr, ptr %tt10, align 8
  call void %8(ptr noundef %9, ptr noundef %11) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %12 = load ptr, ptr %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, ptr %12, i64 0, i32 21
  %13 = load ptr, ptr %ll16, align 8
  %cmp12.not = icmp eq ptr %13, null
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end11
  %14 = load ptr, ptr %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.bz_stream, ptr %14, i64 0, i32 10
  %15 = load ptr, ptr %bzfree14, align 8
  %opaque15 = getelementptr inbounds %struct.bz_stream, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %opaque15, align 8
  %17 = load ptr, ptr %s, align 8
  %ll1616 = getelementptr inbounds %struct.DState, ptr %17, i64 0, i32 21
  %18 = load ptr, ptr %ll1616, align 8
  call void %15(ptr noundef %16, ptr noundef %18) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %19 = load ptr, ptr %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, ptr %19, i64 0, i32 22
  %20 = load ptr, ptr %ll4, align 8
  %cmp18.not = icmp eq ptr %20, null
  br i1 %cmp18.not, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end17
  %21 = load ptr, ptr %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.bz_stream, ptr %21, i64 0, i32 10
  %22 = load ptr, ptr %bzfree20, align 8
  %opaque21 = getelementptr inbounds %struct.bz_stream, ptr %21, i64 0, i32 11
  %23 = load ptr, ptr %opaque21, align 8
  %24 = load ptr, ptr %s, align 8
  %ll422 = getelementptr inbounds %struct.DState, ptr %24, i64 0, i32 22
  %25 = load ptr, ptr %ll422, align 8
  call void %22(ptr noundef %23, ptr noundef %25) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %26 = load ptr, ptr %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.bz_stream, ptr %26, i64 0, i32 10
  %27 = load ptr, ptr %bzfree24, align 8
  %opaque25 = getelementptr inbounds %struct.bz_stream, ptr %26, i64 0, i32 11
  %28 = load ptr, ptr %opaque25, align 8
  %state26 = getelementptr inbounds %struct.bz_stream, ptr %26, i64 0, i32 8
  %29 = load ptr, ptr %state26, align 8
  call void %27(ptr noundef %28, ptr noundef %29) #11
  %30 = load ptr, ptr %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.bz_stream, ptr %30, i64 0, i32 8
  store ptr null, ptr %state27, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define ptr @BZ2_bzWriteOpen(ptr noundef %bzerror, ptr noundef %f, i32 noundef %blockSize100k, i32 noundef %verbosity, i32 noundef %workFactor) #0 {
entry:
  %retval = alloca ptr, align 8
  %bzerror.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store i32 %blockSize100k, ptr %blockSize100k.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %workFactor, ptr %workFactor.addr, align 4
  store ptr null, ptr %bzf, align 8
  %cmp.not = icmp eq ptr %bzerror, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %bzf, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %2, i64 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %f.addr, align 8
  %cmp4 = icmp eq ptr %3, null
  %4 = load i32, ptr %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %4, 1
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  %5 = load i32, ptr %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %5, 9
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7
  %6 = load i32, ptr %workFactor.addr, align 4
  %cmp9 = icmp slt i32 %6, 0
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp9
  %7 = load i32, ptr %workFactor.addr, align 4
  %cmp11 = icmp sgt i32 %7, 250
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp11
  %8 = load i32, ptr %verbosity.addr, align 4
  %cmp13 = icmp slt i32 %8, 0
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp13
  %9 = load i32, ptr %verbosity.addr, align 4
  %cmp15 = icmp sgt i32 %9, 4
  %or.cond5 = select i1 %or.cond4, i1 true, i1 %cmp15
  br i1 %or.cond5, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end3
  %10 = load ptr, ptr %bzerror.addr, align 8
  %cmp17.not = icmp eq ptr %10, null
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then16
  %11 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %11, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  %12 = load ptr, ptr %bzf, align 8
  %cmp20.not = icmp eq ptr %12, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  %13 = load ptr, ptr %bzf, align 8
  %lastErr22 = getelementptr inbounds %struct.bzFile, ptr %13, i64 0, i32 5
  store i32 -2, ptr %lastErr22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end3
  %14 = load ptr, ptr %f.addr, align 8
  %call = call i32 @ferror(ptr noundef %14) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %if.end24
  %15 = load ptr, ptr %bzerror.addr, align 8
  %cmp26.not = icmp eq ptr %15, null
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then25
  %16 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %16, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  %17 = load ptr, ptr %bzf, align 8
  %cmp29.not = icmp eq ptr %17, null
  br i1 %cmp29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end28
  %18 = load ptr, ptr %bzf, align 8
  %lastErr31 = getelementptr inbounds %struct.bzFile, ptr %18, i64 0, i32 5
  store i32 -6, ptr %lastErr31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  store ptr null, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end24
  %call34 = call dereferenceable_or_null(5104) ptr @malloc(i64 noundef 5104) #13
  store ptr %call34, ptr %bzf, align 8
  %cmp35 = icmp eq ptr %call34, null
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %19 = load ptr, ptr %bzerror.addr, align 8
  %cmp37.not = icmp eq ptr %19, null
  br i1 %cmp37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then36
  %20 = load ptr, ptr %bzerror.addr, align 8
  store i32 -3, ptr %20, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then36
  %21 = load ptr, ptr %bzf, align 8
  %cmp40.not = icmp eq ptr %21, null
  br i1 %cmp40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  %22 = load ptr, ptr %bzf, align 8
  %lastErr42 = getelementptr inbounds %struct.bzFile, ptr %22, i64 0, i32 5
  store i32 -3, ptr %lastErr42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  store ptr null, ptr %retval, align 8
  br label %return

if.end44:                                         ; preds = %if.end33
  %23 = load ptr, ptr %bzerror.addr, align 8
  %cmp45.not = icmp eq ptr %23, null
  br i1 %cmp45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end44
  %24 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %24, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44
  %25 = load ptr, ptr %bzf, align 8
  %cmp48.not = icmp eq ptr %25, null
  br i1 %cmp48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end47
  %26 = load ptr, ptr %bzf, align 8
  %lastErr50 = getelementptr inbounds %struct.bzFile, ptr %26, i64 0, i32 5
  store i32 0, ptr %lastErr50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %27 = load ptr, ptr %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, ptr %27, i64 0, i32 6
  store i8 0, ptr %initialisedOk, align 4
  %bufN = getelementptr inbounds %struct.bzFile, ptr %27, i64 0, i32 2
  store i32 0, ptr %bufN, align 8
  %28 = load ptr, ptr %f.addr, align 8
  store ptr %28, ptr %27, align 8
  %29 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %29, i64 0, i32 3
  store i8 1, ptr %writing, align 4
  %bzalloc = getelementptr inbounds %struct.bzFile, ptr %29, i64 0, i32 4, i32 9
  store ptr null, ptr %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bzFile, ptr %29, i64 0, i32 4, i32 10
  store ptr null, ptr %bzfree, align 8
  %30 = load ptr, ptr %bzf, align 8
  %opaque = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 4, i32 11
  store ptr null, ptr %opaque, align 8
  %31 = load i32, ptr %workFactor.addr, align 4
  %cmp54 = icmp eq i32 %31, 0
  %spec.store.select = select i1 %cmp54, i32 30, i32 %31
  store i32 %spec.store.select, ptr %workFactor.addr, align 4
  %32 = load ptr, ptr %bzf, align 8
  %strm57 = getelementptr inbounds %struct.bzFile, ptr %32, i64 0, i32 4
  %33 = load i32, ptr %blockSize100k.addr, align 4
  %34 = load i32, ptr %verbosity.addr, align 4
  %35 = load i32, ptr %workFactor.addr, align 4
  %call58 = call i32 @BZ2_bzCompressInit(ptr noundef nonnull %strm57, i32 noundef %33, i32 noundef %34, i32 noundef %35)
  store i32 %call58, ptr %ret, align 4
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end68, label %if.then60

if.then60:                                        ; preds = %if.end51
  %36 = load ptr, ptr %bzerror.addr, align 8
  %cmp61.not = icmp eq ptr %36, null
  br i1 %cmp61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then60
  %37 = load i32, ptr %ret, align 4
  %38 = load ptr, ptr %bzerror.addr, align 8
  store i32 %37, ptr %38, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then60
  %39 = load ptr, ptr %bzf, align 8
  %cmp64.not = icmp eq ptr %39, null
  br i1 %cmp64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.end63
  %40 = load i32, ptr %ret, align 4
  %41 = load ptr, ptr %bzf, align 8
  %lastErr66 = getelementptr inbounds %struct.bzFile, ptr %41, i64 0, i32 5
  store i32 %40, ptr %lastErr66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63
  %42 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %42) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end68:                                         ; preds = %if.end51
  %43 = load ptr, ptr %bzf, align 8
  %avail_in = getelementptr inbounds %struct.bzFile, ptr %43, i64 0, i32 4, i32 1
  store i32 0, ptr %avail_in, align 8
  %initialisedOk70 = getelementptr inbounds %struct.bzFile, ptr %43, i64 0, i32 6
  store i8 1, ptr %initialisedOk70, align 4
  store ptr %43, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end68, %if.end67, %if.end43, %if.end32, %if.end23
  %44 = load ptr, ptr %retval, align 8
  ret ptr %44
}

declare i32 @ferror(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bzWrite(ptr noundef %bzerror, ptr noundef %b, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %b, ptr %bzf, align 8
  %cmp.not = icmp eq ptr %bzerror, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %bzf, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %2, i64 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %bzf, align 8
  %cmp4 = icmp eq ptr %3, null
  %4 = load ptr, ptr %buf.addr, align 8
  %cmp5 = icmp eq ptr %4, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  %5 = load i32, ptr %len.addr, align 4
  %cmp7 = icmp slt i32 %5, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7
  br i1 %or.cond1, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end3
  %6 = load ptr, ptr %bzerror.addr, align 8
  %cmp9.not = icmp eq ptr %6, null
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then8
  %7 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %8 = load ptr, ptr %bzf, align 8
  %cmp12.not = icmp eq ptr %8, null
  br i1 %cmp12.not, label %return, label %if.then13

if.then13:                                        ; preds = %if.end11
  %9 = load ptr, ptr %bzf, align 8
  %lastErr14 = getelementptr inbounds %struct.bzFile, ptr %9, i64 0, i32 5
  store i32 -2, ptr %lastErr14, align 8
  br label %return

if.end16:                                         ; preds = %if.end3
  %10 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %10, i64 0, i32 3
  %11 = load i8, ptr %writing, align 4
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end16
  %12 = load ptr, ptr %bzerror.addr, align 8
  %cmp18.not = icmp eq ptr %12, null
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then17
  %13 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %14 = load ptr, ptr %bzf, align 8
  %cmp21.not = icmp eq ptr %14, null
  br i1 %cmp21.not, label %return, label %if.then22

if.then22:                                        ; preds = %if.end20
  %15 = load ptr, ptr %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, ptr %15, i64 0, i32 5
  store i32 -1, ptr %lastErr23, align 8
  br label %return

if.end25:                                         ; preds = %if.end16
  %16 = load ptr, ptr %bzf, align 8
  %17 = load ptr, ptr %16, align 8
  %call = call i32 @ferror(ptr noundef %17) #11
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end25
  %18 = load ptr, ptr %bzerror.addr, align 8
  %cmp28.not = icmp eq ptr %18, null
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then27
  %19 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %19, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %20 = load ptr, ptr %bzf, align 8
  %cmp31.not = icmp eq ptr %20, null
  br i1 %cmp31.not, label %return, label %if.then32

if.then32:                                        ; preds = %if.end30
  %21 = load ptr, ptr %bzf, align 8
  %lastErr33 = getelementptr inbounds %struct.bzFile, ptr %21, i64 0, i32 5
  store i32 -6, ptr %lastErr33, align 8
  br label %return

if.end35:                                         ; preds = %if.end25
  %22 = load i32, ptr %len.addr, align 4
  %cmp36 = icmp eq i32 %22, 0
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end35
  %23 = load ptr, ptr %bzerror.addr, align 8
  %cmp38.not = icmp eq ptr %23, null
  br i1 %cmp38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.then37
  %24 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %24, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then37
  %25 = load ptr, ptr %bzf, align 8
  %cmp41.not = icmp eq ptr %25, null
  br i1 %cmp41.not, label %return, label %if.then42

if.then42:                                        ; preds = %if.end40
  %26 = load ptr, ptr %bzf, align 8
  %lastErr43 = getelementptr inbounds %struct.bzFile, ptr %26, i64 0, i32 5
  store i32 0, ptr %lastErr43, align 8
  br label %return

if.end45:                                         ; preds = %if.end35
  %27 = load i32, ptr %len.addr, align 4
  %28 = load ptr, ptr %bzf, align 8
  %avail_in = getelementptr inbounds %struct.bzFile, ptr %28, i64 0, i32 4, i32 1
  store i32 %27, ptr %avail_in, align 8
  %29 = load ptr, ptr %buf.addr, align 8
  %strm46 = getelementptr inbounds %struct.bzFile, ptr %28, i64 0, i32 4
  store ptr %29, ptr %strm46, align 8
  br label %while.body

while.body:                                       ; preds = %if.end90, %if.end45
  %30 = load ptr, ptr %bzf, align 8
  %avail_out = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 4, i32 5
  store i32 5000, ptr %avail_out, align 8
  %buf48 = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 1
  %next_out = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 4, i32 4
  store ptr %buf48, ptr %next_out, align 8
  %strm50 = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 4
  %call51 = call i32 @BZ2_bzCompress(ptr noundef nonnull %strm50, i32 noundef 0)
  store i32 %call51, ptr %ret, align 4
  %cmp52.not = icmp eq i32 %call51, 1
  br i1 %cmp52.not, label %if.end61, label %if.then53

if.then53:                                        ; preds = %while.body
  %31 = load ptr, ptr %bzerror.addr, align 8
  %cmp54.not = icmp eq ptr %31, null
  br i1 %cmp54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.then53
  %32 = load i32, ptr %ret, align 4
  %33 = load ptr, ptr %bzerror.addr, align 8
  store i32 %32, ptr %33, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then53
  %34 = load ptr, ptr %bzf, align 8
  %cmp57.not = icmp eq ptr %34, null
  br i1 %cmp57.not, label %return, label %if.then58

if.then58:                                        ; preds = %if.end56
  %35 = load i32, ptr %ret, align 4
  %36 = load ptr, ptr %bzf, align 8
  %lastErr59 = getelementptr inbounds %struct.bzFile, ptr %36, i64 0, i32 5
  store i32 %35, ptr %lastErr59, align 8
  br label %return

if.end61:                                         ; preds = %while.body
  %37 = load ptr, ptr %bzf, align 8
  %avail_out63 = getelementptr inbounds %struct.bzFile, ptr %37, i64 0, i32 4, i32 5
  %38 = load i32, ptr %avail_out63, align 8
  %cmp64 = icmp ult i32 %38, 5000
  br i1 %cmp64, label %if.then65, label %if.end90

if.then65:                                        ; preds = %if.end61
  %39 = load ptr, ptr %bzf, align 8
  %avail_out67 = getelementptr inbounds %struct.bzFile, ptr %39, i64 0, i32 4, i32 5
  %40 = load i32, ptr %avail_out67, align 8
  %sub = sub i32 5000, %40
  store i32 %sub, ptr %n, align 4
  %buf68 = getelementptr inbounds %struct.bzFile, ptr %39, i64 0, i32 1
  %conv = sext i32 %sub to i64
  %41 = load ptr, ptr %bzf, align 8
  %42 = load ptr, ptr %41, align 8
  %call71 = call i64 @"\01_fwrite"(ptr noundef nonnull %buf68, i64 noundef 1, i64 noundef %conv, ptr noundef %42) #11
  %conv72 = trunc i64 %call71 to i32
  %43 = load i32, ptr %n, align 4
  %cmp73.not = icmp eq i32 %43, %conv72
  br i1 %cmp73.not, label %lor.lhs.false75, label %if.then79

lor.lhs.false75:                                  ; preds = %if.then65
  %44 = load ptr, ptr %bzf, align 8
  %45 = load ptr, ptr %44, align 8
  %call77 = call i32 @ferror(ptr noundef %45) #11
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end90, label %if.then79

if.then79:                                        ; preds = %lor.lhs.false75, %if.then65
  %46 = load ptr, ptr %bzerror.addr, align 8
  %cmp80.not = icmp eq ptr %46, null
  br i1 %cmp80.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.then79
  %47 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %47, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then79
  %48 = load ptr, ptr %bzf, align 8
  %cmp84.not = icmp eq ptr %48, null
  br i1 %cmp84.not, label %return, label %if.then86

if.then86:                                        ; preds = %if.end83
  %49 = load ptr, ptr %bzf, align 8
  %lastErr87 = getelementptr inbounds %struct.bzFile, ptr %49, i64 0, i32 5
  store i32 -6, ptr %lastErr87, align 8
  br label %return

if.end90:                                         ; preds = %lor.lhs.false75, %if.end61
  %50 = load ptr, ptr %bzf, align 8
  %avail_in92 = getelementptr inbounds %struct.bzFile, ptr %50, i64 0, i32 4, i32 1
  %51 = load i32, ptr %avail_in92, align 8
  %cmp93 = icmp eq i32 %51, 0
  br i1 %cmp93, label %if.then95, label %while.body

if.then95:                                        ; preds = %if.end90
  %52 = load ptr, ptr %bzerror.addr, align 8
  %cmp96.not = icmp eq ptr %52, null
  br i1 %cmp96.not, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.then95
  %53 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %53, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then95
  %54 = load ptr, ptr %bzf, align 8
  %cmp100.not = icmp eq ptr %54, null
  br i1 %cmp100.not, label %return, label %if.then102

if.then102:                                       ; preds = %if.end99
  %55 = load ptr, ptr %bzf, align 8
  %lastErr103 = getelementptr inbounds %struct.bzFile, ptr %55, i64 0, i32 5
  store i32 0, ptr %lastErr103, align 8
  br label %return

return:                                           ; preds = %if.end99, %if.then102, %if.end83, %if.then86, %if.end56, %if.then58, %if.end40, %if.then42, %if.end30, %if.then32, %if.end20, %if.then22, %if.end11, %if.then13
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bzWriteClose(ptr noundef %bzerror, ptr noundef %b, i32 noundef %abandon, ptr noundef %nbytes_in, ptr noundef %nbytes_out) #0 {
entry:
  call void @BZ2_bzWriteClose64(ptr noundef %bzerror, ptr noundef %b, i32 noundef %abandon, ptr noundef %nbytes_in, ptr noundef null, ptr noundef %nbytes_out, ptr noundef null)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bzWriteClose64(ptr noundef %bzerror, ptr noundef %b, i32 noundef %abandon, ptr noundef %nbytes_in_lo32, ptr noundef %nbytes_in_hi32, ptr noundef %nbytes_out_lo32, ptr noundef %nbytes_out_hi32) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in_lo32.addr = alloca ptr, align 8
  %nbytes_in_hi32.addr = alloca ptr, align 8
  %nbytes_out_lo32.addr = alloca ptr, align 8
  %nbytes_out_hi32.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store i32 %abandon, ptr %abandon.addr, align 4
  store ptr %nbytes_in_lo32, ptr %nbytes_in_lo32.addr, align 8
  store ptr %nbytes_in_hi32, ptr %nbytes_in_hi32.addr, align 8
  store ptr %nbytes_out_lo32, ptr %nbytes_out_lo32.addr, align 8
  store ptr %nbytes_out_hi32, ptr %nbytes_out_hi32.addr, align 8
  store ptr %b, ptr %bzf, align 8
  %cmp = icmp eq ptr %b, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bzerror.addr, align 8
  %cmp1.not = icmp eq ptr %0, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load ptr, ptr %bzf, align 8
  %cmp3.not = icmp eq ptr %2, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %3, i64 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %return

if.end6:                                          ; preds = %entry
  %4 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %4, i64 0, i32 3
  %5 = load i8, ptr %writing, align 4
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end6
  %6 = load ptr, ptr %bzerror.addr, align 8
  %cmp8.not = icmp eq ptr %6, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  %7 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %7, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  %8 = load ptr, ptr %bzf, align 8
  %cmp11.not = icmp eq ptr %8, null
  br i1 %cmp11.not, label %return, label %if.then12

if.then12:                                        ; preds = %if.end10
  %9 = load ptr, ptr %bzf, align 8
  %lastErr13 = getelementptr inbounds %struct.bzFile, ptr %9, i64 0, i32 5
  store i32 -1, ptr %lastErr13, align 8
  br label %return

if.end15:                                         ; preds = %if.end6
  %10 = load ptr, ptr %bzf, align 8
  %11 = load ptr, ptr %10, align 8
  %call = call i32 @ferror(ptr noundef %11) #11
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end15
  %12 = load ptr, ptr %bzerror.addr, align 8
  %cmp18.not = icmp eq ptr %12, null
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then17
  %13 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %14 = load ptr, ptr %bzf, align 8
  %cmp21.not = icmp eq ptr %14, null
  br i1 %cmp21.not, label %return, label %if.then22

if.then22:                                        ; preds = %if.end20
  %15 = load ptr, ptr %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, ptr %15, i64 0, i32 5
  store i32 -6, ptr %lastErr23, align 8
  br label %return

if.end25:                                         ; preds = %if.end15
  %16 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  %cmp26.not = icmp eq ptr %16, null
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  %17 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  store i32 0, ptr %17, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %18 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  %cmp29.not = icmp eq ptr %18, null
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  %19 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  store i32 0, ptr %19, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %20 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  %cmp32.not = icmp eq ptr %20, null
  br i1 %cmp32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end31
  %21 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  store i32 0, ptr %21, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %22 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  %cmp35.not = icmp eq ptr %22, null
  br i1 %cmp35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end34
  %23 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  store i32 0, ptr %23, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %24 = load i32, ptr %abandon.addr, align 4
  %tobool38.not = icmp eq i32 %24, 0
  br i1 %tobool38.not, label %land.lhs.true, label %if.end89

land.lhs.true:                                    ; preds = %if.end37
  %25 = load ptr, ptr %bzf, align 8
  %lastErr39 = getelementptr inbounds %struct.bzFile, ptr %25, i64 0, i32 5
  %26 = load i32, ptr %lastErr39, align 8
  %cmp40 = icmp eq i32 %26, 0
  br i1 %cmp40, label %while.body, label %if.end89

while.body:                                       ; preds = %if.end84, %land.lhs.true
  %27 = load ptr, ptr %bzf, align 8
  %avail_out = getelementptr inbounds %struct.bzFile, ptr %27, i64 0, i32 4, i32 5
  store i32 5000, ptr %avail_out, align 8
  %buf = getelementptr inbounds %struct.bzFile, ptr %27, i64 0, i32 1
  %next_out = getelementptr inbounds %struct.bzFile, ptr %27, i64 0, i32 4, i32 4
  store ptr %buf, ptr %next_out, align 8
  %strm43 = getelementptr inbounds %struct.bzFile, ptr %27, i64 0, i32 4
  %call44 = call i32 @BZ2_bzCompress(ptr noundef nonnull %strm43, i32 noundef 2)
  store i32 %call44, ptr %ret, align 4
  %cmp45.not = icmp eq i32 %call44, 3
  %28 = load i32, ptr %ret, align 4
  %cmp47.not = icmp eq i32 %28, 4
  %or.cond = select i1 %cmp45.not, i1 true, i1 %cmp47.not
  br i1 %or.cond, label %if.end56, label %if.then48

if.then48:                                        ; preds = %while.body
  %29 = load ptr, ptr %bzerror.addr, align 8
  %cmp49.not = icmp eq ptr %29, null
  br i1 %cmp49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.then48
  %30 = load i32, ptr %ret, align 4
  %31 = load ptr, ptr %bzerror.addr, align 8
  store i32 %30, ptr %31, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  %32 = load ptr, ptr %bzf, align 8
  %cmp52.not = icmp eq ptr %32, null
  br i1 %cmp52.not, label %return, label %if.then53

if.then53:                                        ; preds = %if.end51
  %33 = load i32, ptr %ret, align 4
  %34 = load ptr, ptr %bzf, align 8
  %lastErr54 = getelementptr inbounds %struct.bzFile, ptr %34, i64 0, i32 5
  store i32 %33, ptr %lastErr54, align 8
  br label %return

if.end56:                                         ; preds = %while.body
  %35 = load ptr, ptr %bzf, align 8
  %avail_out58 = getelementptr inbounds %struct.bzFile, ptr %35, i64 0, i32 4, i32 5
  %36 = load i32, ptr %avail_out58, align 8
  %cmp59 = icmp ult i32 %36, 5000
  br i1 %cmp59, label %if.then60, label %if.end84

if.then60:                                        ; preds = %if.end56
  %37 = load ptr, ptr %bzf, align 8
  %avail_out62 = getelementptr inbounds %struct.bzFile, ptr %37, i64 0, i32 4, i32 5
  %38 = load i32, ptr %avail_out62, align 8
  %sub = sub i32 5000, %38
  store i32 %sub, ptr %n, align 4
  %buf63 = getelementptr inbounds %struct.bzFile, ptr %37, i64 0, i32 1
  %conv = sext i32 %sub to i64
  %39 = load ptr, ptr %bzf, align 8
  %40 = load ptr, ptr %39, align 8
  %call66 = call i64 @"\01_fwrite"(ptr noundef nonnull %buf63, i64 noundef 1, i64 noundef %conv, ptr noundef %40) #11
  %conv67 = trunc i64 %call66 to i32
  %41 = load i32, ptr %n, align 4
  %cmp68.not = icmp eq i32 %41, %conv67
  br i1 %cmp68.not, label %lor.lhs.false, label %if.then73

lor.lhs.false:                                    ; preds = %if.then60
  %42 = load ptr, ptr %bzf, align 8
  %43 = load ptr, ptr %42, align 8
  %call71 = call i32 @ferror(ptr noundef %43) #11
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end84, label %if.then73

if.then73:                                        ; preds = %lor.lhs.false, %if.then60
  %44 = load ptr, ptr %bzerror.addr, align 8
  %cmp74.not = icmp eq ptr %44, null
  br i1 %cmp74.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.then73
  %45 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %45, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then73
  %46 = load ptr, ptr %bzf, align 8
  %cmp78.not = icmp eq ptr %46, null
  br i1 %cmp78.not, label %return, label %if.then80

if.then80:                                        ; preds = %if.end77
  %47 = load ptr, ptr %bzf, align 8
  %lastErr81 = getelementptr inbounds %struct.bzFile, ptr %47, i64 0, i32 5
  store i32 -6, ptr %lastErr81, align 8
  br label %return

if.end84:                                         ; preds = %lor.lhs.false, %if.end56
  %48 = load i32, ptr %ret, align 4
  %cmp85 = icmp eq i32 %48, 4
  br i1 %cmp85, label %if.end89, label %while.body

if.end89:                                         ; preds = %if.end84, %land.lhs.true, %if.end37
  %49 = load i32, ptr %abandon.addr, align 4
  %tobool90.not = icmp eq i32 %49, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %if.end112

land.lhs.true91:                                  ; preds = %if.end89
  %50 = load ptr, ptr %bzf, align 8
  %51 = load ptr, ptr %50, align 8
  %call93 = call i32 @ferror(ptr noundef %51) #11
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end112

if.then95:                                        ; preds = %land.lhs.true91
  %52 = load ptr, ptr %bzf, align 8
  %53 = load ptr, ptr %52, align 8
  %call97 = call i32 @fflush(ptr noundef %53) #11
  %54 = load ptr, ptr %52, align 8
  %call99 = call i32 @ferror(ptr noundef %54) #11
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end112, label %if.then101

if.then101:                                       ; preds = %if.then95
  %55 = load ptr, ptr %bzerror.addr, align 8
  %cmp102.not = icmp eq ptr %55, null
  br i1 %cmp102.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.then101
  %56 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %56, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then101
  %57 = load ptr, ptr %bzf, align 8
  %cmp106.not = icmp eq ptr %57, null
  br i1 %cmp106.not, label %return, label %if.then108

if.then108:                                       ; preds = %if.end105
  %58 = load ptr, ptr %bzf, align 8
  %lastErr109 = getelementptr inbounds %struct.bzFile, ptr %58, i64 0, i32 5
  store i32 -6, ptr %lastErr109, align 8
  br label %return

if.end112:                                        ; preds = %if.then95, %land.lhs.true91, %if.end89
  %59 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  %cmp113.not = icmp eq ptr %59, null
  br i1 %cmp113.not, label %if.end117, label %if.then115

if.then115:                                       ; preds = %if.end112
  %60 = load ptr, ptr %bzf, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bzFile, ptr %60, i64 0, i32 4, i32 2
  %61 = load i32, ptr %total_in_lo32, align 4
  %62 = load ptr, ptr %nbytes_in_lo32.addr, align 8
  store i32 %61, ptr %62, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112
  %63 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  %cmp118.not = icmp eq ptr %63, null
  br i1 %cmp118.not, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.end117
  %64 = load ptr, ptr %bzf, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bzFile, ptr %64, i64 0, i32 4, i32 3
  %65 = load i32, ptr %total_in_hi32, align 8
  %66 = load ptr, ptr %nbytes_in_hi32.addr, align 8
  store i32 %65, ptr %66, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117
  %67 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  %cmp123.not = icmp eq ptr %67, null
  br i1 %cmp123.not, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.end122
  %68 = load ptr, ptr %bzf, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bzFile, ptr %68, i64 0, i32 4, i32 6
  %69 = load i32, ptr %total_out_lo32, align 4
  %70 = load ptr, ptr %nbytes_out_lo32.addr, align 8
  store i32 %69, ptr %70, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122
  %71 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  %cmp128.not = icmp eq ptr %71, null
  br i1 %cmp128.not, label %if.end132, label %if.then130

if.then130:                                       ; preds = %if.end127
  %72 = load ptr, ptr %bzf, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bzFile, ptr %72, i64 0, i32 4, i32 7
  %73 = load i32, ptr %total_out_hi32, align 8
  %74 = load ptr, ptr %nbytes_out_hi32.addr, align 8
  store i32 %73, ptr %74, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127
  %75 = load ptr, ptr %bzerror.addr, align 8
  %cmp133.not = icmp eq ptr %75, null
  br i1 %cmp133.not, label %if.end136, label %if.then135

if.then135:                                       ; preds = %if.end132
  %76 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %76, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end132
  %77 = load ptr, ptr %bzf, align 8
  %cmp137.not = icmp eq ptr %77, null
  br i1 %cmp137.not, label %if.end141, label %if.then139

if.then139:                                       ; preds = %if.end136
  %78 = load ptr, ptr %bzf, align 8
  %lastErr140 = getelementptr inbounds %struct.bzFile, ptr %78, i64 0, i32 5
  store i32 0, ptr %lastErr140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end136
  %79 = load ptr, ptr %bzf, align 8
  %strm142 = getelementptr inbounds %struct.bzFile, ptr %79, i64 0, i32 4
  %call143 = call i32 @BZ2_bzCompressEnd(ptr noundef nonnull %strm142)
  call void @free(ptr noundef %79) #11
  br label %return

return:                                           ; preds = %if.end105, %if.then108, %if.end77, %if.then80, %if.end51, %if.then53, %if.end20, %if.then22, %if.end10, %if.then12, %if.end, %if.then4, %if.end141
  ret void
}

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @BZ2_bzReadOpen(ptr noundef %bzerror, ptr noundef %f, i32 noundef %verbosity, i32 noundef %small, ptr noundef %unused, i32 noundef %nUnused) #0 {
entry:
  %retval = alloca ptr, align 8
  %bzerror.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %unused.addr = alloca ptr, align 8
  %nUnused.addr = alloca i32, align 4
  %bzf = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %small, ptr %small.addr, align 4
  store ptr %unused, ptr %unused.addr, align 8
  store i32 %nUnused, ptr %nUnused.addr, align 4
  store ptr null, ptr %bzf, align 8
  %0 = load ptr, ptr %bzerror.addr, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %bzf, align 8
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %3, i64 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %f.addr, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i32, ptr %small.addr, align 4
  %cmp5.not = icmp eq i32 %5, 0
  %6 = load i32, ptr %small.addr, align 4
  %cmp6.not = icmp eq i32 %6, 1
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp6.not
  %or.cond.not = xor i1 %or.cond, true
  %7 = load i32, ptr %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %7, 0
  %or.cond1 = select i1 %or.cond.not, i1 true, i1 %cmp8
  %8 = load i32, ptr %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %8, 4
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp10
  br i1 %or.cond2, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %9 = load ptr, ptr %unused.addr, align 8
  %cmp12 = icmp ne ptr %9, null
  %10 = load i32, ptr %nUnused.addr, align 4
  %cmp14.not = icmp eq i32 %10, 0
  %or.cond3 = select i1 %cmp12, i1 true, i1 %cmp14.not
  br i1 %or.cond3, label %lor.lhs.false15, label %if.then21

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %11 = load ptr, ptr %unused.addr, align 8
  %cmp16.not = icmp eq ptr %11, null
  br i1 %cmp16.not, label %if.end29, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %12 = load i32, ptr %nUnused.addr, align 4
  %cmp18 = icmp slt i32 %12, 0
  %13 = load i32, ptr %nUnused.addr, align 4
  %cmp20 = icmp sgt i32 %13, 5000
  %or.cond4 = select i1 %cmp18, i1 true, i1 %cmp20
  br i1 %or.cond4, label %if.then21, label %if.end29

if.then21:                                        ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true17, %if.end3
  %14 = load ptr, ptr %bzerror.addr, align 8
  %cmp22.not = icmp eq ptr %14, null
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then21
  %15 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %15, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21
  %16 = load ptr, ptr %bzf, align 8
  %cmp25.not = icmp eq ptr %16, null
  br i1 %cmp25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end24
  %17 = load ptr, ptr %bzf, align 8
  %lastErr27 = getelementptr inbounds %struct.bzFile, ptr %17, i64 0, i32 5
  store i32 -2, ptr %lastErr27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store ptr null, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %land.lhs.true17, %lor.lhs.false15
  %18 = load ptr, ptr %f.addr, align 8
  %call = call i32 @ferror(ptr noundef %18) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end38, label %if.then30

if.then30:                                        ; preds = %if.end29
  %19 = load ptr, ptr %bzerror.addr, align 8
  %cmp31.not = icmp eq ptr %19, null
  br i1 %cmp31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.then30
  %20 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %20, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  %21 = load ptr, ptr %bzf, align 8
  %cmp34.not = icmp eq ptr %21, null
  br i1 %cmp34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  %22 = load ptr, ptr %bzf, align 8
  %lastErr36 = getelementptr inbounds %struct.bzFile, ptr %22, i64 0, i32 5
  store i32 -6, ptr %lastErr36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  store ptr null, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end29
  %call39 = call dereferenceable_or_null(5104) ptr @malloc(i64 noundef 5104) #13
  store ptr %call39, ptr %bzf, align 8
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.end38
  %23 = load ptr, ptr %bzerror.addr, align 8
  %cmp42.not = icmp eq ptr %23, null
  br i1 %cmp42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.then41
  %24 = load ptr, ptr %bzerror.addr, align 8
  store i32 -3, ptr %24, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then41
  %25 = load ptr, ptr %bzf, align 8
  %cmp45.not = icmp eq ptr %25, null
  br i1 %cmp45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  %26 = load ptr, ptr %bzf, align 8
  %lastErr47 = getelementptr inbounds %struct.bzFile, ptr %26, i64 0, i32 5
  store i32 -3, ptr %lastErr47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  store ptr null, ptr %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.end38
  %27 = load ptr, ptr %bzerror.addr, align 8
  %cmp50.not = icmp eq ptr %27, null
  br i1 %cmp50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end49
  %28 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %28, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  %29 = load ptr, ptr %bzf, align 8
  %cmp53.not = icmp eq ptr %29, null
  br i1 %cmp53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end52
  %30 = load ptr, ptr %bzf, align 8
  %lastErr55 = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 5
  store i32 0, ptr %lastErr55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %31 = load ptr, ptr %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, ptr %31, i64 0, i32 6
  store i8 0, ptr %initialisedOk, align 4
  %32 = load ptr, ptr %f.addr, align 8
  store ptr %32, ptr %31, align 8
  %bufN = getelementptr inbounds %struct.bzFile, ptr %31, i64 0, i32 2
  store i32 0, ptr %bufN, align 8
  %33 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %33, i64 0, i32 3
  store i8 0, ptr %writing, align 4
  %bzalloc = getelementptr inbounds %struct.bzFile, ptr %33, i64 0, i32 4, i32 9
  store ptr null, ptr %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bzFile, ptr %33, i64 0, i32 4, i32 10
  store ptr null, ptr %bzfree, align 8
  %34 = load ptr, ptr %bzf, align 8
  %opaque = getelementptr inbounds %struct.bzFile, ptr %34, i64 0, i32 4, i32 11
  store ptr null, ptr %opaque, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end56
  %35 = load i32, ptr %nUnused.addr, align 4
  %cmp59 = icmp sgt i32 %35, 0
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load ptr, ptr %unused.addr, align 8
  %37 = load i8, ptr %36, align 1
  %38 = load ptr, ptr %bzf, align 8
  %bufN60 = getelementptr inbounds %struct.bzFile, ptr %38, i64 0, i32 2
  %39 = load i32, ptr %bufN60, align 8
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds %struct.bzFile, ptr %38, i64 0, i32 1, i64 %idxprom
  store i8 %37, ptr %arrayidx, align 1
  %bufN61 = getelementptr inbounds %struct.bzFile, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %bufN61, align 8
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %bufN61, align 8
  %41 = load ptr, ptr %unused.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %add.ptr, ptr %unused.addr, align 8
  %42 = load i32, ptr %nUnused.addr, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, ptr %nUnused.addr, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %43 = load ptr, ptr %bzf, align 8
  %strm62 = getelementptr inbounds %struct.bzFile, ptr %43, i64 0, i32 4
  %44 = load i32, ptr %verbosity.addr, align 4
  %45 = load i32, ptr %small.addr, align 4
  %call63 = call i32 @BZ2_bzDecompressInit(ptr noundef nonnull %strm62, i32 noundef %44, i32 noundef %45)
  store i32 %call63, ptr %ret, align 4
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end73, label %if.then65

if.then65:                                        ; preds = %while.end
  %46 = load ptr, ptr %bzerror.addr, align 8
  %cmp66.not = icmp eq ptr %46, null
  br i1 %cmp66.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.then65
  %47 = load i32, ptr %ret, align 4
  %48 = load ptr, ptr %bzerror.addr, align 8
  store i32 %47, ptr %48, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then65
  %49 = load ptr, ptr %bzf, align 8
  %cmp69.not = icmp eq ptr %49, null
  br i1 %cmp69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %if.end68
  %50 = load i32, ptr %ret, align 4
  %51 = load ptr, ptr %bzf, align 8
  %lastErr71 = getelementptr inbounds %struct.bzFile, ptr %51, i64 0, i32 5
  store i32 %50, ptr %lastErr71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68
  %52 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %52) #11
  store ptr null, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %while.end
  %53 = load ptr, ptr %bzf, align 8
  %bufN74 = getelementptr inbounds %struct.bzFile, ptr %53, i64 0, i32 2
  %54 = load i32, ptr %bufN74, align 8
  %avail_in = getelementptr inbounds %struct.bzFile, ptr %53, i64 0, i32 4, i32 1
  store i32 %54, ptr %avail_in, align 8
  %buf76 = getelementptr inbounds %struct.bzFile, ptr %53, i64 0, i32 1
  %strm77 = getelementptr inbounds %struct.bzFile, ptr %53, i64 0, i32 4
  store ptr %buf76, ptr %strm77, align 8
  %55 = load ptr, ptr %bzf, align 8
  %initialisedOk78 = getelementptr inbounds %struct.bzFile, ptr %55, i64 0, i32 6
  store i8 1, ptr %initialisedOk78, align 4
  store ptr %55, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.end72, %if.end48, %if.end37, %if.end28
  %56 = load ptr, ptr %retval, align 8
  ret ptr %56
}

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bzReadClose(ptr noundef %bzerror, ptr noundef %b) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %b, ptr %bzf, align 8
  %cmp.not = icmp eq ptr %bzerror, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %bzf, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %2, i64 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %bzf, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %bzerror.addr, align 8
  %cmp6.not = icmp eq ptr %4, null
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %5, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %6 = load ptr, ptr %bzf, align 8
  %cmp9.not = icmp eq ptr %6, null
  br i1 %cmp9.not, label %return, label %if.then10

if.then10:                                        ; preds = %if.end8
  %7 = load ptr, ptr %bzf, align 8
  %lastErr11 = getelementptr inbounds %struct.bzFile, ptr %7, i64 0, i32 5
  store i32 0, ptr %lastErr11, align 8
  br label %return

if.end13:                                         ; preds = %if.end3
  %8 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %8, i64 0, i32 3
  %9 = load i8, ptr %writing, align 4
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end13
  %10 = load ptr, ptr %bzerror.addr, align 8
  %cmp15.not = icmp eq ptr %10, null
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  %11 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %11, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %12 = load ptr, ptr %bzf, align 8
  %cmp18.not = icmp eq ptr %12, null
  br i1 %cmp18.not, label %return, label %if.then19

if.then19:                                        ; preds = %if.end17
  %13 = load ptr, ptr %bzf, align 8
  %lastErr20 = getelementptr inbounds %struct.bzFile, ptr %13, i64 0, i32 5
  store i32 -1, ptr %lastErr20, align 8
  br label %return

if.end22:                                         ; preds = %if.end13
  %14 = load ptr, ptr %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, ptr %14, i64 0, i32 6
  %15 = load i8, ptr %initialisedOk, align 4
  %tobool23.not = icmp eq i8 %15, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  %16 = load ptr, ptr %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, ptr %16, i64 0, i32 4
  %call = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %strm)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %17 = load ptr, ptr %bzf, align 8
  call void @free(ptr noundef %17) #11
  br label %return

return:                                           ; preds = %if.end17, %if.then19, %if.end8, %if.then10, %if.end25
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzRead(ptr noundef %bzerror, ptr noundef %b, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %bzerror.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %b, ptr %bzf, align 8
  %cmp.not = icmp eq ptr %bzerror, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %bzf, align 8
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %2, i64 0, i32 5
  store i32 0, ptr %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %bzf, align 8
  %cmp4 = icmp eq ptr %3, null
  %4 = load ptr, ptr %buf.addr, align 8
  %cmp5 = icmp eq ptr %4, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  %5 = load i32, ptr %len.addr, align 4
  %cmp7 = icmp slt i32 %5, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp7
  br i1 %or.cond1, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end3
  %6 = load ptr, ptr %bzerror.addr, align 8
  %cmp9.not = icmp eq ptr %6, null
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then8
  %7 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %8 = load ptr, ptr %bzf, align 8
  %cmp12.not = icmp eq ptr %8, null
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  %9 = load ptr, ptr %bzf, align 8
  %lastErr14 = getelementptr inbounds %struct.bzFile, ptr %9, i64 0, i32 5
  store i32 -2, ptr %lastErr14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end3
  %10 = load ptr, ptr %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %10, i64 0, i32 3
  %11 = load i8, ptr %writing, align 4
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end16
  %12 = load ptr, ptr %bzerror.addr, align 8
  %cmp18.not = icmp eq ptr %12, null
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then17
  %13 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %13, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %14 = load ptr, ptr %bzf, align 8
  %cmp21.not = icmp eq ptr %14, null
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %15 = load ptr, ptr %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, ptr %15, i64 0, i32 5
  store i32 -1, ptr %lastErr23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end16
  %16 = load i32, ptr %len.addr, align 4
  %cmp26 = icmp eq i32 %16, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %17 = load ptr, ptr %bzerror.addr, align 8
  %cmp28.not = icmp eq ptr %17, null
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then27
  %18 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %18, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %19 = load ptr, ptr %bzf, align 8
  %cmp31.not = icmp eq ptr %19, null
  br i1 %cmp31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  %20 = load ptr, ptr %bzf, align 8
  %lastErr33 = getelementptr inbounds %struct.bzFile, ptr %20, i64 0, i32 5
  store i32 0, ptr %lastErr33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end25
  %21 = load i32, ptr %len.addr, align 4
  %22 = load ptr, ptr %bzf, align 8
  %avail_out = getelementptr inbounds %struct.bzFile, ptr %22, i64 0, i32 4, i32 5
  store i32 %21, ptr %avail_out, align 8
  %23 = load ptr, ptr %buf.addr, align 8
  %next_out = getelementptr inbounds %struct.bzFile, ptr %22, i64 0, i32 4, i32 4
  store ptr %23, ptr %next_out, align 8
  br label %while.body

while.body:                                       ; preds = %if.end137, %if.end35
  %24 = load ptr, ptr %bzf, align 8
  %25 = load ptr, ptr %24, align 8
  %call = call i32 @ferror(ptr noundef %25) #11
  %tobool37.not = icmp eq i32 %call, 0
  br i1 %tobool37.not, label %if.end46, label %if.then38

if.then38:                                        ; preds = %while.body
  %26 = load ptr, ptr %bzerror.addr, align 8
  %cmp39.not = icmp eq ptr %26, null
  br i1 %cmp39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.then38
  %27 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %27, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38
  %28 = load ptr, ptr %bzf, align 8
  %cmp42.not = icmp eq ptr %28, null
  br i1 %cmp42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  %29 = load ptr, ptr %bzf, align 8
  %lastErr44 = getelementptr inbounds %struct.bzFile, ptr %29, i64 0, i32 5
  store i32 -6, ptr %lastErr44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %while.body
  %30 = load ptr, ptr %bzf, align 8
  %avail_in = getelementptr inbounds %struct.bzFile, ptr %30, i64 0, i32 4, i32 1
  %31 = load i32, ptr %avail_in, align 8
  %cmp48 = icmp eq i32 %31, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end76

land.lhs.true:                                    ; preds = %if.end46
  %32 = load ptr, ptr %bzf, align 8
  %33 = load ptr, ptr %32, align 8
  %call50 = call zeroext i8 @myfeof(ptr noundef %33)
  %tobool51.not = icmp eq i8 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end76

if.then52:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %bzf, align 8
  %buf53 = getelementptr inbounds %struct.bzFile, ptr %34, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %call55 = call i64 @fread(ptr noundef nonnull %buf53, i64 noundef 1, i64 noundef 5000, ptr noundef %35) #11
  %conv = trunc i64 %call55 to i32
  store i32 %conv, ptr %n, align 4
  %36 = load ptr, ptr %34, align 8
  %call57 = call i32 @ferror(ptr noundef %36) #11
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end69, label %if.then59

if.then59:                                        ; preds = %if.then52
  %37 = load ptr, ptr %bzerror.addr, align 8
  %cmp60.not = icmp eq ptr %37, null
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then59
  %38 = load ptr, ptr %bzerror.addr, align 8
  store i32 -6, ptr %38, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  %39 = load ptr, ptr %bzf, align 8
  %cmp64.not = icmp eq ptr %39, null
  br i1 %cmp64.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end63
  %40 = load ptr, ptr %bzf, align 8
  %lastErr67 = getelementptr inbounds %struct.bzFile, ptr %40, i64 0, i32 5
  store i32 -6, ptr %lastErr67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.then52
  %41 = load i32, ptr %n, align 4
  %42 = load ptr, ptr %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, ptr %42, i64 0, i32 2
  store i32 %41, ptr %bufN, align 8
  %avail_in72 = getelementptr inbounds %struct.bzFile, ptr %42, i64 0, i32 4, i32 1
  store i32 %41, ptr %avail_in72, align 8
  %buf73 = getelementptr inbounds %struct.bzFile, ptr %42, i64 0, i32 1
  %strm75 = getelementptr inbounds %struct.bzFile, ptr %42, i64 0, i32 4
  store ptr %buf73, ptr %strm75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end69, %land.lhs.true, %if.end46
  %43 = load ptr, ptr %bzf, align 8
  %strm77 = getelementptr inbounds %struct.bzFile, ptr %43, i64 0, i32 4
  %call78 = call i32 @BZ2_bzDecompress(ptr noundef nonnull %strm77)
  store i32 %call78, ptr %ret, align 4
  %cmp79.not = icmp eq i32 %call78, 0
  %44 = load i32, ptr %ret, align 4
  %cmp82.not = icmp eq i32 %44, 4
  %or.cond2 = select i1 %cmp79.not, i1 true, i1 %cmp82.not
  br i1 %or.cond2, label %if.end94, label %if.then84

if.then84:                                        ; preds = %if.end76
  %45 = load ptr, ptr %bzerror.addr, align 8
  %cmp85.not = icmp eq ptr %45, null
  br i1 %cmp85.not, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.then84
  %46 = load i32, ptr %ret, align 4
  %47 = load ptr, ptr %bzerror.addr, align 8
  store i32 %46, ptr %47, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %48 = load ptr, ptr %bzf, align 8
  %cmp89.not = icmp eq ptr %48, null
  br i1 %cmp89.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.end88
  %49 = load i32, ptr %ret, align 4
  %50 = load ptr, ptr %bzf, align 8
  %lastErr92 = getelementptr inbounds %struct.bzFile, ptr %50, i64 0, i32 5
  store i32 %49, ptr %lastErr92, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88
  store i32 0, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.end76
  %51 = load i32, ptr %ret, align 4
  %cmp95 = icmp eq i32 %51, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.end122

land.lhs.true97:                                  ; preds = %if.end94
  %52 = load ptr, ptr %bzf, align 8
  %53 = load ptr, ptr %52, align 8
  %call99 = call zeroext i8 @myfeof(ptr noundef %53)
  %tobool101.not = icmp eq i8 %call99, 0
  br i1 %tobool101.not, label %if.end122, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %54 = load ptr, ptr %bzf, align 8
  %avail_in104 = getelementptr inbounds %struct.bzFile, ptr %54, i64 0, i32 4, i32 1
  %55 = load i32, ptr %avail_in104, align 8
  %cmp105 = icmp eq i32 %55, 0
  br i1 %cmp105, label %land.lhs.true107, label %if.end122

land.lhs.true107:                                 ; preds = %land.lhs.true102
  %56 = load ptr, ptr %bzf, align 8
  %avail_out109 = getelementptr inbounds %struct.bzFile, ptr %56, i64 0, i32 4, i32 5
  %57 = load i32, ptr %avail_out109, align 8
  %cmp110.not = icmp eq i32 %57, 0
  br i1 %cmp110.not, label %if.end122, label %if.then112

if.then112:                                       ; preds = %land.lhs.true107
  %58 = load ptr, ptr %bzerror.addr, align 8
  %cmp113.not = icmp eq ptr %58, null
  br i1 %cmp113.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.then112
  %59 = load ptr, ptr %bzerror.addr, align 8
  store i32 -7, ptr %59, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.then112
  %60 = load ptr, ptr %bzf, align 8
  %cmp117.not = icmp eq ptr %60, null
  br i1 %cmp117.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end116
  %61 = load ptr, ptr %bzf, align 8
  %lastErr120 = getelementptr inbounds %struct.bzFile, ptr %61, i64 0, i32 5
  store i32 -7, ptr %lastErr120, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116
  store i32 0, ptr %retval, align 4
  br label %return

if.end122:                                        ; preds = %land.lhs.true107, %land.lhs.true102, %land.lhs.true97, %if.end94
  %62 = load i32, ptr %ret, align 4
  %cmp123 = icmp eq i32 %62, 4
  br i1 %cmp123, label %if.then125, label %if.end137

if.then125:                                       ; preds = %if.end122
  %63 = load ptr, ptr %bzerror.addr, align 8
  %cmp126.not = icmp eq ptr %63, null
  br i1 %cmp126.not, label %if.end129, label %if.then128

if.then128:                                       ; preds = %if.then125
  %64 = load ptr, ptr %bzerror.addr, align 8
  store i32 4, ptr %64, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.then125
  %65 = load ptr, ptr %bzf, align 8
  %cmp130.not = icmp eq ptr %65, null
  br i1 %cmp130.not, label %if.end134, label %if.then132

if.then132:                                       ; preds = %if.end129
  %66 = load ptr, ptr %bzf, align 8
  %lastErr133 = getelementptr inbounds %struct.bzFile, ptr %66, i64 0, i32 5
  store i32 4, ptr %lastErr133, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end129
  %67 = load i32, ptr %len.addr, align 4
  %68 = load ptr, ptr %bzf, align 8
  %avail_out136 = getelementptr inbounds %struct.bzFile, ptr %68, i64 0, i32 4, i32 5
  %69 = load i32, ptr %avail_out136, align 8
  %sub = sub i32 %67, %69
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end122
  %70 = load ptr, ptr %bzf, align 8
  %avail_out139 = getelementptr inbounds %struct.bzFile, ptr %70, i64 0, i32 4, i32 5
  %71 = load i32, ptr %avail_out139, align 8
  %cmp140 = icmp eq i32 %71, 0
  br i1 %cmp140, label %if.then142, label %while.body

if.then142:                                       ; preds = %if.end137
  %72 = load ptr, ptr %bzerror.addr, align 8
  %cmp143.not = icmp eq ptr %72, null
  br i1 %cmp143.not, label %if.end146, label %if.then145

if.then145:                                       ; preds = %if.then142
  %73 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %73, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then142
  %74 = load ptr, ptr %bzf, align 8
  %cmp147.not = icmp eq ptr %74, null
  br i1 %cmp147.not, label %if.end151, label %if.then149

if.then149:                                       ; preds = %if.end146
  %75 = load ptr, ptr %bzf, align 8
  %lastErr150 = getelementptr inbounds %struct.bzFile, ptr %75, i64 0, i32 5
  store i32 0, ptr %lastErr150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146
  %76 = load i32, ptr %len.addr, align 4
  store i32 %76, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end151, %if.end134, %if.end121, %if.end93, %if.end68, %if.end45, %if.end34, %if.end24, %if.end15
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @myfeof(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  %call = call i32 @fgetc(ptr noundef %f) #11
  store i32 %call, ptr %c, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %c, align 4
  %1 = load ptr, ptr %f.addr, align 8
  %call1 = call i32 @ungetc(i32 noundef %0, ptr noundef %1) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i8 [ 0, %if.end ], [ 1, %entry ]
  ret i8 %storemerge
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bzReadGetUnused(ptr noundef %bzerror, ptr noundef %b, ptr noundef %unused, ptr noundef %nUnused) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %unused.addr = alloca ptr, align 8
  %nUnused.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  store ptr %nUnused, ptr %nUnused.addr, align 8
  store ptr %b, ptr %bzf, align 8
  %cmp = icmp eq ptr %b, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %bzerror.addr, align 8
  %cmp1.not = icmp eq ptr %0, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load ptr, ptr %bzf, align 8
  %cmp3.not = icmp eq ptr %2, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %3, i64 0, i32 5
  store i32 -2, ptr %lastErr, align 8
  br label %return

if.end6:                                          ; preds = %entry
  %4 = load ptr, ptr %bzf, align 8
  %lastErr7 = getelementptr inbounds %struct.bzFile, ptr %4, i64 0, i32 5
  %5 = load i32, ptr %lastErr7, align 8
  %cmp8.not = icmp eq i32 %5, 4
  br i1 %cmp8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end6
  %6 = load ptr, ptr %bzerror.addr, align 8
  %cmp10.not = icmp eq ptr %6, null
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then9
  %7 = load ptr, ptr %bzerror.addr, align 8
  store i32 -1, ptr %7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %8 = load ptr, ptr %bzf, align 8
  %cmp13.not = icmp eq ptr %8, null
  br i1 %cmp13.not, label %return, label %if.then14

if.then14:                                        ; preds = %if.end12
  %9 = load ptr, ptr %bzf, align 8
  %lastErr15 = getelementptr inbounds %struct.bzFile, ptr %9, i64 0, i32 5
  store i32 -1, ptr %lastErr15, align 8
  br label %return

if.end17:                                         ; preds = %if.end6
  %10 = load ptr, ptr %unused.addr, align 8
  %cmp18 = icmp eq ptr %10, null
  %11 = load ptr, ptr %nUnused.addr, align 8
  %cmp19 = icmp eq ptr %11, null
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end17
  %12 = load ptr, ptr %bzerror.addr, align 8
  %cmp21.not = icmp eq ptr %12, null
  br i1 %cmp21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.then20
  %13 = load ptr, ptr %bzerror.addr, align 8
  store i32 -2, ptr %13, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %14 = load ptr, ptr %bzf, align 8
  %cmp24.not = icmp eq ptr %14, null
  br i1 %cmp24.not, label %return, label %if.then25

if.then25:                                        ; preds = %if.end23
  %15 = load ptr, ptr %bzf, align 8
  %lastErr26 = getelementptr inbounds %struct.bzFile, ptr %15, i64 0, i32 5
  store i32 -2, ptr %lastErr26, align 8
  br label %return

if.end28:                                         ; preds = %if.end17
  %16 = load ptr, ptr %bzerror.addr, align 8
  %cmp29.not = icmp eq ptr %16, null
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  %17 = load ptr, ptr %bzerror.addr, align 8
  store i32 0, ptr %17, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %18 = load ptr, ptr %bzf, align 8
  %cmp32.not = icmp eq ptr %18, null
  br i1 %cmp32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end31
  %19 = load ptr, ptr %bzf, align 8
  %lastErr34 = getelementptr inbounds %struct.bzFile, ptr %19, i64 0, i32 5
  store i32 0, ptr %lastErr34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31
  %20 = load ptr, ptr %bzf, align 8
  %avail_in = getelementptr inbounds %struct.bzFile, ptr %20, i64 0, i32 4, i32 1
  %21 = load i32, ptr %avail_in, align 8
  %22 = load ptr, ptr %nUnused.addr, align 8
  store i32 %21, ptr %22, align 4
  %strm36 = getelementptr inbounds %struct.bzFile, ptr %20, i64 0, i32 4
  %23 = load ptr, ptr %strm36, align 8
  %24 = load ptr, ptr %unused.addr, align 8
  store ptr %23, ptr %24, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then25, %if.end12, %if.then14, %if.end, %if.then4, %if.end35
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzBuffToBuffCompress(ptr noundef %dest, ptr noundef %destLen, ptr noundef %source, i32 noundef %sourceLen, i32 noundef %blockSize100k, i32 noundef %verbosity, i32 noundef %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %destLen.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i32, align 4
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %destLen, ptr %destLen.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i32 %sourceLen, ptr %sourceLen.addr, align 4
  store i32 %blockSize100k, ptr %blockSize100k.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  store i32 %workFactor, ptr %workFactor.addr, align 4
  %0 = load ptr, ptr %dest.addr, align 8
  %cmp = icmp eq ptr %0, null
  %1 = load ptr, ptr %destLen.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load ptr, ptr %source.addr, align 8
  %cmp3 = icmp eq ptr %2, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp3
  %3 = load i32, ptr %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %3, 1
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp5
  %4 = load i32, ptr %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %4, 9
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp7
  %5 = load i32, ptr %verbosity.addr, align 4
  %cmp9 = icmp slt i32 %5, 0
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp9
  %6 = load i32, ptr %verbosity.addr, align 4
  %cmp11 = icmp sgt i32 %6, 4
  %or.cond5 = select i1 %or.cond4, i1 true, i1 %cmp11
  %7 = load i32, ptr %workFactor.addr, align 4
  %cmp13 = icmp slt i32 %7, 0
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp13
  %8 = load i32, ptr %workFactor.addr, align 4
  %cmp15 = icmp sgt i32 %8, 250
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %cmp15
  br i1 %or.cond7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %workFactor.addr, align 4
  %cmp16 = icmp eq i32 %9, 0
  %spec.store.select = select i1 %cmp16, i32 30, i32 %9
  store i32 %spec.store.select, ptr %workFactor.addr, align 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 9
  store ptr null, ptr %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 10
  store ptr null, ptr %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 11
  store ptr null, ptr %opaque, align 8
  %10 = load i32, ptr %blockSize100k.addr, align 4
  %11 = load i32, ptr %verbosity.addr, align 4
  %12 = load i32, ptr %workFactor.addr, align 4
  %call = call i32 @BZ2_bzCompressInit(ptr noundef nonnull %strm, i32 noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %call, ptr %ret, align 4
  %cmp19.not = icmp eq i32 %call, 0
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end
  %13 = load i32, ptr %ret, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end
  %14 = load ptr, ptr %source.addr, align 8
  store ptr %14, ptr %strm, align 8
  %15 = load ptr, ptr %dest.addr, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 4
  store ptr %15, ptr %next_out, align 8
  %16 = load i32, ptr %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 1
  store i32 %16, ptr %avail_in, align 8
  %17 = load ptr, ptr %destLen.addr, align 8
  %18 = load i32, ptr %17, align 4
  %avail_out = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 5
  store i32 %18, ptr %avail_out, align 8
  %call22 = call i32 @BZ2_bzCompress(ptr noundef nonnull %strm, i32 noundef 2)
  store i32 %call22, ptr %ret, align 4
  %cmp23 = icmp eq i32 %call22, 3
  br i1 %cmp23, label %output_overflow, label %if.end25

if.end25:                                         ; preds = %if.end21
  %19 = load i32, ptr %ret, align 4
  %cmp26.not = icmp eq i32 %19, 4
  br i1 %cmp26.not, label %if.end28, label %errhandler

if.end28:                                         ; preds = %if.end25
  %avail_out29 = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 5
  %20 = load i32, ptr %avail_out29, align 8
  %21 = load ptr, ptr %destLen.addr, align 8
  %22 = load i32, ptr %21, align 4
  %sub = sub i32 %22, %20
  store i32 %sub, ptr %21, align 4
  %call30 = call i32 @BZ2_bzCompressEnd(ptr noundef nonnull %strm)
  store i32 0, ptr %retval, align 4
  br label %return

output_overflow:                                  ; preds = %if.end21
  %call31 = call i32 @BZ2_bzCompressEnd(ptr noundef nonnull %strm)
  store i32 -8, ptr %retval, align 4
  br label %return

errhandler:                                       ; preds = %if.end25
  %call32 = call i32 @BZ2_bzCompressEnd(ptr noundef nonnull %strm)
  %23 = load i32, ptr %ret, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %errhandler, %output_overflow, %if.end28, %if.then20, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzBuffToBuffDecompress(ptr noundef %dest, ptr noundef %destLen, ptr noundef %source, i32 noundef %sourceLen, i32 noundef %small, i32 noundef %verbosity) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %destLen.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %sourceLen.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %destLen, ptr %destLen.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i32 %sourceLen, ptr %sourceLen.addr, align 4
  store i32 %small, ptr %small.addr, align 4
  store i32 %verbosity, ptr %verbosity.addr, align 4
  %cmp = icmp eq ptr %dest, null
  %0 = load ptr, ptr %destLen.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %1 = load ptr, ptr %source.addr, align 8
  %cmp3 = icmp eq ptr %1, null
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond1, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %2 = load i32, ptr %small.addr, align 4
  %cmp5.not = icmp eq i32 %2, 0
  %3 = load i32, ptr %small.addr, align 4
  %cmp6.not = icmp eq i32 %3, 1
  %or.cond2 = select i1 %cmp5.not, i1 true, i1 %cmp6.not
  %or.cond2.not = xor i1 %or.cond2, true
  %4 = load i32, ptr %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %4, 0
  %or.cond3 = select i1 %or.cond2.not, i1 true, i1 %cmp8
  %5 = load i32, ptr %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %5, 4
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp10
  br i1 %or.cond4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %bzalloc = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 9
  store ptr null, ptr %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 10
  store ptr null, ptr %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 11
  store ptr null, ptr %opaque, align 8
  %6 = load i32, ptr %verbosity.addr, align 4
  %7 = load i32, ptr %small.addr, align 4
  %call = call i32 @BZ2_bzDecompressInit(ptr noundef nonnull %strm, i32 noundef %6, i32 noundef %7)
  store i32 %call, ptr %ret, align 4
  %cmp11.not = icmp eq i32 %call, 0
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %9 = load ptr, ptr %source.addr, align 8
  store ptr %9, ptr %strm, align 8
  %10 = load ptr, ptr %dest.addr, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 4
  store ptr %10, ptr %next_out, align 8
  %11 = load i32, ptr %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 1
  store i32 %11, ptr %avail_in, align 8
  %12 = load ptr, ptr %destLen.addr, align 8
  %13 = load i32, ptr %12, align 4
  %avail_out = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 5
  store i32 %13, ptr %avail_out, align 8
  %call14 = call i32 @BZ2_bzDecompress(ptr noundef nonnull %strm)
  store i32 %call14, ptr %ret, align 4
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %output_overflow_or_eof, label %if.end17

if.end17:                                         ; preds = %if.end13
  %14 = load i32, ptr %ret, align 4
  %cmp18.not = icmp eq i32 %14, 4
  br i1 %cmp18.not, label %if.end20, label %errhandler

if.end20:                                         ; preds = %if.end17
  %avail_out21 = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 5
  %15 = load i32, ptr %avail_out21, align 8
  %16 = load ptr, ptr %destLen.addr, align 8
  %17 = load i32, ptr %16, align 4
  %sub = sub i32 %17, %15
  store i32 %sub, ptr %16, align 4
  %call22 = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %strm)
  store i32 0, ptr %retval, align 4
  br label %return

output_overflow_or_eof:                           ; preds = %if.end13
  %avail_out23 = getelementptr inbounds %struct.bz_stream, ptr %strm, i64 0, i32 5
  %18 = load i32, ptr %avail_out23, align 8
  %cmp24.not = icmp eq i32 %18, 0
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %output_overflow_or_eof
  %call26 = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %strm)
  store i32 -7, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %output_overflow_or_eof
  %call27 = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %strm)
  store i32 -8, ptr %retval, align 4
  br label %return

errhandler:                                       ; preds = %if.end17
  %call28 = call i32 @BZ2_bzDecompressEnd(ptr noundef nonnull %strm)
  %19 = load i32, ptr %ret, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %errhandler, %if.else, %if.then25, %if.end20, %if.then12, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define ptr @BZ2_bzopen(ptr noundef %path, ptr noundef %mode) #0 {
entry:
  %call = call ptr @bzopen_or_bzdopen(ptr noundef %path, i32 noundef -1, ptr noundef %mode, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @bzopen_or_bzdopen(ptr noundef %path, i32 noundef %fd, ptr noundef %mode, i32 noundef %open_mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca ptr, align 8
  %open_mode.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 1
  %blockSize100k = alloca i32, align 4
  %writing = alloca i32, align 4
  %mode2 = alloca [10 x i8], align 1
  %fp = alloca ptr, align 8
  %bzfp = alloca ptr, align 8
  %verbosity = alloca i32, align 4
  %workFactor = alloca i32, align 4
  %smallMode = alloca i32, align 4
  %nUnused = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %mode, ptr %mode.addr, align 8
  store i32 %open_mode, ptr %open_mode.addr, align 4
  store i32 9, ptr %blockSize100k, align 4
  store i32 0, ptr %writing, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %mode2, i8 0, i64 10, i1 false)
  store ptr null, ptr %fp, align 8
  store ptr null, ptr %bzfp, align 8
  store i32 0, ptr %verbosity, align 4
  store i32 30, ptr %workFactor, align 4
  store i32 0, ptr %smallMode, align 4
  store i32 0, ptr %nUnused, align 4
  %0 = load ptr, ptr %mode.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

while.cond:                                       ; preds = %entry, %sw.epilog
  %1 = load ptr, ptr %mode.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %mode.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb1
    i32 115, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, ptr %writing, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, ptr %writing, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, ptr %smallMode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %5 = load ptr, ptr %mode.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv3 = sext i8 %6 to i32
  %isdigittmp = add nsw i32 %conv3, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %if.then5, label %sw.epilog

if.then5:                                         ; preds = %sw.default
  %7 = load ptr, ptr %mode.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv6 = sext i8 %8 to i32
  %sub = add nsw i32 %conv6, -48
  store i32 %sub, ptr %blockSize100k, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then5, %sw.bb2, %sw.bb1, %sw.bb
  %9 = load ptr, ptr %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %mode.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %writing, align 4
  %tobool8.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool8.not, ptr @.str.7, ptr @.str.6
  %call9 = call ptr @__strcat_chk(ptr noundef nonnull %mode2, ptr noundef nonnull %cond, i64 noundef 10) #11
  %call11 = call ptr @__strcat_chk(ptr noundef nonnull %mode2, ptr noundef nonnull @.str.8, i64 noundef 10) #11
  %11 = load i32, ptr %open_mode.addr, align 4
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then14, label %if.else26

if.then14:                                        ; preds = %while.end
  %12 = load ptr, ptr %path.addr, align 8
  %cmp15 = icmp eq ptr %12, null
  br i1 %cmp15, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then14
  %13 = load ptr, ptr %path.addr, align 8
  %strcmpload = load i8, ptr %13, align 1
  %cmp18 = icmp eq i8 %strcmpload, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %lor.lhs.false, %if.then14
  %14 = load i32, ptr %writing, align 4
  %tobool21.not = icmp eq i32 %14, 0
  %__stdinp.__stdoutp = select i1 %tobool21.not, ptr @__stdinp, ptr @__stdoutp
  %cond22 = load ptr, ptr %__stdinp.__stdoutp, align 8
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %path.addr, align 8
  %call24 = call ptr @"\01_fopen"(ptr noundef %15, ptr noundef nonnull %mode2) #11
  br label %if.end29

if.else26:                                        ; preds = %while.end
  %16 = load i32, ptr %fd.addr, align 4
  %call28 = call ptr @"\01_fdopen"(i32 noundef %16, ptr noundef nonnull %mode2) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %if.else, %if.else26
  %storemerge2 = phi ptr [ %call28, %if.else26 ], [ %call24, %if.else ], [ %cond22, %if.then20 ]
  store ptr %storemerge2, ptr %fp, align 8
  %cmp30 = icmp eq ptr %storemerge2, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store ptr null, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end29
  %17 = load i32, ptr %writing, align 4
  %tobool34.not = icmp eq i32 %17, 0
  br i1 %tobool34.not, label %if.else45, label %if.then35

if.then35:                                        ; preds = %if.end33
  %18 = load i32, ptr %blockSize100k, align 4
  %cmp36 = icmp slt i32 %18, 1
  %spec.store.select = select i1 %cmp36, i32 1, i32 %18
  store i32 %spec.store.select, ptr %blockSize100k, align 4
  %19 = load i32, ptr %blockSize100k, align 4
  %cmp40 = icmp sgt i32 %19, 9
  %spec.store.select3 = select i1 %cmp40, i32 9, i32 %19
  store i32 %spec.store.select3, ptr %blockSize100k, align 4
  %20 = load ptr, ptr %fp, align 8
  %21 = load i32, ptr %blockSize100k, align 4
  %22 = load i32, ptr %verbosity, align 4
  %23 = load i32, ptr %workFactor, align 4
  %call44 = call ptr @BZ2_bzWriteOpen(ptr noundef nonnull %bzerr, ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23)
  br label %if.end48

if.else45:                                        ; preds = %if.end33
  %24 = load ptr, ptr %fp, align 8
  %25 = load i32, ptr %verbosity, align 4
  %26 = load i32, ptr %smallMode, align 4
  %27 = load i32, ptr %nUnused, align 4
  %call47 = call ptr @BZ2_bzReadOpen(ptr noundef nonnull %bzerr, ptr noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef nonnull %unused, i32 noundef %27)
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then35
  %storemerge = phi ptr [ %call47, %if.else45 ], [ %call44, %if.then35 ]
  store ptr %storemerge, ptr %bzfp, align 8
  %cmp49 = icmp eq ptr %storemerge, null
  br i1 %cmp49, label %if.then51, label %if.end59

if.then51:                                        ; preds = %if.end48
  %28 = load ptr, ptr %fp, align 8
  %29 = load ptr, ptr @__stdinp, align 8
  %cmp52.not = icmp eq ptr %28, %29
  br i1 %cmp52.not, label %if.end58, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then51
  %30 = load ptr, ptr %fp, align 8
  %31 = load ptr, ptr @__stdoutp, align 8
  %cmp54.not = icmp eq ptr %30, %31
  br i1 %cmp54.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %fp, align 8
  %call57 = call i32 @fclose(ptr noundef %32) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true, %if.then51
  store ptr null, ptr %retval, align 8
  br label %return

if.end59:                                         ; preds = %if.end48
  %33 = load ptr, ptr %bzfp, align 8
  store ptr %33, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end59, %if.end58, %if.then32, %if.then
  %34 = load ptr, ptr %retval, align 8
  ret ptr %34
}

; Function Attrs: nounwind ssp uwtable
define ptr @BZ2_bzdopen(i32 noundef %fd, ptr noundef %mode) #0 {
entry:
  %call = call ptr @bzopen_or_bzdopen(ptr noundef null, i32 noundef %fd, ptr noundef %mode, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzread(ptr noundef %b, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %nread = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %b, i64 0, i32 5
  %0 = load i32, ptr %lastErr, align 8
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i32, ptr %len.addr, align 4
  %call = call i32 @BZ2_bzRead(ptr noundef nonnull %bzerr, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  store i32 %call, ptr %nread, align 4
  %4 = load i32, ptr %bzerr, align 4
  %cmp1 = icmp eq i32 %4, 0
  %5 = load i32, ptr %bzerr, align 4
  %cmp2 = icmp eq i32 %5, 4
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %nread, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzwrite(ptr noundef %b, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  call void @BZ2_bzWrite(ptr noundef nonnull %bzerr, ptr noundef %b, ptr noundef %buf, i32 noundef %len)
  %0 = load i32, ptr %bzerr, align 4
  %cmp = icmp eq i32 %0, 0
  %1 = load i32, ptr %len.addr, align 4
  %storemerge = select i1 %cmp, i32 %1, i32 -1
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_bzflush(ptr noundef %b) #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define void @BZ2_bzclose(ptr noundef %b) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %bzerr = alloca i32, align 4
  %fp = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %cmp = icmp eq ptr %b, null
  br i1 %cmp, label %if.end9, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %b.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %fp, align 8
  %writing = getelementptr inbounds %struct.bzFile, ptr %0, i64 0, i32 3
  %2 = load i8, ptr %writing, align 4
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %b.addr, align 8
  call void @BZ2_bzWriteClose(ptr noundef nonnull %bzerr, ptr noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null)
  %4 = load i32, ptr %bzerr, align 4
  %cmp2.not = icmp eq i32 %4, 0
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr %b.addr, align 8
  call void @BZ2_bzWriteClose(ptr noundef null, ptr noundef %5, i32 noundef 1, ptr noundef null, ptr noundef null)
  br label %if.end5

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %b.addr, align 8
  call void @BZ2_bzReadClose(ptr noundef nonnull %bzerr, ptr noundef %6)
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.then3, %if.else
  %7 = load ptr, ptr %fp, align 8
  %8 = load ptr, ptr @__stdinp, align 8
  %cmp6.not = icmp eq ptr %7, %8
  br i1 %cmp6.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %9 = load ptr, ptr %fp, align 8
  %10 = load ptr, ptr @__stdoutp, align 8
  %cmp7.not = icmp eq ptr %9, %10
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %fp, align 8
  %call = call i32 @fclose(ptr noundef %11) #11
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then8, %land.lhs.true, %if.end5
  ret void
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @BZ2_bzerror(ptr noundef %b, ptr noundef %errnum) #0 {
entry:
  %errnum.addr = alloca ptr, align 8
  store ptr %errnum, ptr %errnum.addr, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, ptr %b, i64 0, i32 5
  %0 = load i32, ptr %lastErr, align 8
  %cmp = icmp sgt i32 %0, 0
  %spec.select = select i1 %cmp, i32 0, i32 %0
  %1 = load ptr, ptr %errnum.addr, align 8
  store i32 %spec.select, ptr %1, align 4
  %mul = sub nsw i32 0, %spec.select
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr @bzerrorstrings, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  ret ptr %2
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @copy_output_until_stop(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %progress_out = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 0, ptr %progress_out, align 1
  br label %while.body

while.body:                                       ; preds = %if.end19, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, ptr %1, i64 0, i32 5
  %2 = load i32, ptr %avail_out, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %s.addr, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, ptr %3, i64 0, i32 20
  %4 = load i32, ptr %state_out_pos, align 8
  %numZ = getelementptr inbounds %struct.EState, ptr %3, i64 0, i32 19
  %5 = load i32, ptr %numZ, align 4
  %cmp1.not = icmp slt i32 %4, %5
  br i1 %cmp1.not, label %if.end3, label %while.end

if.end3:                                          ; preds = %if.end
  store i8 1, ptr %progress_out, align 1
  %6 = load ptr, ptr %s.addr, align 8
  %zbits = getelementptr inbounds %struct.EState, ptr %6, i64 0, i32 11
  %7 = load ptr, ptr %zbits, align 8
  %state_out_pos4 = getelementptr inbounds %struct.EState, ptr %6, i64 0, i32 20
  %8 = load i32, ptr %state_out_pos4, align 8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, ptr %11, i64 0, i32 4
  %12 = load ptr, ptr %next_out, align 8
  store i8 %9, ptr %12, align 1
  %state_out_pos6 = getelementptr inbounds %struct.EState, ptr %10, i64 0, i32 20
  %13 = load i32, ptr %state_out_pos6, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %state_out_pos6, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %avail_out8 = getelementptr inbounds %struct.bz_stream, ptr %15, i64 0, i32 5
  %16 = load i32, ptr %avail_out8, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %avail_out8, align 8
  %17 = load ptr, ptr %14, align 8
  %next_out10 = getelementptr inbounds %struct.bz_stream, ptr %17, i64 0, i32 4
  %18 = load ptr, ptr %next_out10, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %next_out10, align 8
  %19 = load ptr, ptr %s.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, ptr %20, i64 0, i32 6
  %21 = load i32, ptr %total_out_lo32, align 4
  %inc12 = add i32 %21, 1
  store i32 %inc12, ptr %total_out_lo32, align 4
  %22 = load ptr, ptr %19, align 8
  %total_out_lo3214 = getelementptr inbounds %struct.bz_stream, ptr %22, i64 0, i32 6
  %23 = load i32, ptr %total_out_lo3214, align 4
  %cmp15 = icmp eq i32 %23, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end3
  %24 = load ptr, ptr %s.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, ptr %25, i64 0, i32 7
  %26 = load i32, ptr %total_out_hi32, align 8
  %inc18 = add i32 %26, 1
  store i32 %inc18, ptr %total_out_hi32, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end3
  br label %while.body

while.end:                                        ; preds = %if.end, %while.body
  %27 = load i8, ptr %progress_out, align 1
  ret i8 %27
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @copy_input_until_stop(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %progress_in = alloca i8, align 1
  %zchh = alloca i32, align 4
  %ch = alloca i8, align 1
  %zchh77 = alloca i32, align 4
  %ch89 = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 0, ptr %progress_in, align 1
  %mode = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 1
  %0 = load i32, ptr %mode, align 8
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %while.body, label %while.body60

while.body:                                       ; preds = %entry, %if.end58
  %1 = load ptr, ptr %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, ptr %1, i64 0, i32 17
  %2 = load i32, ptr %nblock, align 4
  %nblockMAX = getelementptr inbounds %struct.EState, ptr %1, i64 0, i32 18
  %3 = load i32, ptr %nblockMAX, align 8
  %cmp1.not = icmp slt i32 %2, %3
  br i1 %cmp1.not, label %if.end, label %if.end155

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %5, i64 0, i32 1
  %6 = load i32, ptr %avail_in, align 8
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.end155, label %if.end5

if.end5:                                          ; preds = %if.end
  store i8 1, ptr %progress_in, align 1
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i8, ptr %9, align 1
  %conv = zext i8 %10 to i32
  store i32 %conv, ptr %zchh, align 4
  %state_in_ch = getelementptr inbounds %struct.EState, ptr %7, i64 0, i32 13
  %11 = load i32, ptr %state_in_ch, align 4
  %cmp7.not = icmp eq i32 %11, %conv
  br i1 %cmp7.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %12 = load ptr, ptr %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, ptr %12, i64 0, i32 14
  %13 = load i32, ptr %state_in_len, align 8
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %s.addr, align 8
  %state_in_ch12 = getelementptr inbounds %struct.EState, ptr %14, i64 0, i32 13
  %15 = load i32, ptr %state_in_ch12, align 4
  %conv13 = trunc i32 %15 to i8
  store i8 %conv13, ptr %ch, align 1
  %blockCRC = getelementptr inbounds %struct.EState, ptr %14, i64 0, i32 26
  %16 = load i32, ptr %blockCRC, align 8
  %shl = shl i32 %16, 8
  %17 = load ptr, ptr %s.addr, align 8
  %blockCRC14 = getelementptr inbounds %struct.EState, ptr %17, i64 0, i32 26
  %18 = load i32, ptr %blockCRC14, align 8
  %shr = lshr i32 %18, 24
  %19 = load i8, ptr %ch, align 1
  %conv15 = zext i8 %19 to i32
  %xor = xor i32 %shr, %conv15
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  %xor16 = xor i32 %shl, %20
  %21 = load ptr, ptr %s.addr, align 8
  %blockCRC17 = getelementptr inbounds %struct.EState, ptr %21, i64 0, i32 26
  store i32 %xor16, ptr %blockCRC17, align 8
  %state_in_ch18 = getelementptr inbounds %struct.EState, ptr %21, i64 0, i32 13
  %22 = load i32, ptr %state_in_ch18, align 4
  %idxprom19 = zext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds %struct.EState, ptr %21, i64 0, i32 22, i64 %idxprom19
  store i8 1, ptr %arrayidx20, align 1
  %23 = load i8, ptr %ch, align 1
  %24 = load ptr, ptr %s.addr, align 8
  %block = getelementptr inbounds %struct.EState, ptr %24, i64 0, i32 9
  %25 = load ptr, ptr %block, align 8
  %nblock21 = getelementptr inbounds %struct.EState, ptr %24, i64 0, i32 17
  %26 = load i32, ptr %nblock21, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %25, i64 %idxprom22
  store i8 %23, ptr %arrayidx23, align 1
  %27 = load ptr, ptr %s.addr, align 8
  %nblock24 = getelementptr inbounds %struct.EState, ptr %27, i64 0, i32 17
  %28 = load i32, ptr %nblock24, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %nblock24, align 4
  %29 = load i32, ptr %zchh, align 4
  %state_in_ch25 = getelementptr inbounds %struct.EState, ptr %27, i64 0, i32 13
  store i32 %29, ptr %state_in_ch25, align 4
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %30 = load i32, ptr %zchh, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %state_in_ch26 = getelementptr inbounds %struct.EState, ptr %31, i64 0, i32 13
  %32 = load i32, ptr %state_in_ch26, align 4
  %cmp27.not = icmp eq i32 %30, %32
  br i1 %cmp27.not, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %if.else
  %33 = load ptr, ptr %s.addr, align 8
  %state_in_len29 = getelementptr inbounds %struct.EState, ptr %33, i64 0, i32 14
  %34 = load i32, ptr %state_in_len29, align 8
  %cmp30 = icmp eq i32 %34, 255
  br i1 %cmp30, label %if.then32, label %if.else40

if.then32:                                        ; preds = %lor.lhs.false, %if.else
  %35 = load ptr, ptr %s.addr, align 8
  %state_in_ch33 = getelementptr inbounds %struct.EState, ptr %35, i64 0, i32 13
  %36 = load i32, ptr %state_in_ch33, align 4
  %cmp34 = icmp ult i32 %36, 256
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  %37 = load ptr, ptr %s.addr, align 8
  call void @add_pair_to_block(ptr noundef %37)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then32
  %38 = load i32, ptr %zchh, align 4
  %39 = load ptr, ptr %s.addr, align 8
  %state_in_ch38 = getelementptr inbounds %struct.EState, ptr %39, i64 0, i32 13
  store i32 %38, ptr %state_in_ch38, align 4
  %state_in_len39 = getelementptr inbounds %struct.EState, ptr %39, i64 0, i32 14
  store i32 1, ptr %state_in_len39, align 8
  br label %if.end44

if.else40:                                        ; preds = %lor.lhs.false
  %40 = load ptr, ptr %s.addr, align 8
  %state_in_len41 = getelementptr inbounds %struct.EState, ptr %40, i64 0, i32 14
  %41 = load i32, ptr %state_in_len41, align 8
  %inc42 = add nsw i32 %41, 1
  store i32 %inc42, ptr %state_in_len41, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end37, %if.else40, %if.then11
  %42 = load ptr, ptr %s.addr, align 8
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %43, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr, ptr %43, align 8
  %45 = load ptr, ptr %42, align 8
  %avail_in48 = getelementptr inbounds %struct.bz_stream, ptr %45, i64 0, i32 1
  %46 = load i32, ptr %avail_in48, align 8
  %dec = add i32 %46, -1
  store i32 %dec, ptr %avail_in48, align 8
  %47 = load ptr, ptr %s.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, ptr %48, i64 0, i32 2
  %49 = load i32, ptr %total_in_lo32, align 4
  %inc50 = add i32 %49, 1
  store i32 %inc50, ptr %total_in_lo32, align 4
  %50 = load ptr, ptr %47, align 8
  %total_in_lo3252 = getelementptr inbounds %struct.bz_stream, ptr %50, i64 0, i32 2
  %51 = load i32, ptr %total_in_lo3252, align 4
  %cmp53 = icmp eq i32 %51, 0
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end44
  %52 = load ptr, ptr %s.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, ptr %53, i64 0, i32 3
  %54 = load i32, ptr %total_in_hi32, align 8
  %inc57 = add i32 %54, 1
  store i32 %inc57, ptr %total_in_hi32, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end44
  br label %while.body

while.body60:                                     ; preds = %entry, %if.end151
  %55 = load ptr, ptr %s.addr, align 8
  %nblock61 = getelementptr inbounds %struct.EState, ptr %55, i64 0, i32 17
  %56 = load i32, ptr %nblock61, align 4
  %nblockMAX62 = getelementptr inbounds %struct.EState, ptr %55, i64 0, i32 18
  %57 = load i32, ptr %nblockMAX62, align 8
  %cmp63.not = icmp slt i32 %56, %57
  br i1 %cmp63.not, label %if.end66, label %if.end155

if.end66:                                         ; preds = %while.body60
  %58 = load ptr, ptr %s.addr, align 8
  %59 = load ptr, ptr %58, align 8
  %avail_in68 = getelementptr inbounds %struct.bz_stream, ptr %59, i64 0, i32 1
  %60 = load i32, ptr %avail_in68, align 8
  %cmp69 = icmp eq i32 %60, 0
  br i1 %cmp69, label %if.end155, label %if.end72

if.end72:                                         ; preds = %if.end66
  %61 = load ptr, ptr %s.addr, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, ptr %61, i64 0, i32 3
  %62 = load i32, ptr %avail_in_expect, align 8
  %cmp73 = icmp eq i32 %62, 0
  br i1 %cmp73, label %if.end155, label %if.end76

if.end76:                                         ; preds = %if.end72
  store i8 1, ptr %progress_in, align 1
  %63 = load ptr, ptr %s.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr %64, align 8
  %66 = load i8, ptr %65, align 1
  %conv80 = zext i8 %66 to i32
  store i32 %conv80, ptr %zchh77, align 4
  %state_in_ch81 = getelementptr inbounds %struct.EState, ptr %63, i64 0, i32 13
  %67 = load i32, ptr %state_in_ch81, align 4
  %cmp82.not = icmp eq i32 %67, %conv80
  br i1 %cmp82.not, label %if.else113, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.end76
  %68 = load ptr, ptr %s.addr, align 8
  %state_in_len85 = getelementptr inbounds %struct.EState, ptr %68, i64 0, i32 14
  %69 = load i32, ptr %state_in_len85, align 8
  %cmp86 = icmp eq i32 %69, 1
  br i1 %cmp86, label %if.then88, label %if.else113

if.then88:                                        ; preds = %land.lhs.true84
  %70 = load ptr, ptr %s.addr, align 8
  %state_in_ch90 = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 13
  %71 = load i32, ptr %state_in_ch90, align 4
  %conv91 = trunc i32 %71 to i8
  store i8 %conv91, ptr %ch89, align 1
  %blockCRC92 = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 26
  %72 = load i32, ptr %blockCRC92, align 8
  %shl93 = shl i32 %72, 8
  %73 = load ptr, ptr %s.addr, align 8
  %blockCRC94 = getelementptr inbounds %struct.EState, ptr %73, i64 0, i32 26
  %74 = load i32, ptr %blockCRC94, align 8
  %shr95 = lshr i32 %74, 24
  %75 = load i8, ptr %ch89, align 1
  %conv96 = zext i8 %75 to i32
  %xor97 = xor i32 %shr95, %conv96
  %idxprom98 = zext i32 %xor97 to i64
  %arrayidx99 = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom98
  %76 = load i32, ptr %arrayidx99, align 4
  %xor100 = xor i32 %shl93, %76
  %77 = load ptr, ptr %s.addr, align 8
  %blockCRC101 = getelementptr inbounds %struct.EState, ptr %77, i64 0, i32 26
  store i32 %xor100, ptr %blockCRC101, align 8
  %state_in_ch103 = getelementptr inbounds %struct.EState, ptr %77, i64 0, i32 13
  %78 = load i32, ptr %state_in_ch103, align 4
  %idxprom104 = zext i32 %78 to i64
  %arrayidx105 = getelementptr inbounds %struct.EState, ptr %77, i64 0, i32 22, i64 %idxprom104
  store i8 1, ptr %arrayidx105, align 1
  %79 = load i8, ptr %ch89, align 1
  %80 = load ptr, ptr %s.addr, align 8
  %block106 = getelementptr inbounds %struct.EState, ptr %80, i64 0, i32 9
  %81 = load ptr, ptr %block106, align 8
  %nblock107 = getelementptr inbounds %struct.EState, ptr %80, i64 0, i32 17
  %82 = load i32, ptr %nblock107, align 4
  %idxprom108 = sext i32 %82 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %81, i64 %idxprom108
  store i8 %79, ptr %arrayidx109, align 1
  %83 = load ptr, ptr %s.addr, align 8
  %nblock110 = getelementptr inbounds %struct.EState, ptr %83, i64 0, i32 17
  %84 = load i32, ptr %nblock110, align 4
  %inc111 = add nsw i32 %84, 1
  store i32 %inc111, ptr %nblock110, align 4
  %85 = load i32, ptr %zchh77, align 4
  %state_in_ch112 = getelementptr inbounds %struct.EState, ptr %83, i64 0, i32 13
  store i32 %85, ptr %state_in_ch112, align 4
  br label %if.end133

if.else113:                                       ; preds = %land.lhs.true84, %if.end76
  %86 = load i32, ptr %zchh77, align 4
  %87 = load ptr, ptr %s.addr, align 8
  %state_in_ch114 = getelementptr inbounds %struct.EState, ptr %87, i64 0, i32 13
  %88 = load i32, ptr %state_in_ch114, align 4
  %cmp115.not = icmp eq i32 %86, %88
  br i1 %cmp115.not, label %lor.lhs.false117, label %if.then121

lor.lhs.false117:                                 ; preds = %if.else113
  %89 = load ptr, ptr %s.addr, align 8
  %state_in_len118 = getelementptr inbounds %struct.EState, ptr %89, i64 0, i32 14
  %90 = load i32, ptr %state_in_len118, align 8
  %cmp119 = icmp eq i32 %90, 255
  br i1 %cmp119, label %if.then121, label %if.else129

if.then121:                                       ; preds = %lor.lhs.false117, %if.else113
  %91 = load ptr, ptr %s.addr, align 8
  %state_in_ch122 = getelementptr inbounds %struct.EState, ptr %91, i64 0, i32 13
  %92 = load i32, ptr %state_in_ch122, align 4
  %cmp123 = icmp ult i32 %92, 256
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.then121
  %93 = load ptr, ptr %s.addr, align 8
  call void @add_pair_to_block(ptr noundef %93)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.then121
  %94 = load i32, ptr %zchh77, align 4
  %95 = load ptr, ptr %s.addr, align 8
  %state_in_ch127 = getelementptr inbounds %struct.EState, ptr %95, i64 0, i32 13
  store i32 %94, ptr %state_in_ch127, align 4
  %state_in_len128 = getelementptr inbounds %struct.EState, ptr %95, i64 0, i32 14
  store i32 1, ptr %state_in_len128, align 8
  br label %if.end133

if.else129:                                       ; preds = %lor.lhs.false117
  %96 = load ptr, ptr %s.addr, align 8
  %state_in_len130 = getelementptr inbounds %struct.EState, ptr %96, i64 0, i32 14
  %97 = load i32, ptr %state_in_len130, align 8
  %inc131 = add nsw i32 %97, 1
  store i32 %inc131, ptr %state_in_len130, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.end126, %if.else129, %if.then88
  %98 = load ptr, ptr %s.addr, align 8
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %99, align 8
  %incdec.ptr136 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %incdec.ptr136, ptr %99, align 8
  %101 = load ptr, ptr %98, align 8
  %avail_in138 = getelementptr inbounds %struct.bz_stream, ptr %101, i64 0, i32 1
  %102 = load i32, ptr %avail_in138, align 8
  %dec139 = add i32 %102, -1
  store i32 %dec139, ptr %avail_in138, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %104 = load ptr, ptr %103, align 8
  %total_in_lo32141 = getelementptr inbounds %struct.bz_stream, ptr %104, i64 0, i32 2
  %105 = load i32, ptr %total_in_lo32141, align 4
  %inc142 = add i32 %105, 1
  store i32 %inc142, ptr %total_in_lo32141, align 4
  %106 = load ptr, ptr %103, align 8
  %total_in_lo32144 = getelementptr inbounds %struct.bz_stream, ptr %106, i64 0, i32 2
  %107 = load i32, ptr %total_in_lo32144, align 4
  %cmp145 = icmp eq i32 %107, 0
  br i1 %cmp145, label %if.then147, label %if.end151

if.then147:                                       ; preds = %if.end133
  %108 = load ptr, ptr %s.addr, align 8
  %109 = load ptr, ptr %108, align 8
  %total_in_hi32149 = getelementptr inbounds %struct.bz_stream, ptr %109, i64 0, i32 3
  %110 = load i32, ptr %total_in_hi32149, align 8
  %inc150 = add i32 %110, 1
  store i32 %inc150, ptr %total_in_hi32149, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %if.end133
  %111 = load ptr, ptr %s.addr, align 8
  %avail_in_expect152 = getelementptr inbounds %struct.EState, ptr %111, i64 0, i32 3
  %112 = load i32, ptr %avail_in_expect152, align 8
  %dec153 = add i32 %112, -1
  store i32 %dec153, ptr %avail_in_expect152, align 8
  br label %while.body60

if.end155:                                        ; preds = %while.body60, %if.end66, %if.end72, %while.body, %if.end
  %113 = load i8, ptr %progress_in, align 1
  ret i8 %113
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_RL(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 13
  %0 = load i32, ptr %state_in_ch, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8
  call void @add_pair_to_block(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %s.addr, align 8
  %state_in_ch.i = getelementptr inbounds %struct.EState, ptr %2, i64 0, i32 13
  store i32 256, ptr %state_in_ch.i, align 4
  %state_in_len.i = getelementptr inbounds %struct.EState, ptr %2, i64 0, i32 14
  store i32 0, ptr %state_in_len.i, align 8
  ret void
}

declare void @BZ2_compressBlock(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define internal void @add_pair_to_block(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, ptr %s, i64 0, i32 13
  %0 = load i32, ptr %state_in_ch, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %ch, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, ptr %1, i64 0, i32 14
  %2 = load i32, ptr %state_in_len, align 8
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, ptr %3, i64 0, i32 26
  %4 = load i32, ptr %blockCRC, align 8
  %shl = shl i32 %4, 8
  %shr = lshr i32 %4, 24
  %5 = load i8, ptr %ch, align 1
  %conv3 = zext i8 %5 to i32
  %xor = xor i32 %shr, %conv3
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @BZ2_crc32Table, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %xor4 = xor i32 %shl, %6
  %7 = load ptr, ptr %s.addr, align 8
  %blockCRC5 = getelementptr inbounds %struct.EState, ptr %7, i64 0, i32 26
  store i32 %xor4, ptr %blockCRC5, align 8
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %s.addr, align 8
  %state_in_ch6 = getelementptr inbounds %struct.EState, ptr %9, i64 0, i32 13
  %10 = load i32, ptr %state_in_ch6, align 4
  %idxprom7 = zext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds %struct.EState, ptr %9, i64 0, i32 22, i64 %idxprom7
  store i8 1, ptr %arrayidx8, align 1
  %state_in_len9 = getelementptr inbounds %struct.EState, ptr %9, i64 0, i32 14
  %11 = load i32, ptr %state_in_len9, align 8
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.end
  %12 = load i8, ptr %ch, align 1
  %13 = load ptr, ptr %s.addr, align 8
  %block = getelementptr inbounds %struct.EState, ptr %13, i64 0, i32 9
  %14 = load ptr, ptr %block, align 8
  %nblock = getelementptr inbounds %struct.EState, ptr %13, i64 0, i32 17
  %15 = load i32, ptr %nblock, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10
  store i8 %12, ptr %arrayidx11, align 1
  %16 = load ptr, ptr %s.addr, align 8
  %nblock12 = getelementptr inbounds %struct.EState, ptr %16, i64 0, i32 17
  %17 = load i32, ptr %nblock12, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, ptr %nblock12, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.end
  %18 = load i8, ptr %ch, align 1
  %19 = load ptr, ptr %s.addr, align 8
  %block15 = getelementptr inbounds %struct.EState, ptr %19, i64 0, i32 9
  %20 = load ptr, ptr %block15, align 8
  %nblock16 = getelementptr inbounds %struct.EState, ptr %19, i64 0, i32 17
  %21 = load i32, ptr %nblock16, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %20, i64 %idxprom17
  store i8 %18, ptr %arrayidx18, align 1
  %22 = load ptr, ptr %s.addr, align 8
  %nblock19 = getelementptr inbounds %struct.EState, ptr %22, i64 0, i32 17
  %23 = load i32, ptr %nblock19, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, ptr %nblock19, align 4
  %24 = load i8, ptr %ch, align 1
  %block21 = getelementptr inbounds %struct.EState, ptr %22, i64 0, i32 9
  %25 = load ptr, ptr %block21, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %nblock22 = getelementptr inbounds %struct.EState, ptr %26, i64 0, i32 17
  %27 = load i32, ptr %nblock22, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %25, i64 %idxprom23
  store i8 %24, ptr %arrayidx24, align 1
  %nblock25 = getelementptr inbounds %struct.EState, ptr %26, i64 0, i32 17
  %28 = load i32, ptr %nblock25, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %nblock25, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.end
  %29 = load i8, ptr %ch, align 1
  %30 = load ptr, ptr %s.addr, align 8
  %block28 = getelementptr inbounds %struct.EState, ptr %30, i64 0, i32 9
  %31 = load ptr, ptr %block28, align 8
  %nblock29 = getelementptr inbounds %struct.EState, ptr %30, i64 0, i32 17
  %32 = load i32, ptr %nblock29, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %31, i64 %idxprom30
  store i8 %29, ptr %arrayidx31, align 1
  %33 = load ptr, ptr %s.addr, align 8
  %nblock32 = getelementptr inbounds %struct.EState, ptr %33, i64 0, i32 17
  %34 = load i32, ptr %nblock32, align 4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, ptr %nblock32, align 4
  %35 = load i8, ptr %ch, align 1
  %block34 = getelementptr inbounds %struct.EState, ptr %33, i64 0, i32 9
  %36 = load ptr, ptr %block34, align 8
  %37 = load ptr, ptr %s.addr, align 8
  %nblock35 = getelementptr inbounds %struct.EState, ptr %37, i64 0, i32 17
  %38 = load i32, ptr %nblock35, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %36, i64 %idxprom36
  store i8 %35, ptr %arrayidx37, align 1
  %nblock38 = getelementptr inbounds %struct.EState, ptr %37, i64 0, i32 17
  %39 = load i32, ptr %nblock38, align 4
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, ptr %nblock38, align 4
  %40 = load i8, ptr %ch, align 1
  %41 = load ptr, ptr %s.addr, align 8
  %block40 = getelementptr inbounds %struct.EState, ptr %41, i64 0, i32 9
  %42 = load ptr, ptr %block40, align 8
  %nblock41 = getelementptr inbounds %struct.EState, ptr %41, i64 0, i32 17
  %43 = load i32, ptr %nblock41, align 4
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %42, i64 %idxprom42
  store i8 %40, ptr %arrayidx43, align 1
  %44 = load ptr, ptr %s.addr, align 8
  %nblock44 = getelementptr inbounds %struct.EState, ptr %44, i64 0, i32 17
  %45 = load i32, ptr %nblock44, align 4
  %inc45 = add nsw i32 %45, 1
  store i32 %inc45, ptr %nblock44, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %46 = load ptr, ptr %s.addr, align 8
  %state_in_len47 = getelementptr inbounds %struct.EState, ptr %46, i64 0, i32 14
  %47 = load i32, ptr %state_in_len47, align 8
  %sub = add nsw i32 %47, -4
  %idxprom48 = sext i32 %sub to i64
  %arrayidx49 = getelementptr inbounds %struct.EState, ptr %46, i64 0, i32 22, i64 %idxprom48
  store i8 1, ptr %arrayidx49, align 1
  %48 = load i8, ptr %ch, align 1
  %49 = load ptr, ptr %s.addr, align 8
  %block50 = getelementptr inbounds %struct.EState, ptr %49, i64 0, i32 9
  %50 = load ptr, ptr %block50, align 8
  %nblock51 = getelementptr inbounds %struct.EState, ptr %49, i64 0, i32 17
  %51 = load i32, ptr %nblock51, align 4
  %idxprom52 = sext i32 %51 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %50, i64 %idxprom52
  store i8 %48, ptr %arrayidx53, align 1
  %52 = load ptr, ptr %s.addr, align 8
  %nblock54 = getelementptr inbounds %struct.EState, ptr %52, i64 0, i32 17
  %53 = load i32, ptr %nblock54, align 4
  %inc55 = add nsw i32 %53, 1
  store i32 %inc55, ptr %nblock54, align 4
  %54 = load i8, ptr %ch, align 1
  %block56 = getelementptr inbounds %struct.EState, ptr %52, i64 0, i32 9
  %55 = load ptr, ptr %block56, align 8
  %56 = load ptr, ptr %s.addr, align 8
  %nblock57 = getelementptr inbounds %struct.EState, ptr %56, i64 0, i32 17
  %57 = load i32, ptr %nblock57, align 4
  %idxprom58 = sext i32 %57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %55, i64 %idxprom58
  store i8 %54, ptr %arrayidx59, align 1
  %nblock60 = getelementptr inbounds %struct.EState, ptr %56, i64 0, i32 17
  %58 = load i32, ptr %nblock60, align 4
  %inc61 = add nsw i32 %58, 1
  store i32 %inc61, ptr %nblock60, align 4
  %59 = load i8, ptr %ch, align 1
  %60 = load ptr, ptr %s.addr, align 8
  %block62 = getelementptr inbounds %struct.EState, ptr %60, i64 0, i32 9
  %61 = load ptr, ptr %block62, align 8
  %nblock63 = getelementptr inbounds %struct.EState, ptr %60, i64 0, i32 17
  %62 = load i32, ptr %nblock63, align 4
  %idxprom64 = sext i32 %62 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %61, i64 %idxprom64
  store i8 %59, ptr %arrayidx65, align 1
  %63 = load ptr, ptr %s.addr, align 8
  %nblock66 = getelementptr inbounds %struct.EState, ptr %63, i64 0, i32 17
  %64 = load i32, ptr %nblock66, align 4
  %inc67 = add nsw i32 %64, 1
  store i32 %inc67, ptr %nblock66, align 4
  %65 = load i8, ptr %ch, align 1
  %block68 = getelementptr inbounds %struct.EState, ptr %63, i64 0, i32 9
  %66 = load ptr, ptr %block68, align 8
  %67 = load ptr, ptr %s.addr, align 8
  %nblock69 = getelementptr inbounds %struct.EState, ptr %67, i64 0, i32 17
  %68 = load i32, ptr %nblock69, align 4
  %idxprom70 = sext i32 %68 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %66, i64 %idxprom70
  store i8 %65, ptr %arrayidx71, align 1
  %nblock72 = getelementptr inbounds %struct.EState, ptr %67, i64 0, i32 17
  %69 = load i32, ptr %nblock72, align 4
  %inc73 = add nsw i32 %69, 1
  store i32 %inc73, ptr %nblock72, align 4
  %70 = load ptr, ptr %s.addr, align 8
  %state_in_len74 = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 14
  %71 = load i32, ptr %state_in_len74, align 8
  %72 = trunc i32 %71 to i8
  %conv76 = add i8 %72, -4
  %block77 = getelementptr inbounds %struct.EState, ptr %70, i64 0, i32 9
  %73 = load ptr, ptr %block77, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %nblock78 = getelementptr inbounds %struct.EState, ptr %74, i64 0, i32 17
  %75 = load i32, ptr %nblock78, align 4
  %idxprom79 = sext i32 %75 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %73, i64 %idxprom79
  store i8 %conv76, ptr %arrayidx80, align 1
  %nblock81 = getelementptr inbounds %struct.EState, ptr %74, i64 0, i32 17
  %76 = load i32, ptr %nblock81, align 4
  %inc82 = add nsw i32 %76, 1
  store i32 %inc82, ptr %nblock81, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb14, %sw.bb
  ret void
}

declare i32 @fgetc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #5

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #6

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #1

; Function Attrs: alwaysinline nounwind ssp uwtable
define ptr @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_bzip2_bzlib_0() #7 {
entry:
  ret ptr @.str.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #9

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

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
