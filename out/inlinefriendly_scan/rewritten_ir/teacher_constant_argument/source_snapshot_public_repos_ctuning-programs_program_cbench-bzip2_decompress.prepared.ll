; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/decompress.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/decompress.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.DState = type { ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external global [512 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define i32 @BZ2_decompress(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %uc = alloca i8, align 1
  %retVal = alloca i32, align 4
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %strm = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %alphaSize = alloca i32, align 4
  %nGroups = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %EOB = alloca i32, align 4
  %groupNo = alloca i32, align 4
  %groupPos = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %nblockMAX = alloca i32, align 4
  %nblock = alloca i32, align 4
  %es = alloca i32, align 4
  %N = alloca i32, align 4
  %curr = alloca i32, align 4
  %zt = alloca i32, align 4
  %zn = alloca i32, align 4
  %zvec = alloca i32, align 4
  %zj = alloca i32, align 4
  %gSel = alloca i32, align 4
  %gMinlen = alloca i32, align 4
  %gLimit = alloca ptr, align 8
  %gBase = alloca ptr, align 8
  %gPerm = alloca ptr, align 8
  %v = alloca i32, align 4
  %v69 = alloca i32, align 4
  %v125 = alloca i32, align 4
  %v181 = alloca i32, align 4
  %v279 = alloca i32, align 4
  %v340 = alloca i32, align 4
  %v396 = alloca i32, align 4
  %v452 = alloca i32, align 4
  %v508 = alloca i32, align 4
  %v564 = alloca i32, align 4
  %v627 = alloca i32, align 4
  %v683 = alloca i32, align 4
  %v739 = alloca i32, align 4
  %v795 = alloca i32, align 4
  %v851 = alloca i32, align 4
  %v902 = alloca i32, align 4
  %v958 = alloca i32, align 4
  %v1014 = alloca i32, align 4
  %v1085 = alloca i32, align 4
  %v1168 = alloca i32, align 4
  %v1242 = alloca i32, align 4
  %v1299 = alloca i32, align 4
  %v1359 = alloca i32, align 4
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v1420 = alloca i8, align 1
  %v1470 = alloca i32, align 4
  %v1534 = alloca i32, align 4
  %v1591 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1789 = alloca i32, align 4
  %v1855 = alloca i32, align 4
  %v1982 = alloca i32, align 4
  %v2048 = alloca i32, align 4
  %ii2168 = alloca i32, align 4
  %jj2169 = alloca i32, align 4
  %kk2170 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %off = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v2398 = alloca i32, align 4
  %v2464 = alloca i32, align 4
  %tmp2689 = alloca i32, align 4
  %v2928 = alloca i32, align 4
  %v2985 = alloca i32, align 4
  %v3042 = alloca i32, align 4
  %v3099 = alloca i32, align 4
  %v3156 = alloca i32, align 4
  %v3213 = alloca i32, align 4
  %v3270 = alloca i32, align 4
  %v3327 = alloca i32, align 4
  %v3384 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %strm1 = getelementptr inbounds %struct.DState, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %strm1, align 8
  store ptr %1, ptr %strm, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %state = getelementptr inbounds %struct.DState, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %state, align 8
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8
  %save_i = getelementptr inbounds %struct.DState, ptr %4, i32 0, i32 40
  store i32 0, ptr %save_i, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %save_j = getelementptr inbounds %struct.DState, ptr %5, i32 0, i32 41
  store i32 0, ptr %save_j, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %save_t = getelementptr inbounds %struct.DState, ptr %6, i32 0, i32 42
  store i32 0, ptr %save_t, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %save_alphaSize = getelementptr inbounds %struct.DState, ptr %7, i32 0, i32 43
  store i32 0, ptr %save_alphaSize, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %save_nGroups = getelementptr inbounds %struct.DState, ptr %8, i32 0, i32 44
  store i32 0, ptr %save_nGroups, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %save_nSelectors = getelementptr inbounds %struct.DState, ptr %9, i32 0, i32 45
  store i32 0, ptr %save_nSelectors, align 8
  %10 = load ptr, ptr %s.addr, align 8
  %save_EOB = getelementptr inbounds %struct.DState, ptr %10, i32 0, i32 46
  store i32 0, ptr %save_EOB, align 4
  %11 = load ptr, ptr %s.addr, align 8
  %save_groupNo = getelementptr inbounds %struct.DState, ptr %11, i32 0, i32 47
  store i32 0, ptr %save_groupNo, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %save_groupPos = getelementptr inbounds %struct.DState, ptr %12, i32 0, i32 48
  store i32 0, ptr %save_groupPos, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %save_nextSym = getelementptr inbounds %struct.DState, ptr %13, i32 0, i32 49
  store i32 0, ptr %save_nextSym, align 8
  %14 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX = getelementptr inbounds %struct.DState, ptr %14, i32 0, i32 50
  store i32 0, ptr %save_nblockMAX, align 4
  %15 = load ptr, ptr %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, ptr %15, i32 0, i32 51
  store i32 0, ptr %save_nblock, align 8
  %16 = load ptr, ptr %s.addr, align 8
  %save_es = getelementptr inbounds %struct.DState, ptr %16, i32 0, i32 52
  store i32 0, ptr %save_es, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %save_N = getelementptr inbounds %struct.DState, ptr %17, i32 0, i32 53
  store i32 0, ptr %save_N, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %save_curr = getelementptr inbounds %struct.DState, ptr %18, i32 0, i32 54
  store i32 0, ptr %save_curr, align 4
  %19 = load ptr, ptr %s.addr, align 8
  %save_zt = getelementptr inbounds %struct.DState, ptr %19, i32 0, i32 55
  store i32 0, ptr %save_zt, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %save_zn = getelementptr inbounds %struct.DState, ptr %20, i32 0, i32 56
  store i32 0, ptr %save_zn, align 4
  %21 = load ptr, ptr %s.addr, align 8
  %save_zvec = getelementptr inbounds %struct.DState, ptr %21, i32 0, i32 57
  store i32 0, ptr %save_zvec, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %save_zj = getelementptr inbounds %struct.DState, ptr %22, i32 0, i32 58
  store i32 0, ptr %save_zj, align 4
  %23 = load ptr, ptr %s.addr, align 8
  %save_gSel = getelementptr inbounds %struct.DState, ptr %23, i32 0, i32 59
  store i32 0, ptr %save_gSel, align 8
  %24 = load ptr, ptr %s.addr, align 8
  %save_gMinlen = getelementptr inbounds %struct.DState, ptr %24, i32 0, i32 60
  store i32 0, ptr %save_gMinlen, align 4
  %25 = load ptr, ptr %s.addr, align 8
  %save_gLimit = getelementptr inbounds %struct.DState, ptr %25, i32 0, i32 61
  store ptr null, ptr %save_gLimit, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %save_gBase = getelementptr inbounds %struct.DState, ptr %26, i32 0, i32 62
  store ptr null, ptr %save_gBase, align 8
  %27 = load ptr, ptr %s.addr, align 8
  %save_gPerm = getelementptr inbounds %struct.DState, ptr %27, i32 0, i32 63
  store ptr null, ptr %save_gPerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load ptr, ptr %s.addr, align 8
  %save_i2 = getelementptr inbounds %struct.DState, ptr %28, i32 0, i32 40
  %29 = load i32, ptr %save_i2, align 4
  store i32 %29, ptr %i, align 4
  %30 = load ptr, ptr %s.addr, align 8
  %save_j3 = getelementptr inbounds %struct.DState, ptr %30, i32 0, i32 41
  %31 = load i32, ptr %save_j3, align 8
  store i32 %31, ptr %j, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %save_t4 = getelementptr inbounds %struct.DState, ptr %32, i32 0, i32 42
  %33 = load i32, ptr %save_t4, align 4
  store i32 %33, ptr %t, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %save_alphaSize5 = getelementptr inbounds %struct.DState, ptr %34, i32 0, i32 43
  %35 = load i32, ptr %save_alphaSize5, align 8
  store i32 %35, ptr %alphaSize, align 4
  %36 = load ptr, ptr %s.addr, align 8
  %save_nGroups6 = getelementptr inbounds %struct.DState, ptr %36, i32 0, i32 44
  %37 = load i32, ptr %save_nGroups6, align 4
  store i32 %37, ptr %nGroups, align 4
  %38 = load ptr, ptr %s.addr, align 8
  %save_nSelectors7 = getelementptr inbounds %struct.DState, ptr %38, i32 0, i32 45
  %39 = load i32, ptr %save_nSelectors7, align 8
  store i32 %39, ptr %nSelectors, align 4
  %40 = load ptr, ptr %s.addr, align 8
  %save_EOB8 = getelementptr inbounds %struct.DState, ptr %40, i32 0, i32 46
  %41 = load i32, ptr %save_EOB8, align 4
  store i32 %41, ptr %EOB, align 4
  %42 = load ptr, ptr %s.addr, align 8
  %save_groupNo9 = getelementptr inbounds %struct.DState, ptr %42, i32 0, i32 47
  %43 = load i32, ptr %save_groupNo9, align 8
  store i32 %43, ptr %groupNo, align 4
  %44 = load ptr, ptr %s.addr, align 8
  %save_groupPos10 = getelementptr inbounds %struct.DState, ptr %44, i32 0, i32 48
  %45 = load i32, ptr %save_groupPos10, align 4
  store i32 %45, ptr %groupPos, align 4
  %46 = load ptr, ptr %s.addr, align 8
  %save_nextSym11 = getelementptr inbounds %struct.DState, ptr %46, i32 0, i32 49
  %47 = load i32, ptr %save_nextSym11, align 8
  store i32 %47, ptr %nextSym, align 4
  %48 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX12 = getelementptr inbounds %struct.DState, ptr %48, i32 0, i32 50
  %49 = load i32, ptr %save_nblockMAX12, align 4
  store i32 %49, ptr %nblockMAX, align 4
  %50 = load ptr, ptr %s.addr, align 8
  %save_nblock13 = getelementptr inbounds %struct.DState, ptr %50, i32 0, i32 51
  %51 = load i32, ptr %save_nblock13, align 8
  store i32 %51, ptr %nblock, align 4
  %52 = load ptr, ptr %s.addr, align 8
  %save_es14 = getelementptr inbounds %struct.DState, ptr %52, i32 0, i32 52
  %53 = load i32, ptr %save_es14, align 4
  store i32 %53, ptr %es, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %save_N15 = getelementptr inbounds %struct.DState, ptr %54, i32 0, i32 53
  %55 = load i32, ptr %save_N15, align 8
  store i32 %55, ptr %N, align 4
  %56 = load ptr, ptr %s.addr, align 8
  %save_curr16 = getelementptr inbounds %struct.DState, ptr %56, i32 0, i32 54
  %57 = load i32, ptr %save_curr16, align 4
  store i32 %57, ptr %curr, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %save_zt17 = getelementptr inbounds %struct.DState, ptr %58, i32 0, i32 55
  %59 = load i32, ptr %save_zt17, align 8
  store i32 %59, ptr %zt, align 4
  %60 = load ptr, ptr %s.addr, align 8
  %save_zn18 = getelementptr inbounds %struct.DState, ptr %60, i32 0, i32 56
  %61 = load i32, ptr %save_zn18, align 4
  store i32 %61, ptr %zn, align 4
  %62 = load ptr, ptr %s.addr, align 8
  %save_zvec19 = getelementptr inbounds %struct.DState, ptr %62, i32 0, i32 57
  %63 = load i32, ptr %save_zvec19, align 8
  store i32 %63, ptr %zvec, align 4
  %64 = load ptr, ptr %s.addr, align 8
  %save_zj20 = getelementptr inbounds %struct.DState, ptr %64, i32 0, i32 58
  %65 = load i32, ptr %save_zj20, align 4
  store i32 %65, ptr %zj, align 4
  %66 = load ptr, ptr %s.addr, align 8
  %save_gSel21 = getelementptr inbounds %struct.DState, ptr %66, i32 0, i32 59
  %67 = load i32, ptr %save_gSel21, align 8
  store i32 %67, ptr %gSel, align 4
  %68 = load ptr, ptr %s.addr, align 8
  %save_gMinlen22 = getelementptr inbounds %struct.DState, ptr %68, i32 0, i32 60
  %69 = load i32, ptr %save_gMinlen22, align 4
  store i32 %69, ptr %gMinlen, align 4
  %70 = load ptr, ptr %s.addr, align 8
  %save_gLimit23 = getelementptr inbounds %struct.DState, ptr %70, i32 0, i32 61
  %71 = load ptr, ptr %save_gLimit23, align 8
  store ptr %71, ptr %gLimit, align 8
  %72 = load ptr, ptr %s.addr, align 8
  %save_gBase24 = getelementptr inbounds %struct.DState, ptr %72, i32 0, i32 62
  %73 = load ptr, ptr %save_gBase24, align 8
  store ptr %73, ptr %gBase, align 8
  %74 = load ptr, ptr %s.addr, align 8
  %save_gPerm25 = getelementptr inbounds %struct.DState, ptr %74, i32 0, i32 63
  %75 = load ptr, ptr %save_gPerm25, align 8
  store ptr %75, ptr %gPerm, align 8
  store i32 0, ptr %retVal, align 4
  %76 = load ptr, ptr %s.addr, align 8
  %state26 = getelementptr inbounds %struct.DState, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %state26, align 8
  switch i32 %77, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb62
    i32 12, label %sw.bb118
    i32 13, label %sw.bb174
    i32 14, label %sw.bb272
    i32 15, label %sw.bb333
    i32 16, label %sw.bb389
    i32 17, label %sw.bb445
    i32 18, label %sw.bb501
    i32 19, label %sw.bb557
    i32 20, label %sw.bb620
    i32 21, label %sw.bb676
    i32 22, label %sw.bb732
    i32 23, label %sw.bb788
    i32 24, label %sw.bb844
    i32 25, label %sw.bb895
    i32 26, label %sw.bb951
    i32 27, label %sw.bb1007
    i32 28, label %sw.bb1078
    i32 29, label %sw.bb1161
    i32 30, label %sw.bb1235
    i32 31, label %sw.bb1292
    i32 32, label %sw.bb1351
    i32 33, label %sw.bb1462
    i32 34, label %sw.bb1526
    i32 35, label %sw.bb1583
    i32 36, label %sw.bb1781
    i32 37, label %sw.bb1847
    i32 38, label %sw.bb1974
    i32 39, label %sw.bb2040
    i32 40, label %sw.bb2390
    i32 41, label %sw.bb2456
    i32 42, label %sw.bb2920
    i32 43, label %sw.bb2977
    i32 44, label %sw.bb3034
    i32 45, label %sw.bb3091
    i32 46, label %sw.bb3148
    i32 47, label %sw.bb3205
    i32 48, label %sw.bb3262
    i32 49, label %sw.bb3319
    i32 50, label %sw.bb3376
  ]

sw.bb:                                            ; preds = %if.end
  %78 = load ptr, ptr %s.addr, align 8
  %state27 = getelementptr inbounds %struct.DState, ptr %78, i32 0, i32 1
  store i32 10, ptr %state27, align 8
  br label %while.body

while.body:                                       ; preds = %sw.bb, %if.end56
  %79 = load ptr, ptr %s.addr, align 8
  %bsLive = getelementptr inbounds %struct.DState, ptr %79, i32 0, i32 8
  %80 = load i32, ptr %bsLive, align 4
  %cmp28 = icmp sge i32 %80, 8
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %while.body
  %81 = load ptr, ptr %s.addr, align 8
  %bsBuff = getelementptr inbounds %struct.DState, ptr %81, i32 0, i32 7
  %82 = load i32, ptr %bsBuff, align 8
  %83 = load ptr, ptr %s.addr, align 8
  %bsLive30 = getelementptr inbounds %struct.DState, ptr %83, i32 0, i32 8
  %84 = load i32, ptr %bsLive30, align 4
  %sub = sub nsw i32 %84, 8
  %shr = lshr i32 %82, %sub
  %and = and i32 %shr, 255
  store i32 %and, ptr %v, align 4
  %85 = load ptr, ptr %s.addr, align 8
  %bsLive31 = getelementptr inbounds %struct.DState, ptr %85, i32 0, i32 8
  %86 = load i32, ptr %bsLive31, align 4
  %sub32 = sub nsw i32 %86, 8
  store i32 %sub32, ptr %bsLive31, align 4
  %87 = load i32, ptr %v, align 4
  %conv = trunc i32 %87 to i8
  store i8 %conv, ptr %uc, align 1
  br label %while.end

if.end33:                                         ; preds = %while.body
  %88 = load ptr, ptr %s.addr, align 8
  %strm34 = getelementptr inbounds %struct.DState, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %strm34, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %avail_in, align 8
  %cmp35 = icmp eq i32 %90, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end38:                                         ; preds = %if.end33
  %91 = load ptr, ptr %s.addr, align 8
  %bsBuff39 = getelementptr inbounds %struct.DState, ptr %91, i32 0, i32 7
  %92 = load i32, ptr %bsBuff39, align 8
  %shl = shl i32 %92, 8
  %93 = load ptr, ptr %s.addr, align 8
  %strm40 = getelementptr inbounds %struct.DState, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %strm40, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %next_in, align 8
  %96 = load i8, ptr %95, align 1
  %conv41 = zext i8 %96 to i32
  %or = or i32 %shl, %conv41
  %97 = load ptr, ptr %s.addr, align 8
  %bsBuff42 = getelementptr inbounds %struct.DState, ptr %97, i32 0, i32 7
  store i32 %or, ptr %bsBuff42, align 8
  %98 = load ptr, ptr %s.addr, align 8
  %bsLive43 = getelementptr inbounds %struct.DState, ptr %98, i32 0, i32 8
  %99 = load i32, ptr %bsLive43, align 4
  %add = add nsw i32 %99, 8
  store i32 %add, ptr %bsLive43, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %strm44 = getelementptr inbounds %struct.DState, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %strm44, align 8
  %next_in45 = getelementptr inbounds %struct.bz_stream, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %next_in45, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr, ptr %next_in45, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %strm46 = getelementptr inbounds %struct.DState, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %strm46, align 8
  %avail_in47 = getelementptr inbounds %struct.bz_stream, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %avail_in47, align 8
  %dec = add i32 %105, -1
  store i32 %dec, ptr %avail_in47, align 8
  %106 = load ptr, ptr %s.addr, align 8
  %strm48 = getelementptr inbounds %struct.DState, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %strm48, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, ptr %107, i32 0, i32 2
  %108 = load i32, ptr %total_in_lo32, align 4
  %inc = add i32 %108, 1
  store i32 %inc, ptr %total_in_lo32, align 4
  %109 = load ptr, ptr %s.addr, align 8
  %strm49 = getelementptr inbounds %struct.DState, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %strm49, align 8
  %total_in_lo3250 = getelementptr inbounds %struct.bz_stream, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %total_in_lo3250, align 4
  %cmp51 = icmp eq i32 %111, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end38
  %112 = load ptr, ptr %s.addr, align 8
  %strm54 = getelementptr inbounds %struct.DState, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %strm54, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, ptr %113, i32 0, i32 3
  %114 = load i32, ptr %total_in_hi32, align 8
  %inc55 = add i32 %114, 1
  store i32 %inc55, ptr %total_in_hi32, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end38
  br label %while.body

while.end:                                        ; preds = %if.then29
  %115 = load i8, ptr %uc, align 1
  %conv57 = zext i8 %115 to i32
  %cmp58 = icmp ne i32 %conv57, 66
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.end
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end61:                                         ; preds = %while.end
  br label %sw.bb62

sw.bb62:                                          ; preds = %if.end, %if.end61
  %116 = load ptr, ptr %s.addr, align 8
  %state63 = getelementptr inbounds %struct.DState, ptr %116, i32 0, i32 1
  store i32 11, ptr %state63, align 8
  br label %while.body64

while.body64:                                     ; preds = %sw.bb62, %if.end111
  %117 = load ptr, ptr %s.addr, align 8
  %bsLive65 = getelementptr inbounds %struct.DState, ptr %117, i32 0, i32 8
  %118 = load i32, ptr %bsLive65, align 4
  %cmp66 = icmp sge i32 %118, 8
  br i1 %cmp66, label %if.then68, label %if.end78

if.then68:                                        ; preds = %while.body64
  %119 = load ptr, ptr %s.addr, align 8
  %bsBuff70 = getelementptr inbounds %struct.DState, ptr %119, i32 0, i32 7
  %120 = load i32, ptr %bsBuff70, align 8
  %121 = load ptr, ptr %s.addr, align 8
  %bsLive71 = getelementptr inbounds %struct.DState, ptr %121, i32 0, i32 8
  %122 = load i32, ptr %bsLive71, align 4
  %sub72 = sub nsw i32 %122, 8
  %shr73 = lshr i32 %120, %sub72
  %and74 = and i32 %shr73, 255
  store i32 %and74, ptr %v69, align 4
  %123 = load ptr, ptr %s.addr, align 8
  %bsLive75 = getelementptr inbounds %struct.DState, ptr %123, i32 0, i32 8
  %124 = load i32, ptr %bsLive75, align 4
  %sub76 = sub nsw i32 %124, 8
  store i32 %sub76, ptr %bsLive75, align 4
  %125 = load i32, ptr %v69, align 4
  %conv77 = trunc i32 %125 to i8
  store i8 %conv77, ptr %uc, align 1
  br label %while.end112

if.end78:                                         ; preds = %while.body64
  %126 = load ptr, ptr %s.addr, align 8
  %strm79 = getelementptr inbounds %struct.DState, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %strm79, align 8
  %avail_in80 = getelementptr inbounds %struct.bz_stream, ptr %127, i32 0, i32 1
  %128 = load i32, ptr %avail_in80, align 8
  %cmp81 = icmp eq i32 %128, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end78
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end84:                                         ; preds = %if.end78
  %129 = load ptr, ptr %s.addr, align 8
  %bsBuff85 = getelementptr inbounds %struct.DState, ptr %129, i32 0, i32 7
  %130 = load i32, ptr %bsBuff85, align 8
  %shl86 = shl i32 %130, 8
  %131 = load ptr, ptr %s.addr, align 8
  %strm87 = getelementptr inbounds %struct.DState, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %strm87, align 8
  %next_in88 = getelementptr inbounds %struct.bz_stream, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %next_in88, align 8
  %134 = load i8, ptr %133, align 1
  %conv89 = zext i8 %134 to i32
  %or90 = or i32 %shl86, %conv89
  %135 = load ptr, ptr %s.addr, align 8
  %bsBuff91 = getelementptr inbounds %struct.DState, ptr %135, i32 0, i32 7
  store i32 %or90, ptr %bsBuff91, align 8
  %136 = load ptr, ptr %s.addr, align 8
  %bsLive92 = getelementptr inbounds %struct.DState, ptr %136, i32 0, i32 8
  %137 = load i32, ptr %bsLive92, align 4
  %add93 = add nsw i32 %137, 8
  store i32 %add93, ptr %bsLive92, align 4
  %138 = load ptr, ptr %s.addr, align 8
  %strm94 = getelementptr inbounds %struct.DState, ptr %138, i32 0, i32 0
  %139 = load ptr, ptr %strm94, align 8
  %next_in95 = getelementptr inbounds %struct.bz_stream, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %next_in95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %140, i32 1
  store ptr %incdec.ptr96, ptr %next_in95, align 8
  %141 = load ptr, ptr %s.addr, align 8
  %strm97 = getelementptr inbounds %struct.DState, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %strm97, align 8
  %avail_in98 = getelementptr inbounds %struct.bz_stream, ptr %142, i32 0, i32 1
  %143 = load i32, ptr %avail_in98, align 8
  %dec99 = add i32 %143, -1
  store i32 %dec99, ptr %avail_in98, align 8
  %144 = load ptr, ptr %s.addr, align 8
  %strm100 = getelementptr inbounds %struct.DState, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %strm100, align 8
  %total_in_lo32101 = getelementptr inbounds %struct.bz_stream, ptr %145, i32 0, i32 2
  %146 = load i32, ptr %total_in_lo32101, align 4
  %inc102 = add i32 %146, 1
  store i32 %inc102, ptr %total_in_lo32101, align 4
  %147 = load ptr, ptr %s.addr, align 8
  %strm103 = getelementptr inbounds %struct.DState, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %strm103, align 8
  %total_in_lo32104 = getelementptr inbounds %struct.bz_stream, ptr %148, i32 0, i32 2
  %149 = load i32, ptr %total_in_lo32104, align 4
  %cmp105 = icmp eq i32 %149, 0
  br i1 %cmp105, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end84
  %150 = load ptr, ptr %s.addr, align 8
  %strm108 = getelementptr inbounds %struct.DState, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %strm108, align 8
  %total_in_hi32109 = getelementptr inbounds %struct.bz_stream, ptr %151, i32 0, i32 3
  %152 = load i32, ptr %total_in_hi32109, align 8
  %inc110 = add i32 %152, 1
  store i32 %inc110, ptr %total_in_hi32109, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end84
  br label %while.body64

while.end112:                                     ; preds = %if.then68
  %153 = load i8, ptr %uc, align 1
  %conv113 = zext i8 %153 to i32
  %cmp114 = icmp ne i32 %conv113, 90
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %while.end112
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end117:                                        ; preds = %while.end112
  br label %sw.bb118

sw.bb118:                                         ; preds = %if.end, %if.end117
  %154 = load ptr, ptr %s.addr, align 8
  %state119 = getelementptr inbounds %struct.DState, ptr %154, i32 0, i32 1
  store i32 12, ptr %state119, align 8
  br label %while.body120

while.body120:                                    ; preds = %sw.bb118, %if.end167
  %155 = load ptr, ptr %s.addr, align 8
  %bsLive121 = getelementptr inbounds %struct.DState, ptr %155, i32 0, i32 8
  %156 = load i32, ptr %bsLive121, align 4
  %cmp122 = icmp sge i32 %156, 8
  br i1 %cmp122, label %if.then124, label %if.end134

if.then124:                                       ; preds = %while.body120
  %157 = load ptr, ptr %s.addr, align 8
  %bsBuff126 = getelementptr inbounds %struct.DState, ptr %157, i32 0, i32 7
  %158 = load i32, ptr %bsBuff126, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %bsLive127 = getelementptr inbounds %struct.DState, ptr %159, i32 0, i32 8
  %160 = load i32, ptr %bsLive127, align 4
  %sub128 = sub nsw i32 %160, 8
  %shr129 = lshr i32 %158, %sub128
  %and130 = and i32 %shr129, 255
  store i32 %and130, ptr %v125, align 4
  %161 = load ptr, ptr %s.addr, align 8
  %bsLive131 = getelementptr inbounds %struct.DState, ptr %161, i32 0, i32 8
  %162 = load i32, ptr %bsLive131, align 4
  %sub132 = sub nsw i32 %162, 8
  store i32 %sub132, ptr %bsLive131, align 4
  %163 = load i32, ptr %v125, align 4
  %conv133 = trunc i32 %163 to i8
  store i8 %conv133, ptr %uc, align 1
  br label %while.end168

if.end134:                                        ; preds = %while.body120
  %164 = load ptr, ptr %s.addr, align 8
  %strm135 = getelementptr inbounds %struct.DState, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %strm135, align 8
  %avail_in136 = getelementptr inbounds %struct.bz_stream, ptr %165, i32 0, i32 1
  %166 = load i32, ptr %avail_in136, align 8
  %cmp137 = icmp eq i32 %166, 0
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end134
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end140:                                        ; preds = %if.end134
  %167 = load ptr, ptr %s.addr, align 8
  %bsBuff141 = getelementptr inbounds %struct.DState, ptr %167, i32 0, i32 7
  %168 = load i32, ptr %bsBuff141, align 8
  %shl142 = shl i32 %168, 8
  %169 = load ptr, ptr %s.addr, align 8
  %strm143 = getelementptr inbounds %struct.DState, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %strm143, align 8
  %next_in144 = getelementptr inbounds %struct.bz_stream, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %next_in144, align 8
  %172 = load i8, ptr %171, align 1
  %conv145 = zext i8 %172 to i32
  %or146 = or i32 %shl142, %conv145
  %173 = load ptr, ptr %s.addr, align 8
  %bsBuff147 = getelementptr inbounds %struct.DState, ptr %173, i32 0, i32 7
  store i32 %or146, ptr %bsBuff147, align 8
  %174 = load ptr, ptr %s.addr, align 8
  %bsLive148 = getelementptr inbounds %struct.DState, ptr %174, i32 0, i32 8
  %175 = load i32, ptr %bsLive148, align 4
  %add149 = add nsw i32 %175, 8
  store i32 %add149, ptr %bsLive148, align 4
  %176 = load ptr, ptr %s.addr, align 8
  %strm150 = getelementptr inbounds %struct.DState, ptr %176, i32 0, i32 0
  %177 = load ptr, ptr %strm150, align 8
  %next_in151 = getelementptr inbounds %struct.bz_stream, ptr %177, i32 0, i32 0
  %178 = load ptr, ptr %next_in151, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %178, i32 1
  store ptr %incdec.ptr152, ptr %next_in151, align 8
  %179 = load ptr, ptr %s.addr, align 8
  %strm153 = getelementptr inbounds %struct.DState, ptr %179, i32 0, i32 0
  %180 = load ptr, ptr %strm153, align 8
  %avail_in154 = getelementptr inbounds %struct.bz_stream, ptr %180, i32 0, i32 1
  %181 = load i32, ptr %avail_in154, align 8
  %dec155 = add i32 %181, -1
  store i32 %dec155, ptr %avail_in154, align 8
  %182 = load ptr, ptr %s.addr, align 8
  %strm156 = getelementptr inbounds %struct.DState, ptr %182, i32 0, i32 0
  %183 = load ptr, ptr %strm156, align 8
  %total_in_lo32157 = getelementptr inbounds %struct.bz_stream, ptr %183, i32 0, i32 2
  %184 = load i32, ptr %total_in_lo32157, align 4
  %inc158 = add i32 %184, 1
  store i32 %inc158, ptr %total_in_lo32157, align 4
  %185 = load ptr, ptr %s.addr, align 8
  %strm159 = getelementptr inbounds %struct.DState, ptr %185, i32 0, i32 0
  %186 = load ptr, ptr %strm159, align 8
  %total_in_lo32160 = getelementptr inbounds %struct.bz_stream, ptr %186, i32 0, i32 2
  %187 = load i32, ptr %total_in_lo32160, align 4
  %cmp161 = icmp eq i32 %187, 0
  br i1 %cmp161, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end140
  %188 = load ptr, ptr %s.addr, align 8
  %strm164 = getelementptr inbounds %struct.DState, ptr %188, i32 0, i32 0
  %189 = load ptr, ptr %strm164, align 8
  %total_in_hi32165 = getelementptr inbounds %struct.bz_stream, ptr %189, i32 0, i32 3
  %190 = load i32, ptr %total_in_hi32165, align 8
  %inc166 = add i32 %190, 1
  store i32 %inc166, ptr %total_in_hi32165, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end140
  br label %while.body120

while.end168:                                     ; preds = %if.then124
  %191 = load i8, ptr %uc, align 1
  %conv169 = zext i8 %191 to i32
  %cmp170 = icmp ne i32 %conv169, 104
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %while.end168
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end173:                                        ; preds = %while.end168
  br label %sw.bb174

sw.bb174:                                         ; preds = %if.end, %if.end173
  %192 = load ptr, ptr %s.addr, align 8
  %state175 = getelementptr inbounds %struct.DState, ptr %192, i32 0, i32 1
  store i32 13, ptr %state175, align 8
  br label %while.body176

while.body176:                                    ; preds = %sw.bb174, %if.end222
  %193 = load ptr, ptr %s.addr, align 8
  %bsLive177 = getelementptr inbounds %struct.DState, ptr %193, i32 0, i32 8
  %194 = load i32, ptr %bsLive177, align 4
  %cmp178 = icmp sge i32 %194, 8
  br i1 %cmp178, label %if.then180, label %if.end189

if.then180:                                       ; preds = %while.body176
  %195 = load ptr, ptr %s.addr, align 8
  %bsBuff182 = getelementptr inbounds %struct.DState, ptr %195, i32 0, i32 7
  %196 = load i32, ptr %bsBuff182, align 8
  %197 = load ptr, ptr %s.addr, align 8
  %bsLive183 = getelementptr inbounds %struct.DState, ptr %197, i32 0, i32 8
  %198 = load i32, ptr %bsLive183, align 4
  %sub184 = sub nsw i32 %198, 8
  %shr185 = lshr i32 %196, %sub184
  %and186 = and i32 %shr185, 255
  store i32 %and186, ptr %v181, align 4
  %199 = load ptr, ptr %s.addr, align 8
  %bsLive187 = getelementptr inbounds %struct.DState, ptr %199, i32 0, i32 8
  %200 = load i32, ptr %bsLive187, align 4
  %sub188 = sub nsw i32 %200, 8
  store i32 %sub188, ptr %bsLive187, align 4
  %201 = load i32, ptr %v181, align 4
  %202 = load ptr, ptr %s.addr, align 8
  %blockSize100k = getelementptr inbounds %struct.DState, ptr %202, i32 0, i32 9
  store i32 %201, ptr %blockSize100k, align 8
  br label %while.end223

if.end189:                                        ; preds = %while.body176
  %203 = load ptr, ptr %s.addr, align 8
  %strm190 = getelementptr inbounds %struct.DState, ptr %203, i32 0, i32 0
  %204 = load ptr, ptr %strm190, align 8
  %avail_in191 = getelementptr inbounds %struct.bz_stream, ptr %204, i32 0, i32 1
  %205 = load i32, ptr %avail_in191, align 8
  %cmp192 = icmp eq i32 %205, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end189
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end195:                                        ; preds = %if.end189
  %206 = load ptr, ptr %s.addr, align 8
  %bsBuff196 = getelementptr inbounds %struct.DState, ptr %206, i32 0, i32 7
  %207 = load i32, ptr %bsBuff196, align 8
  %shl197 = shl i32 %207, 8
  %208 = load ptr, ptr %s.addr, align 8
  %strm198 = getelementptr inbounds %struct.DState, ptr %208, i32 0, i32 0
  %209 = load ptr, ptr %strm198, align 8
  %next_in199 = getelementptr inbounds %struct.bz_stream, ptr %209, i32 0, i32 0
  %210 = load ptr, ptr %next_in199, align 8
  %211 = load i8, ptr %210, align 1
  %conv200 = zext i8 %211 to i32
  %or201 = or i32 %shl197, %conv200
  %212 = load ptr, ptr %s.addr, align 8
  %bsBuff202 = getelementptr inbounds %struct.DState, ptr %212, i32 0, i32 7
  store i32 %or201, ptr %bsBuff202, align 8
  %213 = load ptr, ptr %s.addr, align 8
  %bsLive203 = getelementptr inbounds %struct.DState, ptr %213, i32 0, i32 8
  %214 = load i32, ptr %bsLive203, align 4
  %add204 = add nsw i32 %214, 8
  store i32 %add204, ptr %bsLive203, align 4
  %215 = load ptr, ptr %s.addr, align 8
  %strm205 = getelementptr inbounds %struct.DState, ptr %215, i32 0, i32 0
  %216 = load ptr, ptr %strm205, align 8
  %next_in206 = getelementptr inbounds %struct.bz_stream, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %next_in206, align 8
  %incdec.ptr207 = getelementptr inbounds i8, ptr %217, i32 1
  store ptr %incdec.ptr207, ptr %next_in206, align 8
  %218 = load ptr, ptr %s.addr, align 8
  %strm208 = getelementptr inbounds %struct.DState, ptr %218, i32 0, i32 0
  %219 = load ptr, ptr %strm208, align 8
  %avail_in209 = getelementptr inbounds %struct.bz_stream, ptr %219, i32 0, i32 1
  %220 = load i32, ptr %avail_in209, align 8
  %dec210 = add i32 %220, -1
  store i32 %dec210, ptr %avail_in209, align 8
  %221 = load ptr, ptr %s.addr, align 8
  %strm211 = getelementptr inbounds %struct.DState, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %strm211, align 8
  %total_in_lo32212 = getelementptr inbounds %struct.bz_stream, ptr %222, i32 0, i32 2
  %223 = load i32, ptr %total_in_lo32212, align 4
  %inc213 = add i32 %223, 1
  store i32 %inc213, ptr %total_in_lo32212, align 4
  %224 = load ptr, ptr %s.addr, align 8
  %strm214 = getelementptr inbounds %struct.DState, ptr %224, i32 0, i32 0
  %225 = load ptr, ptr %strm214, align 8
  %total_in_lo32215 = getelementptr inbounds %struct.bz_stream, ptr %225, i32 0, i32 2
  %226 = load i32, ptr %total_in_lo32215, align 4
  %cmp216 = icmp eq i32 %226, 0
  br i1 %cmp216, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.end195
  %227 = load ptr, ptr %s.addr, align 8
  %strm219 = getelementptr inbounds %struct.DState, ptr %227, i32 0, i32 0
  %228 = load ptr, ptr %strm219, align 8
  %total_in_hi32220 = getelementptr inbounds %struct.bz_stream, ptr %228, i32 0, i32 3
  %229 = load i32, ptr %total_in_hi32220, align 8
  %inc221 = add i32 %229, 1
  store i32 %inc221, ptr %total_in_hi32220, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.end195
  br label %while.body176

while.end223:                                     ; preds = %if.then180
  %230 = load ptr, ptr %s.addr, align 8
  %blockSize100k224 = getelementptr inbounds %struct.DState, ptr %230, i32 0, i32 9
  %231 = load i32, ptr %blockSize100k224, align 8
  %cmp225 = icmp slt i32 %231, 49
  br i1 %cmp225, label %if.then230, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end223
  %232 = load ptr, ptr %s.addr, align 8
  %blockSize100k227 = getelementptr inbounds %struct.DState, ptr %232, i32 0, i32 9
  %233 = load i32, ptr %blockSize100k227, align 8
  %cmp228 = icmp sgt i32 %233, 57
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false, %while.end223
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end231:                                        ; preds = %lor.lhs.false
  %234 = load ptr, ptr %s.addr, align 8
  %blockSize100k232 = getelementptr inbounds %struct.DState, ptr %234, i32 0, i32 9
  %235 = load i32, ptr %blockSize100k232, align 8
  %sub233 = sub nsw i32 %235, 48
  store i32 %sub233, ptr %blockSize100k232, align 8
  %236 = load ptr, ptr %s.addr, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, ptr %236, i32 0, i32 10
  %237 = load i8, ptr %smallDecompress, align 4
  %tobool = icmp ne i8 %237, 0
  br i1 %tobool, label %if.then234, label %if.else

if.then234:                                       ; preds = %if.end231
  %238 = load ptr, ptr %strm, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, ptr %238, i32 0, i32 9
  %239 = load ptr, ptr %bzalloc, align 8
  %240 = load ptr, ptr %strm, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %240, i32 0, i32 11
  %241 = load ptr, ptr %opaque, align 8
  %242 = load ptr, ptr %s.addr, align 8
  %blockSize100k235 = getelementptr inbounds %struct.DState, ptr %242, i32 0, i32 9
  %243 = load i32, ptr %blockSize100k235, align 8
  %mul = mul nsw i32 %243, 100000
  %conv236 = sext i32 %mul to i64
  %mul237 = mul i64 %conv236, 2
  %conv238 = trunc i64 %mul237 to i32
  %call = call ptr %239(ptr noundef %241, i32 noundef %conv238, i32 noundef 1)
  %244 = load ptr, ptr %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, ptr %244, i32 0, i32 21
  store ptr %call, ptr %ll16, align 8
  %245 = load ptr, ptr %strm, align 8
  %bzalloc239 = getelementptr inbounds %struct.bz_stream, ptr %245, i32 0, i32 9
  %246 = load ptr, ptr %bzalloc239, align 8
  %247 = load ptr, ptr %strm, align 8
  %opaque240 = getelementptr inbounds %struct.bz_stream, ptr %247, i32 0, i32 11
  %248 = load ptr, ptr %opaque240, align 8
  %249 = load ptr, ptr %s.addr, align 8
  %blockSize100k241 = getelementptr inbounds %struct.DState, ptr %249, i32 0, i32 9
  %250 = load i32, ptr %blockSize100k241, align 8
  %mul242 = mul nsw i32 %250, 100000
  %add243 = add nsw i32 1, %mul242
  %shr244 = ashr i32 %add243, 1
  %conv245 = sext i32 %shr244 to i64
  %mul246 = mul i64 %conv245, 1
  %conv247 = trunc i64 %mul246 to i32
  %call248 = call ptr %246(ptr noundef %248, i32 noundef %conv247, i32 noundef 1)
  %251 = load ptr, ptr %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, ptr %251, i32 0, i32 22
  store ptr %call248, ptr %ll4, align 8
  %252 = load ptr, ptr %s.addr, align 8
  %ll16249 = getelementptr inbounds %struct.DState, ptr %252, i32 0, i32 21
  %253 = load ptr, ptr %ll16249, align 8
  %cmp250 = icmp eq ptr %253, null
  br i1 %cmp250, label %if.then256, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %if.then234
  %254 = load ptr, ptr %s.addr, align 8
  %ll4253 = getelementptr inbounds %struct.DState, ptr %254, i32 0, i32 22
  %255 = load ptr, ptr %ll4253, align 8
  %cmp254 = icmp eq ptr %255, null
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %lor.lhs.false252, %if.then234
  store i32 -3, ptr %retVal, align 4
  br label %save_state_and_return

if.end257:                                        ; preds = %lor.lhs.false252
  br label %if.end271

if.else:                                          ; preds = %if.end231
  %256 = load ptr, ptr %strm, align 8
  %bzalloc258 = getelementptr inbounds %struct.bz_stream, ptr %256, i32 0, i32 9
  %257 = load ptr, ptr %bzalloc258, align 8
  %258 = load ptr, ptr %strm, align 8
  %opaque259 = getelementptr inbounds %struct.bz_stream, ptr %258, i32 0, i32 11
  %259 = load ptr, ptr %opaque259, align 8
  %260 = load ptr, ptr %s.addr, align 8
  %blockSize100k260 = getelementptr inbounds %struct.DState, ptr %260, i32 0, i32 9
  %261 = load i32, ptr %blockSize100k260, align 8
  %mul261 = mul nsw i32 %261, 100000
  %conv262 = sext i32 %mul261 to i64
  %mul263 = mul i64 %conv262, 4
  %conv264 = trunc i64 %mul263 to i32
  %call265 = call ptr %257(ptr noundef %259, i32 noundef %conv264, i32 noundef 1)
  %262 = load ptr, ptr %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, ptr %262, i32 0, i32 20
  store ptr %call265, ptr %tt, align 8
  %263 = load ptr, ptr %s.addr, align 8
  %tt266 = getelementptr inbounds %struct.DState, ptr %263, i32 0, i32 20
  %264 = load ptr, ptr %tt266, align 8
  %cmp267 = icmp eq ptr %264, null
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.else
  store i32 -3, ptr %retVal, align 4
  br label %save_state_and_return

if.end270:                                        ; preds = %if.else
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end257
  br label %sw.bb272

sw.bb272:                                         ; preds = %if.end, %if.end271
  %265 = load ptr, ptr %s.addr, align 8
  %state273 = getelementptr inbounds %struct.DState, ptr %265, i32 0, i32 1
  store i32 14, ptr %state273, align 8
  br label %while.body274

while.body274:                                    ; preds = %sw.bb272, %if.end321
  %266 = load ptr, ptr %s.addr, align 8
  %bsLive275 = getelementptr inbounds %struct.DState, ptr %266, i32 0, i32 8
  %267 = load i32, ptr %bsLive275, align 4
  %cmp276 = icmp sge i32 %267, 8
  br i1 %cmp276, label %if.then278, label %if.end288

if.then278:                                       ; preds = %while.body274
  %268 = load ptr, ptr %s.addr, align 8
  %bsBuff280 = getelementptr inbounds %struct.DState, ptr %268, i32 0, i32 7
  %269 = load i32, ptr %bsBuff280, align 8
  %270 = load ptr, ptr %s.addr, align 8
  %bsLive281 = getelementptr inbounds %struct.DState, ptr %270, i32 0, i32 8
  %271 = load i32, ptr %bsLive281, align 4
  %sub282 = sub nsw i32 %271, 8
  %shr283 = lshr i32 %269, %sub282
  %and284 = and i32 %shr283, 255
  store i32 %and284, ptr %v279, align 4
  %272 = load ptr, ptr %s.addr, align 8
  %bsLive285 = getelementptr inbounds %struct.DState, ptr %272, i32 0, i32 8
  %273 = load i32, ptr %bsLive285, align 4
  %sub286 = sub nsw i32 %273, 8
  store i32 %sub286, ptr %bsLive285, align 4
  %274 = load i32, ptr %v279, align 4
  %conv287 = trunc i32 %274 to i8
  store i8 %conv287, ptr %uc, align 1
  br label %while.end322

if.end288:                                        ; preds = %while.body274
  %275 = load ptr, ptr %s.addr, align 8
  %strm289 = getelementptr inbounds %struct.DState, ptr %275, i32 0, i32 0
  %276 = load ptr, ptr %strm289, align 8
  %avail_in290 = getelementptr inbounds %struct.bz_stream, ptr %276, i32 0, i32 1
  %277 = load i32, ptr %avail_in290, align 8
  %cmp291 = icmp eq i32 %277, 0
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.end288
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end294:                                        ; preds = %if.end288
  %278 = load ptr, ptr %s.addr, align 8
  %bsBuff295 = getelementptr inbounds %struct.DState, ptr %278, i32 0, i32 7
  %279 = load i32, ptr %bsBuff295, align 8
  %shl296 = shl i32 %279, 8
  %280 = load ptr, ptr %s.addr, align 8
  %strm297 = getelementptr inbounds %struct.DState, ptr %280, i32 0, i32 0
  %281 = load ptr, ptr %strm297, align 8
  %next_in298 = getelementptr inbounds %struct.bz_stream, ptr %281, i32 0, i32 0
  %282 = load ptr, ptr %next_in298, align 8
  %283 = load i8, ptr %282, align 1
  %conv299 = zext i8 %283 to i32
  %or300 = or i32 %shl296, %conv299
  %284 = load ptr, ptr %s.addr, align 8
  %bsBuff301 = getelementptr inbounds %struct.DState, ptr %284, i32 0, i32 7
  store i32 %or300, ptr %bsBuff301, align 8
  %285 = load ptr, ptr %s.addr, align 8
  %bsLive302 = getelementptr inbounds %struct.DState, ptr %285, i32 0, i32 8
  %286 = load i32, ptr %bsLive302, align 4
  %add303 = add nsw i32 %286, 8
  store i32 %add303, ptr %bsLive302, align 4
  %287 = load ptr, ptr %s.addr, align 8
  %strm304 = getelementptr inbounds %struct.DState, ptr %287, i32 0, i32 0
  %288 = load ptr, ptr %strm304, align 8
  %next_in305 = getelementptr inbounds %struct.bz_stream, ptr %288, i32 0, i32 0
  %289 = load ptr, ptr %next_in305, align 8
  %incdec.ptr306 = getelementptr inbounds i8, ptr %289, i32 1
  store ptr %incdec.ptr306, ptr %next_in305, align 8
  %290 = load ptr, ptr %s.addr, align 8
  %strm307 = getelementptr inbounds %struct.DState, ptr %290, i32 0, i32 0
  %291 = load ptr, ptr %strm307, align 8
  %avail_in308 = getelementptr inbounds %struct.bz_stream, ptr %291, i32 0, i32 1
  %292 = load i32, ptr %avail_in308, align 8
  %dec309 = add i32 %292, -1
  store i32 %dec309, ptr %avail_in308, align 8
  %293 = load ptr, ptr %s.addr, align 8
  %strm310 = getelementptr inbounds %struct.DState, ptr %293, i32 0, i32 0
  %294 = load ptr, ptr %strm310, align 8
  %total_in_lo32311 = getelementptr inbounds %struct.bz_stream, ptr %294, i32 0, i32 2
  %295 = load i32, ptr %total_in_lo32311, align 4
  %inc312 = add i32 %295, 1
  store i32 %inc312, ptr %total_in_lo32311, align 4
  %296 = load ptr, ptr %s.addr, align 8
  %strm313 = getelementptr inbounds %struct.DState, ptr %296, i32 0, i32 0
  %297 = load ptr, ptr %strm313, align 8
  %total_in_lo32314 = getelementptr inbounds %struct.bz_stream, ptr %297, i32 0, i32 2
  %298 = load i32, ptr %total_in_lo32314, align 4
  %cmp315 = icmp eq i32 %298, 0
  br i1 %cmp315, label %if.then317, label %if.end321

if.then317:                                       ; preds = %if.end294
  %299 = load ptr, ptr %s.addr, align 8
  %strm318 = getelementptr inbounds %struct.DState, ptr %299, i32 0, i32 0
  %300 = load ptr, ptr %strm318, align 8
  %total_in_hi32319 = getelementptr inbounds %struct.bz_stream, ptr %300, i32 0, i32 3
  %301 = load i32, ptr %total_in_hi32319, align 8
  %inc320 = add i32 %301, 1
  store i32 %inc320, ptr %total_in_hi32319, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.then317, %if.end294
  br label %while.body274

while.end322:                                     ; preds = %if.then278
  %302 = load i8, ptr %uc, align 1
  %conv323 = zext i8 %302 to i32
  %cmp324 = icmp eq i32 %conv323, 23
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %while.end322
  br label %endhdr_2

if.end327:                                        ; preds = %while.end322
  %303 = load i8, ptr %uc, align 1
  %conv328 = zext i8 %303 to i32
  %cmp329 = icmp ne i32 %conv328, 49
  br i1 %cmp329, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end327
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end332:                                        ; preds = %if.end327
  br label %sw.bb333

sw.bb333:                                         ; preds = %if.end, %if.end332
  %304 = load ptr, ptr %s.addr, align 8
  %state334 = getelementptr inbounds %struct.DState, ptr %304, i32 0, i32 1
  store i32 15, ptr %state334, align 8
  br label %while.body335

while.body335:                                    ; preds = %sw.bb333, %if.end382
  %305 = load ptr, ptr %s.addr, align 8
  %bsLive336 = getelementptr inbounds %struct.DState, ptr %305, i32 0, i32 8
  %306 = load i32, ptr %bsLive336, align 4
  %cmp337 = icmp sge i32 %306, 8
  br i1 %cmp337, label %if.then339, label %if.end349

if.then339:                                       ; preds = %while.body335
  %307 = load ptr, ptr %s.addr, align 8
  %bsBuff341 = getelementptr inbounds %struct.DState, ptr %307, i32 0, i32 7
  %308 = load i32, ptr %bsBuff341, align 8
  %309 = load ptr, ptr %s.addr, align 8
  %bsLive342 = getelementptr inbounds %struct.DState, ptr %309, i32 0, i32 8
  %310 = load i32, ptr %bsLive342, align 4
  %sub343 = sub nsw i32 %310, 8
  %shr344 = lshr i32 %308, %sub343
  %and345 = and i32 %shr344, 255
  store i32 %and345, ptr %v340, align 4
  %311 = load ptr, ptr %s.addr, align 8
  %bsLive346 = getelementptr inbounds %struct.DState, ptr %311, i32 0, i32 8
  %312 = load i32, ptr %bsLive346, align 4
  %sub347 = sub nsw i32 %312, 8
  store i32 %sub347, ptr %bsLive346, align 4
  %313 = load i32, ptr %v340, align 4
  %conv348 = trunc i32 %313 to i8
  store i8 %conv348, ptr %uc, align 1
  br label %while.end383

if.end349:                                        ; preds = %while.body335
  %314 = load ptr, ptr %s.addr, align 8
  %strm350 = getelementptr inbounds %struct.DState, ptr %314, i32 0, i32 0
  %315 = load ptr, ptr %strm350, align 8
  %avail_in351 = getelementptr inbounds %struct.bz_stream, ptr %315, i32 0, i32 1
  %316 = load i32, ptr %avail_in351, align 8
  %cmp352 = icmp eq i32 %316, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end349
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end355:                                        ; preds = %if.end349
  %317 = load ptr, ptr %s.addr, align 8
  %bsBuff356 = getelementptr inbounds %struct.DState, ptr %317, i32 0, i32 7
  %318 = load i32, ptr %bsBuff356, align 8
  %shl357 = shl i32 %318, 8
  %319 = load ptr, ptr %s.addr, align 8
  %strm358 = getelementptr inbounds %struct.DState, ptr %319, i32 0, i32 0
  %320 = load ptr, ptr %strm358, align 8
  %next_in359 = getelementptr inbounds %struct.bz_stream, ptr %320, i32 0, i32 0
  %321 = load ptr, ptr %next_in359, align 8
  %322 = load i8, ptr %321, align 1
  %conv360 = zext i8 %322 to i32
  %or361 = or i32 %shl357, %conv360
  %323 = load ptr, ptr %s.addr, align 8
  %bsBuff362 = getelementptr inbounds %struct.DState, ptr %323, i32 0, i32 7
  store i32 %or361, ptr %bsBuff362, align 8
  %324 = load ptr, ptr %s.addr, align 8
  %bsLive363 = getelementptr inbounds %struct.DState, ptr %324, i32 0, i32 8
  %325 = load i32, ptr %bsLive363, align 4
  %add364 = add nsw i32 %325, 8
  store i32 %add364, ptr %bsLive363, align 4
  %326 = load ptr, ptr %s.addr, align 8
  %strm365 = getelementptr inbounds %struct.DState, ptr %326, i32 0, i32 0
  %327 = load ptr, ptr %strm365, align 8
  %next_in366 = getelementptr inbounds %struct.bz_stream, ptr %327, i32 0, i32 0
  %328 = load ptr, ptr %next_in366, align 8
  %incdec.ptr367 = getelementptr inbounds i8, ptr %328, i32 1
  store ptr %incdec.ptr367, ptr %next_in366, align 8
  %329 = load ptr, ptr %s.addr, align 8
  %strm368 = getelementptr inbounds %struct.DState, ptr %329, i32 0, i32 0
  %330 = load ptr, ptr %strm368, align 8
  %avail_in369 = getelementptr inbounds %struct.bz_stream, ptr %330, i32 0, i32 1
  %331 = load i32, ptr %avail_in369, align 8
  %dec370 = add i32 %331, -1
  store i32 %dec370, ptr %avail_in369, align 8
  %332 = load ptr, ptr %s.addr, align 8
  %strm371 = getelementptr inbounds %struct.DState, ptr %332, i32 0, i32 0
  %333 = load ptr, ptr %strm371, align 8
  %total_in_lo32372 = getelementptr inbounds %struct.bz_stream, ptr %333, i32 0, i32 2
  %334 = load i32, ptr %total_in_lo32372, align 4
  %inc373 = add i32 %334, 1
  store i32 %inc373, ptr %total_in_lo32372, align 4
  %335 = load ptr, ptr %s.addr, align 8
  %strm374 = getelementptr inbounds %struct.DState, ptr %335, i32 0, i32 0
  %336 = load ptr, ptr %strm374, align 8
  %total_in_lo32375 = getelementptr inbounds %struct.bz_stream, ptr %336, i32 0, i32 2
  %337 = load i32, ptr %total_in_lo32375, align 4
  %cmp376 = icmp eq i32 %337, 0
  br i1 %cmp376, label %if.then378, label %if.end382

if.then378:                                       ; preds = %if.end355
  %338 = load ptr, ptr %s.addr, align 8
  %strm379 = getelementptr inbounds %struct.DState, ptr %338, i32 0, i32 0
  %339 = load ptr, ptr %strm379, align 8
  %total_in_hi32380 = getelementptr inbounds %struct.bz_stream, ptr %339, i32 0, i32 3
  %340 = load i32, ptr %total_in_hi32380, align 8
  %inc381 = add i32 %340, 1
  store i32 %inc381, ptr %total_in_hi32380, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.then378, %if.end355
  br label %while.body335

while.end383:                                     ; preds = %if.then339
  %341 = load i8, ptr %uc, align 1
  %conv384 = zext i8 %341 to i32
  %cmp385 = icmp ne i32 %conv384, 65
  br i1 %cmp385, label %if.then387, label %if.end388

if.then387:                                       ; preds = %while.end383
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end388:                                        ; preds = %while.end383
  br label %sw.bb389

sw.bb389:                                         ; preds = %if.end, %if.end388
  %342 = load ptr, ptr %s.addr, align 8
  %state390 = getelementptr inbounds %struct.DState, ptr %342, i32 0, i32 1
  store i32 16, ptr %state390, align 8
  br label %while.body391

while.body391:                                    ; preds = %sw.bb389, %if.end438
  %343 = load ptr, ptr %s.addr, align 8
  %bsLive392 = getelementptr inbounds %struct.DState, ptr %343, i32 0, i32 8
  %344 = load i32, ptr %bsLive392, align 4
  %cmp393 = icmp sge i32 %344, 8
  br i1 %cmp393, label %if.then395, label %if.end405

if.then395:                                       ; preds = %while.body391
  %345 = load ptr, ptr %s.addr, align 8
  %bsBuff397 = getelementptr inbounds %struct.DState, ptr %345, i32 0, i32 7
  %346 = load i32, ptr %bsBuff397, align 8
  %347 = load ptr, ptr %s.addr, align 8
  %bsLive398 = getelementptr inbounds %struct.DState, ptr %347, i32 0, i32 8
  %348 = load i32, ptr %bsLive398, align 4
  %sub399 = sub nsw i32 %348, 8
  %shr400 = lshr i32 %346, %sub399
  %and401 = and i32 %shr400, 255
  store i32 %and401, ptr %v396, align 4
  %349 = load ptr, ptr %s.addr, align 8
  %bsLive402 = getelementptr inbounds %struct.DState, ptr %349, i32 0, i32 8
  %350 = load i32, ptr %bsLive402, align 4
  %sub403 = sub nsw i32 %350, 8
  store i32 %sub403, ptr %bsLive402, align 4
  %351 = load i32, ptr %v396, align 4
  %conv404 = trunc i32 %351 to i8
  store i8 %conv404, ptr %uc, align 1
  br label %while.end439

if.end405:                                        ; preds = %while.body391
  %352 = load ptr, ptr %s.addr, align 8
  %strm406 = getelementptr inbounds %struct.DState, ptr %352, i32 0, i32 0
  %353 = load ptr, ptr %strm406, align 8
  %avail_in407 = getelementptr inbounds %struct.bz_stream, ptr %353, i32 0, i32 1
  %354 = load i32, ptr %avail_in407, align 8
  %cmp408 = icmp eq i32 %354, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.end405
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end411:                                        ; preds = %if.end405
  %355 = load ptr, ptr %s.addr, align 8
  %bsBuff412 = getelementptr inbounds %struct.DState, ptr %355, i32 0, i32 7
  %356 = load i32, ptr %bsBuff412, align 8
  %shl413 = shl i32 %356, 8
  %357 = load ptr, ptr %s.addr, align 8
  %strm414 = getelementptr inbounds %struct.DState, ptr %357, i32 0, i32 0
  %358 = load ptr, ptr %strm414, align 8
  %next_in415 = getelementptr inbounds %struct.bz_stream, ptr %358, i32 0, i32 0
  %359 = load ptr, ptr %next_in415, align 8
  %360 = load i8, ptr %359, align 1
  %conv416 = zext i8 %360 to i32
  %or417 = or i32 %shl413, %conv416
  %361 = load ptr, ptr %s.addr, align 8
  %bsBuff418 = getelementptr inbounds %struct.DState, ptr %361, i32 0, i32 7
  store i32 %or417, ptr %bsBuff418, align 8
  %362 = load ptr, ptr %s.addr, align 8
  %bsLive419 = getelementptr inbounds %struct.DState, ptr %362, i32 0, i32 8
  %363 = load i32, ptr %bsLive419, align 4
  %add420 = add nsw i32 %363, 8
  store i32 %add420, ptr %bsLive419, align 4
  %364 = load ptr, ptr %s.addr, align 8
  %strm421 = getelementptr inbounds %struct.DState, ptr %364, i32 0, i32 0
  %365 = load ptr, ptr %strm421, align 8
  %next_in422 = getelementptr inbounds %struct.bz_stream, ptr %365, i32 0, i32 0
  %366 = load ptr, ptr %next_in422, align 8
  %incdec.ptr423 = getelementptr inbounds i8, ptr %366, i32 1
  store ptr %incdec.ptr423, ptr %next_in422, align 8
  %367 = load ptr, ptr %s.addr, align 8
  %strm424 = getelementptr inbounds %struct.DState, ptr %367, i32 0, i32 0
  %368 = load ptr, ptr %strm424, align 8
  %avail_in425 = getelementptr inbounds %struct.bz_stream, ptr %368, i32 0, i32 1
  %369 = load i32, ptr %avail_in425, align 8
  %dec426 = add i32 %369, -1
  store i32 %dec426, ptr %avail_in425, align 8
  %370 = load ptr, ptr %s.addr, align 8
  %strm427 = getelementptr inbounds %struct.DState, ptr %370, i32 0, i32 0
  %371 = load ptr, ptr %strm427, align 8
  %total_in_lo32428 = getelementptr inbounds %struct.bz_stream, ptr %371, i32 0, i32 2
  %372 = load i32, ptr %total_in_lo32428, align 4
  %inc429 = add i32 %372, 1
  store i32 %inc429, ptr %total_in_lo32428, align 4
  %373 = load ptr, ptr %s.addr, align 8
  %strm430 = getelementptr inbounds %struct.DState, ptr %373, i32 0, i32 0
  %374 = load ptr, ptr %strm430, align 8
  %total_in_lo32431 = getelementptr inbounds %struct.bz_stream, ptr %374, i32 0, i32 2
  %375 = load i32, ptr %total_in_lo32431, align 4
  %cmp432 = icmp eq i32 %375, 0
  br i1 %cmp432, label %if.then434, label %if.end438

if.then434:                                       ; preds = %if.end411
  %376 = load ptr, ptr %s.addr, align 8
  %strm435 = getelementptr inbounds %struct.DState, ptr %376, i32 0, i32 0
  %377 = load ptr, ptr %strm435, align 8
  %total_in_hi32436 = getelementptr inbounds %struct.bz_stream, ptr %377, i32 0, i32 3
  %378 = load i32, ptr %total_in_hi32436, align 8
  %inc437 = add i32 %378, 1
  store i32 %inc437, ptr %total_in_hi32436, align 8
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %if.end411
  br label %while.body391

while.end439:                                     ; preds = %if.then395
  %379 = load i8, ptr %uc, align 1
  %conv440 = zext i8 %379 to i32
  %cmp441 = icmp ne i32 %conv440, 89
  br i1 %cmp441, label %if.then443, label %if.end444

if.then443:                                       ; preds = %while.end439
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end444:                                        ; preds = %while.end439
  br label %sw.bb445

sw.bb445:                                         ; preds = %if.end, %if.end444
  %380 = load ptr, ptr %s.addr, align 8
  %state446 = getelementptr inbounds %struct.DState, ptr %380, i32 0, i32 1
  store i32 17, ptr %state446, align 8
  br label %while.body447

while.body447:                                    ; preds = %sw.bb445, %if.end494
  %381 = load ptr, ptr %s.addr, align 8
  %bsLive448 = getelementptr inbounds %struct.DState, ptr %381, i32 0, i32 8
  %382 = load i32, ptr %bsLive448, align 4
  %cmp449 = icmp sge i32 %382, 8
  br i1 %cmp449, label %if.then451, label %if.end461

if.then451:                                       ; preds = %while.body447
  %383 = load ptr, ptr %s.addr, align 8
  %bsBuff453 = getelementptr inbounds %struct.DState, ptr %383, i32 0, i32 7
  %384 = load i32, ptr %bsBuff453, align 8
  %385 = load ptr, ptr %s.addr, align 8
  %bsLive454 = getelementptr inbounds %struct.DState, ptr %385, i32 0, i32 8
  %386 = load i32, ptr %bsLive454, align 4
  %sub455 = sub nsw i32 %386, 8
  %shr456 = lshr i32 %384, %sub455
  %and457 = and i32 %shr456, 255
  store i32 %and457, ptr %v452, align 4
  %387 = load ptr, ptr %s.addr, align 8
  %bsLive458 = getelementptr inbounds %struct.DState, ptr %387, i32 0, i32 8
  %388 = load i32, ptr %bsLive458, align 4
  %sub459 = sub nsw i32 %388, 8
  store i32 %sub459, ptr %bsLive458, align 4
  %389 = load i32, ptr %v452, align 4
  %conv460 = trunc i32 %389 to i8
  store i8 %conv460, ptr %uc, align 1
  br label %while.end495

if.end461:                                        ; preds = %while.body447
  %390 = load ptr, ptr %s.addr, align 8
  %strm462 = getelementptr inbounds %struct.DState, ptr %390, i32 0, i32 0
  %391 = load ptr, ptr %strm462, align 8
  %avail_in463 = getelementptr inbounds %struct.bz_stream, ptr %391, i32 0, i32 1
  %392 = load i32, ptr %avail_in463, align 8
  %cmp464 = icmp eq i32 %392, 0
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %if.end461
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end467:                                        ; preds = %if.end461
  %393 = load ptr, ptr %s.addr, align 8
  %bsBuff468 = getelementptr inbounds %struct.DState, ptr %393, i32 0, i32 7
  %394 = load i32, ptr %bsBuff468, align 8
  %shl469 = shl i32 %394, 8
  %395 = load ptr, ptr %s.addr, align 8
  %strm470 = getelementptr inbounds %struct.DState, ptr %395, i32 0, i32 0
  %396 = load ptr, ptr %strm470, align 8
  %next_in471 = getelementptr inbounds %struct.bz_stream, ptr %396, i32 0, i32 0
  %397 = load ptr, ptr %next_in471, align 8
  %398 = load i8, ptr %397, align 1
  %conv472 = zext i8 %398 to i32
  %or473 = or i32 %shl469, %conv472
  %399 = load ptr, ptr %s.addr, align 8
  %bsBuff474 = getelementptr inbounds %struct.DState, ptr %399, i32 0, i32 7
  store i32 %or473, ptr %bsBuff474, align 8
  %400 = load ptr, ptr %s.addr, align 8
  %bsLive475 = getelementptr inbounds %struct.DState, ptr %400, i32 0, i32 8
  %401 = load i32, ptr %bsLive475, align 4
  %add476 = add nsw i32 %401, 8
  store i32 %add476, ptr %bsLive475, align 4
  %402 = load ptr, ptr %s.addr, align 8
  %strm477 = getelementptr inbounds %struct.DState, ptr %402, i32 0, i32 0
  %403 = load ptr, ptr %strm477, align 8
  %next_in478 = getelementptr inbounds %struct.bz_stream, ptr %403, i32 0, i32 0
  %404 = load ptr, ptr %next_in478, align 8
  %incdec.ptr479 = getelementptr inbounds i8, ptr %404, i32 1
  store ptr %incdec.ptr479, ptr %next_in478, align 8
  %405 = load ptr, ptr %s.addr, align 8
  %strm480 = getelementptr inbounds %struct.DState, ptr %405, i32 0, i32 0
  %406 = load ptr, ptr %strm480, align 8
  %avail_in481 = getelementptr inbounds %struct.bz_stream, ptr %406, i32 0, i32 1
  %407 = load i32, ptr %avail_in481, align 8
  %dec482 = add i32 %407, -1
  store i32 %dec482, ptr %avail_in481, align 8
  %408 = load ptr, ptr %s.addr, align 8
  %strm483 = getelementptr inbounds %struct.DState, ptr %408, i32 0, i32 0
  %409 = load ptr, ptr %strm483, align 8
  %total_in_lo32484 = getelementptr inbounds %struct.bz_stream, ptr %409, i32 0, i32 2
  %410 = load i32, ptr %total_in_lo32484, align 4
  %inc485 = add i32 %410, 1
  store i32 %inc485, ptr %total_in_lo32484, align 4
  %411 = load ptr, ptr %s.addr, align 8
  %strm486 = getelementptr inbounds %struct.DState, ptr %411, i32 0, i32 0
  %412 = load ptr, ptr %strm486, align 8
  %total_in_lo32487 = getelementptr inbounds %struct.bz_stream, ptr %412, i32 0, i32 2
  %413 = load i32, ptr %total_in_lo32487, align 4
  %cmp488 = icmp eq i32 %413, 0
  br i1 %cmp488, label %if.then490, label %if.end494

if.then490:                                       ; preds = %if.end467
  %414 = load ptr, ptr %s.addr, align 8
  %strm491 = getelementptr inbounds %struct.DState, ptr %414, i32 0, i32 0
  %415 = load ptr, ptr %strm491, align 8
  %total_in_hi32492 = getelementptr inbounds %struct.bz_stream, ptr %415, i32 0, i32 3
  %416 = load i32, ptr %total_in_hi32492, align 8
  %inc493 = add i32 %416, 1
  store i32 %inc493, ptr %total_in_hi32492, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end467
  br label %while.body447

while.end495:                                     ; preds = %if.then451
  %417 = load i8, ptr %uc, align 1
  %conv496 = zext i8 %417 to i32
  %cmp497 = icmp ne i32 %conv496, 38
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %while.end495
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end500:                                        ; preds = %while.end495
  br label %sw.bb501

sw.bb501:                                         ; preds = %if.end, %if.end500
  %418 = load ptr, ptr %s.addr, align 8
  %state502 = getelementptr inbounds %struct.DState, ptr %418, i32 0, i32 1
  store i32 18, ptr %state502, align 8
  br label %while.body503

while.body503:                                    ; preds = %sw.bb501, %if.end550
  %419 = load ptr, ptr %s.addr, align 8
  %bsLive504 = getelementptr inbounds %struct.DState, ptr %419, i32 0, i32 8
  %420 = load i32, ptr %bsLive504, align 4
  %cmp505 = icmp sge i32 %420, 8
  br i1 %cmp505, label %if.then507, label %if.end517

if.then507:                                       ; preds = %while.body503
  %421 = load ptr, ptr %s.addr, align 8
  %bsBuff509 = getelementptr inbounds %struct.DState, ptr %421, i32 0, i32 7
  %422 = load i32, ptr %bsBuff509, align 8
  %423 = load ptr, ptr %s.addr, align 8
  %bsLive510 = getelementptr inbounds %struct.DState, ptr %423, i32 0, i32 8
  %424 = load i32, ptr %bsLive510, align 4
  %sub511 = sub nsw i32 %424, 8
  %shr512 = lshr i32 %422, %sub511
  %and513 = and i32 %shr512, 255
  store i32 %and513, ptr %v508, align 4
  %425 = load ptr, ptr %s.addr, align 8
  %bsLive514 = getelementptr inbounds %struct.DState, ptr %425, i32 0, i32 8
  %426 = load i32, ptr %bsLive514, align 4
  %sub515 = sub nsw i32 %426, 8
  store i32 %sub515, ptr %bsLive514, align 4
  %427 = load i32, ptr %v508, align 4
  %conv516 = trunc i32 %427 to i8
  store i8 %conv516, ptr %uc, align 1
  br label %while.end551

if.end517:                                        ; preds = %while.body503
  %428 = load ptr, ptr %s.addr, align 8
  %strm518 = getelementptr inbounds %struct.DState, ptr %428, i32 0, i32 0
  %429 = load ptr, ptr %strm518, align 8
  %avail_in519 = getelementptr inbounds %struct.bz_stream, ptr %429, i32 0, i32 1
  %430 = load i32, ptr %avail_in519, align 8
  %cmp520 = icmp eq i32 %430, 0
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %if.end517
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end523:                                        ; preds = %if.end517
  %431 = load ptr, ptr %s.addr, align 8
  %bsBuff524 = getelementptr inbounds %struct.DState, ptr %431, i32 0, i32 7
  %432 = load i32, ptr %bsBuff524, align 8
  %shl525 = shl i32 %432, 8
  %433 = load ptr, ptr %s.addr, align 8
  %strm526 = getelementptr inbounds %struct.DState, ptr %433, i32 0, i32 0
  %434 = load ptr, ptr %strm526, align 8
  %next_in527 = getelementptr inbounds %struct.bz_stream, ptr %434, i32 0, i32 0
  %435 = load ptr, ptr %next_in527, align 8
  %436 = load i8, ptr %435, align 1
  %conv528 = zext i8 %436 to i32
  %or529 = or i32 %shl525, %conv528
  %437 = load ptr, ptr %s.addr, align 8
  %bsBuff530 = getelementptr inbounds %struct.DState, ptr %437, i32 0, i32 7
  store i32 %or529, ptr %bsBuff530, align 8
  %438 = load ptr, ptr %s.addr, align 8
  %bsLive531 = getelementptr inbounds %struct.DState, ptr %438, i32 0, i32 8
  %439 = load i32, ptr %bsLive531, align 4
  %add532 = add nsw i32 %439, 8
  store i32 %add532, ptr %bsLive531, align 4
  %440 = load ptr, ptr %s.addr, align 8
  %strm533 = getelementptr inbounds %struct.DState, ptr %440, i32 0, i32 0
  %441 = load ptr, ptr %strm533, align 8
  %next_in534 = getelementptr inbounds %struct.bz_stream, ptr %441, i32 0, i32 0
  %442 = load ptr, ptr %next_in534, align 8
  %incdec.ptr535 = getelementptr inbounds i8, ptr %442, i32 1
  store ptr %incdec.ptr535, ptr %next_in534, align 8
  %443 = load ptr, ptr %s.addr, align 8
  %strm536 = getelementptr inbounds %struct.DState, ptr %443, i32 0, i32 0
  %444 = load ptr, ptr %strm536, align 8
  %avail_in537 = getelementptr inbounds %struct.bz_stream, ptr %444, i32 0, i32 1
  %445 = load i32, ptr %avail_in537, align 8
  %dec538 = add i32 %445, -1
  store i32 %dec538, ptr %avail_in537, align 8
  %446 = load ptr, ptr %s.addr, align 8
  %strm539 = getelementptr inbounds %struct.DState, ptr %446, i32 0, i32 0
  %447 = load ptr, ptr %strm539, align 8
  %total_in_lo32540 = getelementptr inbounds %struct.bz_stream, ptr %447, i32 0, i32 2
  %448 = load i32, ptr %total_in_lo32540, align 4
  %inc541 = add i32 %448, 1
  store i32 %inc541, ptr %total_in_lo32540, align 4
  %449 = load ptr, ptr %s.addr, align 8
  %strm542 = getelementptr inbounds %struct.DState, ptr %449, i32 0, i32 0
  %450 = load ptr, ptr %strm542, align 8
  %total_in_lo32543 = getelementptr inbounds %struct.bz_stream, ptr %450, i32 0, i32 2
  %451 = load i32, ptr %total_in_lo32543, align 4
  %cmp544 = icmp eq i32 %451, 0
  br i1 %cmp544, label %if.then546, label %if.end550

if.then546:                                       ; preds = %if.end523
  %452 = load ptr, ptr %s.addr, align 8
  %strm547 = getelementptr inbounds %struct.DState, ptr %452, i32 0, i32 0
  %453 = load ptr, ptr %strm547, align 8
  %total_in_hi32548 = getelementptr inbounds %struct.bz_stream, ptr %453, i32 0, i32 3
  %454 = load i32, ptr %total_in_hi32548, align 8
  %inc549 = add i32 %454, 1
  store i32 %inc549, ptr %total_in_hi32548, align 8
  br label %if.end550

if.end550:                                        ; preds = %if.then546, %if.end523
  br label %while.body503

while.end551:                                     ; preds = %if.then507
  %455 = load i8, ptr %uc, align 1
  %conv552 = zext i8 %455 to i32
  %cmp553 = icmp ne i32 %conv552, 83
  br i1 %cmp553, label %if.then555, label %if.end556

if.then555:                                       ; preds = %while.end551
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end556:                                        ; preds = %while.end551
  br label %sw.bb557

sw.bb557:                                         ; preds = %if.end, %if.end556
  %456 = load ptr, ptr %s.addr, align 8
  %state558 = getelementptr inbounds %struct.DState, ptr %456, i32 0, i32 1
  store i32 19, ptr %state558, align 8
  br label %while.body559

while.body559:                                    ; preds = %sw.bb557, %if.end606
  %457 = load ptr, ptr %s.addr, align 8
  %bsLive560 = getelementptr inbounds %struct.DState, ptr %457, i32 0, i32 8
  %458 = load i32, ptr %bsLive560, align 4
  %cmp561 = icmp sge i32 %458, 8
  br i1 %cmp561, label %if.then563, label %if.end573

if.then563:                                       ; preds = %while.body559
  %459 = load ptr, ptr %s.addr, align 8
  %bsBuff565 = getelementptr inbounds %struct.DState, ptr %459, i32 0, i32 7
  %460 = load i32, ptr %bsBuff565, align 8
  %461 = load ptr, ptr %s.addr, align 8
  %bsLive566 = getelementptr inbounds %struct.DState, ptr %461, i32 0, i32 8
  %462 = load i32, ptr %bsLive566, align 4
  %sub567 = sub nsw i32 %462, 8
  %shr568 = lshr i32 %460, %sub567
  %and569 = and i32 %shr568, 255
  store i32 %and569, ptr %v564, align 4
  %463 = load ptr, ptr %s.addr, align 8
  %bsLive570 = getelementptr inbounds %struct.DState, ptr %463, i32 0, i32 8
  %464 = load i32, ptr %bsLive570, align 4
  %sub571 = sub nsw i32 %464, 8
  store i32 %sub571, ptr %bsLive570, align 4
  %465 = load i32, ptr %v564, align 4
  %conv572 = trunc i32 %465 to i8
  store i8 %conv572, ptr %uc, align 1
  br label %while.end607

if.end573:                                        ; preds = %while.body559
  %466 = load ptr, ptr %s.addr, align 8
  %strm574 = getelementptr inbounds %struct.DState, ptr %466, i32 0, i32 0
  %467 = load ptr, ptr %strm574, align 8
  %avail_in575 = getelementptr inbounds %struct.bz_stream, ptr %467, i32 0, i32 1
  %468 = load i32, ptr %avail_in575, align 8
  %cmp576 = icmp eq i32 %468, 0
  br i1 %cmp576, label %if.then578, label %if.end579

if.then578:                                       ; preds = %if.end573
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end579:                                        ; preds = %if.end573
  %469 = load ptr, ptr %s.addr, align 8
  %bsBuff580 = getelementptr inbounds %struct.DState, ptr %469, i32 0, i32 7
  %470 = load i32, ptr %bsBuff580, align 8
  %shl581 = shl i32 %470, 8
  %471 = load ptr, ptr %s.addr, align 8
  %strm582 = getelementptr inbounds %struct.DState, ptr %471, i32 0, i32 0
  %472 = load ptr, ptr %strm582, align 8
  %next_in583 = getelementptr inbounds %struct.bz_stream, ptr %472, i32 0, i32 0
  %473 = load ptr, ptr %next_in583, align 8
  %474 = load i8, ptr %473, align 1
  %conv584 = zext i8 %474 to i32
  %or585 = or i32 %shl581, %conv584
  %475 = load ptr, ptr %s.addr, align 8
  %bsBuff586 = getelementptr inbounds %struct.DState, ptr %475, i32 0, i32 7
  store i32 %or585, ptr %bsBuff586, align 8
  %476 = load ptr, ptr %s.addr, align 8
  %bsLive587 = getelementptr inbounds %struct.DState, ptr %476, i32 0, i32 8
  %477 = load i32, ptr %bsLive587, align 4
  %add588 = add nsw i32 %477, 8
  store i32 %add588, ptr %bsLive587, align 4
  %478 = load ptr, ptr %s.addr, align 8
  %strm589 = getelementptr inbounds %struct.DState, ptr %478, i32 0, i32 0
  %479 = load ptr, ptr %strm589, align 8
  %next_in590 = getelementptr inbounds %struct.bz_stream, ptr %479, i32 0, i32 0
  %480 = load ptr, ptr %next_in590, align 8
  %incdec.ptr591 = getelementptr inbounds i8, ptr %480, i32 1
  store ptr %incdec.ptr591, ptr %next_in590, align 8
  %481 = load ptr, ptr %s.addr, align 8
  %strm592 = getelementptr inbounds %struct.DState, ptr %481, i32 0, i32 0
  %482 = load ptr, ptr %strm592, align 8
  %avail_in593 = getelementptr inbounds %struct.bz_stream, ptr %482, i32 0, i32 1
  %483 = load i32, ptr %avail_in593, align 8
  %dec594 = add i32 %483, -1
  store i32 %dec594, ptr %avail_in593, align 8
  %484 = load ptr, ptr %s.addr, align 8
  %strm595 = getelementptr inbounds %struct.DState, ptr %484, i32 0, i32 0
  %485 = load ptr, ptr %strm595, align 8
  %total_in_lo32596 = getelementptr inbounds %struct.bz_stream, ptr %485, i32 0, i32 2
  %486 = load i32, ptr %total_in_lo32596, align 4
  %inc597 = add i32 %486, 1
  store i32 %inc597, ptr %total_in_lo32596, align 4
  %487 = load ptr, ptr %s.addr, align 8
  %strm598 = getelementptr inbounds %struct.DState, ptr %487, i32 0, i32 0
  %488 = load ptr, ptr %strm598, align 8
  %total_in_lo32599 = getelementptr inbounds %struct.bz_stream, ptr %488, i32 0, i32 2
  %489 = load i32, ptr %total_in_lo32599, align 4
  %cmp600 = icmp eq i32 %489, 0
  br i1 %cmp600, label %if.then602, label %if.end606

if.then602:                                       ; preds = %if.end579
  %490 = load ptr, ptr %s.addr, align 8
  %strm603 = getelementptr inbounds %struct.DState, ptr %490, i32 0, i32 0
  %491 = load ptr, ptr %strm603, align 8
  %total_in_hi32604 = getelementptr inbounds %struct.bz_stream, ptr %491, i32 0, i32 3
  %492 = load i32, ptr %total_in_hi32604, align 8
  %inc605 = add i32 %492, 1
  store i32 %inc605, ptr %total_in_hi32604, align 8
  br label %if.end606

if.end606:                                        ; preds = %if.then602, %if.end579
  br label %while.body559

while.end607:                                     ; preds = %if.then563
  %493 = load i8, ptr %uc, align 1
  %conv608 = zext i8 %493 to i32
  %cmp609 = icmp ne i32 %conv608, 89
  br i1 %cmp609, label %if.then611, label %if.end612

if.then611:                                       ; preds = %while.end607
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end612:                                        ; preds = %while.end607
  %494 = load ptr, ptr %s.addr, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, ptr %494, i32 0, i32 11
  %495 = load i32, ptr %currBlockNo, align 8
  %inc613 = add nsw i32 %495, 1
  store i32 %inc613, ptr %currBlockNo, align 8
  %496 = load ptr, ptr %s.addr, align 8
  %verbosity = getelementptr inbounds %struct.DState, ptr %496, i32 0, i32 12
  %497 = load i32, ptr %verbosity, align 4
  %cmp614 = icmp sge i32 %497, 2
  br i1 %cmp614, label %if.then616, label %if.end619

if.then616:                                       ; preds = %if.end612
  %498 = load ptr, ptr @__stderrp, align 8
  %499 = load ptr, ptr %s.addr, align 8
  %currBlockNo617 = getelementptr inbounds %struct.DState, ptr %499, i32 0, i32 11
  %500 = load i32, ptr %currBlockNo617, align 8
  %call618 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %498, ptr noundef @.str, i32 noundef %500)
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %if.end612
  %501 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, ptr %501, i32 0, i32 23
  store i32 0, ptr %storedBlockCRC, align 8
  br label %sw.bb620

sw.bb620:                                         ; preds = %if.end, %if.end619
  %502 = load ptr, ptr %s.addr, align 8
  %state621 = getelementptr inbounds %struct.DState, ptr %502, i32 0, i32 1
  store i32 20, ptr %state621, align 8
  br label %while.body622

while.body622:                                    ; preds = %sw.bb620, %if.end669
  %503 = load ptr, ptr %s.addr, align 8
  %bsLive623 = getelementptr inbounds %struct.DState, ptr %503, i32 0, i32 8
  %504 = load i32, ptr %bsLive623, align 4
  %cmp624 = icmp sge i32 %504, 8
  br i1 %cmp624, label %if.then626, label %if.end636

if.then626:                                       ; preds = %while.body622
  %505 = load ptr, ptr %s.addr, align 8
  %bsBuff628 = getelementptr inbounds %struct.DState, ptr %505, i32 0, i32 7
  %506 = load i32, ptr %bsBuff628, align 8
  %507 = load ptr, ptr %s.addr, align 8
  %bsLive629 = getelementptr inbounds %struct.DState, ptr %507, i32 0, i32 8
  %508 = load i32, ptr %bsLive629, align 4
  %sub630 = sub nsw i32 %508, 8
  %shr631 = lshr i32 %506, %sub630
  %and632 = and i32 %shr631, 255
  store i32 %and632, ptr %v627, align 4
  %509 = load ptr, ptr %s.addr, align 8
  %bsLive633 = getelementptr inbounds %struct.DState, ptr %509, i32 0, i32 8
  %510 = load i32, ptr %bsLive633, align 4
  %sub634 = sub nsw i32 %510, 8
  store i32 %sub634, ptr %bsLive633, align 4
  %511 = load i32, ptr %v627, align 4
  %conv635 = trunc i32 %511 to i8
  store i8 %conv635, ptr %uc, align 1
  br label %while.end670

if.end636:                                        ; preds = %while.body622
  %512 = load ptr, ptr %s.addr, align 8
  %strm637 = getelementptr inbounds %struct.DState, ptr %512, i32 0, i32 0
  %513 = load ptr, ptr %strm637, align 8
  %avail_in638 = getelementptr inbounds %struct.bz_stream, ptr %513, i32 0, i32 1
  %514 = load i32, ptr %avail_in638, align 8
  %cmp639 = icmp eq i32 %514, 0
  br i1 %cmp639, label %if.then641, label %if.end642

if.then641:                                       ; preds = %if.end636
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end642:                                        ; preds = %if.end636
  %515 = load ptr, ptr %s.addr, align 8
  %bsBuff643 = getelementptr inbounds %struct.DState, ptr %515, i32 0, i32 7
  %516 = load i32, ptr %bsBuff643, align 8
  %shl644 = shl i32 %516, 8
  %517 = load ptr, ptr %s.addr, align 8
  %strm645 = getelementptr inbounds %struct.DState, ptr %517, i32 0, i32 0
  %518 = load ptr, ptr %strm645, align 8
  %next_in646 = getelementptr inbounds %struct.bz_stream, ptr %518, i32 0, i32 0
  %519 = load ptr, ptr %next_in646, align 8
  %520 = load i8, ptr %519, align 1
  %conv647 = zext i8 %520 to i32
  %or648 = or i32 %shl644, %conv647
  %521 = load ptr, ptr %s.addr, align 8
  %bsBuff649 = getelementptr inbounds %struct.DState, ptr %521, i32 0, i32 7
  store i32 %or648, ptr %bsBuff649, align 8
  %522 = load ptr, ptr %s.addr, align 8
  %bsLive650 = getelementptr inbounds %struct.DState, ptr %522, i32 0, i32 8
  %523 = load i32, ptr %bsLive650, align 4
  %add651 = add nsw i32 %523, 8
  store i32 %add651, ptr %bsLive650, align 4
  %524 = load ptr, ptr %s.addr, align 8
  %strm652 = getelementptr inbounds %struct.DState, ptr %524, i32 0, i32 0
  %525 = load ptr, ptr %strm652, align 8
  %next_in653 = getelementptr inbounds %struct.bz_stream, ptr %525, i32 0, i32 0
  %526 = load ptr, ptr %next_in653, align 8
  %incdec.ptr654 = getelementptr inbounds i8, ptr %526, i32 1
  store ptr %incdec.ptr654, ptr %next_in653, align 8
  %527 = load ptr, ptr %s.addr, align 8
  %strm655 = getelementptr inbounds %struct.DState, ptr %527, i32 0, i32 0
  %528 = load ptr, ptr %strm655, align 8
  %avail_in656 = getelementptr inbounds %struct.bz_stream, ptr %528, i32 0, i32 1
  %529 = load i32, ptr %avail_in656, align 8
  %dec657 = add i32 %529, -1
  store i32 %dec657, ptr %avail_in656, align 8
  %530 = load ptr, ptr %s.addr, align 8
  %strm658 = getelementptr inbounds %struct.DState, ptr %530, i32 0, i32 0
  %531 = load ptr, ptr %strm658, align 8
  %total_in_lo32659 = getelementptr inbounds %struct.bz_stream, ptr %531, i32 0, i32 2
  %532 = load i32, ptr %total_in_lo32659, align 4
  %inc660 = add i32 %532, 1
  store i32 %inc660, ptr %total_in_lo32659, align 4
  %533 = load ptr, ptr %s.addr, align 8
  %strm661 = getelementptr inbounds %struct.DState, ptr %533, i32 0, i32 0
  %534 = load ptr, ptr %strm661, align 8
  %total_in_lo32662 = getelementptr inbounds %struct.bz_stream, ptr %534, i32 0, i32 2
  %535 = load i32, ptr %total_in_lo32662, align 4
  %cmp663 = icmp eq i32 %535, 0
  br i1 %cmp663, label %if.then665, label %if.end669

if.then665:                                       ; preds = %if.end642
  %536 = load ptr, ptr %s.addr, align 8
  %strm666 = getelementptr inbounds %struct.DState, ptr %536, i32 0, i32 0
  %537 = load ptr, ptr %strm666, align 8
  %total_in_hi32667 = getelementptr inbounds %struct.bz_stream, ptr %537, i32 0, i32 3
  %538 = load i32, ptr %total_in_hi32667, align 8
  %inc668 = add i32 %538, 1
  store i32 %inc668, ptr %total_in_hi32667, align 8
  br label %if.end669

if.end669:                                        ; preds = %if.then665, %if.end642
  br label %while.body622

while.end670:                                     ; preds = %if.then626
  %539 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC671 = getelementptr inbounds %struct.DState, ptr %539, i32 0, i32 23
  %540 = load i32, ptr %storedBlockCRC671, align 8
  %shl672 = shl i32 %540, 8
  %541 = load i8, ptr %uc, align 1
  %conv673 = zext i8 %541 to i32
  %or674 = or i32 %shl672, %conv673
  %542 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC675 = getelementptr inbounds %struct.DState, ptr %542, i32 0, i32 23
  store i32 %or674, ptr %storedBlockCRC675, align 8
  br label %sw.bb676

sw.bb676:                                         ; preds = %if.end, %while.end670
  %543 = load ptr, ptr %s.addr, align 8
  %state677 = getelementptr inbounds %struct.DState, ptr %543, i32 0, i32 1
  store i32 21, ptr %state677, align 8
  br label %while.body678

while.body678:                                    ; preds = %sw.bb676, %if.end725
  %544 = load ptr, ptr %s.addr, align 8
  %bsLive679 = getelementptr inbounds %struct.DState, ptr %544, i32 0, i32 8
  %545 = load i32, ptr %bsLive679, align 4
  %cmp680 = icmp sge i32 %545, 8
  br i1 %cmp680, label %if.then682, label %if.end692

if.then682:                                       ; preds = %while.body678
  %546 = load ptr, ptr %s.addr, align 8
  %bsBuff684 = getelementptr inbounds %struct.DState, ptr %546, i32 0, i32 7
  %547 = load i32, ptr %bsBuff684, align 8
  %548 = load ptr, ptr %s.addr, align 8
  %bsLive685 = getelementptr inbounds %struct.DState, ptr %548, i32 0, i32 8
  %549 = load i32, ptr %bsLive685, align 4
  %sub686 = sub nsw i32 %549, 8
  %shr687 = lshr i32 %547, %sub686
  %and688 = and i32 %shr687, 255
  store i32 %and688, ptr %v683, align 4
  %550 = load ptr, ptr %s.addr, align 8
  %bsLive689 = getelementptr inbounds %struct.DState, ptr %550, i32 0, i32 8
  %551 = load i32, ptr %bsLive689, align 4
  %sub690 = sub nsw i32 %551, 8
  store i32 %sub690, ptr %bsLive689, align 4
  %552 = load i32, ptr %v683, align 4
  %conv691 = trunc i32 %552 to i8
  store i8 %conv691, ptr %uc, align 1
  br label %while.end726

if.end692:                                        ; preds = %while.body678
  %553 = load ptr, ptr %s.addr, align 8
  %strm693 = getelementptr inbounds %struct.DState, ptr %553, i32 0, i32 0
  %554 = load ptr, ptr %strm693, align 8
  %avail_in694 = getelementptr inbounds %struct.bz_stream, ptr %554, i32 0, i32 1
  %555 = load i32, ptr %avail_in694, align 8
  %cmp695 = icmp eq i32 %555, 0
  br i1 %cmp695, label %if.then697, label %if.end698

if.then697:                                       ; preds = %if.end692
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end698:                                        ; preds = %if.end692
  %556 = load ptr, ptr %s.addr, align 8
  %bsBuff699 = getelementptr inbounds %struct.DState, ptr %556, i32 0, i32 7
  %557 = load i32, ptr %bsBuff699, align 8
  %shl700 = shl i32 %557, 8
  %558 = load ptr, ptr %s.addr, align 8
  %strm701 = getelementptr inbounds %struct.DState, ptr %558, i32 0, i32 0
  %559 = load ptr, ptr %strm701, align 8
  %next_in702 = getelementptr inbounds %struct.bz_stream, ptr %559, i32 0, i32 0
  %560 = load ptr, ptr %next_in702, align 8
  %561 = load i8, ptr %560, align 1
  %conv703 = zext i8 %561 to i32
  %or704 = or i32 %shl700, %conv703
  %562 = load ptr, ptr %s.addr, align 8
  %bsBuff705 = getelementptr inbounds %struct.DState, ptr %562, i32 0, i32 7
  store i32 %or704, ptr %bsBuff705, align 8
  %563 = load ptr, ptr %s.addr, align 8
  %bsLive706 = getelementptr inbounds %struct.DState, ptr %563, i32 0, i32 8
  %564 = load i32, ptr %bsLive706, align 4
  %add707 = add nsw i32 %564, 8
  store i32 %add707, ptr %bsLive706, align 4
  %565 = load ptr, ptr %s.addr, align 8
  %strm708 = getelementptr inbounds %struct.DState, ptr %565, i32 0, i32 0
  %566 = load ptr, ptr %strm708, align 8
  %next_in709 = getelementptr inbounds %struct.bz_stream, ptr %566, i32 0, i32 0
  %567 = load ptr, ptr %next_in709, align 8
  %incdec.ptr710 = getelementptr inbounds i8, ptr %567, i32 1
  store ptr %incdec.ptr710, ptr %next_in709, align 8
  %568 = load ptr, ptr %s.addr, align 8
  %strm711 = getelementptr inbounds %struct.DState, ptr %568, i32 0, i32 0
  %569 = load ptr, ptr %strm711, align 8
  %avail_in712 = getelementptr inbounds %struct.bz_stream, ptr %569, i32 0, i32 1
  %570 = load i32, ptr %avail_in712, align 8
  %dec713 = add i32 %570, -1
  store i32 %dec713, ptr %avail_in712, align 8
  %571 = load ptr, ptr %s.addr, align 8
  %strm714 = getelementptr inbounds %struct.DState, ptr %571, i32 0, i32 0
  %572 = load ptr, ptr %strm714, align 8
  %total_in_lo32715 = getelementptr inbounds %struct.bz_stream, ptr %572, i32 0, i32 2
  %573 = load i32, ptr %total_in_lo32715, align 4
  %inc716 = add i32 %573, 1
  store i32 %inc716, ptr %total_in_lo32715, align 4
  %574 = load ptr, ptr %s.addr, align 8
  %strm717 = getelementptr inbounds %struct.DState, ptr %574, i32 0, i32 0
  %575 = load ptr, ptr %strm717, align 8
  %total_in_lo32718 = getelementptr inbounds %struct.bz_stream, ptr %575, i32 0, i32 2
  %576 = load i32, ptr %total_in_lo32718, align 4
  %cmp719 = icmp eq i32 %576, 0
  br i1 %cmp719, label %if.then721, label %if.end725

if.then721:                                       ; preds = %if.end698
  %577 = load ptr, ptr %s.addr, align 8
  %strm722 = getelementptr inbounds %struct.DState, ptr %577, i32 0, i32 0
  %578 = load ptr, ptr %strm722, align 8
  %total_in_hi32723 = getelementptr inbounds %struct.bz_stream, ptr %578, i32 0, i32 3
  %579 = load i32, ptr %total_in_hi32723, align 8
  %inc724 = add i32 %579, 1
  store i32 %inc724, ptr %total_in_hi32723, align 8
  br label %if.end725

if.end725:                                        ; preds = %if.then721, %if.end698
  br label %while.body678

while.end726:                                     ; preds = %if.then682
  %580 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC727 = getelementptr inbounds %struct.DState, ptr %580, i32 0, i32 23
  %581 = load i32, ptr %storedBlockCRC727, align 8
  %shl728 = shl i32 %581, 8
  %582 = load i8, ptr %uc, align 1
  %conv729 = zext i8 %582 to i32
  %or730 = or i32 %shl728, %conv729
  %583 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC731 = getelementptr inbounds %struct.DState, ptr %583, i32 0, i32 23
  store i32 %or730, ptr %storedBlockCRC731, align 8
  br label %sw.bb732

sw.bb732:                                         ; preds = %if.end, %while.end726
  %584 = load ptr, ptr %s.addr, align 8
  %state733 = getelementptr inbounds %struct.DState, ptr %584, i32 0, i32 1
  store i32 22, ptr %state733, align 8
  br label %while.body734

while.body734:                                    ; preds = %sw.bb732, %if.end781
  %585 = load ptr, ptr %s.addr, align 8
  %bsLive735 = getelementptr inbounds %struct.DState, ptr %585, i32 0, i32 8
  %586 = load i32, ptr %bsLive735, align 4
  %cmp736 = icmp sge i32 %586, 8
  br i1 %cmp736, label %if.then738, label %if.end748

if.then738:                                       ; preds = %while.body734
  %587 = load ptr, ptr %s.addr, align 8
  %bsBuff740 = getelementptr inbounds %struct.DState, ptr %587, i32 0, i32 7
  %588 = load i32, ptr %bsBuff740, align 8
  %589 = load ptr, ptr %s.addr, align 8
  %bsLive741 = getelementptr inbounds %struct.DState, ptr %589, i32 0, i32 8
  %590 = load i32, ptr %bsLive741, align 4
  %sub742 = sub nsw i32 %590, 8
  %shr743 = lshr i32 %588, %sub742
  %and744 = and i32 %shr743, 255
  store i32 %and744, ptr %v739, align 4
  %591 = load ptr, ptr %s.addr, align 8
  %bsLive745 = getelementptr inbounds %struct.DState, ptr %591, i32 0, i32 8
  %592 = load i32, ptr %bsLive745, align 4
  %sub746 = sub nsw i32 %592, 8
  store i32 %sub746, ptr %bsLive745, align 4
  %593 = load i32, ptr %v739, align 4
  %conv747 = trunc i32 %593 to i8
  store i8 %conv747, ptr %uc, align 1
  br label %while.end782

if.end748:                                        ; preds = %while.body734
  %594 = load ptr, ptr %s.addr, align 8
  %strm749 = getelementptr inbounds %struct.DState, ptr %594, i32 0, i32 0
  %595 = load ptr, ptr %strm749, align 8
  %avail_in750 = getelementptr inbounds %struct.bz_stream, ptr %595, i32 0, i32 1
  %596 = load i32, ptr %avail_in750, align 8
  %cmp751 = icmp eq i32 %596, 0
  br i1 %cmp751, label %if.then753, label %if.end754

if.then753:                                       ; preds = %if.end748
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end754:                                        ; preds = %if.end748
  %597 = load ptr, ptr %s.addr, align 8
  %bsBuff755 = getelementptr inbounds %struct.DState, ptr %597, i32 0, i32 7
  %598 = load i32, ptr %bsBuff755, align 8
  %shl756 = shl i32 %598, 8
  %599 = load ptr, ptr %s.addr, align 8
  %strm757 = getelementptr inbounds %struct.DState, ptr %599, i32 0, i32 0
  %600 = load ptr, ptr %strm757, align 8
  %next_in758 = getelementptr inbounds %struct.bz_stream, ptr %600, i32 0, i32 0
  %601 = load ptr, ptr %next_in758, align 8
  %602 = load i8, ptr %601, align 1
  %conv759 = zext i8 %602 to i32
  %or760 = or i32 %shl756, %conv759
  %603 = load ptr, ptr %s.addr, align 8
  %bsBuff761 = getelementptr inbounds %struct.DState, ptr %603, i32 0, i32 7
  store i32 %or760, ptr %bsBuff761, align 8
  %604 = load ptr, ptr %s.addr, align 8
  %bsLive762 = getelementptr inbounds %struct.DState, ptr %604, i32 0, i32 8
  %605 = load i32, ptr %bsLive762, align 4
  %add763 = add nsw i32 %605, 8
  store i32 %add763, ptr %bsLive762, align 4
  %606 = load ptr, ptr %s.addr, align 8
  %strm764 = getelementptr inbounds %struct.DState, ptr %606, i32 0, i32 0
  %607 = load ptr, ptr %strm764, align 8
  %next_in765 = getelementptr inbounds %struct.bz_stream, ptr %607, i32 0, i32 0
  %608 = load ptr, ptr %next_in765, align 8
  %incdec.ptr766 = getelementptr inbounds i8, ptr %608, i32 1
  store ptr %incdec.ptr766, ptr %next_in765, align 8
  %609 = load ptr, ptr %s.addr, align 8
  %strm767 = getelementptr inbounds %struct.DState, ptr %609, i32 0, i32 0
  %610 = load ptr, ptr %strm767, align 8
  %avail_in768 = getelementptr inbounds %struct.bz_stream, ptr %610, i32 0, i32 1
  %611 = load i32, ptr %avail_in768, align 8
  %dec769 = add i32 %611, -1
  store i32 %dec769, ptr %avail_in768, align 8
  %612 = load ptr, ptr %s.addr, align 8
  %strm770 = getelementptr inbounds %struct.DState, ptr %612, i32 0, i32 0
  %613 = load ptr, ptr %strm770, align 8
  %total_in_lo32771 = getelementptr inbounds %struct.bz_stream, ptr %613, i32 0, i32 2
  %614 = load i32, ptr %total_in_lo32771, align 4
  %inc772 = add i32 %614, 1
  store i32 %inc772, ptr %total_in_lo32771, align 4
  %615 = load ptr, ptr %s.addr, align 8
  %strm773 = getelementptr inbounds %struct.DState, ptr %615, i32 0, i32 0
  %616 = load ptr, ptr %strm773, align 8
  %total_in_lo32774 = getelementptr inbounds %struct.bz_stream, ptr %616, i32 0, i32 2
  %617 = load i32, ptr %total_in_lo32774, align 4
  %cmp775 = icmp eq i32 %617, 0
  br i1 %cmp775, label %if.then777, label %if.end781

if.then777:                                       ; preds = %if.end754
  %618 = load ptr, ptr %s.addr, align 8
  %strm778 = getelementptr inbounds %struct.DState, ptr %618, i32 0, i32 0
  %619 = load ptr, ptr %strm778, align 8
  %total_in_hi32779 = getelementptr inbounds %struct.bz_stream, ptr %619, i32 0, i32 3
  %620 = load i32, ptr %total_in_hi32779, align 8
  %inc780 = add i32 %620, 1
  store i32 %inc780, ptr %total_in_hi32779, align 8
  br label %if.end781

if.end781:                                        ; preds = %if.then777, %if.end754
  br label %while.body734

while.end782:                                     ; preds = %if.then738
  %621 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC783 = getelementptr inbounds %struct.DState, ptr %621, i32 0, i32 23
  %622 = load i32, ptr %storedBlockCRC783, align 8
  %shl784 = shl i32 %622, 8
  %623 = load i8, ptr %uc, align 1
  %conv785 = zext i8 %623 to i32
  %or786 = or i32 %shl784, %conv785
  %624 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC787 = getelementptr inbounds %struct.DState, ptr %624, i32 0, i32 23
  store i32 %or786, ptr %storedBlockCRC787, align 8
  br label %sw.bb788

sw.bb788:                                         ; preds = %if.end, %while.end782
  %625 = load ptr, ptr %s.addr, align 8
  %state789 = getelementptr inbounds %struct.DState, ptr %625, i32 0, i32 1
  store i32 23, ptr %state789, align 8
  br label %while.body790

while.body790:                                    ; preds = %sw.bb788, %if.end837
  %626 = load ptr, ptr %s.addr, align 8
  %bsLive791 = getelementptr inbounds %struct.DState, ptr %626, i32 0, i32 8
  %627 = load i32, ptr %bsLive791, align 4
  %cmp792 = icmp sge i32 %627, 8
  br i1 %cmp792, label %if.then794, label %if.end804

if.then794:                                       ; preds = %while.body790
  %628 = load ptr, ptr %s.addr, align 8
  %bsBuff796 = getelementptr inbounds %struct.DState, ptr %628, i32 0, i32 7
  %629 = load i32, ptr %bsBuff796, align 8
  %630 = load ptr, ptr %s.addr, align 8
  %bsLive797 = getelementptr inbounds %struct.DState, ptr %630, i32 0, i32 8
  %631 = load i32, ptr %bsLive797, align 4
  %sub798 = sub nsw i32 %631, 8
  %shr799 = lshr i32 %629, %sub798
  %and800 = and i32 %shr799, 255
  store i32 %and800, ptr %v795, align 4
  %632 = load ptr, ptr %s.addr, align 8
  %bsLive801 = getelementptr inbounds %struct.DState, ptr %632, i32 0, i32 8
  %633 = load i32, ptr %bsLive801, align 4
  %sub802 = sub nsw i32 %633, 8
  store i32 %sub802, ptr %bsLive801, align 4
  %634 = load i32, ptr %v795, align 4
  %conv803 = trunc i32 %634 to i8
  store i8 %conv803, ptr %uc, align 1
  br label %while.end838

if.end804:                                        ; preds = %while.body790
  %635 = load ptr, ptr %s.addr, align 8
  %strm805 = getelementptr inbounds %struct.DState, ptr %635, i32 0, i32 0
  %636 = load ptr, ptr %strm805, align 8
  %avail_in806 = getelementptr inbounds %struct.bz_stream, ptr %636, i32 0, i32 1
  %637 = load i32, ptr %avail_in806, align 8
  %cmp807 = icmp eq i32 %637, 0
  br i1 %cmp807, label %if.then809, label %if.end810

if.then809:                                       ; preds = %if.end804
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end810:                                        ; preds = %if.end804
  %638 = load ptr, ptr %s.addr, align 8
  %bsBuff811 = getelementptr inbounds %struct.DState, ptr %638, i32 0, i32 7
  %639 = load i32, ptr %bsBuff811, align 8
  %shl812 = shl i32 %639, 8
  %640 = load ptr, ptr %s.addr, align 8
  %strm813 = getelementptr inbounds %struct.DState, ptr %640, i32 0, i32 0
  %641 = load ptr, ptr %strm813, align 8
  %next_in814 = getelementptr inbounds %struct.bz_stream, ptr %641, i32 0, i32 0
  %642 = load ptr, ptr %next_in814, align 8
  %643 = load i8, ptr %642, align 1
  %conv815 = zext i8 %643 to i32
  %or816 = or i32 %shl812, %conv815
  %644 = load ptr, ptr %s.addr, align 8
  %bsBuff817 = getelementptr inbounds %struct.DState, ptr %644, i32 0, i32 7
  store i32 %or816, ptr %bsBuff817, align 8
  %645 = load ptr, ptr %s.addr, align 8
  %bsLive818 = getelementptr inbounds %struct.DState, ptr %645, i32 0, i32 8
  %646 = load i32, ptr %bsLive818, align 4
  %add819 = add nsw i32 %646, 8
  store i32 %add819, ptr %bsLive818, align 4
  %647 = load ptr, ptr %s.addr, align 8
  %strm820 = getelementptr inbounds %struct.DState, ptr %647, i32 0, i32 0
  %648 = load ptr, ptr %strm820, align 8
  %next_in821 = getelementptr inbounds %struct.bz_stream, ptr %648, i32 0, i32 0
  %649 = load ptr, ptr %next_in821, align 8
  %incdec.ptr822 = getelementptr inbounds i8, ptr %649, i32 1
  store ptr %incdec.ptr822, ptr %next_in821, align 8
  %650 = load ptr, ptr %s.addr, align 8
  %strm823 = getelementptr inbounds %struct.DState, ptr %650, i32 0, i32 0
  %651 = load ptr, ptr %strm823, align 8
  %avail_in824 = getelementptr inbounds %struct.bz_stream, ptr %651, i32 0, i32 1
  %652 = load i32, ptr %avail_in824, align 8
  %dec825 = add i32 %652, -1
  store i32 %dec825, ptr %avail_in824, align 8
  %653 = load ptr, ptr %s.addr, align 8
  %strm826 = getelementptr inbounds %struct.DState, ptr %653, i32 0, i32 0
  %654 = load ptr, ptr %strm826, align 8
  %total_in_lo32827 = getelementptr inbounds %struct.bz_stream, ptr %654, i32 0, i32 2
  %655 = load i32, ptr %total_in_lo32827, align 4
  %inc828 = add i32 %655, 1
  store i32 %inc828, ptr %total_in_lo32827, align 4
  %656 = load ptr, ptr %s.addr, align 8
  %strm829 = getelementptr inbounds %struct.DState, ptr %656, i32 0, i32 0
  %657 = load ptr, ptr %strm829, align 8
  %total_in_lo32830 = getelementptr inbounds %struct.bz_stream, ptr %657, i32 0, i32 2
  %658 = load i32, ptr %total_in_lo32830, align 4
  %cmp831 = icmp eq i32 %658, 0
  br i1 %cmp831, label %if.then833, label %if.end837

if.then833:                                       ; preds = %if.end810
  %659 = load ptr, ptr %s.addr, align 8
  %strm834 = getelementptr inbounds %struct.DState, ptr %659, i32 0, i32 0
  %660 = load ptr, ptr %strm834, align 8
  %total_in_hi32835 = getelementptr inbounds %struct.bz_stream, ptr %660, i32 0, i32 3
  %661 = load i32, ptr %total_in_hi32835, align 8
  %inc836 = add i32 %661, 1
  store i32 %inc836, ptr %total_in_hi32835, align 8
  br label %if.end837

if.end837:                                        ; preds = %if.then833, %if.end810
  br label %while.body790

while.end838:                                     ; preds = %if.then794
  %662 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC839 = getelementptr inbounds %struct.DState, ptr %662, i32 0, i32 23
  %663 = load i32, ptr %storedBlockCRC839, align 8
  %shl840 = shl i32 %663, 8
  %664 = load i8, ptr %uc, align 1
  %conv841 = zext i8 %664 to i32
  %or842 = or i32 %shl840, %conv841
  %665 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC843 = getelementptr inbounds %struct.DState, ptr %665, i32 0, i32 23
  store i32 %or842, ptr %storedBlockCRC843, align 8
  br label %sw.bb844

sw.bb844:                                         ; preds = %if.end, %while.end838
  %666 = load ptr, ptr %s.addr, align 8
  %state845 = getelementptr inbounds %struct.DState, ptr %666, i32 0, i32 1
  store i32 24, ptr %state845, align 8
  br label %while.body846

while.body846:                                    ; preds = %sw.bb844, %if.end893
  %667 = load ptr, ptr %s.addr, align 8
  %bsLive847 = getelementptr inbounds %struct.DState, ptr %667, i32 0, i32 8
  %668 = load i32, ptr %bsLive847, align 4
  %cmp848 = icmp sge i32 %668, 1
  br i1 %cmp848, label %if.then850, label %if.end860

if.then850:                                       ; preds = %while.body846
  %669 = load ptr, ptr %s.addr, align 8
  %bsBuff852 = getelementptr inbounds %struct.DState, ptr %669, i32 0, i32 7
  %670 = load i32, ptr %bsBuff852, align 8
  %671 = load ptr, ptr %s.addr, align 8
  %bsLive853 = getelementptr inbounds %struct.DState, ptr %671, i32 0, i32 8
  %672 = load i32, ptr %bsLive853, align 4
  %sub854 = sub nsw i32 %672, 1
  %shr855 = lshr i32 %670, %sub854
  %and856 = and i32 %shr855, 1
  store i32 %and856, ptr %v851, align 4
  %673 = load ptr, ptr %s.addr, align 8
  %bsLive857 = getelementptr inbounds %struct.DState, ptr %673, i32 0, i32 8
  %674 = load i32, ptr %bsLive857, align 4
  %sub858 = sub nsw i32 %674, 1
  store i32 %sub858, ptr %bsLive857, align 4
  %675 = load i32, ptr %v851, align 4
  %conv859 = trunc i32 %675 to i8
  %676 = load ptr, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, ptr %676, i32 0, i32 4
  store i8 %conv859, ptr %blockRandomised, align 4
  br label %while.end894

if.end860:                                        ; preds = %while.body846
  %677 = load ptr, ptr %s.addr, align 8
  %strm861 = getelementptr inbounds %struct.DState, ptr %677, i32 0, i32 0
  %678 = load ptr, ptr %strm861, align 8
  %avail_in862 = getelementptr inbounds %struct.bz_stream, ptr %678, i32 0, i32 1
  %679 = load i32, ptr %avail_in862, align 8
  %cmp863 = icmp eq i32 %679, 0
  br i1 %cmp863, label %if.then865, label %if.end866

if.then865:                                       ; preds = %if.end860
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end866:                                        ; preds = %if.end860
  %680 = load ptr, ptr %s.addr, align 8
  %bsBuff867 = getelementptr inbounds %struct.DState, ptr %680, i32 0, i32 7
  %681 = load i32, ptr %bsBuff867, align 8
  %shl868 = shl i32 %681, 8
  %682 = load ptr, ptr %s.addr, align 8
  %strm869 = getelementptr inbounds %struct.DState, ptr %682, i32 0, i32 0
  %683 = load ptr, ptr %strm869, align 8
  %next_in870 = getelementptr inbounds %struct.bz_stream, ptr %683, i32 0, i32 0
  %684 = load ptr, ptr %next_in870, align 8
  %685 = load i8, ptr %684, align 1
  %conv871 = zext i8 %685 to i32
  %or872 = or i32 %shl868, %conv871
  %686 = load ptr, ptr %s.addr, align 8
  %bsBuff873 = getelementptr inbounds %struct.DState, ptr %686, i32 0, i32 7
  store i32 %or872, ptr %bsBuff873, align 8
  %687 = load ptr, ptr %s.addr, align 8
  %bsLive874 = getelementptr inbounds %struct.DState, ptr %687, i32 0, i32 8
  %688 = load i32, ptr %bsLive874, align 4
  %add875 = add nsw i32 %688, 8
  store i32 %add875, ptr %bsLive874, align 4
  %689 = load ptr, ptr %s.addr, align 8
  %strm876 = getelementptr inbounds %struct.DState, ptr %689, i32 0, i32 0
  %690 = load ptr, ptr %strm876, align 8
  %next_in877 = getelementptr inbounds %struct.bz_stream, ptr %690, i32 0, i32 0
  %691 = load ptr, ptr %next_in877, align 8
  %incdec.ptr878 = getelementptr inbounds i8, ptr %691, i32 1
  store ptr %incdec.ptr878, ptr %next_in877, align 8
  %692 = load ptr, ptr %s.addr, align 8
  %strm879 = getelementptr inbounds %struct.DState, ptr %692, i32 0, i32 0
  %693 = load ptr, ptr %strm879, align 8
  %avail_in880 = getelementptr inbounds %struct.bz_stream, ptr %693, i32 0, i32 1
  %694 = load i32, ptr %avail_in880, align 8
  %dec881 = add i32 %694, -1
  store i32 %dec881, ptr %avail_in880, align 8
  %695 = load ptr, ptr %s.addr, align 8
  %strm882 = getelementptr inbounds %struct.DState, ptr %695, i32 0, i32 0
  %696 = load ptr, ptr %strm882, align 8
  %total_in_lo32883 = getelementptr inbounds %struct.bz_stream, ptr %696, i32 0, i32 2
  %697 = load i32, ptr %total_in_lo32883, align 4
  %inc884 = add i32 %697, 1
  store i32 %inc884, ptr %total_in_lo32883, align 4
  %698 = load ptr, ptr %s.addr, align 8
  %strm885 = getelementptr inbounds %struct.DState, ptr %698, i32 0, i32 0
  %699 = load ptr, ptr %strm885, align 8
  %total_in_lo32886 = getelementptr inbounds %struct.bz_stream, ptr %699, i32 0, i32 2
  %700 = load i32, ptr %total_in_lo32886, align 4
  %cmp887 = icmp eq i32 %700, 0
  br i1 %cmp887, label %if.then889, label %if.end893

if.then889:                                       ; preds = %if.end866
  %701 = load ptr, ptr %s.addr, align 8
  %strm890 = getelementptr inbounds %struct.DState, ptr %701, i32 0, i32 0
  %702 = load ptr, ptr %strm890, align 8
  %total_in_hi32891 = getelementptr inbounds %struct.bz_stream, ptr %702, i32 0, i32 3
  %703 = load i32, ptr %total_in_hi32891, align 8
  %inc892 = add i32 %703, 1
  store i32 %inc892, ptr %total_in_hi32891, align 8
  br label %if.end893

if.end893:                                        ; preds = %if.then889, %if.end866
  br label %while.body846

while.end894:                                     ; preds = %if.then850
  %704 = load ptr, ptr %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.DState, ptr %704, i32 0, i32 13
  store i32 0, ptr %origPtr, align 8
  br label %sw.bb895

sw.bb895:                                         ; preds = %if.end, %while.end894
  %705 = load ptr, ptr %s.addr, align 8
  %state896 = getelementptr inbounds %struct.DState, ptr %705, i32 0, i32 1
  store i32 25, ptr %state896, align 8
  br label %while.body897

while.body897:                                    ; preds = %sw.bb895, %if.end944
  %706 = load ptr, ptr %s.addr, align 8
  %bsLive898 = getelementptr inbounds %struct.DState, ptr %706, i32 0, i32 8
  %707 = load i32, ptr %bsLive898, align 4
  %cmp899 = icmp sge i32 %707, 8
  br i1 %cmp899, label %if.then901, label %if.end911

if.then901:                                       ; preds = %while.body897
  %708 = load ptr, ptr %s.addr, align 8
  %bsBuff903 = getelementptr inbounds %struct.DState, ptr %708, i32 0, i32 7
  %709 = load i32, ptr %bsBuff903, align 8
  %710 = load ptr, ptr %s.addr, align 8
  %bsLive904 = getelementptr inbounds %struct.DState, ptr %710, i32 0, i32 8
  %711 = load i32, ptr %bsLive904, align 4
  %sub905 = sub nsw i32 %711, 8
  %shr906 = lshr i32 %709, %sub905
  %and907 = and i32 %shr906, 255
  store i32 %and907, ptr %v902, align 4
  %712 = load ptr, ptr %s.addr, align 8
  %bsLive908 = getelementptr inbounds %struct.DState, ptr %712, i32 0, i32 8
  %713 = load i32, ptr %bsLive908, align 4
  %sub909 = sub nsw i32 %713, 8
  store i32 %sub909, ptr %bsLive908, align 4
  %714 = load i32, ptr %v902, align 4
  %conv910 = trunc i32 %714 to i8
  store i8 %conv910, ptr %uc, align 1
  br label %while.end945

if.end911:                                        ; preds = %while.body897
  %715 = load ptr, ptr %s.addr, align 8
  %strm912 = getelementptr inbounds %struct.DState, ptr %715, i32 0, i32 0
  %716 = load ptr, ptr %strm912, align 8
  %avail_in913 = getelementptr inbounds %struct.bz_stream, ptr %716, i32 0, i32 1
  %717 = load i32, ptr %avail_in913, align 8
  %cmp914 = icmp eq i32 %717, 0
  br i1 %cmp914, label %if.then916, label %if.end917

if.then916:                                       ; preds = %if.end911
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end917:                                        ; preds = %if.end911
  %718 = load ptr, ptr %s.addr, align 8
  %bsBuff918 = getelementptr inbounds %struct.DState, ptr %718, i32 0, i32 7
  %719 = load i32, ptr %bsBuff918, align 8
  %shl919 = shl i32 %719, 8
  %720 = load ptr, ptr %s.addr, align 8
  %strm920 = getelementptr inbounds %struct.DState, ptr %720, i32 0, i32 0
  %721 = load ptr, ptr %strm920, align 8
  %next_in921 = getelementptr inbounds %struct.bz_stream, ptr %721, i32 0, i32 0
  %722 = load ptr, ptr %next_in921, align 8
  %723 = load i8, ptr %722, align 1
  %conv922 = zext i8 %723 to i32
  %or923 = or i32 %shl919, %conv922
  %724 = load ptr, ptr %s.addr, align 8
  %bsBuff924 = getelementptr inbounds %struct.DState, ptr %724, i32 0, i32 7
  store i32 %or923, ptr %bsBuff924, align 8
  %725 = load ptr, ptr %s.addr, align 8
  %bsLive925 = getelementptr inbounds %struct.DState, ptr %725, i32 0, i32 8
  %726 = load i32, ptr %bsLive925, align 4
  %add926 = add nsw i32 %726, 8
  store i32 %add926, ptr %bsLive925, align 4
  %727 = load ptr, ptr %s.addr, align 8
  %strm927 = getelementptr inbounds %struct.DState, ptr %727, i32 0, i32 0
  %728 = load ptr, ptr %strm927, align 8
  %next_in928 = getelementptr inbounds %struct.bz_stream, ptr %728, i32 0, i32 0
  %729 = load ptr, ptr %next_in928, align 8
  %incdec.ptr929 = getelementptr inbounds i8, ptr %729, i32 1
  store ptr %incdec.ptr929, ptr %next_in928, align 8
  %730 = load ptr, ptr %s.addr, align 8
  %strm930 = getelementptr inbounds %struct.DState, ptr %730, i32 0, i32 0
  %731 = load ptr, ptr %strm930, align 8
  %avail_in931 = getelementptr inbounds %struct.bz_stream, ptr %731, i32 0, i32 1
  %732 = load i32, ptr %avail_in931, align 8
  %dec932 = add i32 %732, -1
  store i32 %dec932, ptr %avail_in931, align 8
  %733 = load ptr, ptr %s.addr, align 8
  %strm933 = getelementptr inbounds %struct.DState, ptr %733, i32 0, i32 0
  %734 = load ptr, ptr %strm933, align 8
  %total_in_lo32934 = getelementptr inbounds %struct.bz_stream, ptr %734, i32 0, i32 2
  %735 = load i32, ptr %total_in_lo32934, align 4
  %inc935 = add i32 %735, 1
  store i32 %inc935, ptr %total_in_lo32934, align 4
  %736 = load ptr, ptr %s.addr, align 8
  %strm936 = getelementptr inbounds %struct.DState, ptr %736, i32 0, i32 0
  %737 = load ptr, ptr %strm936, align 8
  %total_in_lo32937 = getelementptr inbounds %struct.bz_stream, ptr %737, i32 0, i32 2
  %738 = load i32, ptr %total_in_lo32937, align 4
  %cmp938 = icmp eq i32 %738, 0
  br i1 %cmp938, label %if.then940, label %if.end944

if.then940:                                       ; preds = %if.end917
  %739 = load ptr, ptr %s.addr, align 8
  %strm941 = getelementptr inbounds %struct.DState, ptr %739, i32 0, i32 0
  %740 = load ptr, ptr %strm941, align 8
  %total_in_hi32942 = getelementptr inbounds %struct.bz_stream, ptr %740, i32 0, i32 3
  %741 = load i32, ptr %total_in_hi32942, align 8
  %inc943 = add i32 %741, 1
  store i32 %inc943, ptr %total_in_hi32942, align 8
  br label %if.end944

if.end944:                                        ; preds = %if.then940, %if.end917
  br label %while.body897

while.end945:                                     ; preds = %if.then901
  %742 = load ptr, ptr %s.addr, align 8
  %origPtr946 = getelementptr inbounds %struct.DState, ptr %742, i32 0, i32 13
  %743 = load i32, ptr %origPtr946, align 8
  %shl947 = shl i32 %743, 8
  %744 = load i8, ptr %uc, align 1
  %conv948 = zext i8 %744 to i32
  %or949 = or i32 %shl947, %conv948
  %745 = load ptr, ptr %s.addr, align 8
  %origPtr950 = getelementptr inbounds %struct.DState, ptr %745, i32 0, i32 13
  store i32 %or949, ptr %origPtr950, align 8
  br label %sw.bb951

sw.bb951:                                         ; preds = %if.end, %while.end945
  %746 = load ptr, ptr %s.addr, align 8
  %state952 = getelementptr inbounds %struct.DState, ptr %746, i32 0, i32 1
  store i32 26, ptr %state952, align 8
  br label %while.body953

while.body953:                                    ; preds = %sw.bb951, %if.end1000
  %747 = load ptr, ptr %s.addr, align 8
  %bsLive954 = getelementptr inbounds %struct.DState, ptr %747, i32 0, i32 8
  %748 = load i32, ptr %bsLive954, align 4
  %cmp955 = icmp sge i32 %748, 8
  br i1 %cmp955, label %if.then957, label %if.end967

if.then957:                                       ; preds = %while.body953
  %749 = load ptr, ptr %s.addr, align 8
  %bsBuff959 = getelementptr inbounds %struct.DState, ptr %749, i32 0, i32 7
  %750 = load i32, ptr %bsBuff959, align 8
  %751 = load ptr, ptr %s.addr, align 8
  %bsLive960 = getelementptr inbounds %struct.DState, ptr %751, i32 0, i32 8
  %752 = load i32, ptr %bsLive960, align 4
  %sub961 = sub nsw i32 %752, 8
  %shr962 = lshr i32 %750, %sub961
  %and963 = and i32 %shr962, 255
  store i32 %and963, ptr %v958, align 4
  %753 = load ptr, ptr %s.addr, align 8
  %bsLive964 = getelementptr inbounds %struct.DState, ptr %753, i32 0, i32 8
  %754 = load i32, ptr %bsLive964, align 4
  %sub965 = sub nsw i32 %754, 8
  store i32 %sub965, ptr %bsLive964, align 4
  %755 = load i32, ptr %v958, align 4
  %conv966 = trunc i32 %755 to i8
  store i8 %conv966, ptr %uc, align 1
  br label %while.end1001

if.end967:                                        ; preds = %while.body953
  %756 = load ptr, ptr %s.addr, align 8
  %strm968 = getelementptr inbounds %struct.DState, ptr %756, i32 0, i32 0
  %757 = load ptr, ptr %strm968, align 8
  %avail_in969 = getelementptr inbounds %struct.bz_stream, ptr %757, i32 0, i32 1
  %758 = load i32, ptr %avail_in969, align 8
  %cmp970 = icmp eq i32 %758, 0
  br i1 %cmp970, label %if.then972, label %if.end973

if.then972:                                       ; preds = %if.end967
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end973:                                        ; preds = %if.end967
  %759 = load ptr, ptr %s.addr, align 8
  %bsBuff974 = getelementptr inbounds %struct.DState, ptr %759, i32 0, i32 7
  %760 = load i32, ptr %bsBuff974, align 8
  %shl975 = shl i32 %760, 8
  %761 = load ptr, ptr %s.addr, align 8
  %strm976 = getelementptr inbounds %struct.DState, ptr %761, i32 0, i32 0
  %762 = load ptr, ptr %strm976, align 8
  %next_in977 = getelementptr inbounds %struct.bz_stream, ptr %762, i32 0, i32 0
  %763 = load ptr, ptr %next_in977, align 8
  %764 = load i8, ptr %763, align 1
  %conv978 = zext i8 %764 to i32
  %or979 = or i32 %shl975, %conv978
  %765 = load ptr, ptr %s.addr, align 8
  %bsBuff980 = getelementptr inbounds %struct.DState, ptr %765, i32 0, i32 7
  store i32 %or979, ptr %bsBuff980, align 8
  %766 = load ptr, ptr %s.addr, align 8
  %bsLive981 = getelementptr inbounds %struct.DState, ptr %766, i32 0, i32 8
  %767 = load i32, ptr %bsLive981, align 4
  %add982 = add nsw i32 %767, 8
  store i32 %add982, ptr %bsLive981, align 4
  %768 = load ptr, ptr %s.addr, align 8
  %strm983 = getelementptr inbounds %struct.DState, ptr %768, i32 0, i32 0
  %769 = load ptr, ptr %strm983, align 8
  %next_in984 = getelementptr inbounds %struct.bz_stream, ptr %769, i32 0, i32 0
  %770 = load ptr, ptr %next_in984, align 8
  %incdec.ptr985 = getelementptr inbounds i8, ptr %770, i32 1
  store ptr %incdec.ptr985, ptr %next_in984, align 8
  %771 = load ptr, ptr %s.addr, align 8
  %strm986 = getelementptr inbounds %struct.DState, ptr %771, i32 0, i32 0
  %772 = load ptr, ptr %strm986, align 8
  %avail_in987 = getelementptr inbounds %struct.bz_stream, ptr %772, i32 0, i32 1
  %773 = load i32, ptr %avail_in987, align 8
  %dec988 = add i32 %773, -1
  store i32 %dec988, ptr %avail_in987, align 8
  %774 = load ptr, ptr %s.addr, align 8
  %strm989 = getelementptr inbounds %struct.DState, ptr %774, i32 0, i32 0
  %775 = load ptr, ptr %strm989, align 8
  %total_in_lo32990 = getelementptr inbounds %struct.bz_stream, ptr %775, i32 0, i32 2
  %776 = load i32, ptr %total_in_lo32990, align 4
  %inc991 = add i32 %776, 1
  store i32 %inc991, ptr %total_in_lo32990, align 4
  %777 = load ptr, ptr %s.addr, align 8
  %strm992 = getelementptr inbounds %struct.DState, ptr %777, i32 0, i32 0
  %778 = load ptr, ptr %strm992, align 8
  %total_in_lo32993 = getelementptr inbounds %struct.bz_stream, ptr %778, i32 0, i32 2
  %779 = load i32, ptr %total_in_lo32993, align 4
  %cmp994 = icmp eq i32 %779, 0
  br i1 %cmp994, label %if.then996, label %if.end1000

if.then996:                                       ; preds = %if.end973
  %780 = load ptr, ptr %s.addr, align 8
  %strm997 = getelementptr inbounds %struct.DState, ptr %780, i32 0, i32 0
  %781 = load ptr, ptr %strm997, align 8
  %total_in_hi32998 = getelementptr inbounds %struct.bz_stream, ptr %781, i32 0, i32 3
  %782 = load i32, ptr %total_in_hi32998, align 8
  %inc999 = add i32 %782, 1
  store i32 %inc999, ptr %total_in_hi32998, align 8
  br label %if.end1000

if.end1000:                                       ; preds = %if.then996, %if.end973
  br label %while.body953

while.end1001:                                    ; preds = %if.then957
  %783 = load ptr, ptr %s.addr, align 8
  %origPtr1002 = getelementptr inbounds %struct.DState, ptr %783, i32 0, i32 13
  %784 = load i32, ptr %origPtr1002, align 8
  %shl1003 = shl i32 %784, 8
  %785 = load i8, ptr %uc, align 1
  %conv1004 = zext i8 %785 to i32
  %or1005 = or i32 %shl1003, %conv1004
  %786 = load ptr, ptr %s.addr, align 8
  %origPtr1006 = getelementptr inbounds %struct.DState, ptr %786, i32 0, i32 13
  store i32 %or1005, ptr %origPtr1006, align 8
  br label %sw.bb1007

sw.bb1007:                                        ; preds = %if.end, %while.end1001
  %787 = load ptr, ptr %s.addr, align 8
  %state1008 = getelementptr inbounds %struct.DState, ptr %787, i32 0, i32 1
  store i32 27, ptr %state1008, align 8
  br label %while.body1009

while.body1009:                                   ; preds = %sw.bb1007, %if.end1056
  %788 = load ptr, ptr %s.addr, align 8
  %bsLive1010 = getelementptr inbounds %struct.DState, ptr %788, i32 0, i32 8
  %789 = load i32, ptr %bsLive1010, align 4
  %cmp1011 = icmp sge i32 %789, 8
  br i1 %cmp1011, label %if.then1013, label %if.end1023

if.then1013:                                      ; preds = %while.body1009
  %790 = load ptr, ptr %s.addr, align 8
  %bsBuff1015 = getelementptr inbounds %struct.DState, ptr %790, i32 0, i32 7
  %791 = load i32, ptr %bsBuff1015, align 8
  %792 = load ptr, ptr %s.addr, align 8
  %bsLive1016 = getelementptr inbounds %struct.DState, ptr %792, i32 0, i32 8
  %793 = load i32, ptr %bsLive1016, align 4
  %sub1017 = sub nsw i32 %793, 8
  %shr1018 = lshr i32 %791, %sub1017
  %and1019 = and i32 %shr1018, 255
  store i32 %and1019, ptr %v1014, align 4
  %794 = load ptr, ptr %s.addr, align 8
  %bsLive1020 = getelementptr inbounds %struct.DState, ptr %794, i32 0, i32 8
  %795 = load i32, ptr %bsLive1020, align 4
  %sub1021 = sub nsw i32 %795, 8
  store i32 %sub1021, ptr %bsLive1020, align 4
  %796 = load i32, ptr %v1014, align 4
  %conv1022 = trunc i32 %796 to i8
  store i8 %conv1022, ptr %uc, align 1
  br label %while.end1057

if.end1023:                                       ; preds = %while.body1009
  %797 = load ptr, ptr %s.addr, align 8
  %strm1024 = getelementptr inbounds %struct.DState, ptr %797, i32 0, i32 0
  %798 = load ptr, ptr %strm1024, align 8
  %avail_in1025 = getelementptr inbounds %struct.bz_stream, ptr %798, i32 0, i32 1
  %799 = load i32, ptr %avail_in1025, align 8
  %cmp1026 = icmp eq i32 %799, 0
  br i1 %cmp1026, label %if.then1028, label %if.end1029

if.then1028:                                      ; preds = %if.end1023
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1029:                                       ; preds = %if.end1023
  %800 = load ptr, ptr %s.addr, align 8
  %bsBuff1030 = getelementptr inbounds %struct.DState, ptr %800, i32 0, i32 7
  %801 = load i32, ptr %bsBuff1030, align 8
  %shl1031 = shl i32 %801, 8
  %802 = load ptr, ptr %s.addr, align 8
  %strm1032 = getelementptr inbounds %struct.DState, ptr %802, i32 0, i32 0
  %803 = load ptr, ptr %strm1032, align 8
  %next_in1033 = getelementptr inbounds %struct.bz_stream, ptr %803, i32 0, i32 0
  %804 = load ptr, ptr %next_in1033, align 8
  %805 = load i8, ptr %804, align 1
  %conv1034 = zext i8 %805 to i32
  %or1035 = or i32 %shl1031, %conv1034
  %806 = load ptr, ptr %s.addr, align 8
  %bsBuff1036 = getelementptr inbounds %struct.DState, ptr %806, i32 0, i32 7
  store i32 %or1035, ptr %bsBuff1036, align 8
  %807 = load ptr, ptr %s.addr, align 8
  %bsLive1037 = getelementptr inbounds %struct.DState, ptr %807, i32 0, i32 8
  %808 = load i32, ptr %bsLive1037, align 4
  %add1038 = add nsw i32 %808, 8
  store i32 %add1038, ptr %bsLive1037, align 4
  %809 = load ptr, ptr %s.addr, align 8
  %strm1039 = getelementptr inbounds %struct.DState, ptr %809, i32 0, i32 0
  %810 = load ptr, ptr %strm1039, align 8
  %next_in1040 = getelementptr inbounds %struct.bz_stream, ptr %810, i32 0, i32 0
  %811 = load ptr, ptr %next_in1040, align 8
  %incdec.ptr1041 = getelementptr inbounds i8, ptr %811, i32 1
  store ptr %incdec.ptr1041, ptr %next_in1040, align 8
  %812 = load ptr, ptr %s.addr, align 8
  %strm1042 = getelementptr inbounds %struct.DState, ptr %812, i32 0, i32 0
  %813 = load ptr, ptr %strm1042, align 8
  %avail_in1043 = getelementptr inbounds %struct.bz_stream, ptr %813, i32 0, i32 1
  %814 = load i32, ptr %avail_in1043, align 8
  %dec1044 = add i32 %814, -1
  store i32 %dec1044, ptr %avail_in1043, align 8
  %815 = load ptr, ptr %s.addr, align 8
  %strm1045 = getelementptr inbounds %struct.DState, ptr %815, i32 0, i32 0
  %816 = load ptr, ptr %strm1045, align 8
  %total_in_lo321046 = getelementptr inbounds %struct.bz_stream, ptr %816, i32 0, i32 2
  %817 = load i32, ptr %total_in_lo321046, align 4
  %inc1047 = add i32 %817, 1
  store i32 %inc1047, ptr %total_in_lo321046, align 4
  %818 = load ptr, ptr %s.addr, align 8
  %strm1048 = getelementptr inbounds %struct.DState, ptr %818, i32 0, i32 0
  %819 = load ptr, ptr %strm1048, align 8
  %total_in_lo321049 = getelementptr inbounds %struct.bz_stream, ptr %819, i32 0, i32 2
  %820 = load i32, ptr %total_in_lo321049, align 4
  %cmp1050 = icmp eq i32 %820, 0
  br i1 %cmp1050, label %if.then1052, label %if.end1056

if.then1052:                                      ; preds = %if.end1029
  %821 = load ptr, ptr %s.addr, align 8
  %strm1053 = getelementptr inbounds %struct.DState, ptr %821, i32 0, i32 0
  %822 = load ptr, ptr %strm1053, align 8
  %total_in_hi321054 = getelementptr inbounds %struct.bz_stream, ptr %822, i32 0, i32 3
  %823 = load i32, ptr %total_in_hi321054, align 8
  %inc1055 = add i32 %823, 1
  store i32 %inc1055, ptr %total_in_hi321054, align 8
  br label %if.end1056

if.end1056:                                       ; preds = %if.then1052, %if.end1029
  br label %while.body1009

while.end1057:                                    ; preds = %if.then1013
  %824 = load ptr, ptr %s.addr, align 8
  %origPtr1058 = getelementptr inbounds %struct.DState, ptr %824, i32 0, i32 13
  %825 = load i32, ptr %origPtr1058, align 8
  %shl1059 = shl i32 %825, 8
  %826 = load i8, ptr %uc, align 1
  %conv1060 = zext i8 %826 to i32
  %or1061 = or i32 %shl1059, %conv1060
  %827 = load ptr, ptr %s.addr, align 8
  %origPtr1062 = getelementptr inbounds %struct.DState, ptr %827, i32 0, i32 13
  store i32 %or1061, ptr %origPtr1062, align 8
  %828 = load ptr, ptr %s.addr, align 8
  %origPtr1063 = getelementptr inbounds %struct.DState, ptr %828, i32 0, i32 13
  %829 = load i32, ptr %origPtr1063, align 8
  %cmp1064 = icmp slt i32 %829, 0
  br i1 %cmp1064, label %if.then1066, label %if.end1067

if.then1066:                                      ; preds = %while.end1057
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1067:                                       ; preds = %while.end1057
  %830 = load ptr, ptr %s.addr, align 8
  %origPtr1068 = getelementptr inbounds %struct.DState, ptr %830, i32 0, i32 13
  %831 = load i32, ptr %origPtr1068, align 8
  %832 = load ptr, ptr %s.addr, align 8
  %blockSize100k1069 = getelementptr inbounds %struct.DState, ptr %832, i32 0, i32 9
  %833 = load i32, ptr %blockSize100k1069, align 8
  %mul1070 = mul nsw i32 100000, %833
  %add1071 = add nsw i32 10, %mul1070
  %cmp1072 = icmp sgt i32 %831, %add1071
  br i1 %cmp1072, label %if.then1074, label %if.end1075

if.then1074:                                      ; preds = %if.end1067
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1075:                                       ; preds = %if.end1067
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end1075
  %834 = load i32, ptr %i, align 4
  %cmp1076 = icmp slt i32 %834, 16
  br i1 %cmp1076, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb1078

sw.bb1078:                                        ; preds = %if.end, %for.body
  %835 = load ptr, ptr %s.addr, align 8
  %state1079 = getelementptr inbounds %struct.DState, ptr %835, i32 0, i32 1
  store i32 28, ptr %state1079, align 8
  br label %while.body1080

while.body1080:                                   ; preds = %sw.bb1078, %if.end1127
  %836 = load ptr, ptr %s.addr, align 8
  %bsLive1081 = getelementptr inbounds %struct.DState, ptr %836, i32 0, i32 8
  %837 = load i32, ptr %bsLive1081, align 4
  %cmp1082 = icmp sge i32 %837, 1
  br i1 %cmp1082, label %if.then1084, label %if.end1094

if.then1084:                                      ; preds = %while.body1080
  %838 = load ptr, ptr %s.addr, align 8
  %bsBuff1086 = getelementptr inbounds %struct.DState, ptr %838, i32 0, i32 7
  %839 = load i32, ptr %bsBuff1086, align 8
  %840 = load ptr, ptr %s.addr, align 8
  %bsLive1087 = getelementptr inbounds %struct.DState, ptr %840, i32 0, i32 8
  %841 = load i32, ptr %bsLive1087, align 4
  %sub1088 = sub nsw i32 %841, 1
  %shr1089 = lshr i32 %839, %sub1088
  %and1090 = and i32 %shr1089, 1
  store i32 %and1090, ptr %v1085, align 4
  %842 = load ptr, ptr %s.addr, align 8
  %bsLive1091 = getelementptr inbounds %struct.DState, ptr %842, i32 0, i32 8
  %843 = load i32, ptr %bsLive1091, align 4
  %sub1092 = sub nsw i32 %843, 1
  store i32 %sub1092, ptr %bsLive1091, align 4
  %844 = load i32, ptr %v1085, align 4
  %conv1093 = trunc i32 %844 to i8
  store i8 %conv1093, ptr %uc, align 1
  br label %while.end1128

if.end1094:                                       ; preds = %while.body1080
  %845 = load ptr, ptr %s.addr, align 8
  %strm1095 = getelementptr inbounds %struct.DState, ptr %845, i32 0, i32 0
  %846 = load ptr, ptr %strm1095, align 8
  %avail_in1096 = getelementptr inbounds %struct.bz_stream, ptr %846, i32 0, i32 1
  %847 = load i32, ptr %avail_in1096, align 8
  %cmp1097 = icmp eq i32 %847, 0
  br i1 %cmp1097, label %if.then1099, label %if.end1100

if.then1099:                                      ; preds = %if.end1094
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1100:                                       ; preds = %if.end1094
  %848 = load ptr, ptr %s.addr, align 8
  %bsBuff1101 = getelementptr inbounds %struct.DState, ptr %848, i32 0, i32 7
  %849 = load i32, ptr %bsBuff1101, align 8
  %shl1102 = shl i32 %849, 8
  %850 = load ptr, ptr %s.addr, align 8
  %strm1103 = getelementptr inbounds %struct.DState, ptr %850, i32 0, i32 0
  %851 = load ptr, ptr %strm1103, align 8
  %next_in1104 = getelementptr inbounds %struct.bz_stream, ptr %851, i32 0, i32 0
  %852 = load ptr, ptr %next_in1104, align 8
  %853 = load i8, ptr %852, align 1
  %conv1105 = zext i8 %853 to i32
  %or1106 = or i32 %shl1102, %conv1105
  %854 = load ptr, ptr %s.addr, align 8
  %bsBuff1107 = getelementptr inbounds %struct.DState, ptr %854, i32 0, i32 7
  store i32 %or1106, ptr %bsBuff1107, align 8
  %855 = load ptr, ptr %s.addr, align 8
  %bsLive1108 = getelementptr inbounds %struct.DState, ptr %855, i32 0, i32 8
  %856 = load i32, ptr %bsLive1108, align 4
  %add1109 = add nsw i32 %856, 8
  store i32 %add1109, ptr %bsLive1108, align 4
  %857 = load ptr, ptr %s.addr, align 8
  %strm1110 = getelementptr inbounds %struct.DState, ptr %857, i32 0, i32 0
  %858 = load ptr, ptr %strm1110, align 8
  %next_in1111 = getelementptr inbounds %struct.bz_stream, ptr %858, i32 0, i32 0
  %859 = load ptr, ptr %next_in1111, align 8
  %incdec.ptr1112 = getelementptr inbounds i8, ptr %859, i32 1
  store ptr %incdec.ptr1112, ptr %next_in1111, align 8
  %860 = load ptr, ptr %s.addr, align 8
  %strm1113 = getelementptr inbounds %struct.DState, ptr %860, i32 0, i32 0
  %861 = load ptr, ptr %strm1113, align 8
  %avail_in1114 = getelementptr inbounds %struct.bz_stream, ptr %861, i32 0, i32 1
  %862 = load i32, ptr %avail_in1114, align 8
  %dec1115 = add i32 %862, -1
  store i32 %dec1115, ptr %avail_in1114, align 8
  %863 = load ptr, ptr %s.addr, align 8
  %strm1116 = getelementptr inbounds %struct.DState, ptr %863, i32 0, i32 0
  %864 = load ptr, ptr %strm1116, align 8
  %total_in_lo321117 = getelementptr inbounds %struct.bz_stream, ptr %864, i32 0, i32 2
  %865 = load i32, ptr %total_in_lo321117, align 4
  %inc1118 = add i32 %865, 1
  store i32 %inc1118, ptr %total_in_lo321117, align 4
  %866 = load ptr, ptr %s.addr, align 8
  %strm1119 = getelementptr inbounds %struct.DState, ptr %866, i32 0, i32 0
  %867 = load ptr, ptr %strm1119, align 8
  %total_in_lo321120 = getelementptr inbounds %struct.bz_stream, ptr %867, i32 0, i32 2
  %868 = load i32, ptr %total_in_lo321120, align 4
  %cmp1121 = icmp eq i32 %868, 0
  br i1 %cmp1121, label %if.then1123, label %if.end1127

if.then1123:                                      ; preds = %if.end1100
  %869 = load ptr, ptr %s.addr, align 8
  %strm1124 = getelementptr inbounds %struct.DState, ptr %869, i32 0, i32 0
  %870 = load ptr, ptr %strm1124, align 8
  %total_in_hi321125 = getelementptr inbounds %struct.bz_stream, ptr %870, i32 0, i32 3
  %871 = load i32, ptr %total_in_hi321125, align 8
  %inc1126 = add i32 %871, 1
  store i32 %inc1126, ptr %total_in_hi321125, align 8
  br label %if.end1127

if.end1127:                                       ; preds = %if.then1123, %if.end1100
  br label %while.body1080

while.end1128:                                    ; preds = %if.then1084
  %872 = load i8, ptr %uc, align 1
  %conv1129 = zext i8 %872 to i32
  %cmp1130 = icmp eq i32 %conv1129, 1
  br i1 %cmp1130, label %if.then1132, label %if.else1133

if.then1132:                                      ; preds = %while.end1128
  %873 = load ptr, ptr %s.addr, align 8
  %inUse16 = getelementptr inbounds %struct.DState, ptr %873, i32 0, i32 29
  %874 = load i32, ptr %i, align 4
  %idxprom = sext i32 %874 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %inUse16, i64 0, i64 %idxprom
  store i8 1, ptr %arrayidx, align 1
  br label %if.end1137

if.else1133:                                      ; preds = %while.end1128
  %875 = load ptr, ptr %s.addr, align 8
  %inUse161134 = getelementptr inbounds %struct.DState, ptr %875, i32 0, i32 29
  %876 = load i32, ptr %i, align 4
  %idxprom1135 = sext i32 %876 to i64
  %arrayidx1136 = getelementptr inbounds [16 x i8], ptr %inUse161134, i64 0, i64 %idxprom1135
  store i8 0, ptr %arrayidx1136, align 1
  br label %if.end1137

if.end1137:                                       ; preds = %if.else1133, %if.then1132
  br label %for.inc

for.inc:                                          ; preds = %if.end1137
  %877 = load i32, ptr %i, align 4
  %inc1138 = add nsw i32 %877, 1
  store i32 %inc1138, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1139

for.cond1139:                                     ; preds = %for.inc1145, %for.end
  %878 = load i32, ptr %i, align 4
  %cmp1140 = icmp slt i32 %878, 256
  br i1 %cmp1140, label %for.body1142, label %for.end1147

for.body1142:                                     ; preds = %for.cond1139
  %879 = load ptr, ptr %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, ptr %879, i32 0, i32 28
  %880 = load i32, ptr %i, align 4
  %idxprom1143 = sext i32 %880 to i64
  %arrayidx1144 = getelementptr inbounds [256 x i8], ptr %inUse, i64 0, i64 %idxprom1143
  store i8 0, ptr %arrayidx1144, align 1
  br label %for.inc1145

for.inc1145:                                      ; preds = %for.body1142
  %881 = load i32, ptr %i, align 4
  %inc1146 = add nsw i32 %881, 1
  store i32 %inc1146, ptr %i, align 4
  br label %for.cond1139, !llvm.loop !8

for.end1147:                                      ; preds = %for.cond1139
  store i32 0, ptr %i, align 4
  br label %for.cond1148

for.cond1148:                                     ; preds = %for.inc1226, %for.end1147
  %882 = load i32, ptr %i, align 4
  %cmp1149 = icmp slt i32 %882, 16
  br i1 %cmp1149, label %for.body1151, label %for.end1228

for.body1151:                                     ; preds = %for.cond1148
  %883 = load ptr, ptr %s.addr, align 8
  %inUse161152 = getelementptr inbounds %struct.DState, ptr %883, i32 0, i32 29
  %884 = load i32, ptr %i, align 4
  %idxprom1153 = sext i32 %884 to i64
  %arrayidx1154 = getelementptr inbounds [16 x i8], ptr %inUse161152, i64 0, i64 %idxprom1153
  %885 = load i8, ptr %arrayidx1154, align 1
  %tobool1155 = icmp ne i8 %885, 0
  br i1 %tobool1155, label %if.then1156, label %if.end1225

if.then1156:                                      ; preds = %for.body1151
  store i32 0, ptr %j, align 4
  br label %for.cond1157

for.cond1157:                                     ; preds = %for.inc1222, %if.then1156
  %886 = load i32, ptr %j, align 4
  %cmp1158 = icmp slt i32 %886, 16
  br i1 %cmp1158, label %for.body1160, label %for.end1224

for.body1160:                                     ; preds = %for.cond1157
  br label %sw.bb1161

sw.bb1161:                                        ; preds = %if.end, %for.body1160
  %887 = load ptr, ptr %s.addr, align 8
  %state1162 = getelementptr inbounds %struct.DState, ptr %887, i32 0, i32 1
  store i32 29, ptr %state1162, align 8
  br label %while.body1163

while.body1163:                                   ; preds = %sw.bb1161, %if.end1210
  %888 = load ptr, ptr %s.addr, align 8
  %bsLive1164 = getelementptr inbounds %struct.DState, ptr %888, i32 0, i32 8
  %889 = load i32, ptr %bsLive1164, align 4
  %cmp1165 = icmp sge i32 %889, 1
  br i1 %cmp1165, label %if.then1167, label %if.end1177

if.then1167:                                      ; preds = %while.body1163
  %890 = load ptr, ptr %s.addr, align 8
  %bsBuff1169 = getelementptr inbounds %struct.DState, ptr %890, i32 0, i32 7
  %891 = load i32, ptr %bsBuff1169, align 8
  %892 = load ptr, ptr %s.addr, align 8
  %bsLive1170 = getelementptr inbounds %struct.DState, ptr %892, i32 0, i32 8
  %893 = load i32, ptr %bsLive1170, align 4
  %sub1171 = sub nsw i32 %893, 1
  %shr1172 = lshr i32 %891, %sub1171
  %and1173 = and i32 %shr1172, 1
  store i32 %and1173, ptr %v1168, align 4
  %894 = load ptr, ptr %s.addr, align 8
  %bsLive1174 = getelementptr inbounds %struct.DState, ptr %894, i32 0, i32 8
  %895 = load i32, ptr %bsLive1174, align 4
  %sub1175 = sub nsw i32 %895, 1
  store i32 %sub1175, ptr %bsLive1174, align 4
  %896 = load i32, ptr %v1168, align 4
  %conv1176 = trunc i32 %896 to i8
  store i8 %conv1176, ptr %uc, align 1
  br label %while.end1211

if.end1177:                                       ; preds = %while.body1163
  %897 = load ptr, ptr %s.addr, align 8
  %strm1178 = getelementptr inbounds %struct.DState, ptr %897, i32 0, i32 0
  %898 = load ptr, ptr %strm1178, align 8
  %avail_in1179 = getelementptr inbounds %struct.bz_stream, ptr %898, i32 0, i32 1
  %899 = load i32, ptr %avail_in1179, align 8
  %cmp1180 = icmp eq i32 %899, 0
  br i1 %cmp1180, label %if.then1182, label %if.end1183

if.then1182:                                      ; preds = %if.end1177
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1183:                                       ; preds = %if.end1177
  %900 = load ptr, ptr %s.addr, align 8
  %bsBuff1184 = getelementptr inbounds %struct.DState, ptr %900, i32 0, i32 7
  %901 = load i32, ptr %bsBuff1184, align 8
  %shl1185 = shl i32 %901, 8
  %902 = load ptr, ptr %s.addr, align 8
  %strm1186 = getelementptr inbounds %struct.DState, ptr %902, i32 0, i32 0
  %903 = load ptr, ptr %strm1186, align 8
  %next_in1187 = getelementptr inbounds %struct.bz_stream, ptr %903, i32 0, i32 0
  %904 = load ptr, ptr %next_in1187, align 8
  %905 = load i8, ptr %904, align 1
  %conv1188 = zext i8 %905 to i32
  %or1189 = or i32 %shl1185, %conv1188
  %906 = load ptr, ptr %s.addr, align 8
  %bsBuff1190 = getelementptr inbounds %struct.DState, ptr %906, i32 0, i32 7
  store i32 %or1189, ptr %bsBuff1190, align 8
  %907 = load ptr, ptr %s.addr, align 8
  %bsLive1191 = getelementptr inbounds %struct.DState, ptr %907, i32 0, i32 8
  %908 = load i32, ptr %bsLive1191, align 4
  %add1192 = add nsw i32 %908, 8
  store i32 %add1192, ptr %bsLive1191, align 4
  %909 = load ptr, ptr %s.addr, align 8
  %strm1193 = getelementptr inbounds %struct.DState, ptr %909, i32 0, i32 0
  %910 = load ptr, ptr %strm1193, align 8
  %next_in1194 = getelementptr inbounds %struct.bz_stream, ptr %910, i32 0, i32 0
  %911 = load ptr, ptr %next_in1194, align 8
  %incdec.ptr1195 = getelementptr inbounds i8, ptr %911, i32 1
  store ptr %incdec.ptr1195, ptr %next_in1194, align 8
  %912 = load ptr, ptr %s.addr, align 8
  %strm1196 = getelementptr inbounds %struct.DState, ptr %912, i32 0, i32 0
  %913 = load ptr, ptr %strm1196, align 8
  %avail_in1197 = getelementptr inbounds %struct.bz_stream, ptr %913, i32 0, i32 1
  %914 = load i32, ptr %avail_in1197, align 8
  %dec1198 = add i32 %914, -1
  store i32 %dec1198, ptr %avail_in1197, align 8
  %915 = load ptr, ptr %s.addr, align 8
  %strm1199 = getelementptr inbounds %struct.DState, ptr %915, i32 0, i32 0
  %916 = load ptr, ptr %strm1199, align 8
  %total_in_lo321200 = getelementptr inbounds %struct.bz_stream, ptr %916, i32 0, i32 2
  %917 = load i32, ptr %total_in_lo321200, align 4
  %inc1201 = add i32 %917, 1
  store i32 %inc1201, ptr %total_in_lo321200, align 4
  %918 = load ptr, ptr %s.addr, align 8
  %strm1202 = getelementptr inbounds %struct.DState, ptr %918, i32 0, i32 0
  %919 = load ptr, ptr %strm1202, align 8
  %total_in_lo321203 = getelementptr inbounds %struct.bz_stream, ptr %919, i32 0, i32 2
  %920 = load i32, ptr %total_in_lo321203, align 4
  %cmp1204 = icmp eq i32 %920, 0
  br i1 %cmp1204, label %if.then1206, label %if.end1210

if.then1206:                                      ; preds = %if.end1183
  %921 = load ptr, ptr %s.addr, align 8
  %strm1207 = getelementptr inbounds %struct.DState, ptr %921, i32 0, i32 0
  %922 = load ptr, ptr %strm1207, align 8
  %total_in_hi321208 = getelementptr inbounds %struct.bz_stream, ptr %922, i32 0, i32 3
  %923 = load i32, ptr %total_in_hi321208, align 8
  %inc1209 = add i32 %923, 1
  store i32 %inc1209, ptr %total_in_hi321208, align 8
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1206, %if.end1183
  br label %while.body1163

while.end1211:                                    ; preds = %if.then1167
  %924 = load i8, ptr %uc, align 1
  %conv1212 = zext i8 %924 to i32
  %cmp1213 = icmp eq i32 %conv1212, 1
  br i1 %cmp1213, label %if.then1215, label %if.end1221

if.then1215:                                      ; preds = %while.end1211
  %925 = load ptr, ptr %s.addr, align 8
  %inUse1216 = getelementptr inbounds %struct.DState, ptr %925, i32 0, i32 28
  %926 = load i32, ptr %i, align 4
  %mul1217 = mul nsw i32 %926, 16
  %927 = load i32, ptr %j, align 4
  %add1218 = add nsw i32 %mul1217, %927
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds [256 x i8], ptr %inUse1216, i64 0, i64 %idxprom1219
  store i8 1, ptr %arrayidx1220, align 1
  br label %if.end1221

if.end1221:                                       ; preds = %if.then1215, %while.end1211
  br label %for.inc1222

for.inc1222:                                      ; preds = %if.end1221
  %928 = load i32, ptr %j, align 4
  %inc1223 = add nsw i32 %928, 1
  store i32 %inc1223, ptr %j, align 4
  br label %for.cond1157, !llvm.loop !9

for.end1224:                                      ; preds = %for.cond1157
  br label %if.end1225

if.end1225:                                       ; preds = %for.end1224, %for.body1151
  br label %for.inc1226

for.inc1226:                                      ; preds = %if.end1225
  %929 = load i32, ptr %i, align 4
  %inc1227 = add nsw i32 %929, 1
  store i32 %inc1227, ptr %i, align 4
  br label %for.cond1148, !llvm.loop !10

for.end1228:                                      ; preds = %for.cond1148
  %930 = load ptr, ptr %s.addr, align 8
  call void @makeMaps_d(ptr noundef %930)
  %931 = load ptr, ptr %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, ptr %931, i32 0, i32 27
  %932 = load i32, ptr %nInUse, align 8
  %cmp1229 = icmp eq i32 %932, 0
  br i1 %cmp1229, label %if.then1231, label %if.end1232

if.then1231:                                      ; preds = %for.end1228
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1232:                                       ; preds = %for.end1228
  %933 = load ptr, ptr %s.addr, align 8
  %nInUse1233 = getelementptr inbounds %struct.DState, ptr %933, i32 0, i32 27
  %934 = load i32, ptr %nInUse1233, align 8
  %add1234 = add nsw i32 %934, 2
  store i32 %add1234, ptr %alphaSize, align 4
  br label %sw.bb1235

sw.bb1235:                                        ; preds = %if.end, %if.end1232
  %935 = load ptr, ptr %s.addr, align 8
  %state1236 = getelementptr inbounds %struct.DState, ptr %935, i32 0, i32 1
  store i32 30, ptr %state1236, align 8
  br label %while.body1237

while.body1237:                                   ; preds = %sw.bb1235, %if.end1283
  %936 = load ptr, ptr %s.addr, align 8
  %bsLive1238 = getelementptr inbounds %struct.DState, ptr %936, i32 0, i32 8
  %937 = load i32, ptr %bsLive1238, align 4
  %cmp1239 = icmp sge i32 %937, 3
  br i1 %cmp1239, label %if.then1241, label %if.end1250

if.then1241:                                      ; preds = %while.body1237
  %938 = load ptr, ptr %s.addr, align 8
  %bsBuff1243 = getelementptr inbounds %struct.DState, ptr %938, i32 0, i32 7
  %939 = load i32, ptr %bsBuff1243, align 8
  %940 = load ptr, ptr %s.addr, align 8
  %bsLive1244 = getelementptr inbounds %struct.DState, ptr %940, i32 0, i32 8
  %941 = load i32, ptr %bsLive1244, align 4
  %sub1245 = sub nsw i32 %941, 3
  %shr1246 = lshr i32 %939, %sub1245
  %and1247 = and i32 %shr1246, 7
  store i32 %and1247, ptr %v1242, align 4
  %942 = load ptr, ptr %s.addr, align 8
  %bsLive1248 = getelementptr inbounds %struct.DState, ptr %942, i32 0, i32 8
  %943 = load i32, ptr %bsLive1248, align 4
  %sub1249 = sub nsw i32 %943, 3
  store i32 %sub1249, ptr %bsLive1248, align 4
  %944 = load i32, ptr %v1242, align 4
  store i32 %944, ptr %nGroups, align 4
  br label %while.end1284

if.end1250:                                       ; preds = %while.body1237
  %945 = load ptr, ptr %s.addr, align 8
  %strm1251 = getelementptr inbounds %struct.DState, ptr %945, i32 0, i32 0
  %946 = load ptr, ptr %strm1251, align 8
  %avail_in1252 = getelementptr inbounds %struct.bz_stream, ptr %946, i32 0, i32 1
  %947 = load i32, ptr %avail_in1252, align 8
  %cmp1253 = icmp eq i32 %947, 0
  br i1 %cmp1253, label %if.then1255, label %if.end1256

if.then1255:                                      ; preds = %if.end1250
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1256:                                       ; preds = %if.end1250
  %948 = load ptr, ptr %s.addr, align 8
  %bsBuff1257 = getelementptr inbounds %struct.DState, ptr %948, i32 0, i32 7
  %949 = load i32, ptr %bsBuff1257, align 8
  %shl1258 = shl i32 %949, 8
  %950 = load ptr, ptr %s.addr, align 8
  %strm1259 = getelementptr inbounds %struct.DState, ptr %950, i32 0, i32 0
  %951 = load ptr, ptr %strm1259, align 8
  %next_in1260 = getelementptr inbounds %struct.bz_stream, ptr %951, i32 0, i32 0
  %952 = load ptr, ptr %next_in1260, align 8
  %953 = load i8, ptr %952, align 1
  %conv1261 = zext i8 %953 to i32
  %or1262 = or i32 %shl1258, %conv1261
  %954 = load ptr, ptr %s.addr, align 8
  %bsBuff1263 = getelementptr inbounds %struct.DState, ptr %954, i32 0, i32 7
  store i32 %or1262, ptr %bsBuff1263, align 8
  %955 = load ptr, ptr %s.addr, align 8
  %bsLive1264 = getelementptr inbounds %struct.DState, ptr %955, i32 0, i32 8
  %956 = load i32, ptr %bsLive1264, align 4
  %add1265 = add nsw i32 %956, 8
  store i32 %add1265, ptr %bsLive1264, align 4
  %957 = load ptr, ptr %s.addr, align 8
  %strm1266 = getelementptr inbounds %struct.DState, ptr %957, i32 0, i32 0
  %958 = load ptr, ptr %strm1266, align 8
  %next_in1267 = getelementptr inbounds %struct.bz_stream, ptr %958, i32 0, i32 0
  %959 = load ptr, ptr %next_in1267, align 8
  %incdec.ptr1268 = getelementptr inbounds i8, ptr %959, i32 1
  store ptr %incdec.ptr1268, ptr %next_in1267, align 8
  %960 = load ptr, ptr %s.addr, align 8
  %strm1269 = getelementptr inbounds %struct.DState, ptr %960, i32 0, i32 0
  %961 = load ptr, ptr %strm1269, align 8
  %avail_in1270 = getelementptr inbounds %struct.bz_stream, ptr %961, i32 0, i32 1
  %962 = load i32, ptr %avail_in1270, align 8
  %dec1271 = add i32 %962, -1
  store i32 %dec1271, ptr %avail_in1270, align 8
  %963 = load ptr, ptr %s.addr, align 8
  %strm1272 = getelementptr inbounds %struct.DState, ptr %963, i32 0, i32 0
  %964 = load ptr, ptr %strm1272, align 8
  %total_in_lo321273 = getelementptr inbounds %struct.bz_stream, ptr %964, i32 0, i32 2
  %965 = load i32, ptr %total_in_lo321273, align 4
  %inc1274 = add i32 %965, 1
  store i32 %inc1274, ptr %total_in_lo321273, align 4
  %966 = load ptr, ptr %s.addr, align 8
  %strm1275 = getelementptr inbounds %struct.DState, ptr %966, i32 0, i32 0
  %967 = load ptr, ptr %strm1275, align 8
  %total_in_lo321276 = getelementptr inbounds %struct.bz_stream, ptr %967, i32 0, i32 2
  %968 = load i32, ptr %total_in_lo321276, align 4
  %cmp1277 = icmp eq i32 %968, 0
  br i1 %cmp1277, label %if.then1279, label %if.end1283

if.then1279:                                      ; preds = %if.end1256
  %969 = load ptr, ptr %s.addr, align 8
  %strm1280 = getelementptr inbounds %struct.DState, ptr %969, i32 0, i32 0
  %970 = load ptr, ptr %strm1280, align 8
  %total_in_hi321281 = getelementptr inbounds %struct.bz_stream, ptr %970, i32 0, i32 3
  %971 = load i32, ptr %total_in_hi321281, align 8
  %inc1282 = add i32 %971, 1
  store i32 %inc1282, ptr %total_in_hi321281, align 8
  br label %if.end1283

if.end1283:                                       ; preds = %if.then1279, %if.end1256
  br label %while.body1237

while.end1284:                                    ; preds = %if.then1241
  %972 = load i32, ptr %nGroups, align 4
  %cmp1285 = icmp slt i32 %972, 2
  br i1 %cmp1285, label %if.then1290, label %lor.lhs.false1287

lor.lhs.false1287:                                ; preds = %while.end1284
  %973 = load i32, ptr %nGroups, align 4
  %cmp1288 = icmp sgt i32 %973, 6
  br i1 %cmp1288, label %if.then1290, label %if.end1291

if.then1290:                                      ; preds = %lor.lhs.false1287, %while.end1284
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1291:                                       ; preds = %lor.lhs.false1287
  br label %sw.bb1292

sw.bb1292:                                        ; preds = %if.end, %if.end1291
  %974 = load ptr, ptr %s.addr, align 8
  %state1293 = getelementptr inbounds %struct.DState, ptr %974, i32 0, i32 1
  store i32 31, ptr %state1293, align 8
  br label %while.body1294

while.body1294:                                   ; preds = %sw.bb1292, %if.end1340
  %975 = load ptr, ptr %s.addr, align 8
  %bsLive1295 = getelementptr inbounds %struct.DState, ptr %975, i32 0, i32 8
  %976 = load i32, ptr %bsLive1295, align 4
  %cmp1296 = icmp sge i32 %976, 15
  br i1 %cmp1296, label %if.then1298, label %if.end1307

if.then1298:                                      ; preds = %while.body1294
  %977 = load ptr, ptr %s.addr, align 8
  %bsBuff1300 = getelementptr inbounds %struct.DState, ptr %977, i32 0, i32 7
  %978 = load i32, ptr %bsBuff1300, align 8
  %979 = load ptr, ptr %s.addr, align 8
  %bsLive1301 = getelementptr inbounds %struct.DState, ptr %979, i32 0, i32 8
  %980 = load i32, ptr %bsLive1301, align 4
  %sub1302 = sub nsw i32 %980, 15
  %shr1303 = lshr i32 %978, %sub1302
  %and1304 = and i32 %shr1303, 32767
  store i32 %and1304, ptr %v1299, align 4
  %981 = load ptr, ptr %s.addr, align 8
  %bsLive1305 = getelementptr inbounds %struct.DState, ptr %981, i32 0, i32 8
  %982 = load i32, ptr %bsLive1305, align 4
  %sub1306 = sub nsw i32 %982, 15
  store i32 %sub1306, ptr %bsLive1305, align 4
  %983 = load i32, ptr %v1299, align 4
  store i32 %983, ptr %nSelectors, align 4
  br label %while.end1341

if.end1307:                                       ; preds = %while.body1294
  %984 = load ptr, ptr %s.addr, align 8
  %strm1308 = getelementptr inbounds %struct.DState, ptr %984, i32 0, i32 0
  %985 = load ptr, ptr %strm1308, align 8
  %avail_in1309 = getelementptr inbounds %struct.bz_stream, ptr %985, i32 0, i32 1
  %986 = load i32, ptr %avail_in1309, align 8
  %cmp1310 = icmp eq i32 %986, 0
  br i1 %cmp1310, label %if.then1312, label %if.end1313

if.then1312:                                      ; preds = %if.end1307
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1313:                                       ; preds = %if.end1307
  %987 = load ptr, ptr %s.addr, align 8
  %bsBuff1314 = getelementptr inbounds %struct.DState, ptr %987, i32 0, i32 7
  %988 = load i32, ptr %bsBuff1314, align 8
  %shl1315 = shl i32 %988, 8
  %989 = load ptr, ptr %s.addr, align 8
  %strm1316 = getelementptr inbounds %struct.DState, ptr %989, i32 0, i32 0
  %990 = load ptr, ptr %strm1316, align 8
  %next_in1317 = getelementptr inbounds %struct.bz_stream, ptr %990, i32 0, i32 0
  %991 = load ptr, ptr %next_in1317, align 8
  %992 = load i8, ptr %991, align 1
  %conv1318 = zext i8 %992 to i32
  %or1319 = or i32 %shl1315, %conv1318
  %993 = load ptr, ptr %s.addr, align 8
  %bsBuff1320 = getelementptr inbounds %struct.DState, ptr %993, i32 0, i32 7
  store i32 %or1319, ptr %bsBuff1320, align 8
  %994 = load ptr, ptr %s.addr, align 8
  %bsLive1321 = getelementptr inbounds %struct.DState, ptr %994, i32 0, i32 8
  %995 = load i32, ptr %bsLive1321, align 4
  %add1322 = add nsw i32 %995, 8
  store i32 %add1322, ptr %bsLive1321, align 4
  %996 = load ptr, ptr %s.addr, align 8
  %strm1323 = getelementptr inbounds %struct.DState, ptr %996, i32 0, i32 0
  %997 = load ptr, ptr %strm1323, align 8
  %next_in1324 = getelementptr inbounds %struct.bz_stream, ptr %997, i32 0, i32 0
  %998 = load ptr, ptr %next_in1324, align 8
  %incdec.ptr1325 = getelementptr inbounds i8, ptr %998, i32 1
  store ptr %incdec.ptr1325, ptr %next_in1324, align 8
  %999 = load ptr, ptr %s.addr, align 8
  %strm1326 = getelementptr inbounds %struct.DState, ptr %999, i32 0, i32 0
  %1000 = load ptr, ptr %strm1326, align 8
  %avail_in1327 = getelementptr inbounds %struct.bz_stream, ptr %1000, i32 0, i32 1
  %1001 = load i32, ptr %avail_in1327, align 8
  %dec1328 = add i32 %1001, -1
  store i32 %dec1328, ptr %avail_in1327, align 8
  %1002 = load ptr, ptr %s.addr, align 8
  %strm1329 = getelementptr inbounds %struct.DState, ptr %1002, i32 0, i32 0
  %1003 = load ptr, ptr %strm1329, align 8
  %total_in_lo321330 = getelementptr inbounds %struct.bz_stream, ptr %1003, i32 0, i32 2
  %1004 = load i32, ptr %total_in_lo321330, align 4
  %inc1331 = add i32 %1004, 1
  store i32 %inc1331, ptr %total_in_lo321330, align 4
  %1005 = load ptr, ptr %s.addr, align 8
  %strm1332 = getelementptr inbounds %struct.DState, ptr %1005, i32 0, i32 0
  %1006 = load ptr, ptr %strm1332, align 8
  %total_in_lo321333 = getelementptr inbounds %struct.bz_stream, ptr %1006, i32 0, i32 2
  %1007 = load i32, ptr %total_in_lo321333, align 4
  %cmp1334 = icmp eq i32 %1007, 0
  br i1 %cmp1334, label %if.then1336, label %if.end1340

if.then1336:                                      ; preds = %if.end1313
  %1008 = load ptr, ptr %s.addr, align 8
  %strm1337 = getelementptr inbounds %struct.DState, ptr %1008, i32 0, i32 0
  %1009 = load ptr, ptr %strm1337, align 8
  %total_in_hi321338 = getelementptr inbounds %struct.bz_stream, ptr %1009, i32 0, i32 3
  %1010 = load i32, ptr %total_in_hi321338, align 8
  %inc1339 = add i32 %1010, 1
  store i32 %inc1339, ptr %total_in_hi321338, align 8
  br label %if.end1340

if.end1340:                                       ; preds = %if.then1336, %if.end1313
  br label %while.body1294

while.end1341:                                    ; preds = %if.then1298
  %1011 = load i32, ptr %nSelectors, align 4
  %cmp1342 = icmp slt i32 %1011, 1
  br i1 %cmp1342, label %if.then1344, label %if.end1345

if.then1344:                                      ; preds = %while.end1341
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1345:                                       ; preds = %while.end1341
  store i32 0, ptr %i, align 4
  br label %for.cond1346

for.cond1346:                                     ; preds = %for.inc1417, %if.end1345
  %1012 = load i32, ptr %i, align 4
  %1013 = load i32, ptr %nSelectors, align 4
  %cmp1347 = icmp slt i32 %1012, %1013
  br i1 %cmp1347, label %for.body1349, label %for.end1419

for.body1349:                                     ; preds = %for.cond1346
  store i32 0, ptr %j, align 4
  br label %while.body1350

while.body1350:                                   ; preds = %for.body1349, %if.end1412
  br label %sw.bb1351

sw.bb1351:                                        ; preds = %if.end, %while.body1350
  %1014 = load ptr, ptr %s.addr, align 8
  %state1352 = getelementptr inbounds %struct.DState, ptr %1014, i32 0, i32 1
  store i32 32, ptr %state1352, align 8
  br label %while.body1354

while.body1354:                                   ; preds = %sw.bb1351, %if.end1401
  %1015 = load ptr, ptr %s.addr, align 8
  %bsLive1355 = getelementptr inbounds %struct.DState, ptr %1015, i32 0, i32 8
  %1016 = load i32, ptr %bsLive1355, align 4
  %cmp1356 = icmp sge i32 %1016, 1
  br i1 %cmp1356, label %if.then1358, label %if.end1368

if.then1358:                                      ; preds = %while.body1354
  %1017 = load ptr, ptr %s.addr, align 8
  %bsBuff1360 = getelementptr inbounds %struct.DState, ptr %1017, i32 0, i32 7
  %1018 = load i32, ptr %bsBuff1360, align 8
  %1019 = load ptr, ptr %s.addr, align 8
  %bsLive1361 = getelementptr inbounds %struct.DState, ptr %1019, i32 0, i32 8
  %1020 = load i32, ptr %bsLive1361, align 4
  %sub1362 = sub nsw i32 %1020, 1
  %shr1363 = lshr i32 %1018, %sub1362
  %and1364 = and i32 %shr1363, 1
  store i32 %and1364, ptr %v1359, align 4
  %1021 = load ptr, ptr %s.addr, align 8
  %bsLive1365 = getelementptr inbounds %struct.DState, ptr %1021, i32 0, i32 8
  %1022 = load i32, ptr %bsLive1365, align 4
  %sub1366 = sub nsw i32 %1022, 1
  store i32 %sub1366, ptr %bsLive1365, align 4
  %1023 = load i32, ptr %v1359, align 4
  %conv1367 = trunc i32 %1023 to i8
  store i8 %conv1367, ptr %uc, align 1
  br label %while.end1402

if.end1368:                                       ; preds = %while.body1354
  %1024 = load ptr, ptr %s.addr, align 8
  %strm1369 = getelementptr inbounds %struct.DState, ptr %1024, i32 0, i32 0
  %1025 = load ptr, ptr %strm1369, align 8
  %avail_in1370 = getelementptr inbounds %struct.bz_stream, ptr %1025, i32 0, i32 1
  %1026 = load i32, ptr %avail_in1370, align 8
  %cmp1371 = icmp eq i32 %1026, 0
  br i1 %cmp1371, label %if.then1373, label %if.end1374

if.then1373:                                      ; preds = %if.end1368
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1374:                                       ; preds = %if.end1368
  %1027 = load ptr, ptr %s.addr, align 8
  %bsBuff1375 = getelementptr inbounds %struct.DState, ptr %1027, i32 0, i32 7
  %1028 = load i32, ptr %bsBuff1375, align 8
  %shl1376 = shl i32 %1028, 8
  %1029 = load ptr, ptr %s.addr, align 8
  %strm1377 = getelementptr inbounds %struct.DState, ptr %1029, i32 0, i32 0
  %1030 = load ptr, ptr %strm1377, align 8
  %next_in1378 = getelementptr inbounds %struct.bz_stream, ptr %1030, i32 0, i32 0
  %1031 = load ptr, ptr %next_in1378, align 8
  %1032 = load i8, ptr %1031, align 1
  %conv1379 = zext i8 %1032 to i32
  %or1380 = or i32 %shl1376, %conv1379
  %1033 = load ptr, ptr %s.addr, align 8
  %bsBuff1381 = getelementptr inbounds %struct.DState, ptr %1033, i32 0, i32 7
  store i32 %or1380, ptr %bsBuff1381, align 8
  %1034 = load ptr, ptr %s.addr, align 8
  %bsLive1382 = getelementptr inbounds %struct.DState, ptr %1034, i32 0, i32 8
  %1035 = load i32, ptr %bsLive1382, align 4
  %add1383 = add nsw i32 %1035, 8
  store i32 %add1383, ptr %bsLive1382, align 4
  %1036 = load ptr, ptr %s.addr, align 8
  %strm1384 = getelementptr inbounds %struct.DState, ptr %1036, i32 0, i32 0
  %1037 = load ptr, ptr %strm1384, align 8
  %next_in1385 = getelementptr inbounds %struct.bz_stream, ptr %1037, i32 0, i32 0
  %1038 = load ptr, ptr %next_in1385, align 8
  %incdec.ptr1386 = getelementptr inbounds i8, ptr %1038, i32 1
  store ptr %incdec.ptr1386, ptr %next_in1385, align 8
  %1039 = load ptr, ptr %s.addr, align 8
  %strm1387 = getelementptr inbounds %struct.DState, ptr %1039, i32 0, i32 0
  %1040 = load ptr, ptr %strm1387, align 8
  %avail_in1388 = getelementptr inbounds %struct.bz_stream, ptr %1040, i32 0, i32 1
  %1041 = load i32, ptr %avail_in1388, align 8
  %dec1389 = add i32 %1041, -1
  store i32 %dec1389, ptr %avail_in1388, align 8
  %1042 = load ptr, ptr %s.addr, align 8
  %strm1390 = getelementptr inbounds %struct.DState, ptr %1042, i32 0, i32 0
  %1043 = load ptr, ptr %strm1390, align 8
  %total_in_lo321391 = getelementptr inbounds %struct.bz_stream, ptr %1043, i32 0, i32 2
  %1044 = load i32, ptr %total_in_lo321391, align 4
  %inc1392 = add i32 %1044, 1
  store i32 %inc1392, ptr %total_in_lo321391, align 4
  %1045 = load ptr, ptr %s.addr, align 8
  %strm1393 = getelementptr inbounds %struct.DState, ptr %1045, i32 0, i32 0
  %1046 = load ptr, ptr %strm1393, align 8
  %total_in_lo321394 = getelementptr inbounds %struct.bz_stream, ptr %1046, i32 0, i32 2
  %1047 = load i32, ptr %total_in_lo321394, align 4
  %cmp1395 = icmp eq i32 %1047, 0
  br i1 %cmp1395, label %if.then1397, label %if.end1401

if.then1397:                                      ; preds = %if.end1374
  %1048 = load ptr, ptr %s.addr, align 8
  %strm1398 = getelementptr inbounds %struct.DState, ptr %1048, i32 0, i32 0
  %1049 = load ptr, ptr %strm1398, align 8
  %total_in_hi321399 = getelementptr inbounds %struct.bz_stream, ptr %1049, i32 0, i32 3
  %1050 = load i32, ptr %total_in_hi321399, align 8
  %inc1400 = add i32 %1050, 1
  store i32 %inc1400, ptr %total_in_hi321399, align 8
  br label %if.end1401

if.end1401:                                       ; preds = %if.then1397, %if.end1374
  br label %while.body1354

while.end1402:                                    ; preds = %if.then1358
  %1051 = load i8, ptr %uc, align 1
  %conv1403 = zext i8 %1051 to i32
  %cmp1404 = icmp eq i32 %conv1403, 0
  br i1 %cmp1404, label %if.then1406, label %if.end1407

if.then1406:                                      ; preds = %while.end1402
  br label %while.end1413

if.end1407:                                       ; preds = %while.end1402
  %1052 = load i32, ptr %j, align 4
  %inc1408 = add nsw i32 %1052, 1
  store i32 %inc1408, ptr %j, align 4
  %1053 = load i32, ptr %j, align 4
  %1054 = load i32, ptr %nGroups, align 4
  %cmp1409 = icmp sge i32 %1053, %1054
  br i1 %cmp1409, label %if.then1411, label %if.end1412

if.then1411:                                      ; preds = %if.end1407
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1412:                                       ; preds = %if.end1407
  br label %while.body1350

while.end1413:                                    ; preds = %if.then1406
  %1055 = load i32, ptr %j, align 4
  %conv1414 = trunc i32 %1055 to i8
  %1056 = load ptr, ptr %s.addr, align 8
  %selectorMtf = getelementptr inbounds %struct.DState, ptr %1056, i32 0, i32 34
  %1057 = load i32, ptr %i, align 4
  %idxprom1415 = sext i32 %1057 to i64
  %arrayidx1416 = getelementptr inbounds [18002 x i8], ptr %selectorMtf, i64 0, i64 %idxprom1415
  store i8 %conv1414, ptr %arrayidx1416, align 1
  br label %for.inc1417

for.inc1417:                                      ; preds = %while.end1413
  %1058 = load i32, ptr %i, align 4
  %inc1418 = add nsw i32 %1058, 1
  store i32 %inc1418, ptr %i, align 4
  br label %for.cond1346, !llvm.loop !11

for.end1419:                                      ; preds = %for.cond1346
  store i8 0, ptr %v1420, align 1
  br label %for.cond1421

for.cond1421:                                     ; preds = %for.inc1428, %for.end1419
  %1059 = load i8, ptr %v1420, align 1
  %conv1422 = zext i8 %1059 to i32
  %1060 = load i32, ptr %nGroups, align 4
  %cmp1423 = icmp slt i32 %conv1422, %1060
  br i1 %cmp1423, label %for.body1425, label %for.end1430

for.body1425:                                     ; preds = %for.cond1421
  %1061 = load i8, ptr %v1420, align 1
  %1062 = load i8, ptr %v1420, align 1
  %idxprom1426 = zext i8 %1062 to i64
  %arrayidx1427 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1426
  store i8 %1061, ptr %arrayidx1427, align 1
  br label %for.inc1428

for.inc1428:                                      ; preds = %for.body1425
  %1063 = load i8, ptr %v1420, align 1
  %inc1429 = add i8 %1063, 1
  store i8 %inc1429, ptr %v1420, align 1
  br label %for.cond1421, !llvm.loop !12

for.end1430:                                      ; preds = %for.cond1421
  store i32 0, ptr %i, align 4
  br label %for.cond1431

for.cond1431:                                     ; preds = %for.inc1455, %for.end1430
  %1064 = load i32, ptr %i, align 4
  %1065 = load i32, ptr %nSelectors, align 4
  %cmp1432 = icmp slt i32 %1064, %1065
  br i1 %cmp1432, label %for.body1434, label %for.end1457

for.body1434:                                     ; preds = %for.cond1431
  %1066 = load ptr, ptr %s.addr, align 8
  %selectorMtf1435 = getelementptr inbounds %struct.DState, ptr %1066, i32 0, i32 34
  %1067 = load i32, ptr %i, align 4
  %idxprom1436 = sext i32 %1067 to i64
  %arrayidx1437 = getelementptr inbounds [18002 x i8], ptr %selectorMtf1435, i64 0, i64 %idxprom1436
  %1068 = load i8, ptr %arrayidx1437, align 1
  store i8 %1068, ptr %v1420, align 1
  %1069 = load i8, ptr %v1420, align 1
  %idxprom1438 = zext i8 %1069 to i64
  %arrayidx1439 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1438
  %1070 = load i8, ptr %arrayidx1439, align 1
  store i8 %1070, ptr %tmp, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body1443, %for.body1434
  %1071 = load i8, ptr %v1420, align 1
  %conv1440 = zext i8 %1071 to i32
  %cmp1441 = icmp sgt i32 %conv1440, 0
  br i1 %cmp1441, label %while.body1443, label %while.end1451

while.body1443:                                   ; preds = %while.cond
  %1072 = load i8, ptr %v1420, align 1
  %conv1444 = zext i8 %1072 to i32
  %sub1445 = sub nsw i32 %conv1444, 1
  %idxprom1446 = sext i32 %sub1445 to i64
  %arrayidx1447 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1446
  %1073 = load i8, ptr %arrayidx1447, align 1
  %1074 = load i8, ptr %v1420, align 1
  %idxprom1448 = zext i8 %1074 to i64
  %arrayidx1449 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1448
  store i8 %1073, ptr %arrayidx1449, align 1
  %1075 = load i8, ptr %v1420, align 1
  %dec1450 = add i8 %1075, -1
  store i8 %dec1450, ptr %v1420, align 1
  br label %while.cond, !llvm.loop !13

while.end1451:                                    ; preds = %while.cond
  %1076 = load i8, ptr %tmp, align 1
  %arrayidx1452 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 0
  store i8 %1076, ptr %arrayidx1452, align 1
  %1077 = load i8, ptr %tmp, align 1
  %1078 = load ptr, ptr %s.addr, align 8
  %selector = getelementptr inbounds %struct.DState, ptr %1078, i32 0, i32 33
  %1079 = load i32, ptr %i, align 4
  %idxprom1453 = sext i32 %1079 to i64
  %arrayidx1454 = getelementptr inbounds [18002 x i8], ptr %selector, i64 0, i64 %idxprom1453
  store i8 %1077, ptr %arrayidx1454, align 1
  br label %for.inc1455

for.inc1455:                                      ; preds = %while.end1451
  %1080 = load i32, ptr %i, align 4
  %inc1456 = add nsw i32 %1080, 1
  store i32 %inc1456, ptr %i, align 4
  br label %for.cond1431, !llvm.loop !14

for.end1457:                                      ; preds = %for.cond1431
  store i32 0, ptr %t, align 4
  br label %for.cond1458

for.cond1458:                                     ; preds = %for.inc1652, %for.end1457
  %1081 = load i32, ptr %t, align 4
  %1082 = load i32, ptr %nGroups, align 4
  %cmp1459 = icmp slt i32 %1081, %1082
  br i1 %cmp1459, label %for.body1461, label %for.end1654

for.body1461:                                     ; preds = %for.cond1458
  br label %sw.bb1462

sw.bb1462:                                        ; preds = %if.end, %for.body1461
  %1083 = load ptr, ptr %s.addr, align 8
  %state1463 = getelementptr inbounds %struct.DState, ptr %1083, i32 0, i32 1
  store i32 33, ptr %state1463, align 8
  br label %while.body1465

while.body1465:                                   ; preds = %sw.bb1462, %if.end1511
  %1084 = load ptr, ptr %s.addr, align 8
  %bsLive1466 = getelementptr inbounds %struct.DState, ptr %1084, i32 0, i32 8
  %1085 = load i32, ptr %bsLive1466, align 4
  %cmp1467 = icmp sge i32 %1085, 5
  br i1 %cmp1467, label %if.then1469, label %if.end1478

if.then1469:                                      ; preds = %while.body1465
  %1086 = load ptr, ptr %s.addr, align 8
  %bsBuff1471 = getelementptr inbounds %struct.DState, ptr %1086, i32 0, i32 7
  %1087 = load i32, ptr %bsBuff1471, align 8
  %1088 = load ptr, ptr %s.addr, align 8
  %bsLive1472 = getelementptr inbounds %struct.DState, ptr %1088, i32 0, i32 8
  %1089 = load i32, ptr %bsLive1472, align 4
  %sub1473 = sub nsw i32 %1089, 5
  %shr1474 = lshr i32 %1087, %sub1473
  %and1475 = and i32 %shr1474, 31
  store i32 %and1475, ptr %v1470, align 4
  %1090 = load ptr, ptr %s.addr, align 8
  %bsLive1476 = getelementptr inbounds %struct.DState, ptr %1090, i32 0, i32 8
  %1091 = load i32, ptr %bsLive1476, align 4
  %sub1477 = sub nsw i32 %1091, 5
  store i32 %sub1477, ptr %bsLive1476, align 4
  %1092 = load i32, ptr %v1470, align 4
  store i32 %1092, ptr %curr, align 4
  br label %while.end1512

if.end1478:                                       ; preds = %while.body1465
  %1093 = load ptr, ptr %s.addr, align 8
  %strm1479 = getelementptr inbounds %struct.DState, ptr %1093, i32 0, i32 0
  %1094 = load ptr, ptr %strm1479, align 8
  %avail_in1480 = getelementptr inbounds %struct.bz_stream, ptr %1094, i32 0, i32 1
  %1095 = load i32, ptr %avail_in1480, align 8
  %cmp1481 = icmp eq i32 %1095, 0
  br i1 %cmp1481, label %if.then1483, label %if.end1484

if.then1483:                                      ; preds = %if.end1478
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1484:                                       ; preds = %if.end1478
  %1096 = load ptr, ptr %s.addr, align 8
  %bsBuff1485 = getelementptr inbounds %struct.DState, ptr %1096, i32 0, i32 7
  %1097 = load i32, ptr %bsBuff1485, align 8
  %shl1486 = shl i32 %1097, 8
  %1098 = load ptr, ptr %s.addr, align 8
  %strm1487 = getelementptr inbounds %struct.DState, ptr %1098, i32 0, i32 0
  %1099 = load ptr, ptr %strm1487, align 8
  %next_in1488 = getelementptr inbounds %struct.bz_stream, ptr %1099, i32 0, i32 0
  %1100 = load ptr, ptr %next_in1488, align 8
  %1101 = load i8, ptr %1100, align 1
  %conv1489 = zext i8 %1101 to i32
  %or1490 = or i32 %shl1486, %conv1489
  %1102 = load ptr, ptr %s.addr, align 8
  %bsBuff1491 = getelementptr inbounds %struct.DState, ptr %1102, i32 0, i32 7
  store i32 %or1490, ptr %bsBuff1491, align 8
  %1103 = load ptr, ptr %s.addr, align 8
  %bsLive1492 = getelementptr inbounds %struct.DState, ptr %1103, i32 0, i32 8
  %1104 = load i32, ptr %bsLive1492, align 4
  %add1493 = add nsw i32 %1104, 8
  store i32 %add1493, ptr %bsLive1492, align 4
  %1105 = load ptr, ptr %s.addr, align 8
  %strm1494 = getelementptr inbounds %struct.DState, ptr %1105, i32 0, i32 0
  %1106 = load ptr, ptr %strm1494, align 8
  %next_in1495 = getelementptr inbounds %struct.bz_stream, ptr %1106, i32 0, i32 0
  %1107 = load ptr, ptr %next_in1495, align 8
  %incdec.ptr1496 = getelementptr inbounds i8, ptr %1107, i32 1
  store ptr %incdec.ptr1496, ptr %next_in1495, align 8
  %1108 = load ptr, ptr %s.addr, align 8
  %strm1497 = getelementptr inbounds %struct.DState, ptr %1108, i32 0, i32 0
  %1109 = load ptr, ptr %strm1497, align 8
  %avail_in1498 = getelementptr inbounds %struct.bz_stream, ptr %1109, i32 0, i32 1
  %1110 = load i32, ptr %avail_in1498, align 8
  %dec1499 = add i32 %1110, -1
  store i32 %dec1499, ptr %avail_in1498, align 8
  %1111 = load ptr, ptr %s.addr, align 8
  %strm1500 = getelementptr inbounds %struct.DState, ptr %1111, i32 0, i32 0
  %1112 = load ptr, ptr %strm1500, align 8
  %total_in_lo321501 = getelementptr inbounds %struct.bz_stream, ptr %1112, i32 0, i32 2
  %1113 = load i32, ptr %total_in_lo321501, align 4
  %inc1502 = add i32 %1113, 1
  store i32 %inc1502, ptr %total_in_lo321501, align 4
  %1114 = load ptr, ptr %s.addr, align 8
  %strm1503 = getelementptr inbounds %struct.DState, ptr %1114, i32 0, i32 0
  %1115 = load ptr, ptr %strm1503, align 8
  %total_in_lo321504 = getelementptr inbounds %struct.bz_stream, ptr %1115, i32 0, i32 2
  %1116 = load i32, ptr %total_in_lo321504, align 4
  %cmp1505 = icmp eq i32 %1116, 0
  br i1 %cmp1505, label %if.then1507, label %if.end1511

if.then1507:                                      ; preds = %if.end1484
  %1117 = load ptr, ptr %s.addr, align 8
  %strm1508 = getelementptr inbounds %struct.DState, ptr %1117, i32 0, i32 0
  %1118 = load ptr, ptr %strm1508, align 8
  %total_in_hi321509 = getelementptr inbounds %struct.bz_stream, ptr %1118, i32 0, i32 3
  %1119 = load i32, ptr %total_in_hi321509, align 8
  %inc1510 = add i32 %1119, 1
  store i32 %inc1510, ptr %total_in_hi321509, align 8
  br label %if.end1511

if.end1511:                                       ; preds = %if.then1507, %if.end1484
  br label %while.body1465

while.end1512:                                    ; preds = %if.then1469
  store i32 0, ptr %i, align 4
  br label %for.cond1513

for.cond1513:                                     ; preds = %for.inc1649, %while.end1512
  %1120 = load i32, ptr %i, align 4
  %1121 = load i32, ptr %alphaSize, align 4
  %cmp1514 = icmp slt i32 %1120, %1121
  br i1 %cmp1514, label %for.body1516, label %for.end1651

for.body1516:                                     ; preds = %for.cond1513
  br label %while.body1518

while.body1518:                                   ; preds = %for.body1516, %if.end1642
  %1122 = load i32, ptr %curr, align 4
  %cmp1519 = icmp slt i32 %1122, 1
  br i1 %cmp1519, label %if.then1524, label %lor.lhs.false1521

lor.lhs.false1521:                                ; preds = %while.body1518
  %1123 = load i32, ptr %curr, align 4
  %cmp1522 = icmp sgt i32 %1123, 20
  br i1 %cmp1522, label %if.then1524, label %if.end1525

if.then1524:                                      ; preds = %lor.lhs.false1521, %while.body1518
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1525:                                       ; preds = %lor.lhs.false1521
  br label %sw.bb1526

sw.bb1526:                                        ; preds = %if.end, %if.end1525
  %1124 = load ptr, ptr %s.addr, align 8
  %state1527 = getelementptr inbounds %struct.DState, ptr %1124, i32 0, i32 1
  store i32 34, ptr %state1527, align 8
  br label %while.body1529

while.body1529:                                   ; preds = %sw.bb1526, %if.end1576
  %1125 = load ptr, ptr %s.addr, align 8
  %bsLive1530 = getelementptr inbounds %struct.DState, ptr %1125, i32 0, i32 8
  %1126 = load i32, ptr %bsLive1530, align 4
  %cmp1531 = icmp sge i32 %1126, 1
  br i1 %cmp1531, label %if.then1533, label %if.end1543

if.then1533:                                      ; preds = %while.body1529
  %1127 = load ptr, ptr %s.addr, align 8
  %bsBuff1535 = getelementptr inbounds %struct.DState, ptr %1127, i32 0, i32 7
  %1128 = load i32, ptr %bsBuff1535, align 8
  %1129 = load ptr, ptr %s.addr, align 8
  %bsLive1536 = getelementptr inbounds %struct.DState, ptr %1129, i32 0, i32 8
  %1130 = load i32, ptr %bsLive1536, align 4
  %sub1537 = sub nsw i32 %1130, 1
  %shr1538 = lshr i32 %1128, %sub1537
  %and1539 = and i32 %shr1538, 1
  store i32 %and1539, ptr %v1534, align 4
  %1131 = load ptr, ptr %s.addr, align 8
  %bsLive1540 = getelementptr inbounds %struct.DState, ptr %1131, i32 0, i32 8
  %1132 = load i32, ptr %bsLive1540, align 4
  %sub1541 = sub nsw i32 %1132, 1
  store i32 %sub1541, ptr %bsLive1540, align 4
  %1133 = load i32, ptr %v1534, align 4
  %conv1542 = trunc i32 %1133 to i8
  store i8 %conv1542, ptr %uc, align 1
  br label %while.end1577

if.end1543:                                       ; preds = %while.body1529
  %1134 = load ptr, ptr %s.addr, align 8
  %strm1544 = getelementptr inbounds %struct.DState, ptr %1134, i32 0, i32 0
  %1135 = load ptr, ptr %strm1544, align 8
  %avail_in1545 = getelementptr inbounds %struct.bz_stream, ptr %1135, i32 0, i32 1
  %1136 = load i32, ptr %avail_in1545, align 8
  %cmp1546 = icmp eq i32 %1136, 0
  br i1 %cmp1546, label %if.then1548, label %if.end1549

if.then1548:                                      ; preds = %if.end1543
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1549:                                       ; preds = %if.end1543
  %1137 = load ptr, ptr %s.addr, align 8
  %bsBuff1550 = getelementptr inbounds %struct.DState, ptr %1137, i32 0, i32 7
  %1138 = load i32, ptr %bsBuff1550, align 8
  %shl1551 = shl i32 %1138, 8
  %1139 = load ptr, ptr %s.addr, align 8
  %strm1552 = getelementptr inbounds %struct.DState, ptr %1139, i32 0, i32 0
  %1140 = load ptr, ptr %strm1552, align 8
  %next_in1553 = getelementptr inbounds %struct.bz_stream, ptr %1140, i32 0, i32 0
  %1141 = load ptr, ptr %next_in1553, align 8
  %1142 = load i8, ptr %1141, align 1
  %conv1554 = zext i8 %1142 to i32
  %or1555 = or i32 %shl1551, %conv1554
  %1143 = load ptr, ptr %s.addr, align 8
  %bsBuff1556 = getelementptr inbounds %struct.DState, ptr %1143, i32 0, i32 7
  store i32 %or1555, ptr %bsBuff1556, align 8
  %1144 = load ptr, ptr %s.addr, align 8
  %bsLive1557 = getelementptr inbounds %struct.DState, ptr %1144, i32 0, i32 8
  %1145 = load i32, ptr %bsLive1557, align 4
  %add1558 = add nsw i32 %1145, 8
  store i32 %add1558, ptr %bsLive1557, align 4
  %1146 = load ptr, ptr %s.addr, align 8
  %strm1559 = getelementptr inbounds %struct.DState, ptr %1146, i32 0, i32 0
  %1147 = load ptr, ptr %strm1559, align 8
  %next_in1560 = getelementptr inbounds %struct.bz_stream, ptr %1147, i32 0, i32 0
  %1148 = load ptr, ptr %next_in1560, align 8
  %incdec.ptr1561 = getelementptr inbounds i8, ptr %1148, i32 1
  store ptr %incdec.ptr1561, ptr %next_in1560, align 8
  %1149 = load ptr, ptr %s.addr, align 8
  %strm1562 = getelementptr inbounds %struct.DState, ptr %1149, i32 0, i32 0
  %1150 = load ptr, ptr %strm1562, align 8
  %avail_in1563 = getelementptr inbounds %struct.bz_stream, ptr %1150, i32 0, i32 1
  %1151 = load i32, ptr %avail_in1563, align 8
  %dec1564 = add i32 %1151, -1
  store i32 %dec1564, ptr %avail_in1563, align 8
  %1152 = load ptr, ptr %s.addr, align 8
  %strm1565 = getelementptr inbounds %struct.DState, ptr %1152, i32 0, i32 0
  %1153 = load ptr, ptr %strm1565, align 8
  %total_in_lo321566 = getelementptr inbounds %struct.bz_stream, ptr %1153, i32 0, i32 2
  %1154 = load i32, ptr %total_in_lo321566, align 4
  %inc1567 = add i32 %1154, 1
  store i32 %inc1567, ptr %total_in_lo321566, align 4
  %1155 = load ptr, ptr %s.addr, align 8
  %strm1568 = getelementptr inbounds %struct.DState, ptr %1155, i32 0, i32 0
  %1156 = load ptr, ptr %strm1568, align 8
  %total_in_lo321569 = getelementptr inbounds %struct.bz_stream, ptr %1156, i32 0, i32 2
  %1157 = load i32, ptr %total_in_lo321569, align 4
  %cmp1570 = icmp eq i32 %1157, 0
  br i1 %cmp1570, label %if.then1572, label %if.end1576

if.then1572:                                      ; preds = %if.end1549
  %1158 = load ptr, ptr %s.addr, align 8
  %strm1573 = getelementptr inbounds %struct.DState, ptr %1158, i32 0, i32 0
  %1159 = load ptr, ptr %strm1573, align 8
  %total_in_hi321574 = getelementptr inbounds %struct.bz_stream, ptr %1159, i32 0, i32 3
  %1160 = load i32, ptr %total_in_hi321574, align 8
  %inc1575 = add i32 %1160, 1
  store i32 %inc1575, ptr %total_in_hi321574, align 8
  br label %if.end1576

if.end1576:                                       ; preds = %if.then1572, %if.end1549
  br label %while.body1529

while.end1577:                                    ; preds = %if.then1533
  %1161 = load i8, ptr %uc, align 1
  %conv1578 = zext i8 %1161 to i32
  %cmp1579 = icmp eq i32 %conv1578, 0
  br i1 %cmp1579, label %if.then1581, label %if.end1582

if.then1581:                                      ; preds = %while.end1577
  br label %while.end1643

if.end1582:                                       ; preds = %while.end1577
  br label %sw.bb1583

sw.bb1583:                                        ; preds = %if.end, %if.end1582
  %1162 = load ptr, ptr %s.addr, align 8
  %state1584 = getelementptr inbounds %struct.DState, ptr %1162, i32 0, i32 1
  store i32 35, ptr %state1584, align 8
  br label %while.body1586

while.body1586:                                   ; preds = %sw.bb1583, %if.end1633
  %1163 = load ptr, ptr %s.addr, align 8
  %bsLive1587 = getelementptr inbounds %struct.DState, ptr %1163, i32 0, i32 8
  %1164 = load i32, ptr %bsLive1587, align 4
  %cmp1588 = icmp sge i32 %1164, 1
  br i1 %cmp1588, label %if.then1590, label %if.end1600

if.then1590:                                      ; preds = %while.body1586
  %1165 = load ptr, ptr %s.addr, align 8
  %bsBuff1592 = getelementptr inbounds %struct.DState, ptr %1165, i32 0, i32 7
  %1166 = load i32, ptr %bsBuff1592, align 8
  %1167 = load ptr, ptr %s.addr, align 8
  %bsLive1593 = getelementptr inbounds %struct.DState, ptr %1167, i32 0, i32 8
  %1168 = load i32, ptr %bsLive1593, align 4
  %sub1594 = sub nsw i32 %1168, 1
  %shr1595 = lshr i32 %1166, %sub1594
  %and1596 = and i32 %shr1595, 1
  store i32 %and1596, ptr %v1591, align 4
  %1169 = load ptr, ptr %s.addr, align 8
  %bsLive1597 = getelementptr inbounds %struct.DState, ptr %1169, i32 0, i32 8
  %1170 = load i32, ptr %bsLive1597, align 4
  %sub1598 = sub nsw i32 %1170, 1
  store i32 %sub1598, ptr %bsLive1597, align 4
  %1171 = load i32, ptr %v1591, align 4
  %conv1599 = trunc i32 %1171 to i8
  store i8 %conv1599, ptr %uc, align 1
  br label %while.end1634

if.end1600:                                       ; preds = %while.body1586
  %1172 = load ptr, ptr %s.addr, align 8
  %strm1601 = getelementptr inbounds %struct.DState, ptr %1172, i32 0, i32 0
  %1173 = load ptr, ptr %strm1601, align 8
  %avail_in1602 = getelementptr inbounds %struct.bz_stream, ptr %1173, i32 0, i32 1
  %1174 = load i32, ptr %avail_in1602, align 8
  %cmp1603 = icmp eq i32 %1174, 0
  br i1 %cmp1603, label %if.then1605, label %if.end1606

if.then1605:                                      ; preds = %if.end1600
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1606:                                       ; preds = %if.end1600
  %1175 = load ptr, ptr %s.addr, align 8
  %bsBuff1607 = getelementptr inbounds %struct.DState, ptr %1175, i32 0, i32 7
  %1176 = load i32, ptr %bsBuff1607, align 8
  %shl1608 = shl i32 %1176, 8
  %1177 = load ptr, ptr %s.addr, align 8
  %strm1609 = getelementptr inbounds %struct.DState, ptr %1177, i32 0, i32 0
  %1178 = load ptr, ptr %strm1609, align 8
  %next_in1610 = getelementptr inbounds %struct.bz_stream, ptr %1178, i32 0, i32 0
  %1179 = load ptr, ptr %next_in1610, align 8
  %1180 = load i8, ptr %1179, align 1
  %conv1611 = zext i8 %1180 to i32
  %or1612 = or i32 %shl1608, %conv1611
  %1181 = load ptr, ptr %s.addr, align 8
  %bsBuff1613 = getelementptr inbounds %struct.DState, ptr %1181, i32 0, i32 7
  store i32 %or1612, ptr %bsBuff1613, align 8
  %1182 = load ptr, ptr %s.addr, align 8
  %bsLive1614 = getelementptr inbounds %struct.DState, ptr %1182, i32 0, i32 8
  %1183 = load i32, ptr %bsLive1614, align 4
  %add1615 = add nsw i32 %1183, 8
  store i32 %add1615, ptr %bsLive1614, align 4
  %1184 = load ptr, ptr %s.addr, align 8
  %strm1616 = getelementptr inbounds %struct.DState, ptr %1184, i32 0, i32 0
  %1185 = load ptr, ptr %strm1616, align 8
  %next_in1617 = getelementptr inbounds %struct.bz_stream, ptr %1185, i32 0, i32 0
  %1186 = load ptr, ptr %next_in1617, align 8
  %incdec.ptr1618 = getelementptr inbounds i8, ptr %1186, i32 1
  store ptr %incdec.ptr1618, ptr %next_in1617, align 8
  %1187 = load ptr, ptr %s.addr, align 8
  %strm1619 = getelementptr inbounds %struct.DState, ptr %1187, i32 0, i32 0
  %1188 = load ptr, ptr %strm1619, align 8
  %avail_in1620 = getelementptr inbounds %struct.bz_stream, ptr %1188, i32 0, i32 1
  %1189 = load i32, ptr %avail_in1620, align 8
  %dec1621 = add i32 %1189, -1
  store i32 %dec1621, ptr %avail_in1620, align 8
  %1190 = load ptr, ptr %s.addr, align 8
  %strm1622 = getelementptr inbounds %struct.DState, ptr %1190, i32 0, i32 0
  %1191 = load ptr, ptr %strm1622, align 8
  %total_in_lo321623 = getelementptr inbounds %struct.bz_stream, ptr %1191, i32 0, i32 2
  %1192 = load i32, ptr %total_in_lo321623, align 4
  %inc1624 = add i32 %1192, 1
  store i32 %inc1624, ptr %total_in_lo321623, align 4
  %1193 = load ptr, ptr %s.addr, align 8
  %strm1625 = getelementptr inbounds %struct.DState, ptr %1193, i32 0, i32 0
  %1194 = load ptr, ptr %strm1625, align 8
  %total_in_lo321626 = getelementptr inbounds %struct.bz_stream, ptr %1194, i32 0, i32 2
  %1195 = load i32, ptr %total_in_lo321626, align 4
  %cmp1627 = icmp eq i32 %1195, 0
  br i1 %cmp1627, label %if.then1629, label %if.end1633

if.then1629:                                      ; preds = %if.end1606
  %1196 = load ptr, ptr %s.addr, align 8
  %strm1630 = getelementptr inbounds %struct.DState, ptr %1196, i32 0, i32 0
  %1197 = load ptr, ptr %strm1630, align 8
  %total_in_hi321631 = getelementptr inbounds %struct.bz_stream, ptr %1197, i32 0, i32 3
  %1198 = load i32, ptr %total_in_hi321631, align 8
  %inc1632 = add i32 %1198, 1
  store i32 %inc1632, ptr %total_in_hi321631, align 8
  br label %if.end1633

if.end1633:                                       ; preds = %if.then1629, %if.end1606
  br label %while.body1586

while.end1634:                                    ; preds = %if.then1590
  %1199 = load i8, ptr %uc, align 1
  %conv1635 = zext i8 %1199 to i32
  %cmp1636 = icmp eq i32 %conv1635, 0
  br i1 %cmp1636, label %if.then1638, label %if.else1640

if.then1638:                                      ; preds = %while.end1634
  %1200 = load i32, ptr %curr, align 4
  %inc1639 = add nsw i32 %1200, 1
  store i32 %inc1639, ptr %curr, align 4
  br label %if.end1642

if.else1640:                                      ; preds = %while.end1634
  %1201 = load i32, ptr %curr, align 4
  %dec1641 = add nsw i32 %1201, -1
  store i32 %dec1641, ptr %curr, align 4
  br label %if.end1642

if.end1642:                                       ; preds = %if.else1640, %if.then1638
  br label %while.body1518

while.end1643:                                    ; preds = %if.then1581
  %1202 = load i32, ptr %curr, align 4
  %conv1644 = trunc i32 %1202 to i8
  %1203 = load ptr, ptr %s.addr, align 8
  %len = getelementptr inbounds %struct.DState, ptr %1203, i32 0, i32 35
  %1204 = load i32, ptr %t, align 4
  %idxprom1645 = sext i32 %1204 to i64
  %arrayidx1646 = getelementptr inbounds [6 x [258 x i8]], ptr %len, i64 0, i64 %idxprom1645
  %1205 = load i32, ptr %i, align 4
  %idxprom1647 = sext i32 %1205 to i64
  %arrayidx1648 = getelementptr inbounds [258 x i8], ptr %arrayidx1646, i64 0, i64 %idxprom1647
  store i8 %conv1644, ptr %arrayidx1648, align 1
  br label %for.inc1649

for.inc1649:                                      ; preds = %while.end1643
  %1206 = load i32, ptr %i, align 4
  %inc1650 = add nsw i32 %1206, 1
  store i32 %inc1650, ptr %i, align 4
  br label %for.cond1513, !llvm.loop !15

for.end1651:                                      ; preds = %for.cond1513
  br label %for.inc1652

for.inc1652:                                      ; preds = %for.end1651
  %1207 = load i32, ptr %t, align 4
  %inc1653 = add nsw i32 %1207, 1
  store i32 %inc1653, ptr %t, align 4
  br label %for.cond1458, !llvm.loop !16

for.end1654:                                      ; preds = %for.cond1458
  store i32 0, ptr %t, align 4
  br label %for.cond1655

for.cond1655:                                     ; preds = %for.inc1713, %for.end1654
  %1208 = load i32, ptr %t, align 4
  %1209 = load i32, ptr %nGroups, align 4
  %cmp1656 = icmp slt i32 %1208, %1209
  br i1 %cmp1656, label %for.body1658, label %for.end1715

for.body1658:                                     ; preds = %for.cond1655
  store i32 32, ptr %minLen, align 4
  store i32 0, ptr %maxLen, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond1659

for.cond1659:                                     ; preds = %for.inc1695, %for.body1658
  %1210 = load i32, ptr %i, align 4
  %1211 = load i32, ptr %alphaSize, align 4
  %cmp1660 = icmp slt i32 %1210, %1211
  br i1 %cmp1660, label %for.body1662, label %for.end1697

for.body1662:                                     ; preds = %for.cond1659
  %1212 = load ptr, ptr %s.addr, align 8
  %len1663 = getelementptr inbounds %struct.DState, ptr %1212, i32 0, i32 35
  %1213 = load i32, ptr %t, align 4
  %idxprom1664 = sext i32 %1213 to i64
  %arrayidx1665 = getelementptr inbounds [6 x [258 x i8]], ptr %len1663, i64 0, i64 %idxprom1664
  %1214 = load i32, ptr %i, align 4
  %idxprom1666 = sext i32 %1214 to i64
  %arrayidx1667 = getelementptr inbounds [258 x i8], ptr %arrayidx1665, i64 0, i64 %idxprom1666
  %1215 = load i8, ptr %arrayidx1667, align 1
  %conv1668 = zext i8 %1215 to i32
  %1216 = load i32, ptr %maxLen, align 4
  %cmp1669 = icmp sgt i32 %conv1668, %1216
  br i1 %cmp1669, label %if.then1671, label %if.end1678

if.then1671:                                      ; preds = %for.body1662
  %1217 = load ptr, ptr %s.addr, align 8
  %len1672 = getelementptr inbounds %struct.DState, ptr %1217, i32 0, i32 35
  %1218 = load i32, ptr %t, align 4
  %idxprom1673 = sext i32 %1218 to i64
  %arrayidx1674 = getelementptr inbounds [6 x [258 x i8]], ptr %len1672, i64 0, i64 %idxprom1673
  %1219 = load i32, ptr %i, align 4
  %idxprom1675 = sext i32 %1219 to i64
  %arrayidx1676 = getelementptr inbounds [258 x i8], ptr %arrayidx1674, i64 0, i64 %idxprom1675
  %1220 = load i8, ptr %arrayidx1676, align 1
  %conv1677 = zext i8 %1220 to i32
  store i32 %conv1677, ptr %maxLen, align 4
  br label %if.end1678

if.end1678:                                       ; preds = %if.then1671, %for.body1662
  %1221 = load ptr, ptr %s.addr, align 8
  %len1679 = getelementptr inbounds %struct.DState, ptr %1221, i32 0, i32 35
  %1222 = load i32, ptr %t, align 4
  %idxprom1680 = sext i32 %1222 to i64
  %arrayidx1681 = getelementptr inbounds [6 x [258 x i8]], ptr %len1679, i64 0, i64 %idxprom1680
  %1223 = load i32, ptr %i, align 4
  %idxprom1682 = sext i32 %1223 to i64
  %arrayidx1683 = getelementptr inbounds [258 x i8], ptr %arrayidx1681, i64 0, i64 %idxprom1682
  %1224 = load i8, ptr %arrayidx1683, align 1
  %conv1684 = zext i8 %1224 to i32
  %1225 = load i32, ptr %minLen, align 4
  %cmp1685 = icmp slt i32 %conv1684, %1225
  br i1 %cmp1685, label %if.then1687, label %if.end1694

if.then1687:                                      ; preds = %if.end1678
  %1226 = load ptr, ptr %s.addr, align 8
  %len1688 = getelementptr inbounds %struct.DState, ptr %1226, i32 0, i32 35
  %1227 = load i32, ptr %t, align 4
  %idxprom1689 = sext i32 %1227 to i64
  %arrayidx1690 = getelementptr inbounds [6 x [258 x i8]], ptr %len1688, i64 0, i64 %idxprom1689
  %1228 = load i32, ptr %i, align 4
  %idxprom1691 = sext i32 %1228 to i64
  %arrayidx1692 = getelementptr inbounds [258 x i8], ptr %arrayidx1690, i64 0, i64 %idxprom1691
  %1229 = load i8, ptr %arrayidx1692, align 1
  %conv1693 = zext i8 %1229 to i32
  store i32 %conv1693, ptr %minLen, align 4
  br label %if.end1694

if.end1694:                                       ; preds = %if.then1687, %if.end1678
  br label %for.inc1695

for.inc1695:                                      ; preds = %if.end1694
  %1230 = load i32, ptr %i, align 4
  %inc1696 = add nsw i32 %1230, 1
  store i32 %inc1696, ptr %i, align 4
  br label %for.cond1659, !llvm.loop !17

for.end1697:                                      ; preds = %for.cond1659
  %1231 = load ptr, ptr %s.addr, align 8
  %limit = getelementptr inbounds %struct.DState, ptr %1231, i32 0, i32 36
  %1232 = load i32, ptr %t, align 4
  %idxprom1698 = sext i32 %1232 to i64
  %arrayidx1699 = getelementptr inbounds [6 x [258 x i32]], ptr %limit, i64 0, i64 %idxprom1698
  %arrayidx1700 = getelementptr inbounds [258 x i32], ptr %arrayidx1699, i64 0, i64 0
  %1233 = load ptr, ptr %s.addr, align 8
  %base = getelementptr inbounds %struct.DState, ptr %1233, i32 0, i32 37
  %1234 = load i32, ptr %t, align 4
  %idxprom1701 = sext i32 %1234 to i64
  %arrayidx1702 = getelementptr inbounds [6 x [258 x i32]], ptr %base, i64 0, i64 %idxprom1701
  %arrayidx1703 = getelementptr inbounds [258 x i32], ptr %arrayidx1702, i64 0, i64 0
  %1235 = load ptr, ptr %s.addr, align 8
  %perm = getelementptr inbounds %struct.DState, ptr %1235, i32 0, i32 38
  %1236 = load i32, ptr %t, align 4
  %idxprom1704 = sext i32 %1236 to i64
  %arrayidx1705 = getelementptr inbounds [6 x [258 x i32]], ptr %perm, i64 0, i64 %idxprom1704
  %arrayidx1706 = getelementptr inbounds [258 x i32], ptr %arrayidx1705, i64 0, i64 0
  %1237 = load ptr, ptr %s.addr, align 8
  %len1707 = getelementptr inbounds %struct.DState, ptr %1237, i32 0, i32 35
  %1238 = load i32, ptr %t, align 4
  %idxprom1708 = sext i32 %1238 to i64
  %arrayidx1709 = getelementptr inbounds [6 x [258 x i8]], ptr %len1707, i64 0, i64 %idxprom1708
  %arrayidx1710 = getelementptr inbounds [258 x i8], ptr %arrayidx1709, i64 0, i64 0
  %1239 = load i32, ptr %minLen, align 4
  %1240 = load i32, ptr %maxLen, align 4
  %1241 = load i32, ptr %alphaSize, align 4
  call void @BZ2_hbCreateDecodeTables(ptr noundef %arrayidx1700, ptr noundef %arrayidx1703, ptr noundef %arrayidx1706, ptr noundef %arrayidx1710, i32 noundef %1239, i32 noundef %1240, i32 noundef %1241)
  %1242 = load i32, ptr %minLen, align 4
  %1243 = load ptr, ptr %s.addr, align 8
  %minLens = getelementptr inbounds %struct.DState, ptr %1243, i32 0, i32 39
  %1244 = load i32, ptr %t, align 4
  %idxprom1711 = sext i32 %1244 to i64
  %arrayidx1712 = getelementptr inbounds [6 x i32], ptr %minLens, i64 0, i64 %idxprom1711
  store i32 %1242, ptr %arrayidx1712, align 4
  br label %for.inc1713

for.inc1713:                                      ; preds = %for.end1697
  %1245 = load i32, ptr %t, align 4
  %inc1714 = add nsw i32 %1245, 1
  store i32 %inc1714, ptr %t, align 4
  br label %for.cond1655, !llvm.loop !18

for.end1715:                                      ; preds = %for.cond1655
  %1246 = load ptr, ptr %s.addr, align 8
  %nInUse1716 = getelementptr inbounds %struct.DState, ptr %1246, i32 0, i32 27
  %1247 = load i32, ptr %nInUse1716, align 8
  %add1717 = add nsw i32 %1247, 1
  store i32 %add1717, ptr %EOB, align 4
  %1248 = load ptr, ptr %s.addr, align 8
  %blockSize100k1718 = getelementptr inbounds %struct.DState, ptr %1248, i32 0, i32 9
  %1249 = load i32, ptr %blockSize100k1718, align 8
  %mul1719 = mul nsw i32 100000, %1249
  store i32 %mul1719, ptr %nblockMAX, align 4
  store i32 -1, ptr %groupNo, align 4
  store i32 0, ptr %groupPos, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond1720

for.cond1720:                                     ; preds = %for.inc1726, %for.end1715
  %1250 = load i32, ptr %i, align 4
  %cmp1721 = icmp sle i32 %1250, 255
  br i1 %cmp1721, label %for.body1723, label %for.end1728

for.body1723:                                     ; preds = %for.cond1720
  %1251 = load ptr, ptr %s.addr, align 8
  %unzftab = getelementptr inbounds %struct.DState, ptr %1251, i32 0, i32 16
  %1252 = load i32, ptr %i, align 4
  %idxprom1724 = sext i32 %1252 to i64
  %arrayidx1725 = getelementptr inbounds [256 x i32], ptr %unzftab, i64 0, i64 %idxprom1724
  store i32 0, ptr %arrayidx1725, align 4
  br label %for.inc1726

for.inc1726:                                      ; preds = %for.body1723
  %1253 = load i32, ptr %i, align 4
  %inc1727 = add nsw i32 %1253, 1
  store i32 %inc1727, ptr %i, align 4
  br label %for.cond1720, !llvm.loop !19

for.end1728:                                      ; preds = %for.cond1720
  store i32 4095, ptr %kk, align 4
  store i32 15, ptr %ii, align 4
  br label %for.cond1729

for.cond1729:                                     ; preds = %for.inc1749, %for.end1728
  %1254 = load i32, ptr %ii, align 4
  %cmp1730 = icmp sge i32 %1254, 0
  br i1 %cmp1730, label %for.body1732, label %for.end1751

for.body1732:                                     ; preds = %for.cond1729
  store i32 15, ptr %jj, align 4
  br label %for.cond1733

for.cond1733:                                     ; preds = %for.inc1743, %for.body1732
  %1255 = load i32, ptr %jj, align 4
  %cmp1734 = icmp sge i32 %1255, 0
  br i1 %cmp1734, label %for.body1736, label %for.end1745

for.body1736:                                     ; preds = %for.cond1733
  %1256 = load i32, ptr %ii, align 4
  %mul1737 = mul nsw i32 %1256, 16
  %1257 = load i32, ptr %jj, align 4
  %add1738 = add nsw i32 %mul1737, %1257
  %conv1739 = trunc i32 %add1738 to i8
  %1258 = load ptr, ptr %s.addr, align 8
  %mtfa = getelementptr inbounds %struct.DState, ptr %1258, i32 0, i32 31
  %1259 = load i32, ptr %kk, align 4
  %idxprom1740 = sext i32 %1259 to i64
  %arrayidx1741 = getelementptr inbounds [4096 x i8], ptr %mtfa, i64 0, i64 %idxprom1740
  store i8 %conv1739, ptr %arrayidx1741, align 1
  %1260 = load i32, ptr %kk, align 4
  %dec1742 = add nsw i32 %1260, -1
  store i32 %dec1742, ptr %kk, align 4
  br label %for.inc1743

for.inc1743:                                      ; preds = %for.body1736
  %1261 = load i32, ptr %jj, align 4
  %dec1744 = add nsw i32 %1261, -1
  store i32 %dec1744, ptr %jj, align 4
  br label %for.cond1733, !llvm.loop !20

for.end1745:                                      ; preds = %for.cond1733
  %1262 = load i32, ptr %kk, align 4
  %add1746 = add nsw i32 %1262, 1
  %1263 = load ptr, ptr %s.addr, align 8
  %mtfbase = getelementptr inbounds %struct.DState, ptr %1263, i32 0, i32 32
  %1264 = load i32, ptr %ii, align 4
  %idxprom1747 = sext i32 %1264 to i64
  %arrayidx1748 = getelementptr inbounds [16 x i32], ptr %mtfbase, i64 0, i64 %idxprom1747
  store i32 %add1746, ptr %arrayidx1748, align 4
  br label %for.inc1749

for.inc1749:                                      ; preds = %for.end1745
  %1265 = load i32, ptr %ii, align 4
  %dec1750 = add nsw i32 %1265, -1
  store i32 %dec1750, ptr %ii, align 4
  br label %for.cond1729, !llvm.loop !21

for.end1751:                                      ; preds = %for.cond1729
  store i32 0, ptr %nblock, align 4
  %1266 = load i32, ptr %groupPos, align 4
  %cmp1752 = icmp eq i32 %1266, 0
  br i1 %cmp1752, label %if.then1754, label %if.end1779

if.then1754:                                      ; preds = %for.end1751
  %1267 = load i32, ptr %groupNo, align 4
  %inc1755 = add nsw i32 %1267, 1
  store i32 %inc1755, ptr %groupNo, align 4
  %1268 = load i32, ptr %groupNo, align 4
  %1269 = load i32, ptr %nSelectors, align 4
  %cmp1756 = icmp sge i32 %1268, %1269
  br i1 %cmp1756, label %if.then1758, label %if.end1759

if.then1758:                                      ; preds = %if.then1754
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1759:                                       ; preds = %if.then1754
  store i32 50, ptr %groupPos, align 4
  %1270 = load ptr, ptr %s.addr, align 8
  %selector1760 = getelementptr inbounds %struct.DState, ptr %1270, i32 0, i32 33
  %1271 = load i32, ptr %groupNo, align 4
  %idxprom1761 = sext i32 %1271 to i64
  %arrayidx1762 = getelementptr inbounds [18002 x i8], ptr %selector1760, i64 0, i64 %idxprom1761
  %1272 = load i8, ptr %arrayidx1762, align 1
  %conv1763 = zext i8 %1272 to i32
  store i32 %conv1763, ptr %gSel, align 4
  %1273 = load ptr, ptr %s.addr, align 8
  %minLens1764 = getelementptr inbounds %struct.DState, ptr %1273, i32 0, i32 39
  %1274 = load i32, ptr %gSel, align 4
  %idxprom1765 = sext i32 %1274 to i64
  %arrayidx1766 = getelementptr inbounds [6 x i32], ptr %minLens1764, i64 0, i64 %idxprom1765
  %1275 = load i32, ptr %arrayidx1766, align 4
  store i32 %1275, ptr %gMinlen, align 4
  %1276 = load ptr, ptr %s.addr, align 8
  %limit1767 = getelementptr inbounds %struct.DState, ptr %1276, i32 0, i32 36
  %1277 = load i32, ptr %gSel, align 4
  %idxprom1768 = sext i32 %1277 to i64
  %arrayidx1769 = getelementptr inbounds [6 x [258 x i32]], ptr %limit1767, i64 0, i64 %idxprom1768
  %arrayidx1770 = getelementptr inbounds [258 x i32], ptr %arrayidx1769, i64 0, i64 0
  store ptr %arrayidx1770, ptr %gLimit, align 8
  %1278 = load ptr, ptr %s.addr, align 8
  %perm1771 = getelementptr inbounds %struct.DState, ptr %1278, i32 0, i32 38
  %1279 = load i32, ptr %gSel, align 4
  %idxprom1772 = sext i32 %1279 to i64
  %arrayidx1773 = getelementptr inbounds [6 x [258 x i32]], ptr %perm1771, i64 0, i64 %idxprom1772
  %arrayidx1774 = getelementptr inbounds [258 x i32], ptr %arrayidx1773, i64 0, i64 0
  store ptr %arrayidx1774, ptr %gPerm, align 8
  %1280 = load ptr, ptr %s.addr, align 8
  %base1775 = getelementptr inbounds %struct.DState, ptr %1280, i32 0, i32 37
  %1281 = load i32, ptr %gSel, align 4
  %idxprom1776 = sext i32 %1281 to i64
  %arrayidx1777 = getelementptr inbounds [6 x [258 x i32]], ptr %base1775, i64 0, i64 %idxprom1776
  %arrayidx1778 = getelementptr inbounds [258 x i32], ptr %arrayidx1777, i64 0, i64 0
  store ptr %arrayidx1778, ptr %gBase, align 8
  br label %if.end1779

if.end1779:                                       ; preds = %if.end1759, %for.end1751
  %1282 = load i32, ptr %groupPos, align 4
  %dec1780 = add nsw i32 %1282, -1
  store i32 %dec1780, ptr %groupPos, align 4
  %1283 = load i32, ptr %gMinlen, align 4
  store i32 %1283, ptr %zn, align 4
  br label %sw.bb1781

sw.bb1781:                                        ; preds = %if.end, %if.end1779
  %1284 = load ptr, ptr %s.addr, align 8
  %state1782 = getelementptr inbounds %struct.DState, ptr %1284, i32 0, i32 1
  store i32 36, ptr %state1782, align 8
  br label %while.body1784

while.body1784:                                   ; preds = %sw.bb1781, %if.end1832
  %1285 = load ptr, ptr %s.addr, align 8
  %bsLive1785 = getelementptr inbounds %struct.DState, ptr %1285, i32 0, i32 8
  %1286 = load i32, ptr %bsLive1785, align 4
  %1287 = load i32, ptr %zn, align 4
  %cmp1786 = icmp sge i32 %1286, %1287
  br i1 %cmp1786, label %if.then1788, label %if.end1799

if.then1788:                                      ; preds = %while.body1784
  %1288 = load ptr, ptr %s.addr, align 8
  %bsBuff1790 = getelementptr inbounds %struct.DState, ptr %1288, i32 0, i32 7
  %1289 = load i32, ptr %bsBuff1790, align 8
  %1290 = load ptr, ptr %s.addr, align 8
  %bsLive1791 = getelementptr inbounds %struct.DState, ptr %1290, i32 0, i32 8
  %1291 = load i32, ptr %bsLive1791, align 4
  %1292 = load i32, ptr %zn, align 4
  %sub1792 = sub nsw i32 %1291, %1292
  %shr1793 = lshr i32 %1289, %sub1792
  %1293 = load i32, ptr %zn, align 4
  %shl1794 = shl i32 1, %1293
  %sub1795 = sub nsw i32 %shl1794, 1
  %and1796 = and i32 %shr1793, %sub1795
  store i32 %and1796, ptr %v1789, align 4
  %1294 = load i32, ptr %zn, align 4
  %1295 = load ptr, ptr %s.addr, align 8
  %bsLive1797 = getelementptr inbounds %struct.DState, ptr %1295, i32 0, i32 8
  %1296 = load i32, ptr %bsLive1797, align 4
  %sub1798 = sub nsw i32 %1296, %1294
  store i32 %sub1798, ptr %bsLive1797, align 4
  %1297 = load i32, ptr %v1789, align 4
  store i32 %1297, ptr %zvec, align 4
  br label %while.end1833

if.end1799:                                       ; preds = %while.body1784
  %1298 = load ptr, ptr %s.addr, align 8
  %strm1800 = getelementptr inbounds %struct.DState, ptr %1298, i32 0, i32 0
  %1299 = load ptr, ptr %strm1800, align 8
  %avail_in1801 = getelementptr inbounds %struct.bz_stream, ptr %1299, i32 0, i32 1
  %1300 = load i32, ptr %avail_in1801, align 8
  %cmp1802 = icmp eq i32 %1300, 0
  br i1 %cmp1802, label %if.then1804, label %if.end1805

if.then1804:                                      ; preds = %if.end1799
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1805:                                       ; preds = %if.end1799
  %1301 = load ptr, ptr %s.addr, align 8
  %bsBuff1806 = getelementptr inbounds %struct.DState, ptr %1301, i32 0, i32 7
  %1302 = load i32, ptr %bsBuff1806, align 8
  %shl1807 = shl i32 %1302, 8
  %1303 = load ptr, ptr %s.addr, align 8
  %strm1808 = getelementptr inbounds %struct.DState, ptr %1303, i32 0, i32 0
  %1304 = load ptr, ptr %strm1808, align 8
  %next_in1809 = getelementptr inbounds %struct.bz_stream, ptr %1304, i32 0, i32 0
  %1305 = load ptr, ptr %next_in1809, align 8
  %1306 = load i8, ptr %1305, align 1
  %conv1810 = zext i8 %1306 to i32
  %or1811 = or i32 %shl1807, %conv1810
  %1307 = load ptr, ptr %s.addr, align 8
  %bsBuff1812 = getelementptr inbounds %struct.DState, ptr %1307, i32 0, i32 7
  store i32 %or1811, ptr %bsBuff1812, align 8
  %1308 = load ptr, ptr %s.addr, align 8
  %bsLive1813 = getelementptr inbounds %struct.DState, ptr %1308, i32 0, i32 8
  %1309 = load i32, ptr %bsLive1813, align 4
  %add1814 = add nsw i32 %1309, 8
  store i32 %add1814, ptr %bsLive1813, align 4
  %1310 = load ptr, ptr %s.addr, align 8
  %strm1815 = getelementptr inbounds %struct.DState, ptr %1310, i32 0, i32 0
  %1311 = load ptr, ptr %strm1815, align 8
  %next_in1816 = getelementptr inbounds %struct.bz_stream, ptr %1311, i32 0, i32 0
  %1312 = load ptr, ptr %next_in1816, align 8
  %incdec.ptr1817 = getelementptr inbounds i8, ptr %1312, i32 1
  store ptr %incdec.ptr1817, ptr %next_in1816, align 8
  %1313 = load ptr, ptr %s.addr, align 8
  %strm1818 = getelementptr inbounds %struct.DState, ptr %1313, i32 0, i32 0
  %1314 = load ptr, ptr %strm1818, align 8
  %avail_in1819 = getelementptr inbounds %struct.bz_stream, ptr %1314, i32 0, i32 1
  %1315 = load i32, ptr %avail_in1819, align 8
  %dec1820 = add i32 %1315, -1
  store i32 %dec1820, ptr %avail_in1819, align 8
  %1316 = load ptr, ptr %s.addr, align 8
  %strm1821 = getelementptr inbounds %struct.DState, ptr %1316, i32 0, i32 0
  %1317 = load ptr, ptr %strm1821, align 8
  %total_in_lo321822 = getelementptr inbounds %struct.bz_stream, ptr %1317, i32 0, i32 2
  %1318 = load i32, ptr %total_in_lo321822, align 4
  %inc1823 = add i32 %1318, 1
  store i32 %inc1823, ptr %total_in_lo321822, align 4
  %1319 = load ptr, ptr %s.addr, align 8
  %strm1824 = getelementptr inbounds %struct.DState, ptr %1319, i32 0, i32 0
  %1320 = load ptr, ptr %strm1824, align 8
  %total_in_lo321825 = getelementptr inbounds %struct.bz_stream, ptr %1320, i32 0, i32 2
  %1321 = load i32, ptr %total_in_lo321825, align 4
  %cmp1826 = icmp eq i32 %1321, 0
  br i1 %cmp1826, label %if.then1828, label %if.end1832

if.then1828:                                      ; preds = %if.end1805
  %1322 = load ptr, ptr %s.addr, align 8
  %strm1829 = getelementptr inbounds %struct.DState, ptr %1322, i32 0, i32 0
  %1323 = load ptr, ptr %strm1829, align 8
  %total_in_hi321830 = getelementptr inbounds %struct.bz_stream, ptr %1323, i32 0, i32 3
  %1324 = load i32, ptr %total_in_hi321830, align 8
  %inc1831 = add i32 %1324, 1
  store i32 %inc1831, ptr %total_in_hi321830, align 8
  br label %if.end1832

if.end1832:                                       ; preds = %if.then1828, %if.end1805
  br label %while.body1784

while.end1833:                                    ; preds = %if.then1788
  br label %while.body1835

while.body1835:                                   ; preds = %while.end1833, %while.end1897
  %1325 = load i32, ptr %zn, align 4
  %cmp1836 = icmp sgt i32 %1325, 20
  br i1 %cmp1836, label %if.then1838, label %if.end1839

if.then1838:                                      ; preds = %while.body1835
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1839:                                       ; preds = %while.body1835
  %1326 = load i32, ptr %zvec, align 4
  %1327 = load ptr, ptr %gLimit, align 8
  %1328 = load i32, ptr %zn, align 4
  %idxprom1840 = sext i32 %1328 to i64
  %arrayidx1841 = getelementptr inbounds i32, ptr %1327, i64 %idxprom1840
  %1329 = load i32, ptr %arrayidx1841, align 4
  %cmp1842 = icmp sle i32 %1326, %1329
  br i1 %cmp1842, label %if.then1844, label %if.end1845

if.then1844:                                      ; preds = %if.end1839
  br label %while.end1900

if.end1845:                                       ; preds = %if.end1839
  %1330 = load i32, ptr %zn, align 4
  %inc1846 = add nsw i32 %1330, 1
  store i32 %inc1846, ptr %zn, align 4
  br label %sw.bb1847

sw.bb1847:                                        ; preds = %if.end, %if.end1845
  %1331 = load ptr, ptr %s.addr, align 8
  %state1848 = getelementptr inbounds %struct.DState, ptr %1331, i32 0, i32 1
  store i32 37, ptr %state1848, align 8
  br label %while.body1850

while.body1850:                                   ; preds = %sw.bb1847, %if.end1896
  %1332 = load ptr, ptr %s.addr, align 8
  %bsLive1851 = getelementptr inbounds %struct.DState, ptr %1332, i32 0, i32 8
  %1333 = load i32, ptr %bsLive1851, align 4
  %cmp1852 = icmp sge i32 %1333, 1
  br i1 %cmp1852, label %if.then1854, label %if.end1863

if.then1854:                                      ; preds = %while.body1850
  %1334 = load ptr, ptr %s.addr, align 8
  %bsBuff1856 = getelementptr inbounds %struct.DState, ptr %1334, i32 0, i32 7
  %1335 = load i32, ptr %bsBuff1856, align 8
  %1336 = load ptr, ptr %s.addr, align 8
  %bsLive1857 = getelementptr inbounds %struct.DState, ptr %1336, i32 0, i32 8
  %1337 = load i32, ptr %bsLive1857, align 4
  %sub1858 = sub nsw i32 %1337, 1
  %shr1859 = lshr i32 %1335, %sub1858
  %and1860 = and i32 %shr1859, 1
  store i32 %and1860, ptr %v1855, align 4
  %1338 = load ptr, ptr %s.addr, align 8
  %bsLive1861 = getelementptr inbounds %struct.DState, ptr %1338, i32 0, i32 8
  %1339 = load i32, ptr %bsLive1861, align 4
  %sub1862 = sub nsw i32 %1339, 1
  store i32 %sub1862, ptr %bsLive1861, align 4
  %1340 = load i32, ptr %v1855, align 4
  store i32 %1340, ptr %zj, align 4
  br label %while.end1897

if.end1863:                                       ; preds = %while.body1850
  %1341 = load ptr, ptr %s.addr, align 8
  %strm1864 = getelementptr inbounds %struct.DState, ptr %1341, i32 0, i32 0
  %1342 = load ptr, ptr %strm1864, align 8
  %avail_in1865 = getelementptr inbounds %struct.bz_stream, ptr %1342, i32 0, i32 1
  %1343 = load i32, ptr %avail_in1865, align 8
  %cmp1866 = icmp eq i32 %1343, 0
  br i1 %cmp1866, label %if.then1868, label %if.end1869

if.then1868:                                      ; preds = %if.end1863
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1869:                                       ; preds = %if.end1863
  %1344 = load ptr, ptr %s.addr, align 8
  %bsBuff1870 = getelementptr inbounds %struct.DState, ptr %1344, i32 0, i32 7
  %1345 = load i32, ptr %bsBuff1870, align 8
  %shl1871 = shl i32 %1345, 8
  %1346 = load ptr, ptr %s.addr, align 8
  %strm1872 = getelementptr inbounds %struct.DState, ptr %1346, i32 0, i32 0
  %1347 = load ptr, ptr %strm1872, align 8
  %next_in1873 = getelementptr inbounds %struct.bz_stream, ptr %1347, i32 0, i32 0
  %1348 = load ptr, ptr %next_in1873, align 8
  %1349 = load i8, ptr %1348, align 1
  %conv1874 = zext i8 %1349 to i32
  %or1875 = or i32 %shl1871, %conv1874
  %1350 = load ptr, ptr %s.addr, align 8
  %bsBuff1876 = getelementptr inbounds %struct.DState, ptr %1350, i32 0, i32 7
  store i32 %or1875, ptr %bsBuff1876, align 8
  %1351 = load ptr, ptr %s.addr, align 8
  %bsLive1877 = getelementptr inbounds %struct.DState, ptr %1351, i32 0, i32 8
  %1352 = load i32, ptr %bsLive1877, align 4
  %add1878 = add nsw i32 %1352, 8
  store i32 %add1878, ptr %bsLive1877, align 4
  %1353 = load ptr, ptr %s.addr, align 8
  %strm1879 = getelementptr inbounds %struct.DState, ptr %1353, i32 0, i32 0
  %1354 = load ptr, ptr %strm1879, align 8
  %next_in1880 = getelementptr inbounds %struct.bz_stream, ptr %1354, i32 0, i32 0
  %1355 = load ptr, ptr %next_in1880, align 8
  %incdec.ptr1881 = getelementptr inbounds i8, ptr %1355, i32 1
  store ptr %incdec.ptr1881, ptr %next_in1880, align 8
  %1356 = load ptr, ptr %s.addr, align 8
  %strm1882 = getelementptr inbounds %struct.DState, ptr %1356, i32 0, i32 0
  %1357 = load ptr, ptr %strm1882, align 8
  %avail_in1883 = getelementptr inbounds %struct.bz_stream, ptr %1357, i32 0, i32 1
  %1358 = load i32, ptr %avail_in1883, align 8
  %dec1884 = add i32 %1358, -1
  store i32 %dec1884, ptr %avail_in1883, align 8
  %1359 = load ptr, ptr %s.addr, align 8
  %strm1885 = getelementptr inbounds %struct.DState, ptr %1359, i32 0, i32 0
  %1360 = load ptr, ptr %strm1885, align 8
  %total_in_lo321886 = getelementptr inbounds %struct.bz_stream, ptr %1360, i32 0, i32 2
  %1361 = load i32, ptr %total_in_lo321886, align 4
  %inc1887 = add i32 %1361, 1
  store i32 %inc1887, ptr %total_in_lo321886, align 4
  %1362 = load ptr, ptr %s.addr, align 8
  %strm1888 = getelementptr inbounds %struct.DState, ptr %1362, i32 0, i32 0
  %1363 = load ptr, ptr %strm1888, align 8
  %total_in_lo321889 = getelementptr inbounds %struct.bz_stream, ptr %1363, i32 0, i32 2
  %1364 = load i32, ptr %total_in_lo321889, align 4
  %cmp1890 = icmp eq i32 %1364, 0
  br i1 %cmp1890, label %if.then1892, label %if.end1896

if.then1892:                                      ; preds = %if.end1869
  %1365 = load ptr, ptr %s.addr, align 8
  %strm1893 = getelementptr inbounds %struct.DState, ptr %1365, i32 0, i32 0
  %1366 = load ptr, ptr %strm1893, align 8
  %total_in_hi321894 = getelementptr inbounds %struct.bz_stream, ptr %1366, i32 0, i32 3
  %1367 = load i32, ptr %total_in_hi321894, align 8
  %inc1895 = add i32 %1367, 1
  store i32 %inc1895, ptr %total_in_hi321894, align 8
  br label %if.end1896

if.end1896:                                       ; preds = %if.then1892, %if.end1869
  br label %while.body1850

while.end1897:                                    ; preds = %if.then1854
  %1368 = load i32, ptr %zvec, align 4
  %shl1898 = shl i32 %1368, 1
  %1369 = load i32, ptr %zj, align 4
  %or1899 = or i32 %shl1898, %1369
  store i32 %or1899, ptr %zvec, align 4
  br label %while.body1835

while.end1900:                                    ; preds = %if.then1844
  %1370 = load i32, ptr %zvec, align 4
  %1371 = load ptr, ptr %gBase, align 8
  %1372 = load i32, ptr %zn, align 4
  %idxprom1901 = sext i32 %1372 to i64
  %arrayidx1902 = getelementptr inbounds i32, ptr %1371, i64 %idxprom1901
  %1373 = load i32, ptr %arrayidx1902, align 4
  %sub1903 = sub nsw i32 %1370, %1373
  %cmp1904 = icmp slt i32 %sub1903, 0
  br i1 %cmp1904, label %if.then1912, label %lor.lhs.false1906

lor.lhs.false1906:                                ; preds = %while.end1900
  %1374 = load i32, ptr %zvec, align 4
  %1375 = load ptr, ptr %gBase, align 8
  %1376 = load i32, ptr %zn, align 4
  %idxprom1907 = sext i32 %1376 to i64
  %arrayidx1908 = getelementptr inbounds i32, ptr %1375, i64 %idxprom1907
  %1377 = load i32, ptr %arrayidx1908, align 4
  %sub1909 = sub nsw i32 %1374, %1377
  %cmp1910 = icmp sge i32 %sub1909, 258
  br i1 %cmp1910, label %if.then1912, label %if.end1913

if.then1912:                                      ; preds = %lor.lhs.false1906, %while.end1900
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1913:                                       ; preds = %lor.lhs.false1906
  %1378 = load ptr, ptr %gPerm, align 8
  %1379 = load i32, ptr %zvec, align 4
  %1380 = load ptr, ptr %gBase, align 8
  %1381 = load i32, ptr %zn, align 4
  %idxprom1914 = sext i32 %1381 to i64
  %arrayidx1915 = getelementptr inbounds i32, ptr %1380, i64 %idxprom1914
  %1382 = load i32, ptr %arrayidx1915, align 4
  %sub1916 = sub nsw i32 %1379, %1382
  %idxprom1917 = sext i32 %sub1916 to i64
  %arrayidx1918 = getelementptr inbounds i32, ptr %1378, i64 %idxprom1917
  %1383 = load i32, ptr %arrayidx1918, align 4
  store i32 %1383, ptr %nextSym, align 4
  br label %while.body1920

while.body1920:                                   ; preds = %if.end1913, %if.end2162, %if.end2522
  %1384 = load i32, ptr %nextSym, align 4
  %1385 = load i32, ptr %EOB, align 4
  %cmp1921 = icmp eq i32 %1384, %1385
  br i1 %cmp1921, label %if.then1923, label %if.end1924

if.then1923:                                      ; preds = %while.body1920
  br label %while.end2528

if.end1924:                                       ; preds = %while.body1920
  %1386 = load i32, ptr %nextSym, align 4
  %cmp1925 = icmp eq i32 %1386, 0
  br i1 %cmp1925, label %if.then1930, label %lor.lhs.false1927

lor.lhs.false1927:                                ; preds = %if.end1924
  %1387 = load i32, ptr %nextSym, align 4
  %cmp1928 = icmp eq i32 %1387, 1
  br i1 %cmp1928, label %if.then1930, label %if.else2163

if.then1930:                                      ; preds = %lor.lhs.false1927, %if.end1924
  store i32 -1, ptr %es, align 4
  store i32 1, ptr %N, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then1930
  %1388 = load i32, ptr %nextSym, align 4
  %cmp1931 = icmp eq i32 %1388, 0
  br i1 %cmp1931, label %if.then1933, label %if.else1936

if.then1933:                                      ; preds = %do.body
  %1389 = load i32, ptr %es, align 4
  %1390 = load i32, ptr %N, align 4
  %mul1934 = mul nsw i32 1, %1390
  %add1935 = add nsw i32 %1389, %mul1934
  store i32 %add1935, ptr %es, align 4
  br label %if.end1943

if.else1936:                                      ; preds = %do.body
  %1391 = load i32, ptr %nextSym, align 4
  %cmp1937 = icmp eq i32 %1391, 1
  br i1 %cmp1937, label %if.then1939, label %if.end1942

if.then1939:                                      ; preds = %if.else1936
  %1392 = load i32, ptr %es, align 4
  %1393 = load i32, ptr %N, align 4
  %mul1940 = mul nsw i32 2, %1393
  %add1941 = add nsw i32 %1392, %mul1940
  store i32 %add1941, ptr %es, align 4
  br label %if.end1942

if.end1942:                                       ; preds = %if.then1939, %if.else1936
  br label %if.end1943

if.end1943:                                       ; preds = %if.end1942, %if.then1933
  %1394 = load i32, ptr %N, align 4
  %mul1944 = mul nsw i32 %1394, 2
  store i32 %mul1944, ptr %N, align 4
  %1395 = load i32, ptr %groupPos, align 4
  %cmp1945 = icmp eq i32 %1395, 0
  br i1 %cmp1945, label %if.then1947, label %if.end1972

if.then1947:                                      ; preds = %if.end1943
  %1396 = load i32, ptr %groupNo, align 4
  %inc1948 = add nsw i32 %1396, 1
  store i32 %inc1948, ptr %groupNo, align 4
  %1397 = load i32, ptr %groupNo, align 4
  %1398 = load i32, ptr %nSelectors, align 4
  %cmp1949 = icmp sge i32 %1397, %1398
  br i1 %cmp1949, label %if.then1951, label %if.end1952

if.then1951:                                      ; preds = %if.then1947
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1952:                                       ; preds = %if.then1947
  store i32 50, ptr %groupPos, align 4
  %1399 = load ptr, ptr %s.addr, align 8
  %selector1953 = getelementptr inbounds %struct.DState, ptr %1399, i32 0, i32 33
  %1400 = load i32, ptr %groupNo, align 4
  %idxprom1954 = sext i32 %1400 to i64
  %arrayidx1955 = getelementptr inbounds [18002 x i8], ptr %selector1953, i64 0, i64 %idxprom1954
  %1401 = load i8, ptr %arrayidx1955, align 1
  %conv1956 = zext i8 %1401 to i32
  store i32 %conv1956, ptr %gSel, align 4
  %1402 = load ptr, ptr %s.addr, align 8
  %minLens1957 = getelementptr inbounds %struct.DState, ptr %1402, i32 0, i32 39
  %1403 = load i32, ptr %gSel, align 4
  %idxprom1958 = sext i32 %1403 to i64
  %arrayidx1959 = getelementptr inbounds [6 x i32], ptr %minLens1957, i64 0, i64 %idxprom1958
  %1404 = load i32, ptr %arrayidx1959, align 4
  store i32 %1404, ptr %gMinlen, align 4
  %1405 = load ptr, ptr %s.addr, align 8
  %limit1960 = getelementptr inbounds %struct.DState, ptr %1405, i32 0, i32 36
  %1406 = load i32, ptr %gSel, align 4
  %idxprom1961 = sext i32 %1406 to i64
  %arrayidx1962 = getelementptr inbounds [6 x [258 x i32]], ptr %limit1960, i64 0, i64 %idxprom1961
  %arrayidx1963 = getelementptr inbounds [258 x i32], ptr %arrayidx1962, i64 0, i64 0
  store ptr %arrayidx1963, ptr %gLimit, align 8
  %1407 = load ptr, ptr %s.addr, align 8
  %perm1964 = getelementptr inbounds %struct.DState, ptr %1407, i32 0, i32 38
  %1408 = load i32, ptr %gSel, align 4
  %idxprom1965 = sext i32 %1408 to i64
  %arrayidx1966 = getelementptr inbounds [6 x [258 x i32]], ptr %perm1964, i64 0, i64 %idxprom1965
  %arrayidx1967 = getelementptr inbounds [258 x i32], ptr %arrayidx1966, i64 0, i64 0
  store ptr %arrayidx1967, ptr %gPerm, align 8
  %1409 = load ptr, ptr %s.addr, align 8
  %base1968 = getelementptr inbounds %struct.DState, ptr %1409, i32 0, i32 37
  %1410 = load i32, ptr %gSel, align 4
  %idxprom1969 = sext i32 %1410 to i64
  %arrayidx1970 = getelementptr inbounds [6 x [258 x i32]], ptr %base1968, i64 0, i64 %idxprom1969
  %arrayidx1971 = getelementptr inbounds [258 x i32], ptr %arrayidx1970, i64 0, i64 0
  store ptr %arrayidx1971, ptr %gBase, align 8
  br label %if.end1972

if.end1972:                                       ; preds = %if.end1952, %if.end1943
  %1411 = load i32, ptr %groupPos, align 4
  %dec1973 = add nsw i32 %1411, -1
  store i32 %dec1973, ptr %groupPos, align 4
  %1412 = load i32, ptr %gMinlen, align 4
  store i32 %1412, ptr %zn, align 4
  br label %sw.bb1974

sw.bb1974:                                        ; preds = %if.end, %if.end1972
  %1413 = load ptr, ptr %s.addr, align 8
  %state1975 = getelementptr inbounds %struct.DState, ptr %1413, i32 0, i32 1
  store i32 38, ptr %state1975, align 8
  br label %while.body1977

while.body1977:                                   ; preds = %sw.bb1974, %if.end2025
  %1414 = load ptr, ptr %s.addr, align 8
  %bsLive1978 = getelementptr inbounds %struct.DState, ptr %1414, i32 0, i32 8
  %1415 = load i32, ptr %bsLive1978, align 4
  %1416 = load i32, ptr %zn, align 4
  %cmp1979 = icmp sge i32 %1415, %1416
  br i1 %cmp1979, label %if.then1981, label %if.end1992

if.then1981:                                      ; preds = %while.body1977
  %1417 = load ptr, ptr %s.addr, align 8
  %bsBuff1983 = getelementptr inbounds %struct.DState, ptr %1417, i32 0, i32 7
  %1418 = load i32, ptr %bsBuff1983, align 8
  %1419 = load ptr, ptr %s.addr, align 8
  %bsLive1984 = getelementptr inbounds %struct.DState, ptr %1419, i32 0, i32 8
  %1420 = load i32, ptr %bsLive1984, align 4
  %1421 = load i32, ptr %zn, align 4
  %sub1985 = sub nsw i32 %1420, %1421
  %shr1986 = lshr i32 %1418, %sub1985
  %1422 = load i32, ptr %zn, align 4
  %shl1987 = shl i32 1, %1422
  %sub1988 = sub nsw i32 %shl1987, 1
  %and1989 = and i32 %shr1986, %sub1988
  store i32 %and1989, ptr %v1982, align 4
  %1423 = load i32, ptr %zn, align 4
  %1424 = load ptr, ptr %s.addr, align 8
  %bsLive1990 = getelementptr inbounds %struct.DState, ptr %1424, i32 0, i32 8
  %1425 = load i32, ptr %bsLive1990, align 4
  %sub1991 = sub nsw i32 %1425, %1423
  store i32 %sub1991, ptr %bsLive1990, align 4
  %1426 = load i32, ptr %v1982, align 4
  store i32 %1426, ptr %zvec, align 4
  br label %while.end2026

if.end1992:                                       ; preds = %while.body1977
  %1427 = load ptr, ptr %s.addr, align 8
  %strm1993 = getelementptr inbounds %struct.DState, ptr %1427, i32 0, i32 0
  %1428 = load ptr, ptr %strm1993, align 8
  %avail_in1994 = getelementptr inbounds %struct.bz_stream, ptr %1428, i32 0, i32 1
  %1429 = load i32, ptr %avail_in1994, align 8
  %cmp1995 = icmp eq i32 %1429, 0
  br i1 %cmp1995, label %if.then1997, label %if.end1998

if.then1997:                                      ; preds = %if.end1992
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1998:                                       ; preds = %if.end1992
  %1430 = load ptr, ptr %s.addr, align 8
  %bsBuff1999 = getelementptr inbounds %struct.DState, ptr %1430, i32 0, i32 7
  %1431 = load i32, ptr %bsBuff1999, align 8
  %shl2000 = shl i32 %1431, 8
  %1432 = load ptr, ptr %s.addr, align 8
  %strm2001 = getelementptr inbounds %struct.DState, ptr %1432, i32 0, i32 0
  %1433 = load ptr, ptr %strm2001, align 8
  %next_in2002 = getelementptr inbounds %struct.bz_stream, ptr %1433, i32 0, i32 0
  %1434 = load ptr, ptr %next_in2002, align 8
  %1435 = load i8, ptr %1434, align 1
  %conv2003 = zext i8 %1435 to i32
  %or2004 = or i32 %shl2000, %conv2003
  %1436 = load ptr, ptr %s.addr, align 8
  %bsBuff2005 = getelementptr inbounds %struct.DState, ptr %1436, i32 0, i32 7
  store i32 %or2004, ptr %bsBuff2005, align 8
  %1437 = load ptr, ptr %s.addr, align 8
  %bsLive2006 = getelementptr inbounds %struct.DState, ptr %1437, i32 0, i32 8
  %1438 = load i32, ptr %bsLive2006, align 4
  %add2007 = add nsw i32 %1438, 8
  store i32 %add2007, ptr %bsLive2006, align 4
  %1439 = load ptr, ptr %s.addr, align 8
  %strm2008 = getelementptr inbounds %struct.DState, ptr %1439, i32 0, i32 0
  %1440 = load ptr, ptr %strm2008, align 8
  %next_in2009 = getelementptr inbounds %struct.bz_stream, ptr %1440, i32 0, i32 0
  %1441 = load ptr, ptr %next_in2009, align 8
  %incdec.ptr2010 = getelementptr inbounds i8, ptr %1441, i32 1
  store ptr %incdec.ptr2010, ptr %next_in2009, align 8
  %1442 = load ptr, ptr %s.addr, align 8
  %strm2011 = getelementptr inbounds %struct.DState, ptr %1442, i32 0, i32 0
  %1443 = load ptr, ptr %strm2011, align 8
  %avail_in2012 = getelementptr inbounds %struct.bz_stream, ptr %1443, i32 0, i32 1
  %1444 = load i32, ptr %avail_in2012, align 8
  %dec2013 = add i32 %1444, -1
  store i32 %dec2013, ptr %avail_in2012, align 8
  %1445 = load ptr, ptr %s.addr, align 8
  %strm2014 = getelementptr inbounds %struct.DState, ptr %1445, i32 0, i32 0
  %1446 = load ptr, ptr %strm2014, align 8
  %total_in_lo322015 = getelementptr inbounds %struct.bz_stream, ptr %1446, i32 0, i32 2
  %1447 = load i32, ptr %total_in_lo322015, align 4
  %inc2016 = add i32 %1447, 1
  store i32 %inc2016, ptr %total_in_lo322015, align 4
  %1448 = load ptr, ptr %s.addr, align 8
  %strm2017 = getelementptr inbounds %struct.DState, ptr %1448, i32 0, i32 0
  %1449 = load ptr, ptr %strm2017, align 8
  %total_in_lo322018 = getelementptr inbounds %struct.bz_stream, ptr %1449, i32 0, i32 2
  %1450 = load i32, ptr %total_in_lo322018, align 4
  %cmp2019 = icmp eq i32 %1450, 0
  br i1 %cmp2019, label %if.then2021, label %if.end2025

if.then2021:                                      ; preds = %if.end1998
  %1451 = load ptr, ptr %s.addr, align 8
  %strm2022 = getelementptr inbounds %struct.DState, ptr %1451, i32 0, i32 0
  %1452 = load ptr, ptr %strm2022, align 8
  %total_in_hi322023 = getelementptr inbounds %struct.bz_stream, ptr %1452, i32 0, i32 3
  %1453 = load i32, ptr %total_in_hi322023, align 8
  %inc2024 = add i32 %1453, 1
  store i32 %inc2024, ptr %total_in_hi322023, align 8
  br label %if.end2025

if.end2025:                                       ; preds = %if.then2021, %if.end1998
  br label %while.body1977

while.end2026:                                    ; preds = %if.then1981
  br label %while.body2028

while.body2028:                                   ; preds = %while.end2026, %while.end2090
  %1454 = load i32, ptr %zn, align 4
  %cmp2029 = icmp sgt i32 %1454, 20
  br i1 %cmp2029, label %if.then2031, label %if.end2032

if.then2031:                                      ; preds = %while.body2028
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2032:                                       ; preds = %while.body2028
  %1455 = load i32, ptr %zvec, align 4
  %1456 = load ptr, ptr %gLimit, align 8
  %1457 = load i32, ptr %zn, align 4
  %idxprom2033 = sext i32 %1457 to i64
  %arrayidx2034 = getelementptr inbounds i32, ptr %1456, i64 %idxprom2033
  %1458 = load i32, ptr %arrayidx2034, align 4
  %cmp2035 = icmp sle i32 %1455, %1458
  br i1 %cmp2035, label %if.then2037, label %if.end2038

if.then2037:                                      ; preds = %if.end2032
  br label %while.end2093

if.end2038:                                       ; preds = %if.end2032
  %1459 = load i32, ptr %zn, align 4
  %inc2039 = add nsw i32 %1459, 1
  store i32 %inc2039, ptr %zn, align 4
  br label %sw.bb2040

sw.bb2040:                                        ; preds = %if.end, %if.end2038
  %1460 = load ptr, ptr %s.addr, align 8
  %state2041 = getelementptr inbounds %struct.DState, ptr %1460, i32 0, i32 1
  store i32 39, ptr %state2041, align 8
  br label %while.body2043

while.body2043:                                   ; preds = %sw.bb2040, %if.end2089
  %1461 = load ptr, ptr %s.addr, align 8
  %bsLive2044 = getelementptr inbounds %struct.DState, ptr %1461, i32 0, i32 8
  %1462 = load i32, ptr %bsLive2044, align 4
  %cmp2045 = icmp sge i32 %1462, 1
  br i1 %cmp2045, label %if.then2047, label %if.end2056

if.then2047:                                      ; preds = %while.body2043
  %1463 = load ptr, ptr %s.addr, align 8
  %bsBuff2049 = getelementptr inbounds %struct.DState, ptr %1463, i32 0, i32 7
  %1464 = load i32, ptr %bsBuff2049, align 8
  %1465 = load ptr, ptr %s.addr, align 8
  %bsLive2050 = getelementptr inbounds %struct.DState, ptr %1465, i32 0, i32 8
  %1466 = load i32, ptr %bsLive2050, align 4
  %sub2051 = sub nsw i32 %1466, 1
  %shr2052 = lshr i32 %1464, %sub2051
  %and2053 = and i32 %shr2052, 1
  store i32 %and2053, ptr %v2048, align 4
  %1467 = load ptr, ptr %s.addr, align 8
  %bsLive2054 = getelementptr inbounds %struct.DState, ptr %1467, i32 0, i32 8
  %1468 = load i32, ptr %bsLive2054, align 4
  %sub2055 = sub nsw i32 %1468, 1
  store i32 %sub2055, ptr %bsLive2054, align 4
  %1469 = load i32, ptr %v2048, align 4
  store i32 %1469, ptr %zj, align 4
  br label %while.end2090

if.end2056:                                       ; preds = %while.body2043
  %1470 = load ptr, ptr %s.addr, align 8
  %strm2057 = getelementptr inbounds %struct.DState, ptr %1470, i32 0, i32 0
  %1471 = load ptr, ptr %strm2057, align 8
  %avail_in2058 = getelementptr inbounds %struct.bz_stream, ptr %1471, i32 0, i32 1
  %1472 = load i32, ptr %avail_in2058, align 8
  %cmp2059 = icmp eq i32 %1472, 0
  br i1 %cmp2059, label %if.then2061, label %if.end2062

if.then2061:                                      ; preds = %if.end2056
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2062:                                       ; preds = %if.end2056
  %1473 = load ptr, ptr %s.addr, align 8
  %bsBuff2063 = getelementptr inbounds %struct.DState, ptr %1473, i32 0, i32 7
  %1474 = load i32, ptr %bsBuff2063, align 8
  %shl2064 = shl i32 %1474, 8
  %1475 = load ptr, ptr %s.addr, align 8
  %strm2065 = getelementptr inbounds %struct.DState, ptr %1475, i32 0, i32 0
  %1476 = load ptr, ptr %strm2065, align 8
  %next_in2066 = getelementptr inbounds %struct.bz_stream, ptr %1476, i32 0, i32 0
  %1477 = load ptr, ptr %next_in2066, align 8
  %1478 = load i8, ptr %1477, align 1
  %conv2067 = zext i8 %1478 to i32
  %or2068 = or i32 %shl2064, %conv2067
  %1479 = load ptr, ptr %s.addr, align 8
  %bsBuff2069 = getelementptr inbounds %struct.DState, ptr %1479, i32 0, i32 7
  store i32 %or2068, ptr %bsBuff2069, align 8
  %1480 = load ptr, ptr %s.addr, align 8
  %bsLive2070 = getelementptr inbounds %struct.DState, ptr %1480, i32 0, i32 8
  %1481 = load i32, ptr %bsLive2070, align 4
  %add2071 = add nsw i32 %1481, 8
  store i32 %add2071, ptr %bsLive2070, align 4
  %1482 = load ptr, ptr %s.addr, align 8
  %strm2072 = getelementptr inbounds %struct.DState, ptr %1482, i32 0, i32 0
  %1483 = load ptr, ptr %strm2072, align 8
  %next_in2073 = getelementptr inbounds %struct.bz_stream, ptr %1483, i32 0, i32 0
  %1484 = load ptr, ptr %next_in2073, align 8
  %incdec.ptr2074 = getelementptr inbounds i8, ptr %1484, i32 1
  store ptr %incdec.ptr2074, ptr %next_in2073, align 8
  %1485 = load ptr, ptr %s.addr, align 8
  %strm2075 = getelementptr inbounds %struct.DState, ptr %1485, i32 0, i32 0
  %1486 = load ptr, ptr %strm2075, align 8
  %avail_in2076 = getelementptr inbounds %struct.bz_stream, ptr %1486, i32 0, i32 1
  %1487 = load i32, ptr %avail_in2076, align 8
  %dec2077 = add i32 %1487, -1
  store i32 %dec2077, ptr %avail_in2076, align 8
  %1488 = load ptr, ptr %s.addr, align 8
  %strm2078 = getelementptr inbounds %struct.DState, ptr %1488, i32 0, i32 0
  %1489 = load ptr, ptr %strm2078, align 8
  %total_in_lo322079 = getelementptr inbounds %struct.bz_stream, ptr %1489, i32 0, i32 2
  %1490 = load i32, ptr %total_in_lo322079, align 4
  %inc2080 = add i32 %1490, 1
  store i32 %inc2080, ptr %total_in_lo322079, align 4
  %1491 = load ptr, ptr %s.addr, align 8
  %strm2081 = getelementptr inbounds %struct.DState, ptr %1491, i32 0, i32 0
  %1492 = load ptr, ptr %strm2081, align 8
  %total_in_lo322082 = getelementptr inbounds %struct.bz_stream, ptr %1492, i32 0, i32 2
  %1493 = load i32, ptr %total_in_lo322082, align 4
  %cmp2083 = icmp eq i32 %1493, 0
  br i1 %cmp2083, label %if.then2085, label %if.end2089

if.then2085:                                      ; preds = %if.end2062
  %1494 = load ptr, ptr %s.addr, align 8
  %strm2086 = getelementptr inbounds %struct.DState, ptr %1494, i32 0, i32 0
  %1495 = load ptr, ptr %strm2086, align 8
  %total_in_hi322087 = getelementptr inbounds %struct.bz_stream, ptr %1495, i32 0, i32 3
  %1496 = load i32, ptr %total_in_hi322087, align 8
  %inc2088 = add i32 %1496, 1
  store i32 %inc2088, ptr %total_in_hi322087, align 8
  br label %if.end2089

if.end2089:                                       ; preds = %if.then2085, %if.end2062
  br label %while.body2043

while.end2090:                                    ; preds = %if.then2047
  %1497 = load i32, ptr %zvec, align 4
  %shl2091 = shl i32 %1497, 1
  %1498 = load i32, ptr %zj, align 4
  %or2092 = or i32 %shl2091, %1498
  store i32 %or2092, ptr %zvec, align 4
  br label %while.body2028

while.end2093:                                    ; preds = %if.then2037
  %1499 = load i32, ptr %zvec, align 4
  %1500 = load ptr, ptr %gBase, align 8
  %1501 = load i32, ptr %zn, align 4
  %idxprom2094 = sext i32 %1501 to i64
  %arrayidx2095 = getelementptr inbounds i32, ptr %1500, i64 %idxprom2094
  %1502 = load i32, ptr %arrayidx2095, align 4
  %sub2096 = sub nsw i32 %1499, %1502
  %cmp2097 = icmp slt i32 %sub2096, 0
  br i1 %cmp2097, label %if.then2105, label %lor.lhs.false2099

lor.lhs.false2099:                                ; preds = %while.end2093
  %1503 = load i32, ptr %zvec, align 4
  %1504 = load ptr, ptr %gBase, align 8
  %1505 = load i32, ptr %zn, align 4
  %idxprom2100 = sext i32 %1505 to i64
  %arrayidx2101 = getelementptr inbounds i32, ptr %1504, i64 %idxprom2100
  %1506 = load i32, ptr %arrayidx2101, align 4
  %sub2102 = sub nsw i32 %1503, %1506
  %cmp2103 = icmp sge i32 %sub2102, 258
  br i1 %cmp2103, label %if.then2105, label %if.end2106

if.then2105:                                      ; preds = %lor.lhs.false2099, %while.end2093
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2106:                                       ; preds = %lor.lhs.false2099
  %1507 = load ptr, ptr %gPerm, align 8
  %1508 = load i32, ptr %zvec, align 4
  %1509 = load ptr, ptr %gBase, align 8
  %1510 = load i32, ptr %zn, align 4
  %idxprom2107 = sext i32 %1510 to i64
  %arrayidx2108 = getelementptr inbounds i32, ptr %1509, i64 %idxprom2107
  %1511 = load i32, ptr %arrayidx2108, align 4
  %sub2109 = sub nsw i32 %1508, %1511
  %idxprom2110 = sext i32 %sub2109 to i64
  %arrayidx2111 = getelementptr inbounds i32, ptr %1507, i64 %idxprom2110
  %1512 = load i32, ptr %arrayidx2111, align 4
  store i32 %1512, ptr %nextSym, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end2106
  %1513 = load i32, ptr %nextSym, align 4
  %cmp2112 = icmp eq i32 %1513, 0
  br i1 %cmp2112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1514 = load i32, ptr %nextSym, align 4
  %cmp2114 = icmp eq i32 %1514, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %1515 = phi i1 [ true, %do.cond ], [ %cmp2114, %lor.rhs ]
  br i1 %1515, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %lor.end
  %1516 = load i32, ptr %es, align 4
  %inc2116 = add nsw i32 %1516, 1
  store i32 %inc2116, ptr %es, align 4
  %1517 = load ptr, ptr %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, ptr %1517, i32 0, i32 30
  %1518 = load ptr, ptr %s.addr, align 8
  %mtfa2117 = getelementptr inbounds %struct.DState, ptr %1518, i32 0, i32 31
  %1519 = load ptr, ptr %s.addr, align 8
  %mtfbase2118 = getelementptr inbounds %struct.DState, ptr %1519, i32 0, i32 32
  %arrayidx2119 = getelementptr inbounds [16 x i32], ptr %mtfbase2118, i64 0, i64 0
  %1520 = load i32, ptr %arrayidx2119, align 4
  %idxprom2120 = sext i32 %1520 to i64
  %arrayidx2121 = getelementptr inbounds [4096 x i8], ptr %mtfa2117, i64 0, i64 %idxprom2120
  %1521 = load i8, ptr %arrayidx2121, align 1
  %idxprom2122 = zext i8 %1521 to i64
  %arrayidx2123 = getelementptr inbounds [256 x i8], ptr %seqToUnseq, i64 0, i64 %idxprom2122
  %1522 = load i8, ptr %arrayidx2123, align 1
  store i8 %1522, ptr %uc, align 1
  %1523 = load i32, ptr %es, align 4
  %1524 = load ptr, ptr %s.addr, align 8
  %unzftab2124 = getelementptr inbounds %struct.DState, ptr %1524, i32 0, i32 16
  %1525 = load i8, ptr %uc, align 1
  %idxprom2125 = zext i8 %1525 to i64
  %arrayidx2126 = getelementptr inbounds [256 x i32], ptr %unzftab2124, i64 0, i64 %idxprom2125
  %1526 = load i32, ptr %arrayidx2126, align 4
  %add2127 = add nsw i32 %1526, %1523
  store i32 %add2127, ptr %arrayidx2126, align 4
  %1527 = load ptr, ptr %s.addr, align 8
  %smallDecompress2128 = getelementptr inbounds %struct.DState, ptr %1527, i32 0, i32 10
  %1528 = load i8, ptr %smallDecompress2128, align 4
  %tobool2129 = icmp ne i8 %1528, 0
  br i1 %tobool2129, label %if.then2130, label %if.else2146

if.then2130:                                      ; preds = %do.end
  br label %while.cond2131

while.cond2131:                                   ; preds = %if.end2138, %if.then2130
  %1529 = load i32, ptr %es, align 4
  %cmp2132 = icmp sgt i32 %1529, 0
  br i1 %cmp2132, label %while.body2134, label %while.end2145

while.body2134:                                   ; preds = %while.cond2131
  %1530 = load i32, ptr %nblock, align 4
  %1531 = load i32, ptr %nblockMAX, align 4
  %cmp2135 = icmp sge i32 %1530, %1531
  br i1 %cmp2135, label %if.then2137, label %if.end2138

if.then2137:                                      ; preds = %while.body2134
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2138:                                       ; preds = %while.body2134
  %1532 = load i8, ptr %uc, align 1
  %conv2139 = zext i8 %1532 to i16
  %1533 = load ptr, ptr %s.addr, align 8
  %ll162140 = getelementptr inbounds %struct.DState, ptr %1533, i32 0, i32 21
  %1534 = load ptr, ptr %ll162140, align 8
  %1535 = load i32, ptr %nblock, align 4
  %idxprom2141 = sext i32 %1535 to i64
  %arrayidx2142 = getelementptr inbounds i16, ptr %1534, i64 %idxprom2141
  store i16 %conv2139, ptr %arrayidx2142, align 2
  %1536 = load i32, ptr %nblock, align 4
  %inc2143 = add nsw i32 %1536, 1
  store i32 %inc2143, ptr %nblock, align 4
  %1537 = load i32, ptr %es, align 4
  %dec2144 = add nsw i32 %1537, -1
  store i32 %dec2144, ptr %es, align 4
  br label %while.cond2131, !llvm.loop !23

while.end2145:                                    ; preds = %while.cond2131
  br label %if.end2162

if.else2146:                                      ; preds = %do.end
  br label %while.cond2147

while.cond2147:                                   ; preds = %if.end2154, %if.else2146
  %1538 = load i32, ptr %es, align 4
  %cmp2148 = icmp sgt i32 %1538, 0
  br i1 %cmp2148, label %while.body2150, label %while.end2161

while.body2150:                                   ; preds = %while.cond2147
  %1539 = load i32, ptr %nblock, align 4
  %1540 = load i32, ptr %nblockMAX, align 4
  %cmp2151 = icmp sge i32 %1539, %1540
  br i1 %cmp2151, label %if.then2153, label %if.end2154

if.then2153:                                      ; preds = %while.body2150
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2154:                                       ; preds = %while.body2150
  %1541 = load i8, ptr %uc, align 1
  %conv2155 = zext i8 %1541 to i32
  %1542 = load ptr, ptr %s.addr, align 8
  %tt2156 = getelementptr inbounds %struct.DState, ptr %1542, i32 0, i32 20
  %1543 = load ptr, ptr %tt2156, align 8
  %1544 = load i32, ptr %nblock, align 4
  %idxprom2157 = sext i32 %1544 to i64
  %arrayidx2158 = getelementptr inbounds i32, ptr %1543, i64 %idxprom2157
  store i32 %conv2155, ptr %arrayidx2158, align 4
  %1545 = load i32, ptr %nblock, align 4
  %inc2159 = add nsw i32 %1545, 1
  store i32 %inc2159, ptr %nblock, align 4
  %1546 = load i32, ptr %es, align 4
  %dec2160 = add nsw i32 %1546, -1
  store i32 %dec2160, ptr %es, align 4
  br label %while.cond2147, !llvm.loop !24

while.end2161:                                    ; preds = %while.cond2147
  br label %if.end2162

if.end2162:                                       ; preds = %while.end2161, %while.end2145
  br label %while.body1920

if.else2163:                                      ; preds = %lor.lhs.false1927
  %1547 = load i32, ptr %nblock, align 4
  %1548 = load i32, ptr %nblockMAX, align 4
  %cmp2164 = icmp sge i32 %1547, %1548
  br i1 %cmp2164, label %if.then2166, label %if.end2167

if.then2166:                                      ; preds = %if.else2163
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2167:                                       ; preds = %if.else2163
  %1549 = load i32, ptr %nextSym, align 4
  %sub2171 = sub nsw i32 %1549, 1
  store i32 %sub2171, ptr %nn, align 4
  %1550 = load i32, ptr %nn, align 4
  %cmp2172 = icmp ult i32 %1550, 16
  br i1 %cmp2172, label %if.then2174, label %if.else2237

if.then2174:                                      ; preds = %if.end2167
  %1551 = load ptr, ptr %s.addr, align 8
  %mtfbase2175 = getelementptr inbounds %struct.DState, ptr %1551, i32 0, i32 32
  %arrayidx2176 = getelementptr inbounds [16 x i32], ptr %mtfbase2175, i64 0, i64 0
  %1552 = load i32, ptr %arrayidx2176, align 4
  store i32 %1552, ptr %pp, align 4
  %1553 = load ptr, ptr %s.addr, align 8
  %mtfa2177 = getelementptr inbounds %struct.DState, ptr %1553, i32 0, i32 31
  %1554 = load i32, ptr %pp, align 4
  %1555 = load i32, ptr %nn, align 4
  %add2178 = add i32 %1554, %1555
  %idxprom2179 = zext i32 %add2178 to i64
  %arrayidx2180 = getelementptr inbounds [4096 x i8], ptr %mtfa2177, i64 0, i64 %idxprom2179
  %1556 = load i8, ptr %arrayidx2180, align 1
  store i8 %1556, ptr %uc, align 1
  br label %while.cond2181

while.cond2181:                                   ; preds = %while.body2184, %if.then2174
  %1557 = load i32, ptr %nn, align 4
  %cmp2182 = icmp ugt i32 %1557, 3
  br i1 %cmp2182, label %while.body2184, label %while.end2218

while.body2184:                                   ; preds = %while.cond2181
  %1558 = load i32, ptr %pp, align 4
  %1559 = load i32, ptr %nn, align 4
  %add2185 = add i32 %1558, %1559
  store i32 %add2185, ptr %z, align 4
  %1560 = load ptr, ptr %s.addr, align 8
  %mtfa2186 = getelementptr inbounds %struct.DState, ptr %1560, i32 0, i32 31
  %1561 = load i32, ptr %z, align 4
  %sub2187 = sub nsw i32 %1561, 1
  %idxprom2188 = sext i32 %sub2187 to i64
  %arrayidx2189 = getelementptr inbounds [4096 x i8], ptr %mtfa2186, i64 0, i64 %idxprom2188
  %1562 = load i8, ptr %arrayidx2189, align 1
  %1563 = load ptr, ptr %s.addr, align 8
  %mtfa2190 = getelementptr inbounds %struct.DState, ptr %1563, i32 0, i32 31
  %1564 = load i32, ptr %z, align 4
  %idxprom2191 = sext i32 %1564 to i64
  %arrayidx2192 = getelementptr inbounds [4096 x i8], ptr %mtfa2190, i64 0, i64 %idxprom2191
  store i8 %1562, ptr %arrayidx2192, align 1
  %1565 = load ptr, ptr %s.addr, align 8
  %mtfa2193 = getelementptr inbounds %struct.DState, ptr %1565, i32 0, i32 31
  %1566 = load i32, ptr %z, align 4
  %sub2194 = sub nsw i32 %1566, 2
  %idxprom2195 = sext i32 %sub2194 to i64
  %arrayidx2196 = getelementptr inbounds [4096 x i8], ptr %mtfa2193, i64 0, i64 %idxprom2195
  %1567 = load i8, ptr %arrayidx2196, align 1
  %1568 = load ptr, ptr %s.addr, align 8
  %mtfa2197 = getelementptr inbounds %struct.DState, ptr %1568, i32 0, i32 31
  %1569 = load i32, ptr %z, align 4
  %sub2198 = sub nsw i32 %1569, 1
  %idxprom2199 = sext i32 %sub2198 to i64
  %arrayidx2200 = getelementptr inbounds [4096 x i8], ptr %mtfa2197, i64 0, i64 %idxprom2199
  store i8 %1567, ptr %arrayidx2200, align 1
  %1570 = load ptr, ptr %s.addr, align 8
  %mtfa2201 = getelementptr inbounds %struct.DState, ptr %1570, i32 0, i32 31
  %1571 = load i32, ptr %z, align 4
  %sub2202 = sub nsw i32 %1571, 3
  %idxprom2203 = sext i32 %sub2202 to i64
  %arrayidx2204 = getelementptr inbounds [4096 x i8], ptr %mtfa2201, i64 0, i64 %idxprom2203
  %1572 = load i8, ptr %arrayidx2204, align 1
  %1573 = load ptr, ptr %s.addr, align 8
  %mtfa2205 = getelementptr inbounds %struct.DState, ptr %1573, i32 0, i32 31
  %1574 = load i32, ptr %z, align 4
  %sub2206 = sub nsw i32 %1574, 2
  %idxprom2207 = sext i32 %sub2206 to i64
  %arrayidx2208 = getelementptr inbounds [4096 x i8], ptr %mtfa2205, i64 0, i64 %idxprom2207
  store i8 %1572, ptr %arrayidx2208, align 1
  %1575 = load ptr, ptr %s.addr, align 8
  %mtfa2209 = getelementptr inbounds %struct.DState, ptr %1575, i32 0, i32 31
  %1576 = load i32, ptr %z, align 4
  %sub2210 = sub nsw i32 %1576, 4
  %idxprom2211 = sext i32 %sub2210 to i64
  %arrayidx2212 = getelementptr inbounds [4096 x i8], ptr %mtfa2209, i64 0, i64 %idxprom2211
  %1577 = load i8, ptr %arrayidx2212, align 1
  %1578 = load ptr, ptr %s.addr, align 8
  %mtfa2213 = getelementptr inbounds %struct.DState, ptr %1578, i32 0, i32 31
  %1579 = load i32, ptr %z, align 4
  %sub2214 = sub nsw i32 %1579, 3
  %idxprom2215 = sext i32 %sub2214 to i64
  %arrayidx2216 = getelementptr inbounds [4096 x i8], ptr %mtfa2213, i64 0, i64 %idxprom2215
  store i8 %1577, ptr %arrayidx2216, align 1
  %1580 = load i32, ptr %nn, align 4
  %sub2217 = sub i32 %1580, 4
  store i32 %sub2217, ptr %nn, align 4
  br label %while.cond2181, !llvm.loop !25

while.end2218:                                    ; preds = %while.cond2181
  br label %while.cond2219

while.cond2219:                                   ; preds = %while.body2222, %while.end2218
  %1581 = load i32, ptr %nn, align 4
  %cmp2220 = icmp ugt i32 %1581, 0
  br i1 %cmp2220, label %while.body2222, label %while.end2233

while.body2222:                                   ; preds = %while.cond2219
  %1582 = load ptr, ptr %s.addr, align 8
  %mtfa2223 = getelementptr inbounds %struct.DState, ptr %1582, i32 0, i32 31
  %1583 = load i32, ptr %pp, align 4
  %1584 = load i32, ptr %nn, align 4
  %add2224 = add i32 %1583, %1584
  %sub2225 = sub i32 %add2224, 1
  %idxprom2226 = zext i32 %sub2225 to i64
  %arrayidx2227 = getelementptr inbounds [4096 x i8], ptr %mtfa2223, i64 0, i64 %idxprom2226
  %1585 = load i8, ptr %arrayidx2227, align 1
  %1586 = load ptr, ptr %s.addr, align 8
  %mtfa2228 = getelementptr inbounds %struct.DState, ptr %1586, i32 0, i32 31
  %1587 = load i32, ptr %pp, align 4
  %1588 = load i32, ptr %nn, align 4
  %add2229 = add i32 %1587, %1588
  %idxprom2230 = zext i32 %add2229 to i64
  %arrayidx2231 = getelementptr inbounds [4096 x i8], ptr %mtfa2228, i64 0, i64 %idxprom2230
  store i8 %1585, ptr %arrayidx2231, align 1
  %1589 = load i32, ptr %nn, align 4
  %dec2232 = add i32 %1589, -1
  store i32 %dec2232, ptr %nn, align 4
  br label %while.cond2219, !llvm.loop !26

while.end2233:                                    ; preds = %while.cond2219
  %1590 = load i8, ptr %uc, align 1
  %1591 = load ptr, ptr %s.addr, align 8
  %mtfa2234 = getelementptr inbounds %struct.DState, ptr %1591, i32 0, i32 31
  %1592 = load i32, ptr %pp, align 4
  %idxprom2235 = sext i32 %1592 to i64
  %arrayidx2236 = getelementptr inbounds [4096 x i8], ptr %mtfa2234, i64 0, i64 %idxprom2235
  store i8 %1590, ptr %arrayidx2236, align 1
  br label %if.end2333

if.else2237:                                      ; preds = %if.end2167
  %1593 = load i32, ptr %nn, align 4
  %div = udiv i32 %1593, 16
  store i32 %div, ptr %lno, align 4
  %1594 = load i32, ptr %nn, align 4
  %rem = urem i32 %1594, 16
  store i32 %rem, ptr %off, align 4
  %1595 = load ptr, ptr %s.addr, align 8
  %mtfbase2238 = getelementptr inbounds %struct.DState, ptr %1595, i32 0, i32 32
  %1596 = load i32, ptr %lno, align 4
  %idxprom2239 = sext i32 %1596 to i64
  %arrayidx2240 = getelementptr inbounds [16 x i32], ptr %mtfbase2238, i64 0, i64 %idxprom2239
  %1597 = load i32, ptr %arrayidx2240, align 4
  %1598 = load i32, ptr %off, align 4
  %add2241 = add nsw i32 %1597, %1598
  store i32 %add2241, ptr %pp, align 4
  %1599 = load ptr, ptr %s.addr, align 8
  %mtfa2242 = getelementptr inbounds %struct.DState, ptr %1599, i32 0, i32 31
  %1600 = load i32, ptr %pp, align 4
  %idxprom2243 = sext i32 %1600 to i64
  %arrayidx2244 = getelementptr inbounds [4096 x i8], ptr %mtfa2242, i64 0, i64 %idxprom2243
  %1601 = load i8, ptr %arrayidx2244, align 1
  store i8 %1601, ptr %uc, align 1
  br label %while.cond2245

while.cond2245:                                   ; preds = %while.body2251, %if.else2237
  %1602 = load i32, ptr %pp, align 4
  %1603 = load ptr, ptr %s.addr, align 8
  %mtfbase2246 = getelementptr inbounds %struct.DState, ptr %1603, i32 0, i32 32
  %1604 = load i32, ptr %lno, align 4
  %idxprom2247 = sext i32 %1604 to i64
  %arrayidx2248 = getelementptr inbounds [16 x i32], ptr %mtfbase2246, i64 0, i64 %idxprom2247
  %1605 = load i32, ptr %arrayidx2248, align 4
  %cmp2249 = icmp sgt i32 %1602, %1605
  br i1 %cmp2249, label %while.body2251, label %while.end2260

while.body2251:                                   ; preds = %while.cond2245
  %1606 = load ptr, ptr %s.addr, align 8
  %mtfa2252 = getelementptr inbounds %struct.DState, ptr %1606, i32 0, i32 31
  %1607 = load i32, ptr %pp, align 4
  %sub2253 = sub nsw i32 %1607, 1
  %idxprom2254 = sext i32 %sub2253 to i64
  %arrayidx2255 = getelementptr inbounds [4096 x i8], ptr %mtfa2252, i64 0, i64 %idxprom2254
  %1608 = load i8, ptr %arrayidx2255, align 1
  %1609 = load ptr, ptr %s.addr, align 8
  %mtfa2256 = getelementptr inbounds %struct.DState, ptr %1609, i32 0, i32 31
  %1610 = load i32, ptr %pp, align 4
  %idxprom2257 = sext i32 %1610 to i64
  %arrayidx2258 = getelementptr inbounds [4096 x i8], ptr %mtfa2256, i64 0, i64 %idxprom2257
  store i8 %1608, ptr %arrayidx2258, align 1
  %1611 = load i32, ptr %pp, align 4
  %dec2259 = add nsw i32 %1611, -1
  store i32 %dec2259, ptr %pp, align 4
  br label %while.cond2245, !llvm.loop !27

while.end2260:                                    ; preds = %while.cond2245
  %1612 = load ptr, ptr %s.addr, align 8
  %mtfbase2261 = getelementptr inbounds %struct.DState, ptr %1612, i32 0, i32 32
  %1613 = load i32, ptr %lno, align 4
  %idxprom2262 = sext i32 %1613 to i64
  %arrayidx2263 = getelementptr inbounds [16 x i32], ptr %mtfbase2261, i64 0, i64 %idxprom2262
  %1614 = load i32, ptr %arrayidx2263, align 4
  %inc2264 = add nsw i32 %1614, 1
  store i32 %inc2264, ptr %arrayidx2263, align 4
  br label %while.cond2265

while.cond2265:                                   ; preds = %while.body2268, %while.end2260
  %1615 = load i32, ptr %lno, align 4
  %cmp2266 = icmp sgt i32 %1615, 0
  br i1 %cmp2266, label %while.body2268, label %while.end2289

while.body2268:                                   ; preds = %while.cond2265
  %1616 = load ptr, ptr %s.addr, align 8
  %mtfbase2269 = getelementptr inbounds %struct.DState, ptr %1616, i32 0, i32 32
  %1617 = load i32, ptr %lno, align 4
  %idxprom2270 = sext i32 %1617 to i64
  %arrayidx2271 = getelementptr inbounds [16 x i32], ptr %mtfbase2269, i64 0, i64 %idxprom2270
  %1618 = load i32, ptr %arrayidx2271, align 4
  %dec2272 = add nsw i32 %1618, -1
  store i32 %dec2272, ptr %arrayidx2271, align 4
  %1619 = load ptr, ptr %s.addr, align 8
  %mtfa2273 = getelementptr inbounds %struct.DState, ptr %1619, i32 0, i32 31
  %1620 = load ptr, ptr %s.addr, align 8
  %mtfbase2274 = getelementptr inbounds %struct.DState, ptr %1620, i32 0, i32 32
  %1621 = load i32, ptr %lno, align 4
  %sub2275 = sub nsw i32 %1621, 1
  %idxprom2276 = sext i32 %sub2275 to i64
  %arrayidx2277 = getelementptr inbounds [16 x i32], ptr %mtfbase2274, i64 0, i64 %idxprom2276
  %1622 = load i32, ptr %arrayidx2277, align 4
  %add2278 = add nsw i32 %1622, 16
  %sub2279 = sub nsw i32 %add2278, 1
  %idxprom2280 = sext i32 %sub2279 to i64
  %arrayidx2281 = getelementptr inbounds [4096 x i8], ptr %mtfa2273, i64 0, i64 %idxprom2280
  %1623 = load i8, ptr %arrayidx2281, align 1
  %1624 = load ptr, ptr %s.addr, align 8
  %mtfa2282 = getelementptr inbounds %struct.DState, ptr %1624, i32 0, i32 31
  %1625 = load ptr, ptr %s.addr, align 8
  %mtfbase2283 = getelementptr inbounds %struct.DState, ptr %1625, i32 0, i32 32
  %1626 = load i32, ptr %lno, align 4
  %idxprom2284 = sext i32 %1626 to i64
  %arrayidx2285 = getelementptr inbounds [16 x i32], ptr %mtfbase2283, i64 0, i64 %idxprom2284
  %1627 = load i32, ptr %arrayidx2285, align 4
  %idxprom2286 = sext i32 %1627 to i64
  %arrayidx2287 = getelementptr inbounds [4096 x i8], ptr %mtfa2282, i64 0, i64 %idxprom2286
  store i8 %1623, ptr %arrayidx2287, align 1
  %1628 = load i32, ptr %lno, align 4
  %dec2288 = add nsw i32 %1628, -1
  store i32 %dec2288, ptr %lno, align 4
  br label %while.cond2265, !llvm.loop !28

while.end2289:                                    ; preds = %while.cond2265
  %1629 = load ptr, ptr %s.addr, align 8
  %mtfbase2290 = getelementptr inbounds %struct.DState, ptr %1629, i32 0, i32 32
  %arrayidx2291 = getelementptr inbounds [16 x i32], ptr %mtfbase2290, i64 0, i64 0
  %1630 = load i32, ptr %arrayidx2291, align 4
  %dec2292 = add nsw i32 %1630, -1
  store i32 %dec2292, ptr %arrayidx2291, align 4
  %1631 = load i8, ptr %uc, align 1
  %1632 = load ptr, ptr %s.addr, align 8
  %mtfa2293 = getelementptr inbounds %struct.DState, ptr %1632, i32 0, i32 31
  %1633 = load ptr, ptr %s.addr, align 8
  %mtfbase2294 = getelementptr inbounds %struct.DState, ptr %1633, i32 0, i32 32
  %arrayidx2295 = getelementptr inbounds [16 x i32], ptr %mtfbase2294, i64 0, i64 0
  %1634 = load i32, ptr %arrayidx2295, align 4
  %idxprom2296 = sext i32 %1634 to i64
  %arrayidx2297 = getelementptr inbounds [4096 x i8], ptr %mtfa2293, i64 0, i64 %idxprom2296
  store i8 %1631, ptr %arrayidx2297, align 1
  %1635 = load ptr, ptr %s.addr, align 8
  %mtfbase2298 = getelementptr inbounds %struct.DState, ptr %1635, i32 0, i32 32
  %arrayidx2299 = getelementptr inbounds [16 x i32], ptr %mtfbase2298, i64 0, i64 0
  %1636 = load i32, ptr %arrayidx2299, align 4
  %cmp2300 = icmp eq i32 %1636, 0
  br i1 %cmp2300, label %if.then2302, label %if.end2332

if.then2302:                                      ; preds = %while.end2289
  store i32 4095, ptr %kk2170, align 4
  store i32 15, ptr %ii2168, align 4
  br label %for.cond2303

for.cond2303:                                     ; preds = %for.inc2329, %if.then2302
  %1637 = load i32, ptr %ii2168, align 4
  %cmp2304 = icmp sge i32 %1637, 0
  br i1 %cmp2304, label %for.body2306, label %for.end2331

for.body2306:                                     ; preds = %for.cond2303
  store i32 15, ptr %jj2169, align 4
  br label %for.cond2307

for.cond2307:                                     ; preds = %for.inc2322, %for.body2306
  %1638 = load i32, ptr %jj2169, align 4
  %cmp2308 = icmp sge i32 %1638, 0
  br i1 %cmp2308, label %for.body2310, label %for.end2324

for.body2310:                                     ; preds = %for.cond2307
  %1639 = load ptr, ptr %s.addr, align 8
  %mtfa2311 = getelementptr inbounds %struct.DState, ptr %1639, i32 0, i32 31
  %1640 = load ptr, ptr %s.addr, align 8
  %mtfbase2312 = getelementptr inbounds %struct.DState, ptr %1640, i32 0, i32 32
  %1641 = load i32, ptr %ii2168, align 4
  %idxprom2313 = sext i32 %1641 to i64
  %arrayidx2314 = getelementptr inbounds [16 x i32], ptr %mtfbase2312, i64 0, i64 %idxprom2313
  %1642 = load i32, ptr %arrayidx2314, align 4
  %1643 = load i32, ptr %jj2169, align 4
  %add2315 = add nsw i32 %1642, %1643
  %idxprom2316 = sext i32 %add2315 to i64
  %arrayidx2317 = getelementptr inbounds [4096 x i8], ptr %mtfa2311, i64 0, i64 %idxprom2316
  %1644 = load i8, ptr %arrayidx2317, align 1
  %1645 = load ptr, ptr %s.addr, align 8
  %mtfa2318 = getelementptr inbounds %struct.DState, ptr %1645, i32 0, i32 31
  %1646 = load i32, ptr %kk2170, align 4
  %idxprom2319 = sext i32 %1646 to i64
  %arrayidx2320 = getelementptr inbounds [4096 x i8], ptr %mtfa2318, i64 0, i64 %idxprom2319
  store i8 %1644, ptr %arrayidx2320, align 1
  %1647 = load i32, ptr %kk2170, align 4
  %dec2321 = add nsw i32 %1647, -1
  store i32 %dec2321, ptr %kk2170, align 4
  br label %for.inc2322

for.inc2322:                                      ; preds = %for.body2310
  %1648 = load i32, ptr %jj2169, align 4
  %dec2323 = add nsw i32 %1648, -1
  store i32 %dec2323, ptr %jj2169, align 4
  br label %for.cond2307, !llvm.loop !29

for.end2324:                                      ; preds = %for.cond2307
  %1649 = load i32, ptr %kk2170, align 4
  %add2325 = add nsw i32 %1649, 1
  %1650 = load ptr, ptr %s.addr, align 8
  %mtfbase2326 = getelementptr inbounds %struct.DState, ptr %1650, i32 0, i32 32
  %1651 = load i32, ptr %ii2168, align 4
  %idxprom2327 = sext i32 %1651 to i64
  %arrayidx2328 = getelementptr inbounds [16 x i32], ptr %mtfbase2326, i64 0, i64 %idxprom2327
  store i32 %add2325, ptr %arrayidx2328, align 4
  br label %for.inc2329

for.inc2329:                                      ; preds = %for.end2324
  %1652 = load i32, ptr %ii2168, align 4
  %dec2330 = add nsw i32 %1652, -1
  store i32 %dec2330, ptr %ii2168, align 4
  br label %for.cond2303, !llvm.loop !30

for.end2331:                                      ; preds = %for.cond2303
  br label %if.end2332

if.end2332:                                       ; preds = %for.end2331, %while.end2289
  br label %if.end2333

if.end2333:                                       ; preds = %if.end2332, %while.end2233
  %1653 = load ptr, ptr %s.addr, align 8
  %unzftab2334 = getelementptr inbounds %struct.DState, ptr %1653, i32 0, i32 16
  %1654 = load ptr, ptr %s.addr, align 8
  %seqToUnseq2335 = getelementptr inbounds %struct.DState, ptr %1654, i32 0, i32 30
  %1655 = load i8, ptr %uc, align 1
  %idxprom2336 = zext i8 %1655 to i64
  %arrayidx2337 = getelementptr inbounds [256 x i8], ptr %seqToUnseq2335, i64 0, i64 %idxprom2336
  %1656 = load i8, ptr %arrayidx2337, align 1
  %idxprom2338 = zext i8 %1656 to i64
  %arrayidx2339 = getelementptr inbounds [256 x i32], ptr %unzftab2334, i64 0, i64 %idxprom2338
  %1657 = load i32, ptr %arrayidx2339, align 4
  %inc2340 = add nsw i32 %1657, 1
  store i32 %inc2340, ptr %arrayidx2339, align 4
  %1658 = load ptr, ptr %s.addr, align 8
  %smallDecompress2341 = getelementptr inbounds %struct.DState, ptr %1658, i32 0, i32 10
  %1659 = load i8, ptr %smallDecompress2341, align 4
  %tobool2342 = icmp ne i8 %1659, 0
  br i1 %tobool2342, label %if.then2343, label %if.else2351

if.then2343:                                      ; preds = %if.end2333
  %1660 = load ptr, ptr %s.addr, align 8
  %seqToUnseq2344 = getelementptr inbounds %struct.DState, ptr %1660, i32 0, i32 30
  %1661 = load i8, ptr %uc, align 1
  %idxprom2345 = zext i8 %1661 to i64
  %arrayidx2346 = getelementptr inbounds [256 x i8], ptr %seqToUnseq2344, i64 0, i64 %idxprom2345
  %1662 = load i8, ptr %arrayidx2346, align 1
  %conv2347 = zext i8 %1662 to i16
  %1663 = load ptr, ptr %s.addr, align 8
  %ll162348 = getelementptr inbounds %struct.DState, ptr %1663, i32 0, i32 21
  %1664 = load ptr, ptr %ll162348, align 8
  %1665 = load i32, ptr %nblock, align 4
  %idxprom2349 = sext i32 %1665 to i64
  %arrayidx2350 = getelementptr inbounds i16, ptr %1664, i64 %idxprom2349
  store i16 %conv2347, ptr %arrayidx2350, align 2
  br label %if.end2359

if.else2351:                                      ; preds = %if.end2333
  %1666 = load ptr, ptr %s.addr, align 8
  %seqToUnseq2352 = getelementptr inbounds %struct.DState, ptr %1666, i32 0, i32 30
  %1667 = load i8, ptr %uc, align 1
  %idxprom2353 = zext i8 %1667 to i64
  %arrayidx2354 = getelementptr inbounds [256 x i8], ptr %seqToUnseq2352, i64 0, i64 %idxprom2353
  %1668 = load i8, ptr %arrayidx2354, align 1
  %conv2355 = zext i8 %1668 to i32
  %1669 = load ptr, ptr %s.addr, align 8
  %tt2356 = getelementptr inbounds %struct.DState, ptr %1669, i32 0, i32 20
  %1670 = load ptr, ptr %tt2356, align 8
  %1671 = load i32, ptr %nblock, align 4
  %idxprom2357 = sext i32 %1671 to i64
  %arrayidx2358 = getelementptr inbounds i32, ptr %1670, i64 %idxprom2357
  store i32 %conv2355, ptr %arrayidx2358, align 4
  br label %if.end2359

if.end2359:                                       ; preds = %if.else2351, %if.then2343
  %1672 = load i32, ptr %nblock, align 4
  %inc2360 = add nsw i32 %1672, 1
  store i32 %inc2360, ptr %nblock, align 4
  %1673 = load i32, ptr %groupPos, align 4
  %cmp2361 = icmp eq i32 %1673, 0
  br i1 %cmp2361, label %if.then2363, label %if.end2388

if.then2363:                                      ; preds = %if.end2359
  %1674 = load i32, ptr %groupNo, align 4
  %inc2364 = add nsw i32 %1674, 1
  store i32 %inc2364, ptr %groupNo, align 4
  %1675 = load i32, ptr %groupNo, align 4
  %1676 = load i32, ptr %nSelectors, align 4
  %cmp2365 = icmp sge i32 %1675, %1676
  br i1 %cmp2365, label %if.then2367, label %if.end2368

if.then2367:                                      ; preds = %if.then2363
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2368:                                       ; preds = %if.then2363
  store i32 50, ptr %groupPos, align 4
  %1677 = load ptr, ptr %s.addr, align 8
  %selector2369 = getelementptr inbounds %struct.DState, ptr %1677, i32 0, i32 33
  %1678 = load i32, ptr %groupNo, align 4
  %idxprom2370 = sext i32 %1678 to i64
  %arrayidx2371 = getelementptr inbounds [18002 x i8], ptr %selector2369, i64 0, i64 %idxprom2370
  %1679 = load i8, ptr %arrayidx2371, align 1
  %conv2372 = zext i8 %1679 to i32
  store i32 %conv2372, ptr %gSel, align 4
  %1680 = load ptr, ptr %s.addr, align 8
  %minLens2373 = getelementptr inbounds %struct.DState, ptr %1680, i32 0, i32 39
  %1681 = load i32, ptr %gSel, align 4
  %idxprom2374 = sext i32 %1681 to i64
  %arrayidx2375 = getelementptr inbounds [6 x i32], ptr %minLens2373, i64 0, i64 %idxprom2374
  %1682 = load i32, ptr %arrayidx2375, align 4
  store i32 %1682, ptr %gMinlen, align 4
  %1683 = load ptr, ptr %s.addr, align 8
  %limit2376 = getelementptr inbounds %struct.DState, ptr %1683, i32 0, i32 36
  %1684 = load i32, ptr %gSel, align 4
  %idxprom2377 = sext i32 %1684 to i64
  %arrayidx2378 = getelementptr inbounds [6 x [258 x i32]], ptr %limit2376, i64 0, i64 %idxprom2377
  %arrayidx2379 = getelementptr inbounds [258 x i32], ptr %arrayidx2378, i64 0, i64 0
  store ptr %arrayidx2379, ptr %gLimit, align 8
  %1685 = load ptr, ptr %s.addr, align 8
  %perm2380 = getelementptr inbounds %struct.DState, ptr %1685, i32 0, i32 38
  %1686 = load i32, ptr %gSel, align 4
  %idxprom2381 = sext i32 %1686 to i64
  %arrayidx2382 = getelementptr inbounds [6 x [258 x i32]], ptr %perm2380, i64 0, i64 %idxprom2381
  %arrayidx2383 = getelementptr inbounds [258 x i32], ptr %arrayidx2382, i64 0, i64 0
  store ptr %arrayidx2383, ptr %gPerm, align 8
  %1687 = load ptr, ptr %s.addr, align 8
  %base2384 = getelementptr inbounds %struct.DState, ptr %1687, i32 0, i32 37
  %1688 = load i32, ptr %gSel, align 4
  %idxprom2385 = sext i32 %1688 to i64
  %arrayidx2386 = getelementptr inbounds [6 x [258 x i32]], ptr %base2384, i64 0, i64 %idxprom2385
  %arrayidx2387 = getelementptr inbounds [258 x i32], ptr %arrayidx2386, i64 0, i64 0
  store ptr %arrayidx2387, ptr %gBase, align 8
  br label %if.end2388

if.end2388:                                       ; preds = %if.end2368, %if.end2359
  %1689 = load i32, ptr %groupPos, align 4
  %dec2389 = add nsw i32 %1689, -1
  store i32 %dec2389, ptr %groupPos, align 4
  %1690 = load i32, ptr %gMinlen, align 4
  store i32 %1690, ptr %zn, align 4
  br label %sw.bb2390

sw.bb2390:                                        ; preds = %if.end, %if.end2388
  %1691 = load ptr, ptr %s.addr, align 8
  %state2391 = getelementptr inbounds %struct.DState, ptr %1691, i32 0, i32 1
  store i32 40, ptr %state2391, align 8
  br label %while.body2393

while.body2393:                                   ; preds = %sw.bb2390, %if.end2441
  %1692 = load ptr, ptr %s.addr, align 8
  %bsLive2394 = getelementptr inbounds %struct.DState, ptr %1692, i32 0, i32 8
  %1693 = load i32, ptr %bsLive2394, align 4
  %1694 = load i32, ptr %zn, align 4
  %cmp2395 = icmp sge i32 %1693, %1694
  br i1 %cmp2395, label %if.then2397, label %if.end2408

if.then2397:                                      ; preds = %while.body2393
  %1695 = load ptr, ptr %s.addr, align 8
  %bsBuff2399 = getelementptr inbounds %struct.DState, ptr %1695, i32 0, i32 7
  %1696 = load i32, ptr %bsBuff2399, align 8
  %1697 = load ptr, ptr %s.addr, align 8
  %bsLive2400 = getelementptr inbounds %struct.DState, ptr %1697, i32 0, i32 8
  %1698 = load i32, ptr %bsLive2400, align 4
  %1699 = load i32, ptr %zn, align 4
  %sub2401 = sub nsw i32 %1698, %1699
  %shr2402 = lshr i32 %1696, %sub2401
  %1700 = load i32, ptr %zn, align 4
  %shl2403 = shl i32 1, %1700
  %sub2404 = sub nsw i32 %shl2403, 1
  %and2405 = and i32 %shr2402, %sub2404
  store i32 %and2405, ptr %v2398, align 4
  %1701 = load i32, ptr %zn, align 4
  %1702 = load ptr, ptr %s.addr, align 8
  %bsLive2406 = getelementptr inbounds %struct.DState, ptr %1702, i32 0, i32 8
  %1703 = load i32, ptr %bsLive2406, align 4
  %sub2407 = sub nsw i32 %1703, %1701
  store i32 %sub2407, ptr %bsLive2406, align 4
  %1704 = load i32, ptr %v2398, align 4
  store i32 %1704, ptr %zvec, align 4
  br label %while.end2442

if.end2408:                                       ; preds = %while.body2393
  %1705 = load ptr, ptr %s.addr, align 8
  %strm2409 = getelementptr inbounds %struct.DState, ptr %1705, i32 0, i32 0
  %1706 = load ptr, ptr %strm2409, align 8
  %avail_in2410 = getelementptr inbounds %struct.bz_stream, ptr %1706, i32 0, i32 1
  %1707 = load i32, ptr %avail_in2410, align 8
  %cmp2411 = icmp eq i32 %1707, 0
  br i1 %cmp2411, label %if.then2413, label %if.end2414

if.then2413:                                      ; preds = %if.end2408
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2414:                                       ; preds = %if.end2408
  %1708 = load ptr, ptr %s.addr, align 8
  %bsBuff2415 = getelementptr inbounds %struct.DState, ptr %1708, i32 0, i32 7
  %1709 = load i32, ptr %bsBuff2415, align 8
  %shl2416 = shl i32 %1709, 8
  %1710 = load ptr, ptr %s.addr, align 8
  %strm2417 = getelementptr inbounds %struct.DState, ptr %1710, i32 0, i32 0
  %1711 = load ptr, ptr %strm2417, align 8
  %next_in2418 = getelementptr inbounds %struct.bz_stream, ptr %1711, i32 0, i32 0
  %1712 = load ptr, ptr %next_in2418, align 8
  %1713 = load i8, ptr %1712, align 1
  %conv2419 = zext i8 %1713 to i32
  %or2420 = or i32 %shl2416, %conv2419
  %1714 = load ptr, ptr %s.addr, align 8
  %bsBuff2421 = getelementptr inbounds %struct.DState, ptr %1714, i32 0, i32 7
  store i32 %or2420, ptr %bsBuff2421, align 8
  %1715 = load ptr, ptr %s.addr, align 8
  %bsLive2422 = getelementptr inbounds %struct.DState, ptr %1715, i32 0, i32 8
  %1716 = load i32, ptr %bsLive2422, align 4
  %add2423 = add nsw i32 %1716, 8
  store i32 %add2423, ptr %bsLive2422, align 4
  %1717 = load ptr, ptr %s.addr, align 8
  %strm2424 = getelementptr inbounds %struct.DState, ptr %1717, i32 0, i32 0
  %1718 = load ptr, ptr %strm2424, align 8
  %next_in2425 = getelementptr inbounds %struct.bz_stream, ptr %1718, i32 0, i32 0
  %1719 = load ptr, ptr %next_in2425, align 8
  %incdec.ptr2426 = getelementptr inbounds i8, ptr %1719, i32 1
  store ptr %incdec.ptr2426, ptr %next_in2425, align 8
  %1720 = load ptr, ptr %s.addr, align 8
  %strm2427 = getelementptr inbounds %struct.DState, ptr %1720, i32 0, i32 0
  %1721 = load ptr, ptr %strm2427, align 8
  %avail_in2428 = getelementptr inbounds %struct.bz_stream, ptr %1721, i32 0, i32 1
  %1722 = load i32, ptr %avail_in2428, align 8
  %dec2429 = add i32 %1722, -1
  store i32 %dec2429, ptr %avail_in2428, align 8
  %1723 = load ptr, ptr %s.addr, align 8
  %strm2430 = getelementptr inbounds %struct.DState, ptr %1723, i32 0, i32 0
  %1724 = load ptr, ptr %strm2430, align 8
  %total_in_lo322431 = getelementptr inbounds %struct.bz_stream, ptr %1724, i32 0, i32 2
  %1725 = load i32, ptr %total_in_lo322431, align 4
  %inc2432 = add i32 %1725, 1
  store i32 %inc2432, ptr %total_in_lo322431, align 4
  %1726 = load ptr, ptr %s.addr, align 8
  %strm2433 = getelementptr inbounds %struct.DState, ptr %1726, i32 0, i32 0
  %1727 = load ptr, ptr %strm2433, align 8
  %total_in_lo322434 = getelementptr inbounds %struct.bz_stream, ptr %1727, i32 0, i32 2
  %1728 = load i32, ptr %total_in_lo322434, align 4
  %cmp2435 = icmp eq i32 %1728, 0
  br i1 %cmp2435, label %if.then2437, label %if.end2441

if.then2437:                                      ; preds = %if.end2414
  %1729 = load ptr, ptr %s.addr, align 8
  %strm2438 = getelementptr inbounds %struct.DState, ptr %1729, i32 0, i32 0
  %1730 = load ptr, ptr %strm2438, align 8
  %total_in_hi322439 = getelementptr inbounds %struct.bz_stream, ptr %1730, i32 0, i32 3
  %1731 = load i32, ptr %total_in_hi322439, align 8
  %inc2440 = add i32 %1731, 1
  store i32 %inc2440, ptr %total_in_hi322439, align 8
  br label %if.end2441

if.end2441:                                       ; preds = %if.then2437, %if.end2414
  br label %while.body2393

while.end2442:                                    ; preds = %if.then2397
  br label %while.body2444

while.body2444:                                   ; preds = %while.end2442, %while.end2506
  %1732 = load i32, ptr %zn, align 4
  %cmp2445 = icmp sgt i32 %1732, 20
  br i1 %cmp2445, label %if.then2447, label %if.end2448

if.then2447:                                      ; preds = %while.body2444
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2448:                                       ; preds = %while.body2444
  %1733 = load i32, ptr %zvec, align 4
  %1734 = load ptr, ptr %gLimit, align 8
  %1735 = load i32, ptr %zn, align 4
  %idxprom2449 = sext i32 %1735 to i64
  %arrayidx2450 = getelementptr inbounds i32, ptr %1734, i64 %idxprom2449
  %1736 = load i32, ptr %arrayidx2450, align 4
  %cmp2451 = icmp sle i32 %1733, %1736
  br i1 %cmp2451, label %if.then2453, label %if.end2454

if.then2453:                                      ; preds = %if.end2448
  br label %while.end2509

if.end2454:                                       ; preds = %if.end2448
  %1737 = load i32, ptr %zn, align 4
  %inc2455 = add nsw i32 %1737, 1
  store i32 %inc2455, ptr %zn, align 4
  br label %sw.bb2456

sw.bb2456:                                        ; preds = %if.end, %if.end2454
  %1738 = load ptr, ptr %s.addr, align 8
  %state2457 = getelementptr inbounds %struct.DState, ptr %1738, i32 0, i32 1
  store i32 41, ptr %state2457, align 8
  br label %while.body2459

while.body2459:                                   ; preds = %sw.bb2456, %if.end2505
  %1739 = load ptr, ptr %s.addr, align 8
  %bsLive2460 = getelementptr inbounds %struct.DState, ptr %1739, i32 0, i32 8
  %1740 = load i32, ptr %bsLive2460, align 4
  %cmp2461 = icmp sge i32 %1740, 1
  br i1 %cmp2461, label %if.then2463, label %if.end2472

if.then2463:                                      ; preds = %while.body2459
  %1741 = load ptr, ptr %s.addr, align 8
  %bsBuff2465 = getelementptr inbounds %struct.DState, ptr %1741, i32 0, i32 7
  %1742 = load i32, ptr %bsBuff2465, align 8
  %1743 = load ptr, ptr %s.addr, align 8
  %bsLive2466 = getelementptr inbounds %struct.DState, ptr %1743, i32 0, i32 8
  %1744 = load i32, ptr %bsLive2466, align 4
  %sub2467 = sub nsw i32 %1744, 1
  %shr2468 = lshr i32 %1742, %sub2467
  %and2469 = and i32 %shr2468, 1
  store i32 %and2469, ptr %v2464, align 4
  %1745 = load ptr, ptr %s.addr, align 8
  %bsLive2470 = getelementptr inbounds %struct.DState, ptr %1745, i32 0, i32 8
  %1746 = load i32, ptr %bsLive2470, align 4
  %sub2471 = sub nsw i32 %1746, 1
  store i32 %sub2471, ptr %bsLive2470, align 4
  %1747 = load i32, ptr %v2464, align 4
  store i32 %1747, ptr %zj, align 4
  br label %while.end2506

if.end2472:                                       ; preds = %while.body2459
  %1748 = load ptr, ptr %s.addr, align 8
  %strm2473 = getelementptr inbounds %struct.DState, ptr %1748, i32 0, i32 0
  %1749 = load ptr, ptr %strm2473, align 8
  %avail_in2474 = getelementptr inbounds %struct.bz_stream, ptr %1749, i32 0, i32 1
  %1750 = load i32, ptr %avail_in2474, align 8
  %cmp2475 = icmp eq i32 %1750, 0
  br i1 %cmp2475, label %if.then2477, label %if.end2478

if.then2477:                                      ; preds = %if.end2472
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2478:                                       ; preds = %if.end2472
  %1751 = load ptr, ptr %s.addr, align 8
  %bsBuff2479 = getelementptr inbounds %struct.DState, ptr %1751, i32 0, i32 7
  %1752 = load i32, ptr %bsBuff2479, align 8
  %shl2480 = shl i32 %1752, 8
  %1753 = load ptr, ptr %s.addr, align 8
  %strm2481 = getelementptr inbounds %struct.DState, ptr %1753, i32 0, i32 0
  %1754 = load ptr, ptr %strm2481, align 8
  %next_in2482 = getelementptr inbounds %struct.bz_stream, ptr %1754, i32 0, i32 0
  %1755 = load ptr, ptr %next_in2482, align 8
  %1756 = load i8, ptr %1755, align 1
  %conv2483 = zext i8 %1756 to i32
  %or2484 = or i32 %shl2480, %conv2483
  %1757 = load ptr, ptr %s.addr, align 8
  %bsBuff2485 = getelementptr inbounds %struct.DState, ptr %1757, i32 0, i32 7
  store i32 %or2484, ptr %bsBuff2485, align 8
  %1758 = load ptr, ptr %s.addr, align 8
  %bsLive2486 = getelementptr inbounds %struct.DState, ptr %1758, i32 0, i32 8
  %1759 = load i32, ptr %bsLive2486, align 4
  %add2487 = add nsw i32 %1759, 8
  store i32 %add2487, ptr %bsLive2486, align 4
  %1760 = load ptr, ptr %s.addr, align 8
  %strm2488 = getelementptr inbounds %struct.DState, ptr %1760, i32 0, i32 0
  %1761 = load ptr, ptr %strm2488, align 8
  %next_in2489 = getelementptr inbounds %struct.bz_stream, ptr %1761, i32 0, i32 0
  %1762 = load ptr, ptr %next_in2489, align 8
  %incdec.ptr2490 = getelementptr inbounds i8, ptr %1762, i32 1
  store ptr %incdec.ptr2490, ptr %next_in2489, align 8
  %1763 = load ptr, ptr %s.addr, align 8
  %strm2491 = getelementptr inbounds %struct.DState, ptr %1763, i32 0, i32 0
  %1764 = load ptr, ptr %strm2491, align 8
  %avail_in2492 = getelementptr inbounds %struct.bz_stream, ptr %1764, i32 0, i32 1
  %1765 = load i32, ptr %avail_in2492, align 8
  %dec2493 = add i32 %1765, -1
  store i32 %dec2493, ptr %avail_in2492, align 8
  %1766 = load ptr, ptr %s.addr, align 8
  %strm2494 = getelementptr inbounds %struct.DState, ptr %1766, i32 0, i32 0
  %1767 = load ptr, ptr %strm2494, align 8
  %total_in_lo322495 = getelementptr inbounds %struct.bz_stream, ptr %1767, i32 0, i32 2
  %1768 = load i32, ptr %total_in_lo322495, align 4
  %inc2496 = add i32 %1768, 1
  store i32 %inc2496, ptr %total_in_lo322495, align 4
  %1769 = load ptr, ptr %s.addr, align 8
  %strm2497 = getelementptr inbounds %struct.DState, ptr %1769, i32 0, i32 0
  %1770 = load ptr, ptr %strm2497, align 8
  %total_in_lo322498 = getelementptr inbounds %struct.bz_stream, ptr %1770, i32 0, i32 2
  %1771 = load i32, ptr %total_in_lo322498, align 4
  %cmp2499 = icmp eq i32 %1771, 0
  br i1 %cmp2499, label %if.then2501, label %if.end2505

if.then2501:                                      ; preds = %if.end2478
  %1772 = load ptr, ptr %s.addr, align 8
  %strm2502 = getelementptr inbounds %struct.DState, ptr %1772, i32 0, i32 0
  %1773 = load ptr, ptr %strm2502, align 8
  %total_in_hi322503 = getelementptr inbounds %struct.bz_stream, ptr %1773, i32 0, i32 3
  %1774 = load i32, ptr %total_in_hi322503, align 8
  %inc2504 = add i32 %1774, 1
  store i32 %inc2504, ptr %total_in_hi322503, align 8
  br label %if.end2505

if.end2505:                                       ; preds = %if.then2501, %if.end2478
  br label %while.body2459

while.end2506:                                    ; preds = %if.then2463
  %1775 = load i32, ptr %zvec, align 4
  %shl2507 = shl i32 %1775, 1
  %1776 = load i32, ptr %zj, align 4
  %or2508 = or i32 %shl2507, %1776
  store i32 %or2508, ptr %zvec, align 4
  br label %while.body2444

while.end2509:                                    ; preds = %if.then2453
  %1777 = load i32, ptr %zvec, align 4
  %1778 = load ptr, ptr %gBase, align 8
  %1779 = load i32, ptr %zn, align 4
  %idxprom2510 = sext i32 %1779 to i64
  %arrayidx2511 = getelementptr inbounds i32, ptr %1778, i64 %idxprom2510
  %1780 = load i32, ptr %arrayidx2511, align 4
  %sub2512 = sub nsw i32 %1777, %1780
  %cmp2513 = icmp slt i32 %sub2512, 0
  br i1 %cmp2513, label %if.then2521, label %lor.lhs.false2515

lor.lhs.false2515:                                ; preds = %while.end2509
  %1781 = load i32, ptr %zvec, align 4
  %1782 = load ptr, ptr %gBase, align 8
  %1783 = load i32, ptr %zn, align 4
  %idxprom2516 = sext i32 %1783 to i64
  %arrayidx2517 = getelementptr inbounds i32, ptr %1782, i64 %idxprom2516
  %1784 = load i32, ptr %arrayidx2517, align 4
  %sub2518 = sub nsw i32 %1781, %1784
  %cmp2519 = icmp sge i32 %sub2518, 258
  br i1 %cmp2519, label %if.then2521, label %if.end2522

if.then2521:                                      ; preds = %lor.lhs.false2515, %while.end2509
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2522:                                       ; preds = %lor.lhs.false2515
  %1785 = load ptr, ptr %gPerm, align 8
  %1786 = load i32, ptr %zvec, align 4
  %1787 = load ptr, ptr %gBase, align 8
  %1788 = load i32, ptr %zn, align 4
  %idxprom2523 = sext i32 %1788 to i64
  %arrayidx2524 = getelementptr inbounds i32, ptr %1787, i64 %idxprom2523
  %1789 = load i32, ptr %arrayidx2524, align 4
  %sub2525 = sub nsw i32 %1786, %1789
  %idxprom2526 = sext i32 %sub2525 to i64
  %arrayidx2527 = getelementptr inbounds i32, ptr %1785, i64 %idxprom2526
  %1790 = load i32, ptr %arrayidx2527, align 4
  store i32 %1790, ptr %nextSym, align 4
  br label %while.body1920

while.end2528:                                    ; preds = %if.then1923
  %1791 = load ptr, ptr %s.addr, align 8
  %origPtr2529 = getelementptr inbounds %struct.DState, ptr %1791, i32 0, i32 13
  %1792 = load i32, ptr %origPtr2529, align 8
  %cmp2530 = icmp slt i32 %1792, 0
  br i1 %cmp2530, label %if.then2536, label %lor.lhs.false2532

lor.lhs.false2532:                                ; preds = %while.end2528
  %1793 = load ptr, ptr %s.addr, align 8
  %origPtr2533 = getelementptr inbounds %struct.DState, ptr %1793, i32 0, i32 13
  %1794 = load i32, ptr %origPtr2533, align 8
  %1795 = load i32, ptr %nblock, align 4
  %cmp2534 = icmp sge i32 %1794, %1795
  br i1 %cmp2534, label %if.then2536, label %if.end2537

if.then2536:                                      ; preds = %lor.lhs.false2532, %while.end2528
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2537:                                       ; preds = %lor.lhs.false2532
  %1796 = load ptr, ptr %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, ptr %1796, i32 0, i32 18
  %arrayidx2538 = getelementptr inbounds [257 x i32], ptr %cftab, i64 0, i64 0
  store i32 0, ptr %arrayidx2538, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond2539

for.cond2539:                                     ; preds = %for.inc2550, %if.end2537
  %1797 = load i32, ptr %i, align 4
  %cmp2540 = icmp sle i32 %1797, 256
  br i1 %cmp2540, label %for.body2542, label %for.end2552

for.body2542:                                     ; preds = %for.cond2539
  %1798 = load ptr, ptr %s.addr, align 8
  %unzftab2543 = getelementptr inbounds %struct.DState, ptr %1798, i32 0, i32 16
  %1799 = load i32, ptr %i, align 4
  %sub2544 = sub nsw i32 %1799, 1
  %idxprom2545 = sext i32 %sub2544 to i64
  %arrayidx2546 = getelementptr inbounds [256 x i32], ptr %unzftab2543, i64 0, i64 %idxprom2545
  %1800 = load i32, ptr %arrayidx2546, align 4
  %1801 = load ptr, ptr %s.addr, align 8
  %cftab2547 = getelementptr inbounds %struct.DState, ptr %1801, i32 0, i32 18
  %1802 = load i32, ptr %i, align 4
  %idxprom2548 = sext i32 %1802 to i64
  %arrayidx2549 = getelementptr inbounds [257 x i32], ptr %cftab2547, i64 0, i64 %idxprom2548
  store i32 %1800, ptr %arrayidx2549, align 4
  br label %for.inc2550

for.inc2550:                                      ; preds = %for.body2542
  %1803 = load i32, ptr %i, align 4
  %inc2551 = add nsw i32 %1803, 1
  store i32 %inc2551, ptr %i, align 4
  br label %for.cond2539, !llvm.loop !31

for.end2552:                                      ; preds = %for.cond2539
  store i32 1, ptr %i, align 4
  br label %for.cond2553

for.cond2553:                                     ; preds = %for.inc2565, %for.end2552
  %1804 = load i32, ptr %i, align 4
  %cmp2554 = icmp sle i32 %1804, 256
  br i1 %cmp2554, label %for.body2556, label %for.end2567

for.body2556:                                     ; preds = %for.cond2553
  %1805 = load ptr, ptr %s.addr, align 8
  %cftab2557 = getelementptr inbounds %struct.DState, ptr %1805, i32 0, i32 18
  %1806 = load i32, ptr %i, align 4
  %sub2558 = sub nsw i32 %1806, 1
  %idxprom2559 = sext i32 %sub2558 to i64
  %arrayidx2560 = getelementptr inbounds [257 x i32], ptr %cftab2557, i64 0, i64 %idxprom2559
  %1807 = load i32, ptr %arrayidx2560, align 4
  %1808 = load ptr, ptr %s.addr, align 8
  %cftab2561 = getelementptr inbounds %struct.DState, ptr %1808, i32 0, i32 18
  %1809 = load i32, ptr %i, align 4
  %idxprom2562 = sext i32 %1809 to i64
  %arrayidx2563 = getelementptr inbounds [257 x i32], ptr %cftab2561, i64 0, i64 %idxprom2562
  %1810 = load i32, ptr %arrayidx2563, align 4
  %add2564 = add nsw i32 %1810, %1807
  store i32 %add2564, ptr %arrayidx2563, align 4
  br label %for.inc2565

for.inc2565:                                      ; preds = %for.body2556
  %1811 = load i32, ptr %i, align 4
  %inc2566 = add nsw i32 %1811, 1
  store i32 %inc2566, ptr %i, align 4
  br label %for.cond2553, !llvm.loop !32

for.end2567:                                      ; preds = %for.cond2553
  store i32 0, ptr %i, align 4
  br label %for.cond2568

for.cond2568:                                     ; preds = %for.inc2585, %for.end2567
  %1812 = load i32, ptr %i, align 4
  %cmp2569 = icmp sle i32 %1812, 256
  br i1 %cmp2569, label %for.body2571, label %for.end2587

for.body2571:                                     ; preds = %for.cond2568
  %1813 = load ptr, ptr %s.addr, align 8
  %cftab2572 = getelementptr inbounds %struct.DState, ptr %1813, i32 0, i32 18
  %1814 = load i32, ptr %i, align 4
  %idxprom2573 = sext i32 %1814 to i64
  %arrayidx2574 = getelementptr inbounds [257 x i32], ptr %cftab2572, i64 0, i64 %idxprom2573
  %1815 = load i32, ptr %arrayidx2574, align 4
  %cmp2575 = icmp slt i32 %1815, 0
  br i1 %cmp2575, label %if.then2583, label %lor.lhs.false2577

lor.lhs.false2577:                                ; preds = %for.body2571
  %1816 = load ptr, ptr %s.addr, align 8
  %cftab2578 = getelementptr inbounds %struct.DState, ptr %1816, i32 0, i32 18
  %1817 = load i32, ptr %i, align 4
  %idxprom2579 = sext i32 %1817 to i64
  %arrayidx2580 = getelementptr inbounds [257 x i32], ptr %cftab2578, i64 0, i64 %idxprom2579
  %1818 = load i32, ptr %arrayidx2580, align 4
  %1819 = load i32, ptr %nblock, align 4
  %cmp2581 = icmp sgt i32 %1818, %1819
  br i1 %cmp2581, label %if.then2583, label %if.end2584

if.then2583:                                      ; preds = %lor.lhs.false2577, %for.body2571
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2584:                                       ; preds = %lor.lhs.false2577
  br label %for.inc2585

for.inc2585:                                      ; preds = %if.end2584
  %1820 = load i32, ptr %i, align 4
  %inc2586 = add nsw i32 %1820, 1
  store i32 %inc2586, ptr %i, align 4
  br label %for.cond2568, !llvm.loop !33

for.end2587:                                      ; preds = %for.cond2568
  %1821 = load ptr, ptr %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, ptr %1821, i32 0, i32 3
  store i32 0, ptr %state_out_len, align 8
  %1822 = load ptr, ptr %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, ptr %1822, i32 0, i32 2
  store i8 0, ptr %state_out_ch, align 4
  %1823 = load ptr, ptr %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, ptr %1823, i32 0, i32 25
  store i32 -1, ptr %calculatedBlockCRC, align 8
  %1824 = load ptr, ptr %s.addr, align 8
  %state2588 = getelementptr inbounds %struct.DState, ptr %1824, i32 0, i32 1
  store i32 2, ptr %state2588, align 8
  %1825 = load ptr, ptr %s.addr, align 8
  %verbosity2589 = getelementptr inbounds %struct.DState, ptr %1825, i32 0, i32 12
  %1826 = load i32, ptr %verbosity2589, align 4
  %cmp2590 = icmp sge i32 %1826, 2
  br i1 %cmp2590, label %if.then2592, label %if.end2594

if.then2592:                                      ; preds = %for.end2587
  %1827 = load ptr, ptr @__stderrp, align 8
  %call2593 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1827, ptr noundef @.str.1)
  br label %if.end2594

if.end2594:                                       ; preds = %if.then2592, %for.end2587
  %1828 = load ptr, ptr %s.addr, align 8
  %smallDecompress2595 = getelementptr inbounds %struct.DState, ptr %1828, i32 0, i32 10
  %1829 = load i8, ptr %smallDecompress2595, align 4
  %tobool2596 = icmp ne i8 %1829, 0
  br i1 %tobool2596, label %if.then2597, label %if.else2827

if.then2597:                                      ; preds = %if.end2594
  store i32 0, ptr %i, align 4
  br label %for.cond2598

for.cond2598:                                     ; preds = %for.inc2607, %if.then2597
  %1830 = load i32, ptr %i, align 4
  %cmp2599 = icmp sle i32 %1830, 256
  br i1 %cmp2599, label %for.body2601, label %for.end2609

for.body2601:                                     ; preds = %for.cond2598
  %1831 = load ptr, ptr %s.addr, align 8
  %cftab2602 = getelementptr inbounds %struct.DState, ptr %1831, i32 0, i32 18
  %1832 = load i32, ptr %i, align 4
  %idxprom2603 = sext i32 %1832 to i64
  %arrayidx2604 = getelementptr inbounds [257 x i32], ptr %cftab2602, i64 0, i64 %idxprom2603
  %1833 = load i32, ptr %arrayidx2604, align 4
  %1834 = load ptr, ptr %s.addr, align 8
  %cftabCopy = getelementptr inbounds %struct.DState, ptr %1834, i32 0, i32 19
  %1835 = load i32, ptr %i, align 4
  %idxprom2605 = sext i32 %1835 to i64
  %arrayidx2606 = getelementptr inbounds [257 x i32], ptr %cftabCopy, i64 0, i64 %idxprom2605
  store i32 %1833, ptr %arrayidx2606, align 4
  br label %for.inc2607

for.inc2607:                                      ; preds = %for.body2601
  %1836 = load i32, ptr %i, align 4
  %inc2608 = add nsw i32 %1836, 1
  store i32 %inc2608, ptr %i, align 4
  br label %for.cond2598, !llvm.loop !34

for.end2609:                                      ; preds = %for.cond2598
  store i32 0, ptr %i, align 4
  br label %for.cond2610

for.cond2610:                                     ; preds = %for.inc2669, %for.end2609
  %1837 = load i32, ptr %i, align 4
  %1838 = load i32, ptr %nblock, align 4
  %cmp2611 = icmp slt i32 %1837, %1838
  br i1 %cmp2611, label %for.body2613, label %for.end2671

for.body2613:                                     ; preds = %for.cond2610
  %1839 = load ptr, ptr %s.addr, align 8
  %ll162614 = getelementptr inbounds %struct.DState, ptr %1839, i32 0, i32 21
  %1840 = load ptr, ptr %ll162614, align 8
  %1841 = load i32, ptr %i, align 4
  %idxprom2615 = sext i32 %1841 to i64
  %arrayidx2616 = getelementptr inbounds i16, ptr %1840, i64 %idxprom2615
  %1842 = load i16, ptr %arrayidx2616, align 2
  %conv2617 = trunc i16 %1842 to i8
  store i8 %conv2617, ptr %uc, align 1
  %1843 = load ptr, ptr %s.addr, align 8
  %cftabCopy2618 = getelementptr inbounds %struct.DState, ptr %1843, i32 0, i32 19
  %1844 = load i8, ptr %uc, align 1
  %idxprom2619 = zext i8 %1844 to i64
  %arrayidx2620 = getelementptr inbounds [257 x i32], ptr %cftabCopy2618, i64 0, i64 %idxprom2619
  %1845 = load i32, ptr %arrayidx2620, align 4
  %and2621 = and i32 %1845, 65535
  %conv2622 = trunc i32 %and2621 to i16
  %1846 = load ptr, ptr %s.addr, align 8
  %ll162623 = getelementptr inbounds %struct.DState, ptr %1846, i32 0, i32 21
  %1847 = load ptr, ptr %ll162623, align 8
  %1848 = load i32, ptr %i, align 4
  %idxprom2624 = sext i32 %1848 to i64
  %arrayidx2625 = getelementptr inbounds i16, ptr %1847, i64 %idxprom2624
  store i16 %conv2622, ptr %arrayidx2625, align 2
  %1849 = load i32, ptr %i, align 4
  %and2626 = and i32 %1849, 1
  %cmp2627 = icmp eq i32 %and2626, 0
  br i1 %cmp2627, label %if.then2629, label %if.else2646

if.then2629:                                      ; preds = %for.body2613
  %1850 = load ptr, ptr %s.addr, align 8
  %ll42630 = getelementptr inbounds %struct.DState, ptr %1850, i32 0, i32 22
  %1851 = load ptr, ptr %ll42630, align 8
  %1852 = load i32, ptr %i, align 4
  %shr2631 = ashr i32 %1852, 1
  %idxprom2632 = sext i32 %shr2631 to i64
  %arrayidx2633 = getelementptr inbounds i8, ptr %1851, i64 %idxprom2632
  %1853 = load i8, ptr %arrayidx2633, align 1
  %conv2634 = zext i8 %1853 to i32
  %and2635 = and i32 %conv2634, 240
  %1854 = load ptr, ptr %s.addr, align 8
  %cftabCopy2636 = getelementptr inbounds %struct.DState, ptr %1854, i32 0, i32 19
  %1855 = load i8, ptr %uc, align 1
  %idxprom2637 = zext i8 %1855 to i64
  %arrayidx2638 = getelementptr inbounds [257 x i32], ptr %cftabCopy2636, i64 0, i64 %idxprom2637
  %1856 = load i32, ptr %arrayidx2638, align 4
  %shr2639 = ashr i32 %1856, 16
  %or2640 = or i32 %and2635, %shr2639
  %conv2641 = trunc i32 %or2640 to i8
  %1857 = load ptr, ptr %s.addr, align 8
  %ll42642 = getelementptr inbounds %struct.DState, ptr %1857, i32 0, i32 22
  %1858 = load ptr, ptr %ll42642, align 8
  %1859 = load i32, ptr %i, align 4
  %shr2643 = ashr i32 %1859, 1
  %idxprom2644 = sext i32 %shr2643 to i64
  %arrayidx2645 = getelementptr inbounds i8, ptr %1858, i64 %idxprom2644
  store i8 %conv2641, ptr %arrayidx2645, align 1
  br label %if.end2664

if.else2646:                                      ; preds = %for.body2613
  %1860 = load ptr, ptr %s.addr, align 8
  %ll42647 = getelementptr inbounds %struct.DState, ptr %1860, i32 0, i32 22
  %1861 = load ptr, ptr %ll42647, align 8
  %1862 = load i32, ptr %i, align 4
  %shr2648 = ashr i32 %1862, 1
  %idxprom2649 = sext i32 %shr2648 to i64
  %arrayidx2650 = getelementptr inbounds i8, ptr %1861, i64 %idxprom2649
  %1863 = load i8, ptr %arrayidx2650, align 1
  %conv2651 = zext i8 %1863 to i32
  %and2652 = and i32 %conv2651, 15
  %1864 = load ptr, ptr %s.addr, align 8
  %cftabCopy2653 = getelementptr inbounds %struct.DState, ptr %1864, i32 0, i32 19
  %1865 = load i8, ptr %uc, align 1
  %idxprom2654 = zext i8 %1865 to i64
  %arrayidx2655 = getelementptr inbounds [257 x i32], ptr %cftabCopy2653, i64 0, i64 %idxprom2654
  %1866 = load i32, ptr %arrayidx2655, align 4
  %shr2656 = ashr i32 %1866, 16
  %shl2657 = shl i32 %shr2656, 4
  %or2658 = or i32 %and2652, %shl2657
  %conv2659 = trunc i32 %or2658 to i8
  %1867 = load ptr, ptr %s.addr, align 8
  %ll42660 = getelementptr inbounds %struct.DState, ptr %1867, i32 0, i32 22
  %1868 = load ptr, ptr %ll42660, align 8
  %1869 = load i32, ptr %i, align 4
  %shr2661 = ashr i32 %1869, 1
  %idxprom2662 = sext i32 %shr2661 to i64
  %arrayidx2663 = getelementptr inbounds i8, ptr %1868, i64 %idxprom2662
  store i8 %conv2659, ptr %arrayidx2663, align 1
  br label %if.end2664

if.end2664:                                       ; preds = %if.else2646, %if.then2629
  %1870 = load ptr, ptr %s.addr, align 8
  %cftabCopy2665 = getelementptr inbounds %struct.DState, ptr %1870, i32 0, i32 19
  %1871 = load i8, ptr %uc, align 1
  %idxprom2666 = zext i8 %1871 to i64
  %arrayidx2667 = getelementptr inbounds [257 x i32], ptr %cftabCopy2665, i64 0, i64 %idxprom2666
  %1872 = load i32, ptr %arrayidx2667, align 4
  %inc2668 = add nsw i32 %1872, 1
  store i32 %inc2668, ptr %arrayidx2667, align 4
  br label %for.inc2669

for.inc2669:                                      ; preds = %if.end2664
  %1873 = load i32, ptr %i, align 4
  %inc2670 = add nsw i32 %1873, 1
  store i32 %inc2670, ptr %i, align 4
  br label %for.cond2610, !llvm.loop !35

for.end2671:                                      ; preds = %for.cond2610
  %1874 = load ptr, ptr %s.addr, align 8
  %origPtr2672 = getelementptr inbounds %struct.DState, ptr %1874, i32 0, i32 13
  %1875 = load i32, ptr %origPtr2672, align 8
  store i32 %1875, ptr %i, align 4
  %1876 = load ptr, ptr %s.addr, align 8
  %ll162673 = getelementptr inbounds %struct.DState, ptr %1876, i32 0, i32 21
  %1877 = load ptr, ptr %ll162673, align 8
  %1878 = load i32, ptr %i, align 4
  %idxprom2674 = sext i32 %1878 to i64
  %arrayidx2675 = getelementptr inbounds i16, ptr %1877, i64 %idxprom2674
  %1879 = load i16, ptr %arrayidx2675, align 2
  %conv2676 = zext i16 %1879 to i32
  %1880 = load ptr, ptr %s.addr, align 8
  %ll42677 = getelementptr inbounds %struct.DState, ptr %1880, i32 0, i32 22
  %1881 = load ptr, ptr %ll42677, align 8
  %1882 = load i32, ptr %i, align 4
  %shr2678 = ashr i32 %1882, 1
  %idxprom2679 = sext i32 %shr2678 to i64
  %arrayidx2680 = getelementptr inbounds i8, ptr %1881, i64 %idxprom2679
  %1883 = load i8, ptr %arrayidx2680, align 1
  %conv2681 = zext i8 %1883 to i32
  %1884 = load i32, ptr %i, align 4
  %shl2682 = shl i32 %1884, 2
  %and2683 = and i32 %shl2682, 4
  %shr2684 = lshr i32 %conv2681, %and2683
  %and2685 = and i32 %shr2684, 15
  %shl2686 = shl i32 %and2685, 16
  %or2687 = or i32 %conv2676, %shl2686
  store i32 %or2687, ptr %j, align 4
  br label %do.body2688

do.body2688:                                      ; preds = %do.cond2743, %for.end2671
  %1885 = load ptr, ptr %s.addr, align 8
  %ll162690 = getelementptr inbounds %struct.DState, ptr %1885, i32 0, i32 21
  %1886 = load ptr, ptr %ll162690, align 8
  %1887 = load i32, ptr %j, align 4
  %idxprom2691 = sext i32 %1887 to i64
  %arrayidx2692 = getelementptr inbounds i16, ptr %1886, i64 %idxprom2691
  %1888 = load i16, ptr %arrayidx2692, align 2
  %conv2693 = zext i16 %1888 to i32
  %1889 = load ptr, ptr %s.addr, align 8
  %ll42694 = getelementptr inbounds %struct.DState, ptr %1889, i32 0, i32 22
  %1890 = load ptr, ptr %ll42694, align 8
  %1891 = load i32, ptr %j, align 4
  %shr2695 = ashr i32 %1891, 1
  %idxprom2696 = sext i32 %shr2695 to i64
  %arrayidx2697 = getelementptr inbounds i8, ptr %1890, i64 %idxprom2696
  %1892 = load i8, ptr %arrayidx2697, align 1
  %conv2698 = zext i8 %1892 to i32
  %1893 = load i32, ptr %j, align 4
  %shl2699 = shl i32 %1893, 2
  %and2700 = and i32 %shl2699, 4
  %shr2701 = lshr i32 %conv2698, %and2700
  %and2702 = and i32 %shr2701, 15
  %shl2703 = shl i32 %and2702, 16
  %or2704 = or i32 %conv2693, %shl2703
  store i32 %or2704, ptr %tmp2689, align 4
  %1894 = load i32, ptr %i, align 4
  %and2705 = and i32 %1894, 65535
  %conv2706 = trunc i32 %and2705 to i16
  %1895 = load ptr, ptr %s.addr, align 8
  %ll162707 = getelementptr inbounds %struct.DState, ptr %1895, i32 0, i32 21
  %1896 = load ptr, ptr %ll162707, align 8
  %1897 = load i32, ptr %j, align 4
  %idxprom2708 = sext i32 %1897 to i64
  %arrayidx2709 = getelementptr inbounds i16, ptr %1896, i64 %idxprom2708
  store i16 %conv2706, ptr %arrayidx2709, align 2
  %1898 = load i32, ptr %j, align 4
  %and2710 = and i32 %1898, 1
  %cmp2711 = icmp eq i32 %and2710, 0
  br i1 %cmp2711, label %if.then2713, label %if.else2727

if.then2713:                                      ; preds = %do.body2688
  %1899 = load ptr, ptr %s.addr, align 8
  %ll42714 = getelementptr inbounds %struct.DState, ptr %1899, i32 0, i32 22
  %1900 = load ptr, ptr %ll42714, align 8
  %1901 = load i32, ptr %j, align 4
  %shr2715 = ashr i32 %1901, 1
  %idxprom2716 = sext i32 %shr2715 to i64
  %arrayidx2717 = getelementptr inbounds i8, ptr %1900, i64 %idxprom2716
  %1902 = load i8, ptr %arrayidx2717, align 1
  %conv2718 = zext i8 %1902 to i32
  %and2719 = and i32 %conv2718, 240
  %1903 = load i32, ptr %i, align 4
  %shr2720 = ashr i32 %1903, 16
  %or2721 = or i32 %and2719, %shr2720
  %conv2722 = trunc i32 %or2721 to i8
  %1904 = load ptr, ptr %s.addr, align 8
  %ll42723 = getelementptr inbounds %struct.DState, ptr %1904, i32 0, i32 22
  %1905 = load ptr, ptr %ll42723, align 8
  %1906 = load i32, ptr %j, align 4
  %shr2724 = ashr i32 %1906, 1
  %idxprom2725 = sext i32 %shr2724 to i64
  %arrayidx2726 = getelementptr inbounds i8, ptr %1905, i64 %idxprom2725
  store i8 %conv2722, ptr %arrayidx2726, align 1
  br label %if.end2742

if.else2727:                                      ; preds = %do.body2688
  %1907 = load ptr, ptr %s.addr, align 8
  %ll42728 = getelementptr inbounds %struct.DState, ptr %1907, i32 0, i32 22
  %1908 = load ptr, ptr %ll42728, align 8
  %1909 = load i32, ptr %j, align 4
  %shr2729 = ashr i32 %1909, 1
  %idxprom2730 = sext i32 %shr2729 to i64
  %arrayidx2731 = getelementptr inbounds i8, ptr %1908, i64 %idxprom2730
  %1910 = load i8, ptr %arrayidx2731, align 1
  %conv2732 = zext i8 %1910 to i32
  %and2733 = and i32 %conv2732, 15
  %1911 = load i32, ptr %i, align 4
  %shr2734 = ashr i32 %1911, 16
  %shl2735 = shl i32 %shr2734, 4
  %or2736 = or i32 %and2733, %shl2735
  %conv2737 = trunc i32 %or2736 to i8
  %1912 = load ptr, ptr %s.addr, align 8
  %ll42738 = getelementptr inbounds %struct.DState, ptr %1912, i32 0, i32 22
  %1913 = load ptr, ptr %ll42738, align 8
  %1914 = load i32, ptr %j, align 4
  %shr2739 = ashr i32 %1914, 1
  %idxprom2740 = sext i32 %shr2739 to i64
  %arrayidx2741 = getelementptr inbounds i8, ptr %1913, i64 %idxprom2740
  store i8 %conv2737, ptr %arrayidx2741, align 1
  br label %if.end2742

if.end2742:                                       ; preds = %if.else2727, %if.then2713
  %1915 = load i32, ptr %j, align 4
  store i32 %1915, ptr %i, align 4
  %1916 = load i32, ptr %tmp2689, align 4
  store i32 %1916, ptr %j, align 4
  br label %do.cond2743

do.cond2743:                                      ; preds = %if.end2742
  %1917 = load i32, ptr %i, align 4
  %1918 = load ptr, ptr %s.addr, align 8
  %origPtr2744 = getelementptr inbounds %struct.DState, ptr %1918, i32 0, i32 13
  %1919 = load i32, ptr %origPtr2744, align 8
  %cmp2745 = icmp ne i32 %1917, %1919
  br i1 %cmp2745, label %do.body2688, label %do.end2747, !llvm.loop !36

do.end2747:                                       ; preds = %do.cond2743
  %1920 = load ptr, ptr %s.addr, align 8
  %origPtr2748 = getelementptr inbounds %struct.DState, ptr %1920, i32 0, i32 13
  %1921 = load i32, ptr %origPtr2748, align 8
  %1922 = load ptr, ptr %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, ptr %1922, i32 0, i32 14
  store i32 %1921, ptr %tPos, align 4
  %1923 = load ptr, ptr %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, ptr %1923, i32 0, i32 17
  store i32 0, ptr %nblock_used, align 4
  %1924 = load ptr, ptr %s.addr, align 8
  %blockRandomised2749 = getelementptr inbounds %struct.DState, ptr %1924, i32 0, i32 4
  %1925 = load i8, ptr %blockRandomised2749, align 4
  %tobool2750 = icmp ne i8 %1925, 0
  br i1 %tobool2750, label %if.then2751, label %if.else2799

if.then2751:                                      ; preds = %do.end2747
  %1926 = load ptr, ptr %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, ptr %1926, i32 0, i32 5
  store i32 0, ptr %rNToGo, align 8
  %1927 = load ptr, ptr %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, ptr %1927, i32 0, i32 6
  store i32 0, ptr %rTPos, align 4
  %1928 = load ptr, ptr %s.addr, align 8
  %tPos2752 = getelementptr inbounds %struct.DState, ptr %1928, i32 0, i32 14
  %1929 = load i32, ptr %tPos2752, align 4
  %1930 = load ptr, ptr %s.addr, align 8
  %cftab2753 = getelementptr inbounds %struct.DState, ptr %1930, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], ptr %cftab2753, i64 0, i64 0
  %call2754 = call i32 @BZ2_indexIntoF(i32 noundef %1929, ptr noundef %arraydecay)
  %1931 = load ptr, ptr %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, ptr %1931, i32 0, i32 15
  store i32 %call2754, ptr %k0, align 8
  %1932 = load ptr, ptr %s.addr, align 8
  %ll162755 = getelementptr inbounds %struct.DState, ptr %1932, i32 0, i32 21
  %1933 = load ptr, ptr %ll162755, align 8
  %1934 = load ptr, ptr %s.addr, align 8
  %tPos2756 = getelementptr inbounds %struct.DState, ptr %1934, i32 0, i32 14
  %1935 = load i32, ptr %tPos2756, align 4
  %idxprom2757 = zext i32 %1935 to i64
  %arrayidx2758 = getelementptr inbounds i16, ptr %1933, i64 %idxprom2757
  %1936 = load i16, ptr %arrayidx2758, align 2
  %conv2759 = zext i16 %1936 to i32
  %1937 = load ptr, ptr %s.addr, align 8
  %ll42760 = getelementptr inbounds %struct.DState, ptr %1937, i32 0, i32 22
  %1938 = load ptr, ptr %ll42760, align 8
  %1939 = load ptr, ptr %s.addr, align 8
  %tPos2761 = getelementptr inbounds %struct.DState, ptr %1939, i32 0, i32 14
  %1940 = load i32, ptr %tPos2761, align 4
  %shr2762 = lshr i32 %1940, 1
  %idxprom2763 = zext i32 %shr2762 to i64
  %arrayidx2764 = getelementptr inbounds i8, ptr %1938, i64 %idxprom2763
  %1941 = load i8, ptr %arrayidx2764, align 1
  %conv2765 = zext i8 %1941 to i32
  %1942 = load ptr, ptr %s.addr, align 8
  %tPos2766 = getelementptr inbounds %struct.DState, ptr %1942, i32 0, i32 14
  %1943 = load i32, ptr %tPos2766, align 4
  %shl2767 = shl i32 %1943, 2
  %and2768 = and i32 %shl2767, 4
  %shr2769 = lshr i32 %conv2765, %and2768
  %and2770 = and i32 %shr2769, 15
  %shl2771 = shl i32 %and2770, 16
  %or2772 = or i32 %conv2759, %shl2771
  %1944 = load ptr, ptr %s.addr, align 8
  %tPos2773 = getelementptr inbounds %struct.DState, ptr %1944, i32 0, i32 14
  store i32 %or2772, ptr %tPos2773, align 4
  %1945 = load ptr, ptr %s.addr, align 8
  %nblock_used2774 = getelementptr inbounds %struct.DState, ptr %1945, i32 0, i32 17
  %1946 = load i32, ptr %nblock_used2774, align 4
  %inc2775 = add nsw i32 %1946, 1
  store i32 %inc2775, ptr %nblock_used2774, align 4
  %1947 = load ptr, ptr %s.addr, align 8
  %rNToGo2776 = getelementptr inbounds %struct.DState, ptr %1947, i32 0, i32 5
  %1948 = load i32, ptr %rNToGo2776, align 8
  %cmp2777 = icmp eq i32 %1948, 0
  br i1 %cmp2777, label %if.then2779, label %if.end2792

if.then2779:                                      ; preds = %if.then2751
  %1949 = load ptr, ptr %s.addr, align 8
  %rTPos2780 = getelementptr inbounds %struct.DState, ptr %1949, i32 0, i32 6
  %1950 = load i32, ptr %rTPos2780, align 4
  %idxprom2781 = sext i32 %1950 to i64
  %arrayidx2782 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom2781
  %1951 = load i32, ptr %arrayidx2782, align 4
  %1952 = load ptr, ptr %s.addr, align 8
  %rNToGo2783 = getelementptr inbounds %struct.DState, ptr %1952, i32 0, i32 5
  store i32 %1951, ptr %rNToGo2783, align 8
  %1953 = load ptr, ptr %s.addr, align 8
  %rTPos2784 = getelementptr inbounds %struct.DState, ptr %1953, i32 0, i32 6
  %1954 = load i32, ptr %rTPos2784, align 4
  %inc2785 = add nsw i32 %1954, 1
  store i32 %inc2785, ptr %rTPos2784, align 4
  %1955 = load ptr, ptr %s.addr, align 8
  %rTPos2786 = getelementptr inbounds %struct.DState, ptr %1955, i32 0, i32 6
  %1956 = load i32, ptr %rTPos2786, align 4
  %cmp2787 = icmp eq i32 %1956, 512
  br i1 %cmp2787, label %if.then2789, label %if.end2791

if.then2789:                                      ; preds = %if.then2779
  %1957 = load ptr, ptr %s.addr, align 8
  %rTPos2790 = getelementptr inbounds %struct.DState, ptr %1957, i32 0, i32 6
  store i32 0, ptr %rTPos2790, align 4
  br label %if.end2791

if.end2791:                                       ; preds = %if.then2789, %if.then2779
  br label %if.end2792

if.end2792:                                       ; preds = %if.end2791, %if.then2751
  %1958 = load ptr, ptr %s.addr, align 8
  %rNToGo2793 = getelementptr inbounds %struct.DState, ptr %1958, i32 0, i32 5
  %1959 = load i32, ptr %rNToGo2793, align 8
  %dec2794 = add nsw i32 %1959, -1
  store i32 %dec2794, ptr %rNToGo2793, align 8
  %1960 = load ptr, ptr %s.addr, align 8
  %rNToGo2795 = getelementptr inbounds %struct.DState, ptr %1960, i32 0, i32 5
  %1961 = load i32, ptr %rNToGo2795, align 8
  %cmp2796 = icmp eq i32 %1961, 1
  %1962 = zext i1 %cmp2796 to i64
  %cond = select i1 %cmp2796, i32 1, i32 0
  %1963 = load ptr, ptr %s.addr, align 8
  %k02798 = getelementptr inbounds %struct.DState, ptr %1963, i32 0, i32 15
  %1964 = load i32, ptr %k02798, align 8
  %xor = xor i32 %1964, %cond
  store i32 %xor, ptr %k02798, align 8
  br label %if.end2826

if.else2799:                                      ; preds = %do.end2747
  %1965 = load ptr, ptr %s.addr, align 8
  %tPos2800 = getelementptr inbounds %struct.DState, ptr %1965, i32 0, i32 14
  %1966 = load i32, ptr %tPos2800, align 4
  %1967 = load ptr, ptr %s.addr, align 8
  %cftab2801 = getelementptr inbounds %struct.DState, ptr %1967, i32 0, i32 18
  %arraydecay2802 = getelementptr inbounds [257 x i32], ptr %cftab2801, i64 0, i64 0
  %call2803 = call i32 @BZ2_indexIntoF(i32 noundef %1966, ptr noundef %arraydecay2802)
  %1968 = load ptr, ptr %s.addr, align 8
  %k02804 = getelementptr inbounds %struct.DState, ptr %1968, i32 0, i32 15
  store i32 %call2803, ptr %k02804, align 8
  %1969 = load ptr, ptr %s.addr, align 8
  %ll162805 = getelementptr inbounds %struct.DState, ptr %1969, i32 0, i32 21
  %1970 = load ptr, ptr %ll162805, align 8
  %1971 = load ptr, ptr %s.addr, align 8
  %tPos2806 = getelementptr inbounds %struct.DState, ptr %1971, i32 0, i32 14
  %1972 = load i32, ptr %tPos2806, align 4
  %idxprom2807 = zext i32 %1972 to i64
  %arrayidx2808 = getelementptr inbounds i16, ptr %1970, i64 %idxprom2807
  %1973 = load i16, ptr %arrayidx2808, align 2
  %conv2809 = zext i16 %1973 to i32
  %1974 = load ptr, ptr %s.addr, align 8
  %ll42810 = getelementptr inbounds %struct.DState, ptr %1974, i32 0, i32 22
  %1975 = load ptr, ptr %ll42810, align 8
  %1976 = load ptr, ptr %s.addr, align 8
  %tPos2811 = getelementptr inbounds %struct.DState, ptr %1976, i32 0, i32 14
  %1977 = load i32, ptr %tPos2811, align 4
  %shr2812 = lshr i32 %1977, 1
  %idxprom2813 = zext i32 %shr2812 to i64
  %arrayidx2814 = getelementptr inbounds i8, ptr %1975, i64 %idxprom2813
  %1978 = load i8, ptr %arrayidx2814, align 1
  %conv2815 = zext i8 %1978 to i32
  %1979 = load ptr, ptr %s.addr, align 8
  %tPos2816 = getelementptr inbounds %struct.DState, ptr %1979, i32 0, i32 14
  %1980 = load i32, ptr %tPos2816, align 4
  %shl2817 = shl i32 %1980, 2
  %and2818 = and i32 %shl2817, 4
  %shr2819 = lshr i32 %conv2815, %and2818
  %and2820 = and i32 %shr2819, 15
  %shl2821 = shl i32 %and2820, 16
  %or2822 = or i32 %conv2809, %shl2821
  %1981 = load ptr, ptr %s.addr, align 8
  %tPos2823 = getelementptr inbounds %struct.DState, ptr %1981, i32 0, i32 14
  store i32 %or2822, ptr %tPos2823, align 4
  %1982 = load ptr, ptr %s.addr, align 8
  %nblock_used2824 = getelementptr inbounds %struct.DState, ptr %1982, i32 0, i32 17
  %1983 = load i32, ptr %nblock_used2824, align 4
  %inc2825 = add nsw i32 %1983, 1
  store i32 %inc2825, ptr %nblock_used2824, align 4
  br label %if.end2826

if.end2826:                                       ; preds = %if.else2799, %if.end2792
  br label %if.end2919

if.else2827:                                      ; preds = %if.end2594
  store i32 0, ptr %i, align 4
  br label %for.cond2828

for.cond2828:                                     ; preds = %for.inc2849, %if.else2827
  %1984 = load i32, ptr %i, align 4
  %1985 = load i32, ptr %nblock, align 4
  %cmp2829 = icmp slt i32 %1984, %1985
  br i1 %cmp2829, label %for.body2831, label %for.end2851

for.body2831:                                     ; preds = %for.cond2828
  %1986 = load ptr, ptr %s.addr, align 8
  %tt2832 = getelementptr inbounds %struct.DState, ptr %1986, i32 0, i32 20
  %1987 = load ptr, ptr %tt2832, align 8
  %1988 = load i32, ptr %i, align 4
  %idxprom2833 = sext i32 %1988 to i64
  %arrayidx2834 = getelementptr inbounds i32, ptr %1987, i64 %idxprom2833
  %1989 = load i32, ptr %arrayidx2834, align 4
  %and2835 = and i32 %1989, 255
  %conv2836 = trunc i32 %and2835 to i8
  store i8 %conv2836, ptr %uc, align 1
  %1990 = load i32, ptr %i, align 4
  %shl2837 = shl i32 %1990, 8
  %1991 = load ptr, ptr %s.addr, align 8
  %tt2838 = getelementptr inbounds %struct.DState, ptr %1991, i32 0, i32 20
  %1992 = load ptr, ptr %tt2838, align 8
  %1993 = load ptr, ptr %s.addr, align 8
  %cftab2839 = getelementptr inbounds %struct.DState, ptr %1993, i32 0, i32 18
  %1994 = load i8, ptr %uc, align 1
  %idxprom2840 = zext i8 %1994 to i64
  %arrayidx2841 = getelementptr inbounds [257 x i32], ptr %cftab2839, i64 0, i64 %idxprom2840
  %1995 = load i32, ptr %arrayidx2841, align 4
  %idxprom2842 = sext i32 %1995 to i64
  %arrayidx2843 = getelementptr inbounds i32, ptr %1992, i64 %idxprom2842
  %1996 = load i32, ptr %arrayidx2843, align 4
  %or2844 = or i32 %1996, %shl2837
  store i32 %or2844, ptr %arrayidx2843, align 4
  %1997 = load ptr, ptr %s.addr, align 8
  %cftab2845 = getelementptr inbounds %struct.DState, ptr %1997, i32 0, i32 18
  %1998 = load i8, ptr %uc, align 1
  %idxprom2846 = zext i8 %1998 to i64
  %arrayidx2847 = getelementptr inbounds [257 x i32], ptr %cftab2845, i64 0, i64 %idxprom2846
  %1999 = load i32, ptr %arrayidx2847, align 4
  %inc2848 = add nsw i32 %1999, 1
  store i32 %inc2848, ptr %arrayidx2847, align 4
  br label %for.inc2849

for.inc2849:                                      ; preds = %for.body2831
  %2000 = load i32, ptr %i, align 4
  %inc2850 = add nsw i32 %2000, 1
  store i32 %inc2850, ptr %i, align 4
  br label %for.cond2828, !llvm.loop !37

for.end2851:                                      ; preds = %for.cond2828
  %2001 = load ptr, ptr %s.addr, align 8
  %tt2852 = getelementptr inbounds %struct.DState, ptr %2001, i32 0, i32 20
  %2002 = load ptr, ptr %tt2852, align 8
  %2003 = load ptr, ptr %s.addr, align 8
  %origPtr2853 = getelementptr inbounds %struct.DState, ptr %2003, i32 0, i32 13
  %2004 = load i32, ptr %origPtr2853, align 8
  %idxprom2854 = sext i32 %2004 to i64
  %arrayidx2855 = getelementptr inbounds i32, ptr %2002, i64 %idxprom2854
  %2005 = load i32, ptr %arrayidx2855, align 4
  %shr2856 = lshr i32 %2005, 8
  %2006 = load ptr, ptr %s.addr, align 8
  %tPos2857 = getelementptr inbounds %struct.DState, ptr %2006, i32 0, i32 14
  store i32 %shr2856, ptr %tPos2857, align 4
  %2007 = load ptr, ptr %s.addr, align 8
  %nblock_used2858 = getelementptr inbounds %struct.DState, ptr %2007, i32 0, i32 17
  store i32 0, ptr %nblock_used2858, align 4
  %2008 = load ptr, ptr %s.addr, align 8
  %blockRandomised2859 = getelementptr inbounds %struct.DState, ptr %2008, i32 0, i32 4
  %2009 = load i8, ptr %blockRandomised2859, align 4
  %tobool2860 = icmp ne i8 %2009, 0
  br i1 %tobool2860, label %if.then2861, label %if.else2903

if.then2861:                                      ; preds = %for.end2851
  %2010 = load ptr, ptr %s.addr, align 8
  %rNToGo2862 = getelementptr inbounds %struct.DState, ptr %2010, i32 0, i32 5
  store i32 0, ptr %rNToGo2862, align 8
  %2011 = load ptr, ptr %s.addr, align 8
  %rTPos2863 = getelementptr inbounds %struct.DState, ptr %2011, i32 0, i32 6
  store i32 0, ptr %rTPos2863, align 4
  %2012 = load ptr, ptr %s.addr, align 8
  %tt2864 = getelementptr inbounds %struct.DState, ptr %2012, i32 0, i32 20
  %2013 = load ptr, ptr %tt2864, align 8
  %2014 = load ptr, ptr %s.addr, align 8
  %tPos2865 = getelementptr inbounds %struct.DState, ptr %2014, i32 0, i32 14
  %2015 = load i32, ptr %tPos2865, align 4
  %idxprom2866 = zext i32 %2015 to i64
  %arrayidx2867 = getelementptr inbounds i32, ptr %2013, i64 %idxprom2866
  %2016 = load i32, ptr %arrayidx2867, align 4
  %2017 = load ptr, ptr %s.addr, align 8
  %tPos2868 = getelementptr inbounds %struct.DState, ptr %2017, i32 0, i32 14
  store i32 %2016, ptr %tPos2868, align 4
  %2018 = load ptr, ptr %s.addr, align 8
  %tPos2869 = getelementptr inbounds %struct.DState, ptr %2018, i32 0, i32 14
  %2019 = load i32, ptr %tPos2869, align 4
  %and2870 = and i32 %2019, 255
  %conv2871 = trunc i32 %and2870 to i8
  %conv2872 = zext i8 %conv2871 to i32
  %2020 = load ptr, ptr %s.addr, align 8
  %k02873 = getelementptr inbounds %struct.DState, ptr %2020, i32 0, i32 15
  store i32 %conv2872, ptr %k02873, align 8
  %2021 = load ptr, ptr %s.addr, align 8
  %tPos2874 = getelementptr inbounds %struct.DState, ptr %2021, i32 0, i32 14
  %2022 = load i32, ptr %tPos2874, align 4
  %shr2875 = lshr i32 %2022, 8
  store i32 %shr2875, ptr %tPos2874, align 4
  %2023 = load ptr, ptr %s.addr, align 8
  %nblock_used2876 = getelementptr inbounds %struct.DState, ptr %2023, i32 0, i32 17
  %2024 = load i32, ptr %nblock_used2876, align 4
  %inc2877 = add nsw i32 %2024, 1
  store i32 %inc2877, ptr %nblock_used2876, align 4
  %2025 = load ptr, ptr %s.addr, align 8
  %rNToGo2878 = getelementptr inbounds %struct.DState, ptr %2025, i32 0, i32 5
  %2026 = load i32, ptr %rNToGo2878, align 8
  %cmp2879 = icmp eq i32 %2026, 0
  br i1 %cmp2879, label %if.then2881, label %if.end2894

if.then2881:                                      ; preds = %if.then2861
  %2027 = load ptr, ptr %s.addr, align 8
  %rTPos2882 = getelementptr inbounds %struct.DState, ptr %2027, i32 0, i32 6
  %2028 = load i32, ptr %rTPos2882, align 4
  %idxprom2883 = sext i32 %2028 to i64
  %arrayidx2884 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom2883
  %2029 = load i32, ptr %arrayidx2884, align 4
  %2030 = load ptr, ptr %s.addr, align 8
  %rNToGo2885 = getelementptr inbounds %struct.DState, ptr %2030, i32 0, i32 5
  store i32 %2029, ptr %rNToGo2885, align 8
  %2031 = load ptr, ptr %s.addr, align 8
  %rTPos2886 = getelementptr inbounds %struct.DState, ptr %2031, i32 0, i32 6
  %2032 = load i32, ptr %rTPos2886, align 4
  %inc2887 = add nsw i32 %2032, 1
  store i32 %inc2887, ptr %rTPos2886, align 4
  %2033 = load ptr, ptr %s.addr, align 8
  %rTPos2888 = getelementptr inbounds %struct.DState, ptr %2033, i32 0, i32 6
  %2034 = load i32, ptr %rTPos2888, align 4
  %cmp2889 = icmp eq i32 %2034, 512
  br i1 %cmp2889, label %if.then2891, label %if.end2893

if.then2891:                                      ; preds = %if.then2881
  %2035 = load ptr, ptr %s.addr, align 8
  %rTPos2892 = getelementptr inbounds %struct.DState, ptr %2035, i32 0, i32 6
  store i32 0, ptr %rTPos2892, align 4
  br label %if.end2893

if.end2893:                                       ; preds = %if.then2891, %if.then2881
  br label %if.end2894

if.end2894:                                       ; preds = %if.end2893, %if.then2861
  %2036 = load ptr, ptr %s.addr, align 8
  %rNToGo2895 = getelementptr inbounds %struct.DState, ptr %2036, i32 0, i32 5
  %2037 = load i32, ptr %rNToGo2895, align 8
  %dec2896 = add nsw i32 %2037, -1
  store i32 %dec2896, ptr %rNToGo2895, align 8
  %2038 = load ptr, ptr %s.addr, align 8
  %rNToGo2897 = getelementptr inbounds %struct.DState, ptr %2038, i32 0, i32 5
  %2039 = load i32, ptr %rNToGo2897, align 8
  %cmp2898 = icmp eq i32 %2039, 1
  %2040 = zext i1 %cmp2898 to i64
  %cond2900 = select i1 %cmp2898, i32 1, i32 0
  %2041 = load ptr, ptr %s.addr, align 8
  %k02901 = getelementptr inbounds %struct.DState, ptr %2041, i32 0, i32 15
  %2042 = load i32, ptr %k02901, align 8
  %xor2902 = xor i32 %2042, %cond2900
  store i32 %xor2902, ptr %k02901, align 8
  br label %if.end2918

if.else2903:                                      ; preds = %for.end2851
  %2043 = load ptr, ptr %s.addr, align 8
  %tt2904 = getelementptr inbounds %struct.DState, ptr %2043, i32 0, i32 20
  %2044 = load ptr, ptr %tt2904, align 8
  %2045 = load ptr, ptr %s.addr, align 8
  %tPos2905 = getelementptr inbounds %struct.DState, ptr %2045, i32 0, i32 14
  %2046 = load i32, ptr %tPos2905, align 4
  %idxprom2906 = zext i32 %2046 to i64
  %arrayidx2907 = getelementptr inbounds i32, ptr %2044, i64 %idxprom2906
  %2047 = load i32, ptr %arrayidx2907, align 4
  %2048 = load ptr, ptr %s.addr, align 8
  %tPos2908 = getelementptr inbounds %struct.DState, ptr %2048, i32 0, i32 14
  store i32 %2047, ptr %tPos2908, align 4
  %2049 = load ptr, ptr %s.addr, align 8
  %tPos2909 = getelementptr inbounds %struct.DState, ptr %2049, i32 0, i32 14
  %2050 = load i32, ptr %tPos2909, align 4
  %and2910 = and i32 %2050, 255
  %conv2911 = trunc i32 %and2910 to i8
  %conv2912 = zext i8 %conv2911 to i32
  %2051 = load ptr, ptr %s.addr, align 8
  %k02913 = getelementptr inbounds %struct.DState, ptr %2051, i32 0, i32 15
  store i32 %conv2912, ptr %k02913, align 8
  %2052 = load ptr, ptr %s.addr, align 8
  %tPos2914 = getelementptr inbounds %struct.DState, ptr %2052, i32 0, i32 14
  %2053 = load i32, ptr %tPos2914, align 4
  %shr2915 = lshr i32 %2053, 8
  store i32 %shr2915, ptr %tPos2914, align 4
  %2054 = load ptr, ptr %s.addr, align 8
  %nblock_used2916 = getelementptr inbounds %struct.DState, ptr %2054, i32 0, i32 17
  %2055 = load i32, ptr %nblock_used2916, align 4
  %inc2917 = add nsw i32 %2055, 1
  store i32 %inc2917, ptr %nblock_used2916, align 4
  br label %if.end2918

if.end2918:                                       ; preds = %if.else2903, %if.end2894
  br label %if.end2919

if.end2919:                                       ; preds = %if.end2918, %if.end2826
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

endhdr_2:                                         ; preds = %if.then326
  br label %sw.bb2920

sw.bb2920:                                        ; preds = %if.end, %endhdr_2
  %2056 = load ptr, ptr %s.addr, align 8
  %state2921 = getelementptr inbounds %struct.DState, ptr %2056, i32 0, i32 1
  store i32 42, ptr %state2921, align 8
  br label %while.body2923

while.body2923:                                   ; preds = %sw.bb2920, %if.end2970
  %2057 = load ptr, ptr %s.addr, align 8
  %bsLive2924 = getelementptr inbounds %struct.DState, ptr %2057, i32 0, i32 8
  %2058 = load i32, ptr %bsLive2924, align 4
  %cmp2925 = icmp sge i32 %2058, 8
  br i1 %cmp2925, label %if.then2927, label %if.end2937

if.then2927:                                      ; preds = %while.body2923
  %2059 = load ptr, ptr %s.addr, align 8
  %bsBuff2929 = getelementptr inbounds %struct.DState, ptr %2059, i32 0, i32 7
  %2060 = load i32, ptr %bsBuff2929, align 8
  %2061 = load ptr, ptr %s.addr, align 8
  %bsLive2930 = getelementptr inbounds %struct.DState, ptr %2061, i32 0, i32 8
  %2062 = load i32, ptr %bsLive2930, align 4
  %sub2931 = sub nsw i32 %2062, 8
  %shr2932 = lshr i32 %2060, %sub2931
  %and2933 = and i32 %shr2932, 255
  store i32 %and2933, ptr %v2928, align 4
  %2063 = load ptr, ptr %s.addr, align 8
  %bsLive2934 = getelementptr inbounds %struct.DState, ptr %2063, i32 0, i32 8
  %2064 = load i32, ptr %bsLive2934, align 4
  %sub2935 = sub nsw i32 %2064, 8
  store i32 %sub2935, ptr %bsLive2934, align 4
  %2065 = load i32, ptr %v2928, align 4
  %conv2936 = trunc i32 %2065 to i8
  store i8 %conv2936, ptr %uc, align 1
  br label %while.end2971

if.end2937:                                       ; preds = %while.body2923
  %2066 = load ptr, ptr %s.addr, align 8
  %strm2938 = getelementptr inbounds %struct.DState, ptr %2066, i32 0, i32 0
  %2067 = load ptr, ptr %strm2938, align 8
  %avail_in2939 = getelementptr inbounds %struct.bz_stream, ptr %2067, i32 0, i32 1
  %2068 = load i32, ptr %avail_in2939, align 8
  %cmp2940 = icmp eq i32 %2068, 0
  br i1 %cmp2940, label %if.then2942, label %if.end2943

if.then2942:                                      ; preds = %if.end2937
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2943:                                       ; preds = %if.end2937
  %2069 = load ptr, ptr %s.addr, align 8
  %bsBuff2944 = getelementptr inbounds %struct.DState, ptr %2069, i32 0, i32 7
  %2070 = load i32, ptr %bsBuff2944, align 8
  %shl2945 = shl i32 %2070, 8
  %2071 = load ptr, ptr %s.addr, align 8
  %strm2946 = getelementptr inbounds %struct.DState, ptr %2071, i32 0, i32 0
  %2072 = load ptr, ptr %strm2946, align 8
  %next_in2947 = getelementptr inbounds %struct.bz_stream, ptr %2072, i32 0, i32 0
  %2073 = load ptr, ptr %next_in2947, align 8
  %2074 = load i8, ptr %2073, align 1
  %conv2948 = zext i8 %2074 to i32
  %or2949 = or i32 %shl2945, %conv2948
  %2075 = load ptr, ptr %s.addr, align 8
  %bsBuff2950 = getelementptr inbounds %struct.DState, ptr %2075, i32 0, i32 7
  store i32 %or2949, ptr %bsBuff2950, align 8
  %2076 = load ptr, ptr %s.addr, align 8
  %bsLive2951 = getelementptr inbounds %struct.DState, ptr %2076, i32 0, i32 8
  %2077 = load i32, ptr %bsLive2951, align 4
  %add2952 = add nsw i32 %2077, 8
  store i32 %add2952, ptr %bsLive2951, align 4
  %2078 = load ptr, ptr %s.addr, align 8
  %strm2953 = getelementptr inbounds %struct.DState, ptr %2078, i32 0, i32 0
  %2079 = load ptr, ptr %strm2953, align 8
  %next_in2954 = getelementptr inbounds %struct.bz_stream, ptr %2079, i32 0, i32 0
  %2080 = load ptr, ptr %next_in2954, align 8
  %incdec.ptr2955 = getelementptr inbounds i8, ptr %2080, i32 1
  store ptr %incdec.ptr2955, ptr %next_in2954, align 8
  %2081 = load ptr, ptr %s.addr, align 8
  %strm2956 = getelementptr inbounds %struct.DState, ptr %2081, i32 0, i32 0
  %2082 = load ptr, ptr %strm2956, align 8
  %avail_in2957 = getelementptr inbounds %struct.bz_stream, ptr %2082, i32 0, i32 1
  %2083 = load i32, ptr %avail_in2957, align 8
  %dec2958 = add i32 %2083, -1
  store i32 %dec2958, ptr %avail_in2957, align 8
  %2084 = load ptr, ptr %s.addr, align 8
  %strm2959 = getelementptr inbounds %struct.DState, ptr %2084, i32 0, i32 0
  %2085 = load ptr, ptr %strm2959, align 8
  %total_in_lo322960 = getelementptr inbounds %struct.bz_stream, ptr %2085, i32 0, i32 2
  %2086 = load i32, ptr %total_in_lo322960, align 4
  %inc2961 = add i32 %2086, 1
  store i32 %inc2961, ptr %total_in_lo322960, align 4
  %2087 = load ptr, ptr %s.addr, align 8
  %strm2962 = getelementptr inbounds %struct.DState, ptr %2087, i32 0, i32 0
  %2088 = load ptr, ptr %strm2962, align 8
  %total_in_lo322963 = getelementptr inbounds %struct.bz_stream, ptr %2088, i32 0, i32 2
  %2089 = load i32, ptr %total_in_lo322963, align 4
  %cmp2964 = icmp eq i32 %2089, 0
  br i1 %cmp2964, label %if.then2966, label %if.end2970

if.then2966:                                      ; preds = %if.end2943
  %2090 = load ptr, ptr %s.addr, align 8
  %strm2967 = getelementptr inbounds %struct.DState, ptr %2090, i32 0, i32 0
  %2091 = load ptr, ptr %strm2967, align 8
  %total_in_hi322968 = getelementptr inbounds %struct.bz_stream, ptr %2091, i32 0, i32 3
  %2092 = load i32, ptr %total_in_hi322968, align 8
  %inc2969 = add i32 %2092, 1
  store i32 %inc2969, ptr %total_in_hi322968, align 8
  br label %if.end2970

if.end2970:                                       ; preds = %if.then2966, %if.end2943
  br label %while.body2923

while.end2971:                                    ; preds = %if.then2927
  %2093 = load i8, ptr %uc, align 1
  %conv2972 = zext i8 %2093 to i32
  %cmp2973 = icmp ne i32 %conv2972, 114
  br i1 %cmp2973, label %if.then2975, label %if.end2976

if.then2975:                                      ; preds = %while.end2971
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2976:                                       ; preds = %while.end2971
  br label %sw.bb2977

sw.bb2977:                                        ; preds = %if.end, %if.end2976
  %2094 = load ptr, ptr %s.addr, align 8
  %state2978 = getelementptr inbounds %struct.DState, ptr %2094, i32 0, i32 1
  store i32 43, ptr %state2978, align 8
  br label %while.body2980

while.body2980:                                   ; preds = %sw.bb2977, %if.end3027
  %2095 = load ptr, ptr %s.addr, align 8
  %bsLive2981 = getelementptr inbounds %struct.DState, ptr %2095, i32 0, i32 8
  %2096 = load i32, ptr %bsLive2981, align 4
  %cmp2982 = icmp sge i32 %2096, 8
  br i1 %cmp2982, label %if.then2984, label %if.end2994

if.then2984:                                      ; preds = %while.body2980
  %2097 = load ptr, ptr %s.addr, align 8
  %bsBuff2986 = getelementptr inbounds %struct.DState, ptr %2097, i32 0, i32 7
  %2098 = load i32, ptr %bsBuff2986, align 8
  %2099 = load ptr, ptr %s.addr, align 8
  %bsLive2987 = getelementptr inbounds %struct.DState, ptr %2099, i32 0, i32 8
  %2100 = load i32, ptr %bsLive2987, align 4
  %sub2988 = sub nsw i32 %2100, 8
  %shr2989 = lshr i32 %2098, %sub2988
  %and2990 = and i32 %shr2989, 255
  store i32 %and2990, ptr %v2985, align 4
  %2101 = load ptr, ptr %s.addr, align 8
  %bsLive2991 = getelementptr inbounds %struct.DState, ptr %2101, i32 0, i32 8
  %2102 = load i32, ptr %bsLive2991, align 4
  %sub2992 = sub nsw i32 %2102, 8
  store i32 %sub2992, ptr %bsLive2991, align 4
  %2103 = load i32, ptr %v2985, align 4
  %conv2993 = trunc i32 %2103 to i8
  store i8 %conv2993, ptr %uc, align 1
  br label %while.end3028

if.end2994:                                       ; preds = %while.body2980
  %2104 = load ptr, ptr %s.addr, align 8
  %strm2995 = getelementptr inbounds %struct.DState, ptr %2104, i32 0, i32 0
  %2105 = load ptr, ptr %strm2995, align 8
  %avail_in2996 = getelementptr inbounds %struct.bz_stream, ptr %2105, i32 0, i32 1
  %2106 = load i32, ptr %avail_in2996, align 8
  %cmp2997 = icmp eq i32 %2106, 0
  br i1 %cmp2997, label %if.then2999, label %if.end3000

if.then2999:                                      ; preds = %if.end2994
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3000:                                       ; preds = %if.end2994
  %2107 = load ptr, ptr %s.addr, align 8
  %bsBuff3001 = getelementptr inbounds %struct.DState, ptr %2107, i32 0, i32 7
  %2108 = load i32, ptr %bsBuff3001, align 8
  %shl3002 = shl i32 %2108, 8
  %2109 = load ptr, ptr %s.addr, align 8
  %strm3003 = getelementptr inbounds %struct.DState, ptr %2109, i32 0, i32 0
  %2110 = load ptr, ptr %strm3003, align 8
  %next_in3004 = getelementptr inbounds %struct.bz_stream, ptr %2110, i32 0, i32 0
  %2111 = load ptr, ptr %next_in3004, align 8
  %2112 = load i8, ptr %2111, align 1
  %conv3005 = zext i8 %2112 to i32
  %or3006 = or i32 %shl3002, %conv3005
  %2113 = load ptr, ptr %s.addr, align 8
  %bsBuff3007 = getelementptr inbounds %struct.DState, ptr %2113, i32 0, i32 7
  store i32 %or3006, ptr %bsBuff3007, align 8
  %2114 = load ptr, ptr %s.addr, align 8
  %bsLive3008 = getelementptr inbounds %struct.DState, ptr %2114, i32 0, i32 8
  %2115 = load i32, ptr %bsLive3008, align 4
  %add3009 = add nsw i32 %2115, 8
  store i32 %add3009, ptr %bsLive3008, align 4
  %2116 = load ptr, ptr %s.addr, align 8
  %strm3010 = getelementptr inbounds %struct.DState, ptr %2116, i32 0, i32 0
  %2117 = load ptr, ptr %strm3010, align 8
  %next_in3011 = getelementptr inbounds %struct.bz_stream, ptr %2117, i32 0, i32 0
  %2118 = load ptr, ptr %next_in3011, align 8
  %incdec.ptr3012 = getelementptr inbounds i8, ptr %2118, i32 1
  store ptr %incdec.ptr3012, ptr %next_in3011, align 8
  %2119 = load ptr, ptr %s.addr, align 8
  %strm3013 = getelementptr inbounds %struct.DState, ptr %2119, i32 0, i32 0
  %2120 = load ptr, ptr %strm3013, align 8
  %avail_in3014 = getelementptr inbounds %struct.bz_stream, ptr %2120, i32 0, i32 1
  %2121 = load i32, ptr %avail_in3014, align 8
  %dec3015 = add i32 %2121, -1
  store i32 %dec3015, ptr %avail_in3014, align 8
  %2122 = load ptr, ptr %s.addr, align 8
  %strm3016 = getelementptr inbounds %struct.DState, ptr %2122, i32 0, i32 0
  %2123 = load ptr, ptr %strm3016, align 8
  %total_in_lo323017 = getelementptr inbounds %struct.bz_stream, ptr %2123, i32 0, i32 2
  %2124 = load i32, ptr %total_in_lo323017, align 4
  %inc3018 = add i32 %2124, 1
  store i32 %inc3018, ptr %total_in_lo323017, align 4
  %2125 = load ptr, ptr %s.addr, align 8
  %strm3019 = getelementptr inbounds %struct.DState, ptr %2125, i32 0, i32 0
  %2126 = load ptr, ptr %strm3019, align 8
  %total_in_lo323020 = getelementptr inbounds %struct.bz_stream, ptr %2126, i32 0, i32 2
  %2127 = load i32, ptr %total_in_lo323020, align 4
  %cmp3021 = icmp eq i32 %2127, 0
  br i1 %cmp3021, label %if.then3023, label %if.end3027

if.then3023:                                      ; preds = %if.end3000
  %2128 = load ptr, ptr %s.addr, align 8
  %strm3024 = getelementptr inbounds %struct.DState, ptr %2128, i32 0, i32 0
  %2129 = load ptr, ptr %strm3024, align 8
  %total_in_hi323025 = getelementptr inbounds %struct.bz_stream, ptr %2129, i32 0, i32 3
  %2130 = load i32, ptr %total_in_hi323025, align 8
  %inc3026 = add i32 %2130, 1
  store i32 %inc3026, ptr %total_in_hi323025, align 8
  br label %if.end3027

if.end3027:                                       ; preds = %if.then3023, %if.end3000
  br label %while.body2980

while.end3028:                                    ; preds = %if.then2984
  %2131 = load i8, ptr %uc, align 1
  %conv3029 = zext i8 %2131 to i32
  %cmp3030 = icmp ne i32 %conv3029, 69
  br i1 %cmp3030, label %if.then3032, label %if.end3033

if.then3032:                                      ; preds = %while.end3028
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3033:                                       ; preds = %while.end3028
  br label %sw.bb3034

sw.bb3034:                                        ; preds = %if.end, %if.end3033
  %2132 = load ptr, ptr %s.addr, align 8
  %state3035 = getelementptr inbounds %struct.DState, ptr %2132, i32 0, i32 1
  store i32 44, ptr %state3035, align 8
  br label %while.body3037

while.body3037:                                   ; preds = %sw.bb3034, %if.end3084
  %2133 = load ptr, ptr %s.addr, align 8
  %bsLive3038 = getelementptr inbounds %struct.DState, ptr %2133, i32 0, i32 8
  %2134 = load i32, ptr %bsLive3038, align 4
  %cmp3039 = icmp sge i32 %2134, 8
  br i1 %cmp3039, label %if.then3041, label %if.end3051

if.then3041:                                      ; preds = %while.body3037
  %2135 = load ptr, ptr %s.addr, align 8
  %bsBuff3043 = getelementptr inbounds %struct.DState, ptr %2135, i32 0, i32 7
  %2136 = load i32, ptr %bsBuff3043, align 8
  %2137 = load ptr, ptr %s.addr, align 8
  %bsLive3044 = getelementptr inbounds %struct.DState, ptr %2137, i32 0, i32 8
  %2138 = load i32, ptr %bsLive3044, align 4
  %sub3045 = sub nsw i32 %2138, 8
  %shr3046 = lshr i32 %2136, %sub3045
  %and3047 = and i32 %shr3046, 255
  store i32 %and3047, ptr %v3042, align 4
  %2139 = load ptr, ptr %s.addr, align 8
  %bsLive3048 = getelementptr inbounds %struct.DState, ptr %2139, i32 0, i32 8
  %2140 = load i32, ptr %bsLive3048, align 4
  %sub3049 = sub nsw i32 %2140, 8
  store i32 %sub3049, ptr %bsLive3048, align 4
  %2141 = load i32, ptr %v3042, align 4
  %conv3050 = trunc i32 %2141 to i8
  store i8 %conv3050, ptr %uc, align 1
  br label %while.end3085

if.end3051:                                       ; preds = %while.body3037
  %2142 = load ptr, ptr %s.addr, align 8
  %strm3052 = getelementptr inbounds %struct.DState, ptr %2142, i32 0, i32 0
  %2143 = load ptr, ptr %strm3052, align 8
  %avail_in3053 = getelementptr inbounds %struct.bz_stream, ptr %2143, i32 0, i32 1
  %2144 = load i32, ptr %avail_in3053, align 8
  %cmp3054 = icmp eq i32 %2144, 0
  br i1 %cmp3054, label %if.then3056, label %if.end3057

if.then3056:                                      ; preds = %if.end3051
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3057:                                       ; preds = %if.end3051
  %2145 = load ptr, ptr %s.addr, align 8
  %bsBuff3058 = getelementptr inbounds %struct.DState, ptr %2145, i32 0, i32 7
  %2146 = load i32, ptr %bsBuff3058, align 8
  %shl3059 = shl i32 %2146, 8
  %2147 = load ptr, ptr %s.addr, align 8
  %strm3060 = getelementptr inbounds %struct.DState, ptr %2147, i32 0, i32 0
  %2148 = load ptr, ptr %strm3060, align 8
  %next_in3061 = getelementptr inbounds %struct.bz_stream, ptr %2148, i32 0, i32 0
  %2149 = load ptr, ptr %next_in3061, align 8
  %2150 = load i8, ptr %2149, align 1
  %conv3062 = zext i8 %2150 to i32
  %or3063 = or i32 %shl3059, %conv3062
  %2151 = load ptr, ptr %s.addr, align 8
  %bsBuff3064 = getelementptr inbounds %struct.DState, ptr %2151, i32 0, i32 7
  store i32 %or3063, ptr %bsBuff3064, align 8
  %2152 = load ptr, ptr %s.addr, align 8
  %bsLive3065 = getelementptr inbounds %struct.DState, ptr %2152, i32 0, i32 8
  %2153 = load i32, ptr %bsLive3065, align 4
  %add3066 = add nsw i32 %2153, 8
  store i32 %add3066, ptr %bsLive3065, align 4
  %2154 = load ptr, ptr %s.addr, align 8
  %strm3067 = getelementptr inbounds %struct.DState, ptr %2154, i32 0, i32 0
  %2155 = load ptr, ptr %strm3067, align 8
  %next_in3068 = getelementptr inbounds %struct.bz_stream, ptr %2155, i32 0, i32 0
  %2156 = load ptr, ptr %next_in3068, align 8
  %incdec.ptr3069 = getelementptr inbounds i8, ptr %2156, i32 1
  store ptr %incdec.ptr3069, ptr %next_in3068, align 8
  %2157 = load ptr, ptr %s.addr, align 8
  %strm3070 = getelementptr inbounds %struct.DState, ptr %2157, i32 0, i32 0
  %2158 = load ptr, ptr %strm3070, align 8
  %avail_in3071 = getelementptr inbounds %struct.bz_stream, ptr %2158, i32 0, i32 1
  %2159 = load i32, ptr %avail_in3071, align 8
  %dec3072 = add i32 %2159, -1
  store i32 %dec3072, ptr %avail_in3071, align 8
  %2160 = load ptr, ptr %s.addr, align 8
  %strm3073 = getelementptr inbounds %struct.DState, ptr %2160, i32 0, i32 0
  %2161 = load ptr, ptr %strm3073, align 8
  %total_in_lo323074 = getelementptr inbounds %struct.bz_stream, ptr %2161, i32 0, i32 2
  %2162 = load i32, ptr %total_in_lo323074, align 4
  %inc3075 = add i32 %2162, 1
  store i32 %inc3075, ptr %total_in_lo323074, align 4
  %2163 = load ptr, ptr %s.addr, align 8
  %strm3076 = getelementptr inbounds %struct.DState, ptr %2163, i32 0, i32 0
  %2164 = load ptr, ptr %strm3076, align 8
  %total_in_lo323077 = getelementptr inbounds %struct.bz_stream, ptr %2164, i32 0, i32 2
  %2165 = load i32, ptr %total_in_lo323077, align 4
  %cmp3078 = icmp eq i32 %2165, 0
  br i1 %cmp3078, label %if.then3080, label %if.end3084

if.then3080:                                      ; preds = %if.end3057
  %2166 = load ptr, ptr %s.addr, align 8
  %strm3081 = getelementptr inbounds %struct.DState, ptr %2166, i32 0, i32 0
  %2167 = load ptr, ptr %strm3081, align 8
  %total_in_hi323082 = getelementptr inbounds %struct.bz_stream, ptr %2167, i32 0, i32 3
  %2168 = load i32, ptr %total_in_hi323082, align 8
  %inc3083 = add i32 %2168, 1
  store i32 %inc3083, ptr %total_in_hi323082, align 8
  br label %if.end3084

if.end3084:                                       ; preds = %if.then3080, %if.end3057
  br label %while.body3037

while.end3085:                                    ; preds = %if.then3041
  %2169 = load i8, ptr %uc, align 1
  %conv3086 = zext i8 %2169 to i32
  %cmp3087 = icmp ne i32 %conv3086, 56
  br i1 %cmp3087, label %if.then3089, label %if.end3090

if.then3089:                                      ; preds = %while.end3085
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3090:                                       ; preds = %while.end3085
  br label %sw.bb3091

sw.bb3091:                                        ; preds = %if.end, %if.end3090
  %2170 = load ptr, ptr %s.addr, align 8
  %state3092 = getelementptr inbounds %struct.DState, ptr %2170, i32 0, i32 1
  store i32 45, ptr %state3092, align 8
  br label %while.body3094

while.body3094:                                   ; preds = %sw.bb3091, %if.end3141
  %2171 = load ptr, ptr %s.addr, align 8
  %bsLive3095 = getelementptr inbounds %struct.DState, ptr %2171, i32 0, i32 8
  %2172 = load i32, ptr %bsLive3095, align 4
  %cmp3096 = icmp sge i32 %2172, 8
  br i1 %cmp3096, label %if.then3098, label %if.end3108

if.then3098:                                      ; preds = %while.body3094
  %2173 = load ptr, ptr %s.addr, align 8
  %bsBuff3100 = getelementptr inbounds %struct.DState, ptr %2173, i32 0, i32 7
  %2174 = load i32, ptr %bsBuff3100, align 8
  %2175 = load ptr, ptr %s.addr, align 8
  %bsLive3101 = getelementptr inbounds %struct.DState, ptr %2175, i32 0, i32 8
  %2176 = load i32, ptr %bsLive3101, align 4
  %sub3102 = sub nsw i32 %2176, 8
  %shr3103 = lshr i32 %2174, %sub3102
  %and3104 = and i32 %shr3103, 255
  store i32 %and3104, ptr %v3099, align 4
  %2177 = load ptr, ptr %s.addr, align 8
  %bsLive3105 = getelementptr inbounds %struct.DState, ptr %2177, i32 0, i32 8
  %2178 = load i32, ptr %bsLive3105, align 4
  %sub3106 = sub nsw i32 %2178, 8
  store i32 %sub3106, ptr %bsLive3105, align 4
  %2179 = load i32, ptr %v3099, align 4
  %conv3107 = trunc i32 %2179 to i8
  store i8 %conv3107, ptr %uc, align 1
  br label %while.end3142

if.end3108:                                       ; preds = %while.body3094
  %2180 = load ptr, ptr %s.addr, align 8
  %strm3109 = getelementptr inbounds %struct.DState, ptr %2180, i32 0, i32 0
  %2181 = load ptr, ptr %strm3109, align 8
  %avail_in3110 = getelementptr inbounds %struct.bz_stream, ptr %2181, i32 0, i32 1
  %2182 = load i32, ptr %avail_in3110, align 8
  %cmp3111 = icmp eq i32 %2182, 0
  br i1 %cmp3111, label %if.then3113, label %if.end3114

if.then3113:                                      ; preds = %if.end3108
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3114:                                       ; preds = %if.end3108
  %2183 = load ptr, ptr %s.addr, align 8
  %bsBuff3115 = getelementptr inbounds %struct.DState, ptr %2183, i32 0, i32 7
  %2184 = load i32, ptr %bsBuff3115, align 8
  %shl3116 = shl i32 %2184, 8
  %2185 = load ptr, ptr %s.addr, align 8
  %strm3117 = getelementptr inbounds %struct.DState, ptr %2185, i32 0, i32 0
  %2186 = load ptr, ptr %strm3117, align 8
  %next_in3118 = getelementptr inbounds %struct.bz_stream, ptr %2186, i32 0, i32 0
  %2187 = load ptr, ptr %next_in3118, align 8
  %2188 = load i8, ptr %2187, align 1
  %conv3119 = zext i8 %2188 to i32
  %or3120 = or i32 %shl3116, %conv3119
  %2189 = load ptr, ptr %s.addr, align 8
  %bsBuff3121 = getelementptr inbounds %struct.DState, ptr %2189, i32 0, i32 7
  store i32 %or3120, ptr %bsBuff3121, align 8
  %2190 = load ptr, ptr %s.addr, align 8
  %bsLive3122 = getelementptr inbounds %struct.DState, ptr %2190, i32 0, i32 8
  %2191 = load i32, ptr %bsLive3122, align 4
  %add3123 = add nsw i32 %2191, 8
  store i32 %add3123, ptr %bsLive3122, align 4
  %2192 = load ptr, ptr %s.addr, align 8
  %strm3124 = getelementptr inbounds %struct.DState, ptr %2192, i32 0, i32 0
  %2193 = load ptr, ptr %strm3124, align 8
  %next_in3125 = getelementptr inbounds %struct.bz_stream, ptr %2193, i32 0, i32 0
  %2194 = load ptr, ptr %next_in3125, align 8
  %incdec.ptr3126 = getelementptr inbounds i8, ptr %2194, i32 1
  store ptr %incdec.ptr3126, ptr %next_in3125, align 8
  %2195 = load ptr, ptr %s.addr, align 8
  %strm3127 = getelementptr inbounds %struct.DState, ptr %2195, i32 0, i32 0
  %2196 = load ptr, ptr %strm3127, align 8
  %avail_in3128 = getelementptr inbounds %struct.bz_stream, ptr %2196, i32 0, i32 1
  %2197 = load i32, ptr %avail_in3128, align 8
  %dec3129 = add i32 %2197, -1
  store i32 %dec3129, ptr %avail_in3128, align 8
  %2198 = load ptr, ptr %s.addr, align 8
  %strm3130 = getelementptr inbounds %struct.DState, ptr %2198, i32 0, i32 0
  %2199 = load ptr, ptr %strm3130, align 8
  %total_in_lo323131 = getelementptr inbounds %struct.bz_stream, ptr %2199, i32 0, i32 2
  %2200 = load i32, ptr %total_in_lo323131, align 4
  %inc3132 = add i32 %2200, 1
  store i32 %inc3132, ptr %total_in_lo323131, align 4
  %2201 = load ptr, ptr %s.addr, align 8
  %strm3133 = getelementptr inbounds %struct.DState, ptr %2201, i32 0, i32 0
  %2202 = load ptr, ptr %strm3133, align 8
  %total_in_lo323134 = getelementptr inbounds %struct.bz_stream, ptr %2202, i32 0, i32 2
  %2203 = load i32, ptr %total_in_lo323134, align 4
  %cmp3135 = icmp eq i32 %2203, 0
  br i1 %cmp3135, label %if.then3137, label %if.end3141

if.then3137:                                      ; preds = %if.end3114
  %2204 = load ptr, ptr %s.addr, align 8
  %strm3138 = getelementptr inbounds %struct.DState, ptr %2204, i32 0, i32 0
  %2205 = load ptr, ptr %strm3138, align 8
  %total_in_hi323139 = getelementptr inbounds %struct.bz_stream, ptr %2205, i32 0, i32 3
  %2206 = load i32, ptr %total_in_hi323139, align 8
  %inc3140 = add i32 %2206, 1
  store i32 %inc3140, ptr %total_in_hi323139, align 8
  br label %if.end3141

if.end3141:                                       ; preds = %if.then3137, %if.end3114
  br label %while.body3094

while.end3142:                                    ; preds = %if.then3098
  %2207 = load i8, ptr %uc, align 1
  %conv3143 = zext i8 %2207 to i32
  %cmp3144 = icmp ne i32 %conv3143, 80
  br i1 %cmp3144, label %if.then3146, label %if.end3147

if.then3146:                                      ; preds = %while.end3142
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3147:                                       ; preds = %while.end3142
  br label %sw.bb3148

sw.bb3148:                                        ; preds = %if.end, %if.end3147
  %2208 = load ptr, ptr %s.addr, align 8
  %state3149 = getelementptr inbounds %struct.DState, ptr %2208, i32 0, i32 1
  store i32 46, ptr %state3149, align 8
  br label %while.body3151

while.body3151:                                   ; preds = %sw.bb3148, %if.end3198
  %2209 = load ptr, ptr %s.addr, align 8
  %bsLive3152 = getelementptr inbounds %struct.DState, ptr %2209, i32 0, i32 8
  %2210 = load i32, ptr %bsLive3152, align 4
  %cmp3153 = icmp sge i32 %2210, 8
  br i1 %cmp3153, label %if.then3155, label %if.end3165

if.then3155:                                      ; preds = %while.body3151
  %2211 = load ptr, ptr %s.addr, align 8
  %bsBuff3157 = getelementptr inbounds %struct.DState, ptr %2211, i32 0, i32 7
  %2212 = load i32, ptr %bsBuff3157, align 8
  %2213 = load ptr, ptr %s.addr, align 8
  %bsLive3158 = getelementptr inbounds %struct.DState, ptr %2213, i32 0, i32 8
  %2214 = load i32, ptr %bsLive3158, align 4
  %sub3159 = sub nsw i32 %2214, 8
  %shr3160 = lshr i32 %2212, %sub3159
  %and3161 = and i32 %shr3160, 255
  store i32 %and3161, ptr %v3156, align 4
  %2215 = load ptr, ptr %s.addr, align 8
  %bsLive3162 = getelementptr inbounds %struct.DState, ptr %2215, i32 0, i32 8
  %2216 = load i32, ptr %bsLive3162, align 4
  %sub3163 = sub nsw i32 %2216, 8
  store i32 %sub3163, ptr %bsLive3162, align 4
  %2217 = load i32, ptr %v3156, align 4
  %conv3164 = trunc i32 %2217 to i8
  store i8 %conv3164, ptr %uc, align 1
  br label %while.end3199

if.end3165:                                       ; preds = %while.body3151
  %2218 = load ptr, ptr %s.addr, align 8
  %strm3166 = getelementptr inbounds %struct.DState, ptr %2218, i32 0, i32 0
  %2219 = load ptr, ptr %strm3166, align 8
  %avail_in3167 = getelementptr inbounds %struct.bz_stream, ptr %2219, i32 0, i32 1
  %2220 = load i32, ptr %avail_in3167, align 8
  %cmp3168 = icmp eq i32 %2220, 0
  br i1 %cmp3168, label %if.then3170, label %if.end3171

if.then3170:                                      ; preds = %if.end3165
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3171:                                       ; preds = %if.end3165
  %2221 = load ptr, ptr %s.addr, align 8
  %bsBuff3172 = getelementptr inbounds %struct.DState, ptr %2221, i32 0, i32 7
  %2222 = load i32, ptr %bsBuff3172, align 8
  %shl3173 = shl i32 %2222, 8
  %2223 = load ptr, ptr %s.addr, align 8
  %strm3174 = getelementptr inbounds %struct.DState, ptr %2223, i32 0, i32 0
  %2224 = load ptr, ptr %strm3174, align 8
  %next_in3175 = getelementptr inbounds %struct.bz_stream, ptr %2224, i32 0, i32 0
  %2225 = load ptr, ptr %next_in3175, align 8
  %2226 = load i8, ptr %2225, align 1
  %conv3176 = zext i8 %2226 to i32
  %or3177 = or i32 %shl3173, %conv3176
  %2227 = load ptr, ptr %s.addr, align 8
  %bsBuff3178 = getelementptr inbounds %struct.DState, ptr %2227, i32 0, i32 7
  store i32 %or3177, ptr %bsBuff3178, align 8
  %2228 = load ptr, ptr %s.addr, align 8
  %bsLive3179 = getelementptr inbounds %struct.DState, ptr %2228, i32 0, i32 8
  %2229 = load i32, ptr %bsLive3179, align 4
  %add3180 = add nsw i32 %2229, 8
  store i32 %add3180, ptr %bsLive3179, align 4
  %2230 = load ptr, ptr %s.addr, align 8
  %strm3181 = getelementptr inbounds %struct.DState, ptr %2230, i32 0, i32 0
  %2231 = load ptr, ptr %strm3181, align 8
  %next_in3182 = getelementptr inbounds %struct.bz_stream, ptr %2231, i32 0, i32 0
  %2232 = load ptr, ptr %next_in3182, align 8
  %incdec.ptr3183 = getelementptr inbounds i8, ptr %2232, i32 1
  store ptr %incdec.ptr3183, ptr %next_in3182, align 8
  %2233 = load ptr, ptr %s.addr, align 8
  %strm3184 = getelementptr inbounds %struct.DState, ptr %2233, i32 0, i32 0
  %2234 = load ptr, ptr %strm3184, align 8
  %avail_in3185 = getelementptr inbounds %struct.bz_stream, ptr %2234, i32 0, i32 1
  %2235 = load i32, ptr %avail_in3185, align 8
  %dec3186 = add i32 %2235, -1
  store i32 %dec3186, ptr %avail_in3185, align 8
  %2236 = load ptr, ptr %s.addr, align 8
  %strm3187 = getelementptr inbounds %struct.DState, ptr %2236, i32 0, i32 0
  %2237 = load ptr, ptr %strm3187, align 8
  %total_in_lo323188 = getelementptr inbounds %struct.bz_stream, ptr %2237, i32 0, i32 2
  %2238 = load i32, ptr %total_in_lo323188, align 4
  %inc3189 = add i32 %2238, 1
  store i32 %inc3189, ptr %total_in_lo323188, align 4
  %2239 = load ptr, ptr %s.addr, align 8
  %strm3190 = getelementptr inbounds %struct.DState, ptr %2239, i32 0, i32 0
  %2240 = load ptr, ptr %strm3190, align 8
  %total_in_lo323191 = getelementptr inbounds %struct.bz_stream, ptr %2240, i32 0, i32 2
  %2241 = load i32, ptr %total_in_lo323191, align 4
  %cmp3192 = icmp eq i32 %2241, 0
  br i1 %cmp3192, label %if.then3194, label %if.end3198

if.then3194:                                      ; preds = %if.end3171
  %2242 = load ptr, ptr %s.addr, align 8
  %strm3195 = getelementptr inbounds %struct.DState, ptr %2242, i32 0, i32 0
  %2243 = load ptr, ptr %strm3195, align 8
  %total_in_hi323196 = getelementptr inbounds %struct.bz_stream, ptr %2243, i32 0, i32 3
  %2244 = load i32, ptr %total_in_hi323196, align 8
  %inc3197 = add i32 %2244, 1
  store i32 %inc3197, ptr %total_in_hi323196, align 8
  br label %if.end3198

if.end3198:                                       ; preds = %if.then3194, %if.end3171
  br label %while.body3151

while.end3199:                                    ; preds = %if.then3155
  %2245 = load i8, ptr %uc, align 1
  %conv3200 = zext i8 %2245 to i32
  %cmp3201 = icmp ne i32 %conv3200, 144
  br i1 %cmp3201, label %if.then3203, label %if.end3204

if.then3203:                                      ; preds = %while.end3199
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3204:                                       ; preds = %while.end3199
  %2246 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, ptr %2246, i32 0, i32 24
  store i32 0, ptr %storedCombinedCRC, align 4
  br label %sw.bb3205

sw.bb3205:                                        ; preds = %if.end, %if.end3204
  %2247 = load ptr, ptr %s.addr, align 8
  %state3206 = getelementptr inbounds %struct.DState, ptr %2247, i32 0, i32 1
  store i32 47, ptr %state3206, align 8
  br label %while.body3208

while.body3208:                                   ; preds = %sw.bb3205, %if.end3255
  %2248 = load ptr, ptr %s.addr, align 8
  %bsLive3209 = getelementptr inbounds %struct.DState, ptr %2248, i32 0, i32 8
  %2249 = load i32, ptr %bsLive3209, align 4
  %cmp3210 = icmp sge i32 %2249, 8
  br i1 %cmp3210, label %if.then3212, label %if.end3222

if.then3212:                                      ; preds = %while.body3208
  %2250 = load ptr, ptr %s.addr, align 8
  %bsBuff3214 = getelementptr inbounds %struct.DState, ptr %2250, i32 0, i32 7
  %2251 = load i32, ptr %bsBuff3214, align 8
  %2252 = load ptr, ptr %s.addr, align 8
  %bsLive3215 = getelementptr inbounds %struct.DState, ptr %2252, i32 0, i32 8
  %2253 = load i32, ptr %bsLive3215, align 4
  %sub3216 = sub nsw i32 %2253, 8
  %shr3217 = lshr i32 %2251, %sub3216
  %and3218 = and i32 %shr3217, 255
  store i32 %and3218, ptr %v3213, align 4
  %2254 = load ptr, ptr %s.addr, align 8
  %bsLive3219 = getelementptr inbounds %struct.DState, ptr %2254, i32 0, i32 8
  %2255 = load i32, ptr %bsLive3219, align 4
  %sub3220 = sub nsw i32 %2255, 8
  store i32 %sub3220, ptr %bsLive3219, align 4
  %2256 = load i32, ptr %v3213, align 4
  %conv3221 = trunc i32 %2256 to i8
  store i8 %conv3221, ptr %uc, align 1
  br label %while.end3256

if.end3222:                                       ; preds = %while.body3208
  %2257 = load ptr, ptr %s.addr, align 8
  %strm3223 = getelementptr inbounds %struct.DState, ptr %2257, i32 0, i32 0
  %2258 = load ptr, ptr %strm3223, align 8
  %avail_in3224 = getelementptr inbounds %struct.bz_stream, ptr %2258, i32 0, i32 1
  %2259 = load i32, ptr %avail_in3224, align 8
  %cmp3225 = icmp eq i32 %2259, 0
  br i1 %cmp3225, label %if.then3227, label %if.end3228

if.then3227:                                      ; preds = %if.end3222
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3228:                                       ; preds = %if.end3222
  %2260 = load ptr, ptr %s.addr, align 8
  %bsBuff3229 = getelementptr inbounds %struct.DState, ptr %2260, i32 0, i32 7
  %2261 = load i32, ptr %bsBuff3229, align 8
  %shl3230 = shl i32 %2261, 8
  %2262 = load ptr, ptr %s.addr, align 8
  %strm3231 = getelementptr inbounds %struct.DState, ptr %2262, i32 0, i32 0
  %2263 = load ptr, ptr %strm3231, align 8
  %next_in3232 = getelementptr inbounds %struct.bz_stream, ptr %2263, i32 0, i32 0
  %2264 = load ptr, ptr %next_in3232, align 8
  %2265 = load i8, ptr %2264, align 1
  %conv3233 = zext i8 %2265 to i32
  %or3234 = or i32 %shl3230, %conv3233
  %2266 = load ptr, ptr %s.addr, align 8
  %bsBuff3235 = getelementptr inbounds %struct.DState, ptr %2266, i32 0, i32 7
  store i32 %or3234, ptr %bsBuff3235, align 8
  %2267 = load ptr, ptr %s.addr, align 8
  %bsLive3236 = getelementptr inbounds %struct.DState, ptr %2267, i32 0, i32 8
  %2268 = load i32, ptr %bsLive3236, align 4
  %add3237 = add nsw i32 %2268, 8
  store i32 %add3237, ptr %bsLive3236, align 4
  %2269 = load ptr, ptr %s.addr, align 8
  %strm3238 = getelementptr inbounds %struct.DState, ptr %2269, i32 0, i32 0
  %2270 = load ptr, ptr %strm3238, align 8
  %next_in3239 = getelementptr inbounds %struct.bz_stream, ptr %2270, i32 0, i32 0
  %2271 = load ptr, ptr %next_in3239, align 8
  %incdec.ptr3240 = getelementptr inbounds i8, ptr %2271, i32 1
  store ptr %incdec.ptr3240, ptr %next_in3239, align 8
  %2272 = load ptr, ptr %s.addr, align 8
  %strm3241 = getelementptr inbounds %struct.DState, ptr %2272, i32 0, i32 0
  %2273 = load ptr, ptr %strm3241, align 8
  %avail_in3242 = getelementptr inbounds %struct.bz_stream, ptr %2273, i32 0, i32 1
  %2274 = load i32, ptr %avail_in3242, align 8
  %dec3243 = add i32 %2274, -1
  store i32 %dec3243, ptr %avail_in3242, align 8
  %2275 = load ptr, ptr %s.addr, align 8
  %strm3244 = getelementptr inbounds %struct.DState, ptr %2275, i32 0, i32 0
  %2276 = load ptr, ptr %strm3244, align 8
  %total_in_lo323245 = getelementptr inbounds %struct.bz_stream, ptr %2276, i32 0, i32 2
  %2277 = load i32, ptr %total_in_lo323245, align 4
  %inc3246 = add i32 %2277, 1
  store i32 %inc3246, ptr %total_in_lo323245, align 4
  %2278 = load ptr, ptr %s.addr, align 8
  %strm3247 = getelementptr inbounds %struct.DState, ptr %2278, i32 0, i32 0
  %2279 = load ptr, ptr %strm3247, align 8
  %total_in_lo323248 = getelementptr inbounds %struct.bz_stream, ptr %2279, i32 0, i32 2
  %2280 = load i32, ptr %total_in_lo323248, align 4
  %cmp3249 = icmp eq i32 %2280, 0
  br i1 %cmp3249, label %if.then3251, label %if.end3255

if.then3251:                                      ; preds = %if.end3228
  %2281 = load ptr, ptr %s.addr, align 8
  %strm3252 = getelementptr inbounds %struct.DState, ptr %2281, i32 0, i32 0
  %2282 = load ptr, ptr %strm3252, align 8
  %total_in_hi323253 = getelementptr inbounds %struct.bz_stream, ptr %2282, i32 0, i32 3
  %2283 = load i32, ptr %total_in_hi323253, align 8
  %inc3254 = add i32 %2283, 1
  store i32 %inc3254, ptr %total_in_hi323253, align 8
  br label %if.end3255

if.end3255:                                       ; preds = %if.then3251, %if.end3228
  br label %while.body3208

while.end3256:                                    ; preds = %if.then3212
  %2284 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3257 = getelementptr inbounds %struct.DState, ptr %2284, i32 0, i32 24
  %2285 = load i32, ptr %storedCombinedCRC3257, align 4
  %shl3258 = shl i32 %2285, 8
  %2286 = load i8, ptr %uc, align 1
  %conv3259 = zext i8 %2286 to i32
  %or3260 = or i32 %shl3258, %conv3259
  %2287 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3261 = getelementptr inbounds %struct.DState, ptr %2287, i32 0, i32 24
  store i32 %or3260, ptr %storedCombinedCRC3261, align 4
  br label %sw.bb3262

sw.bb3262:                                        ; preds = %if.end, %while.end3256
  %2288 = load ptr, ptr %s.addr, align 8
  %state3263 = getelementptr inbounds %struct.DState, ptr %2288, i32 0, i32 1
  store i32 48, ptr %state3263, align 8
  br label %while.body3265

while.body3265:                                   ; preds = %sw.bb3262, %if.end3312
  %2289 = load ptr, ptr %s.addr, align 8
  %bsLive3266 = getelementptr inbounds %struct.DState, ptr %2289, i32 0, i32 8
  %2290 = load i32, ptr %bsLive3266, align 4
  %cmp3267 = icmp sge i32 %2290, 8
  br i1 %cmp3267, label %if.then3269, label %if.end3279

if.then3269:                                      ; preds = %while.body3265
  %2291 = load ptr, ptr %s.addr, align 8
  %bsBuff3271 = getelementptr inbounds %struct.DState, ptr %2291, i32 0, i32 7
  %2292 = load i32, ptr %bsBuff3271, align 8
  %2293 = load ptr, ptr %s.addr, align 8
  %bsLive3272 = getelementptr inbounds %struct.DState, ptr %2293, i32 0, i32 8
  %2294 = load i32, ptr %bsLive3272, align 4
  %sub3273 = sub nsw i32 %2294, 8
  %shr3274 = lshr i32 %2292, %sub3273
  %and3275 = and i32 %shr3274, 255
  store i32 %and3275, ptr %v3270, align 4
  %2295 = load ptr, ptr %s.addr, align 8
  %bsLive3276 = getelementptr inbounds %struct.DState, ptr %2295, i32 0, i32 8
  %2296 = load i32, ptr %bsLive3276, align 4
  %sub3277 = sub nsw i32 %2296, 8
  store i32 %sub3277, ptr %bsLive3276, align 4
  %2297 = load i32, ptr %v3270, align 4
  %conv3278 = trunc i32 %2297 to i8
  store i8 %conv3278, ptr %uc, align 1
  br label %while.end3313

if.end3279:                                       ; preds = %while.body3265
  %2298 = load ptr, ptr %s.addr, align 8
  %strm3280 = getelementptr inbounds %struct.DState, ptr %2298, i32 0, i32 0
  %2299 = load ptr, ptr %strm3280, align 8
  %avail_in3281 = getelementptr inbounds %struct.bz_stream, ptr %2299, i32 0, i32 1
  %2300 = load i32, ptr %avail_in3281, align 8
  %cmp3282 = icmp eq i32 %2300, 0
  br i1 %cmp3282, label %if.then3284, label %if.end3285

if.then3284:                                      ; preds = %if.end3279
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3285:                                       ; preds = %if.end3279
  %2301 = load ptr, ptr %s.addr, align 8
  %bsBuff3286 = getelementptr inbounds %struct.DState, ptr %2301, i32 0, i32 7
  %2302 = load i32, ptr %bsBuff3286, align 8
  %shl3287 = shl i32 %2302, 8
  %2303 = load ptr, ptr %s.addr, align 8
  %strm3288 = getelementptr inbounds %struct.DState, ptr %2303, i32 0, i32 0
  %2304 = load ptr, ptr %strm3288, align 8
  %next_in3289 = getelementptr inbounds %struct.bz_stream, ptr %2304, i32 0, i32 0
  %2305 = load ptr, ptr %next_in3289, align 8
  %2306 = load i8, ptr %2305, align 1
  %conv3290 = zext i8 %2306 to i32
  %or3291 = or i32 %shl3287, %conv3290
  %2307 = load ptr, ptr %s.addr, align 8
  %bsBuff3292 = getelementptr inbounds %struct.DState, ptr %2307, i32 0, i32 7
  store i32 %or3291, ptr %bsBuff3292, align 8
  %2308 = load ptr, ptr %s.addr, align 8
  %bsLive3293 = getelementptr inbounds %struct.DState, ptr %2308, i32 0, i32 8
  %2309 = load i32, ptr %bsLive3293, align 4
  %add3294 = add nsw i32 %2309, 8
  store i32 %add3294, ptr %bsLive3293, align 4
  %2310 = load ptr, ptr %s.addr, align 8
  %strm3295 = getelementptr inbounds %struct.DState, ptr %2310, i32 0, i32 0
  %2311 = load ptr, ptr %strm3295, align 8
  %next_in3296 = getelementptr inbounds %struct.bz_stream, ptr %2311, i32 0, i32 0
  %2312 = load ptr, ptr %next_in3296, align 8
  %incdec.ptr3297 = getelementptr inbounds i8, ptr %2312, i32 1
  store ptr %incdec.ptr3297, ptr %next_in3296, align 8
  %2313 = load ptr, ptr %s.addr, align 8
  %strm3298 = getelementptr inbounds %struct.DState, ptr %2313, i32 0, i32 0
  %2314 = load ptr, ptr %strm3298, align 8
  %avail_in3299 = getelementptr inbounds %struct.bz_stream, ptr %2314, i32 0, i32 1
  %2315 = load i32, ptr %avail_in3299, align 8
  %dec3300 = add i32 %2315, -1
  store i32 %dec3300, ptr %avail_in3299, align 8
  %2316 = load ptr, ptr %s.addr, align 8
  %strm3301 = getelementptr inbounds %struct.DState, ptr %2316, i32 0, i32 0
  %2317 = load ptr, ptr %strm3301, align 8
  %total_in_lo323302 = getelementptr inbounds %struct.bz_stream, ptr %2317, i32 0, i32 2
  %2318 = load i32, ptr %total_in_lo323302, align 4
  %inc3303 = add i32 %2318, 1
  store i32 %inc3303, ptr %total_in_lo323302, align 4
  %2319 = load ptr, ptr %s.addr, align 8
  %strm3304 = getelementptr inbounds %struct.DState, ptr %2319, i32 0, i32 0
  %2320 = load ptr, ptr %strm3304, align 8
  %total_in_lo323305 = getelementptr inbounds %struct.bz_stream, ptr %2320, i32 0, i32 2
  %2321 = load i32, ptr %total_in_lo323305, align 4
  %cmp3306 = icmp eq i32 %2321, 0
  br i1 %cmp3306, label %if.then3308, label %if.end3312

if.then3308:                                      ; preds = %if.end3285
  %2322 = load ptr, ptr %s.addr, align 8
  %strm3309 = getelementptr inbounds %struct.DState, ptr %2322, i32 0, i32 0
  %2323 = load ptr, ptr %strm3309, align 8
  %total_in_hi323310 = getelementptr inbounds %struct.bz_stream, ptr %2323, i32 0, i32 3
  %2324 = load i32, ptr %total_in_hi323310, align 8
  %inc3311 = add i32 %2324, 1
  store i32 %inc3311, ptr %total_in_hi323310, align 8
  br label %if.end3312

if.end3312:                                       ; preds = %if.then3308, %if.end3285
  br label %while.body3265

while.end3313:                                    ; preds = %if.then3269
  %2325 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3314 = getelementptr inbounds %struct.DState, ptr %2325, i32 0, i32 24
  %2326 = load i32, ptr %storedCombinedCRC3314, align 4
  %shl3315 = shl i32 %2326, 8
  %2327 = load i8, ptr %uc, align 1
  %conv3316 = zext i8 %2327 to i32
  %or3317 = or i32 %shl3315, %conv3316
  %2328 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3318 = getelementptr inbounds %struct.DState, ptr %2328, i32 0, i32 24
  store i32 %or3317, ptr %storedCombinedCRC3318, align 4
  br label %sw.bb3319

sw.bb3319:                                        ; preds = %if.end, %while.end3313
  %2329 = load ptr, ptr %s.addr, align 8
  %state3320 = getelementptr inbounds %struct.DState, ptr %2329, i32 0, i32 1
  store i32 49, ptr %state3320, align 8
  br label %while.body3322

while.body3322:                                   ; preds = %sw.bb3319, %if.end3369
  %2330 = load ptr, ptr %s.addr, align 8
  %bsLive3323 = getelementptr inbounds %struct.DState, ptr %2330, i32 0, i32 8
  %2331 = load i32, ptr %bsLive3323, align 4
  %cmp3324 = icmp sge i32 %2331, 8
  br i1 %cmp3324, label %if.then3326, label %if.end3336

if.then3326:                                      ; preds = %while.body3322
  %2332 = load ptr, ptr %s.addr, align 8
  %bsBuff3328 = getelementptr inbounds %struct.DState, ptr %2332, i32 0, i32 7
  %2333 = load i32, ptr %bsBuff3328, align 8
  %2334 = load ptr, ptr %s.addr, align 8
  %bsLive3329 = getelementptr inbounds %struct.DState, ptr %2334, i32 0, i32 8
  %2335 = load i32, ptr %bsLive3329, align 4
  %sub3330 = sub nsw i32 %2335, 8
  %shr3331 = lshr i32 %2333, %sub3330
  %and3332 = and i32 %shr3331, 255
  store i32 %and3332, ptr %v3327, align 4
  %2336 = load ptr, ptr %s.addr, align 8
  %bsLive3333 = getelementptr inbounds %struct.DState, ptr %2336, i32 0, i32 8
  %2337 = load i32, ptr %bsLive3333, align 4
  %sub3334 = sub nsw i32 %2337, 8
  store i32 %sub3334, ptr %bsLive3333, align 4
  %2338 = load i32, ptr %v3327, align 4
  %conv3335 = trunc i32 %2338 to i8
  store i8 %conv3335, ptr %uc, align 1
  br label %while.end3370

if.end3336:                                       ; preds = %while.body3322
  %2339 = load ptr, ptr %s.addr, align 8
  %strm3337 = getelementptr inbounds %struct.DState, ptr %2339, i32 0, i32 0
  %2340 = load ptr, ptr %strm3337, align 8
  %avail_in3338 = getelementptr inbounds %struct.bz_stream, ptr %2340, i32 0, i32 1
  %2341 = load i32, ptr %avail_in3338, align 8
  %cmp3339 = icmp eq i32 %2341, 0
  br i1 %cmp3339, label %if.then3341, label %if.end3342

if.then3341:                                      ; preds = %if.end3336
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3342:                                       ; preds = %if.end3336
  %2342 = load ptr, ptr %s.addr, align 8
  %bsBuff3343 = getelementptr inbounds %struct.DState, ptr %2342, i32 0, i32 7
  %2343 = load i32, ptr %bsBuff3343, align 8
  %shl3344 = shl i32 %2343, 8
  %2344 = load ptr, ptr %s.addr, align 8
  %strm3345 = getelementptr inbounds %struct.DState, ptr %2344, i32 0, i32 0
  %2345 = load ptr, ptr %strm3345, align 8
  %next_in3346 = getelementptr inbounds %struct.bz_stream, ptr %2345, i32 0, i32 0
  %2346 = load ptr, ptr %next_in3346, align 8
  %2347 = load i8, ptr %2346, align 1
  %conv3347 = zext i8 %2347 to i32
  %or3348 = or i32 %shl3344, %conv3347
  %2348 = load ptr, ptr %s.addr, align 8
  %bsBuff3349 = getelementptr inbounds %struct.DState, ptr %2348, i32 0, i32 7
  store i32 %or3348, ptr %bsBuff3349, align 8
  %2349 = load ptr, ptr %s.addr, align 8
  %bsLive3350 = getelementptr inbounds %struct.DState, ptr %2349, i32 0, i32 8
  %2350 = load i32, ptr %bsLive3350, align 4
  %add3351 = add nsw i32 %2350, 8
  store i32 %add3351, ptr %bsLive3350, align 4
  %2351 = load ptr, ptr %s.addr, align 8
  %strm3352 = getelementptr inbounds %struct.DState, ptr %2351, i32 0, i32 0
  %2352 = load ptr, ptr %strm3352, align 8
  %next_in3353 = getelementptr inbounds %struct.bz_stream, ptr %2352, i32 0, i32 0
  %2353 = load ptr, ptr %next_in3353, align 8
  %incdec.ptr3354 = getelementptr inbounds i8, ptr %2353, i32 1
  store ptr %incdec.ptr3354, ptr %next_in3353, align 8
  %2354 = load ptr, ptr %s.addr, align 8
  %strm3355 = getelementptr inbounds %struct.DState, ptr %2354, i32 0, i32 0
  %2355 = load ptr, ptr %strm3355, align 8
  %avail_in3356 = getelementptr inbounds %struct.bz_stream, ptr %2355, i32 0, i32 1
  %2356 = load i32, ptr %avail_in3356, align 8
  %dec3357 = add i32 %2356, -1
  store i32 %dec3357, ptr %avail_in3356, align 8
  %2357 = load ptr, ptr %s.addr, align 8
  %strm3358 = getelementptr inbounds %struct.DState, ptr %2357, i32 0, i32 0
  %2358 = load ptr, ptr %strm3358, align 8
  %total_in_lo323359 = getelementptr inbounds %struct.bz_stream, ptr %2358, i32 0, i32 2
  %2359 = load i32, ptr %total_in_lo323359, align 4
  %inc3360 = add i32 %2359, 1
  store i32 %inc3360, ptr %total_in_lo323359, align 4
  %2360 = load ptr, ptr %s.addr, align 8
  %strm3361 = getelementptr inbounds %struct.DState, ptr %2360, i32 0, i32 0
  %2361 = load ptr, ptr %strm3361, align 8
  %total_in_lo323362 = getelementptr inbounds %struct.bz_stream, ptr %2361, i32 0, i32 2
  %2362 = load i32, ptr %total_in_lo323362, align 4
  %cmp3363 = icmp eq i32 %2362, 0
  br i1 %cmp3363, label %if.then3365, label %if.end3369

if.then3365:                                      ; preds = %if.end3342
  %2363 = load ptr, ptr %s.addr, align 8
  %strm3366 = getelementptr inbounds %struct.DState, ptr %2363, i32 0, i32 0
  %2364 = load ptr, ptr %strm3366, align 8
  %total_in_hi323367 = getelementptr inbounds %struct.bz_stream, ptr %2364, i32 0, i32 3
  %2365 = load i32, ptr %total_in_hi323367, align 8
  %inc3368 = add i32 %2365, 1
  store i32 %inc3368, ptr %total_in_hi323367, align 8
  br label %if.end3369

if.end3369:                                       ; preds = %if.then3365, %if.end3342
  br label %while.body3322

while.end3370:                                    ; preds = %if.then3326
  %2366 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3371 = getelementptr inbounds %struct.DState, ptr %2366, i32 0, i32 24
  %2367 = load i32, ptr %storedCombinedCRC3371, align 4
  %shl3372 = shl i32 %2367, 8
  %2368 = load i8, ptr %uc, align 1
  %conv3373 = zext i8 %2368 to i32
  %or3374 = or i32 %shl3372, %conv3373
  %2369 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3375 = getelementptr inbounds %struct.DState, ptr %2369, i32 0, i32 24
  store i32 %or3374, ptr %storedCombinedCRC3375, align 4
  br label %sw.bb3376

sw.bb3376:                                        ; preds = %if.end, %while.end3370
  %2370 = load ptr, ptr %s.addr, align 8
  %state3377 = getelementptr inbounds %struct.DState, ptr %2370, i32 0, i32 1
  store i32 50, ptr %state3377, align 8
  br label %while.body3379

while.body3379:                                   ; preds = %sw.bb3376, %if.end3426
  %2371 = load ptr, ptr %s.addr, align 8
  %bsLive3380 = getelementptr inbounds %struct.DState, ptr %2371, i32 0, i32 8
  %2372 = load i32, ptr %bsLive3380, align 4
  %cmp3381 = icmp sge i32 %2372, 8
  br i1 %cmp3381, label %if.then3383, label %if.end3393

if.then3383:                                      ; preds = %while.body3379
  %2373 = load ptr, ptr %s.addr, align 8
  %bsBuff3385 = getelementptr inbounds %struct.DState, ptr %2373, i32 0, i32 7
  %2374 = load i32, ptr %bsBuff3385, align 8
  %2375 = load ptr, ptr %s.addr, align 8
  %bsLive3386 = getelementptr inbounds %struct.DState, ptr %2375, i32 0, i32 8
  %2376 = load i32, ptr %bsLive3386, align 4
  %sub3387 = sub nsw i32 %2376, 8
  %shr3388 = lshr i32 %2374, %sub3387
  %and3389 = and i32 %shr3388, 255
  store i32 %and3389, ptr %v3384, align 4
  %2377 = load ptr, ptr %s.addr, align 8
  %bsLive3390 = getelementptr inbounds %struct.DState, ptr %2377, i32 0, i32 8
  %2378 = load i32, ptr %bsLive3390, align 4
  %sub3391 = sub nsw i32 %2378, 8
  store i32 %sub3391, ptr %bsLive3390, align 4
  %2379 = load i32, ptr %v3384, align 4
  %conv3392 = trunc i32 %2379 to i8
  store i8 %conv3392, ptr %uc, align 1
  br label %while.end3427

if.end3393:                                       ; preds = %while.body3379
  %2380 = load ptr, ptr %s.addr, align 8
  %strm3394 = getelementptr inbounds %struct.DState, ptr %2380, i32 0, i32 0
  %2381 = load ptr, ptr %strm3394, align 8
  %avail_in3395 = getelementptr inbounds %struct.bz_stream, ptr %2381, i32 0, i32 1
  %2382 = load i32, ptr %avail_in3395, align 8
  %cmp3396 = icmp eq i32 %2382, 0
  br i1 %cmp3396, label %if.then3398, label %if.end3399

if.then3398:                                      ; preds = %if.end3393
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3399:                                       ; preds = %if.end3393
  %2383 = load ptr, ptr %s.addr, align 8
  %bsBuff3400 = getelementptr inbounds %struct.DState, ptr %2383, i32 0, i32 7
  %2384 = load i32, ptr %bsBuff3400, align 8
  %shl3401 = shl i32 %2384, 8
  %2385 = load ptr, ptr %s.addr, align 8
  %strm3402 = getelementptr inbounds %struct.DState, ptr %2385, i32 0, i32 0
  %2386 = load ptr, ptr %strm3402, align 8
  %next_in3403 = getelementptr inbounds %struct.bz_stream, ptr %2386, i32 0, i32 0
  %2387 = load ptr, ptr %next_in3403, align 8
  %2388 = load i8, ptr %2387, align 1
  %conv3404 = zext i8 %2388 to i32
  %or3405 = or i32 %shl3401, %conv3404
  %2389 = load ptr, ptr %s.addr, align 8
  %bsBuff3406 = getelementptr inbounds %struct.DState, ptr %2389, i32 0, i32 7
  store i32 %or3405, ptr %bsBuff3406, align 8
  %2390 = load ptr, ptr %s.addr, align 8
  %bsLive3407 = getelementptr inbounds %struct.DState, ptr %2390, i32 0, i32 8
  %2391 = load i32, ptr %bsLive3407, align 4
  %add3408 = add nsw i32 %2391, 8
  store i32 %add3408, ptr %bsLive3407, align 4
  %2392 = load ptr, ptr %s.addr, align 8
  %strm3409 = getelementptr inbounds %struct.DState, ptr %2392, i32 0, i32 0
  %2393 = load ptr, ptr %strm3409, align 8
  %next_in3410 = getelementptr inbounds %struct.bz_stream, ptr %2393, i32 0, i32 0
  %2394 = load ptr, ptr %next_in3410, align 8
  %incdec.ptr3411 = getelementptr inbounds i8, ptr %2394, i32 1
  store ptr %incdec.ptr3411, ptr %next_in3410, align 8
  %2395 = load ptr, ptr %s.addr, align 8
  %strm3412 = getelementptr inbounds %struct.DState, ptr %2395, i32 0, i32 0
  %2396 = load ptr, ptr %strm3412, align 8
  %avail_in3413 = getelementptr inbounds %struct.bz_stream, ptr %2396, i32 0, i32 1
  %2397 = load i32, ptr %avail_in3413, align 8
  %dec3414 = add i32 %2397, -1
  store i32 %dec3414, ptr %avail_in3413, align 8
  %2398 = load ptr, ptr %s.addr, align 8
  %strm3415 = getelementptr inbounds %struct.DState, ptr %2398, i32 0, i32 0
  %2399 = load ptr, ptr %strm3415, align 8
  %total_in_lo323416 = getelementptr inbounds %struct.bz_stream, ptr %2399, i32 0, i32 2
  %2400 = load i32, ptr %total_in_lo323416, align 4
  %inc3417 = add i32 %2400, 1
  store i32 %inc3417, ptr %total_in_lo323416, align 4
  %2401 = load ptr, ptr %s.addr, align 8
  %strm3418 = getelementptr inbounds %struct.DState, ptr %2401, i32 0, i32 0
  %2402 = load ptr, ptr %strm3418, align 8
  %total_in_lo323419 = getelementptr inbounds %struct.bz_stream, ptr %2402, i32 0, i32 2
  %2403 = load i32, ptr %total_in_lo323419, align 4
  %cmp3420 = icmp eq i32 %2403, 0
  br i1 %cmp3420, label %if.then3422, label %if.end3426

if.then3422:                                      ; preds = %if.end3399
  %2404 = load ptr, ptr %s.addr, align 8
  %strm3423 = getelementptr inbounds %struct.DState, ptr %2404, i32 0, i32 0
  %2405 = load ptr, ptr %strm3423, align 8
  %total_in_hi323424 = getelementptr inbounds %struct.bz_stream, ptr %2405, i32 0, i32 3
  %2406 = load i32, ptr %total_in_hi323424, align 8
  %inc3425 = add i32 %2406, 1
  store i32 %inc3425, ptr %total_in_hi323424, align 8
  br label %if.end3426

if.end3426:                                       ; preds = %if.then3422, %if.end3399
  br label %while.body3379

while.end3427:                                    ; preds = %if.then3383
  %2407 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3428 = getelementptr inbounds %struct.DState, ptr %2407, i32 0, i32 24
  %2408 = load i32, ptr %storedCombinedCRC3428, align 4
  %shl3429 = shl i32 %2408, 8
  %2409 = load i8, ptr %uc, align 1
  %conv3430 = zext i8 %2409 to i32
  %or3431 = or i32 %shl3429, %conv3430
  %2410 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3432 = getelementptr inbounds %struct.DState, ptr %2410, i32 0, i32 24
  store i32 %or3431, ptr %storedCombinedCRC3432, align 4
  %2411 = load ptr, ptr %s.addr, align 8
  %state3433 = getelementptr inbounds %struct.DState, ptr %2411, i32 0, i32 1
  store i32 1, ptr %state3433, align 8
  store i32 4, ptr %retVal, align 4
  br label %save_state_and_return

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 noundef 4001)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @BZ2_bz__AssertH__fail(i32 noundef 4002)
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.epilog, %while.end3427, %if.then3398, %if.then3341, %if.then3284, %if.then3227, %if.then3203, %if.then3170, %if.then3146, %if.then3113, %if.then3089, %if.then3056, %if.then3032, %if.then2999, %if.then2975, %if.then2942, %if.end2919, %if.then2583, %if.then2536, %if.then2521, %if.then2477, %if.then2447, %if.then2413, %if.then2367, %if.then2166, %if.then2153, %if.then2137, %if.then2105, %if.then2061, %if.then2031, %if.then1997, %if.then1951, %if.then1912, %if.then1868, %if.then1838, %if.then1804, %if.then1758, %if.then1605, %if.then1548, %if.then1524, %if.then1483, %if.then1411, %if.then1373, %if.then1344, %if.then1312, %if.then1290, %if.then1255, %if.then1231, %if.then1182, %if.then1099, %if.then1074, %if.then1066, %if.then1028, %if.then972, %if.then916, %if.then865, %if.then809, %if.then753, %if.then697, %if.then641, %if.then611, %if.then578, %if.then555, %if.then522, %if.then499, %if.then466, %if.then443, %if.then410, %if.then387, %if.then354, %if.then331, %if.then293, %if.then269, %if.then256, %if.then230, %if.then194, %if.then172, %if.then139, %if.then116, %if.then83, %if.then60, %if.then37
  %2412 = load i32, ptr %i, align 4
  %2413 = load ptr, ptr %s.addr, align 8
  %save_i3434 = getelementptr inbounds %struct.DState, ptr %2413, i32 0, i32 40
  store i32 %2412, ptr %save_i3434, align 4
  %2414 = load i32, ptr %j, align 4
  %2415 = load ptr, ptr %s.addr, align 8
  %save_j3435 = getelementptr inbounds %struct.DState, ptr %2415, i32 0, i32 41
  store i32 %2414, ptr %save_j3435, align 8
  %2416 = load i32, ptr %t, align 4
  %2417 = load ptr, ptr %s.addr, align 8
  %save_t3436 = getelementptr inbounds %struct.DState, ptr %2417, i32 0, i32 42
  store i32 %2416, ptr %save_t3436, align 4
  %2418 = load i32, ptr %alphaSize, align 4
  %2419 = load ptr, ptr %s.addr, align 8
  %save_alphaSize3437 = getelementptr inbounds %struct.DState, ptr %2419, i32 0, i32 43
  store i32 %2418, ptr %save_alphaSize3437, align 8
  %2420 = load i32, ptr %nGroups, align 4
  %2421 = load ptr, ptr %s.addr, align 8
  %save_nGroups3438 = getelementptr inbounds %struct.DState, ptr %2421, i32 0, i32 44
  store i32 %2420, ptr %save_nGroups3438, align 4
  %2422 = load i32, ptr %nSelectors, align 4
  %2423 = load ptr, ptr %s.addr, align 8
  %save_nSelectors3439 = getelementptr inbounds %struct.DState, ptr %2423, i32 0, i32 45
  store i32 %2422, ptr %save_nSelectors3439, align 8
  %2424 = load i32, ptr %EOB, align 4
  %2425 = load ptr, ptr %s.addr, align 8
  %save_EOB3440 = getelementptr inbounds %struct.DState, ptr %2425, i32 0, i32 46
  store i32 %2424, ptr %save_EOB3440, align 4
  %2426 = load i32, ptr %groupNo, align 4
  %2427 = load ptr, ptr %s.addr, align 8
  %save_groupNo3441 = getelementptr inbounds %struct.DState, ptr %2427, i32 0, i32 47
  store i32 %2426, ptr %save_groupNo3441, align 8
  %2428 = load i32, ptr %groupPos, align 4
  %2429 = load ptr, ptr %s.addr, align 8
  %save_groupPos3442 = getelementptr inbounds %struct.DState, ptr %2429, i32 0, i32 48
  store i32 %2428, ptr %save_groupPos3442, align 4
  %2430 = load i32, ptr %nextSym, align 4
  %2431 = load ptr, ptr %s.addr, align 8
  %save_nextSym3443 = getelementptr inbounds %struct.DState, ptr %2431, i32 0, i32 49
  store i32 %2430, ptr %save_nextSym3443, align 8
  %2432 = load i32, ptr %nblockMAX, align 4
  %2433 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX3444 = getelementptr inbounds %struct.DState, ptr %2433, i32 0, i32 50
  store i32 %2432, ptr %save_nblockMAX3444, align 4
  %2434 = load i32, ptr %nblock, align 4
  %2435 = load ptr, ptr %s.addr, align 8
  %save_nblock3445 = getelementptr inbounds %struct.DState, ptr %2435, i32 0, i32 51
  store i32 %2434, ptr %save_nblock3445, align 8
  %2436 = load i32, ptr %es, align 4
  %2437 = load ptr, ptr %s.addr, align 8
  %save_es3446 = getelementptr inbounds %struct.DState, ptr %2437, i32 0, i32 52
  store i32 %2436, ptr %save_es3446, align 4
  %2438 = load i32, ptr %N, align 4
  %2439 = load ptr, ptr %s.addr, align 8
  %save_N3447 = getelementptr inbounds %struct.DState, ptr %2439, i32 0, i32 53
  store i32 %2438, ptr %save_N3447, align 8
  %2440 = load i32, ptr %curr, align 4
  %2441 = load ptr, ptr %s.addr, align 8
  %save_curr3448 = getelementptr inbounds %struct.DState, ptr %2441, i32 0, i32 54
  store i32 %2440, ptr %save_curr3448, align 4
  %2442 = load i32, ptr %zt, align 4
  %2443 = load ptr, ptr %s.addr, align 8
  %save_zt3449 = getelementptr inbounds %struct.DState, ptr %2443, i32 0, i32 55
  store i32 %2442, ptr %save_zt3449, align 8
  %2444 = load i32, ptr %zn, align 4
  %2445 = load ptr, ptr %s.addr, align 8
  %save_zn3450 = getelementptr inbounds %struct.DState, ptr %2445, i32 0, i32 56
  store i32 %2444, ptr %save_zn3450, align 4
  %2446 = load i32, ptr %zvec, align 4
  %2447 = load ptr, ptr %s.addr, align 8
  %save_zvec3451 = getelementptr inbounds %struct.DState, ptr %2447, i32 0, i32 57
  store i32 %2446, ptr %save_zvec3451, align 8
  %2448 = load i32, ptr %zj, align 4
  %2449 = load ptr, ptr %s.addr, align 8
  %save_zj3452 = getelementptr inbounds %struct.DState, ptr %2449, i32 0, i32 58
  store i32 %2448, ptr %save_zj3452, align 4
  %2450 = load i32, ptr %gSel, align 4
  %2451 = load ptr, ptr %s.addr, align 8
  %save_gSel3453 = getelementptr inbounds %struct.DState, ptr %2451, i32 0, i32 59
  store i32 %2450, ptr %save_gSel3453, align 8
  %2452 = load i32, ptr %gMinlen, align 4
  %2453 = load ptr, ptr %s.addr, align 8
  %save_gMinlen3454 = getelementptr inbounds %struct.DState, ptr %2453, i32 0, i32 60
  store i32 %2452, ptr %save_gMinlen3454, align 4
  %2454 = load ptr, ptr %gLimit, align 8
  %2455 = load ptr, ptr %s.addr, align 8
  %save_gLimit3455 = getelementptr inbounds %struct.DState, ptr %2455, i32 0, i32 61
  store ptr %2454, ptr %save_gLimit3455, align 8
  %2456 = load ptr, ptr %gBase, align 8
  %2457 = load ptr, ptr %s.addr, align 8
  %save_gBase3456 = getelementptr inbounds %struct.DState, ptr %2457, i32 0, i32 62
  store ptr %2456, ptr %save_gBase3456, align 8
  %2458 = load ptr, ptr %gPerm, align 8
  %2459 = load ptr, ptr %s.addr, align 8
  %save_gPerm3457 = getelementptr inbounds %struct.DState, ptr %2459, i32 0, i32 63
  store ptr %2458, ptr %save_gPerm3457, align 8
  %2460 = load i32, ptr %retVal, align 4
  ret i32 %2460
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @makeMaps_d(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, ptr %0, i32 0, i32 27
  store i32 0, ptr %nInUse, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, ptr %2, i32 0, i32 28
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %inUse, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %conv = trunc i32 %5 to i8
  %6 = load ptr, ptr %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, ptr %6, i32 0, i32 30
  %7 = load ptr, ptr %s.addr, align 8
  %nInUse1 = getelementptr inbounds %struct.DState, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %nInUse1, align 8
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], ptr %seqToUnseq, i64 0, i64 %idxprom2
  store i8 %conv, ptr %arrayidx3, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %nInUse4 = getelementptr inbounds %struct.DState, ptr %9, i32 0, i32 27
  %10 = load i32, ptr %nInUse4, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %nInUse4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @BZ2_hbCreateDecodeTables(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @BZ2_indexIntoF(i32 noundef, ptr noundef) #1

declare void @BZ2_bz__AssertH__fail(i32 noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
