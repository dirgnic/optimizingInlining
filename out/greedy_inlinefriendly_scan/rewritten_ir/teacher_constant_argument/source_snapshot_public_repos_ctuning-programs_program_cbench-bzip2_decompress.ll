; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_ctuning-programs_program_cbench-bzip2_decompress.prepared.ll'
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
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v1420 = alloca i8, align 1
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1789 = alloca i32, align 4
  %v1982 = alloca i32, align 4
  %ii2168 = alloca i32, align 4
  %jj2169 = alloca i32, align 4
  %kk2170 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v2398 = alloca i32, align 4
  %tmp2689 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s, align 8
  store ptr %0, ptr %strm, align 8
  %state = getelementptr inbounds %struct.DState, ptr %s, i64 0, i32 1
  %1 = load i32, ptr %state, align 8
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %save_i = getelementptr inbounds %struct.DState, ptr %2, i64 0, i32 40
  store i32 0, ptr %save_i, align 4
  %save_j = getelementptr inbounds %struct.DState, ptr %2, i64 0, i32 41
  store i32 0, ptr %save_j, align 8
  %save_t = getelementptr inbounds %struct.DState, ptr %2, i64 0, i32 42
  store i32 0, ptr %save_t, align 4
  %3 = load ptr, ptr %s.addr, align 8
  %save_alphaSize = getelementptr inbounds %struct.DState, ptr %3, i64 0, i32 43
  store i32 0, ptr %save_alphaSize, align 8
  %save_nGroups = getelementptr inbounds %struct.DState, ptr %3, i64 0, i32 44
  store i32 0, ptr %save_nGroups, align 4
  %save_nSelectors = getelementptr inbounds %struct.DState, ptr %3, i64 0, i32 45
  store i32 0, ptr %save_nSelectors, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %save_EOB = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 46
  store i32 0, ptr %save_EOB, align 4
  %save_groupNo = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 47
  store i32 0, ptr %save_groupNo, align 8
  %save_groupPos = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 48
  store i32 0, ptr %save_groupPos, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %save_nextSym = getelementptr inbounds %struct.DState, ptr %5, i64 0, i32 49
  store i32 0, ptr %save_nextSym, align 8
  %save_nblockMAX = getelementptr inbounds %struct.DState, ptr %5, i64 0, i32 50
  store i32 0, ptr %save_nblockMAX, align 4
  %save_nblock = getelementptr inbounds %struct.DState, ptr %5, i64 0, i32 51
  store i32 0, ptr %save_nblock, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %save_es = getelementptr inbounds %struct.DState, ptr %6, i64 0, i32 52
  store i32 0, ptr %save_es, align 4
  %save_N = getelementptr inbounds %struct.DState, ptr %6, i64 0, i32 53
  store i32 0, ptr %save_N, align 8
  %save_curr = getelementptr inbounds %struct.DState, ptr %6, i64 0, i32 54
  store i32 0, ptr %save_curr, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %save_zt = getelementptr inbounds %struct.DState, ptr %7, i64 0, i32 55
  store i32 0, ptr %save_zt, align 8
  %save_zn = getelementptr inbounds %struct.DState, ptr %7, i64 0, i32 56
  store i32 0, ptr %save_zn, align 4
  %save_zvec = getelementptr inbounds %struct.DState, ptr %7, i64 0, i32 57
  store i32 0, ptr %save_zvec, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %save_zj = getelementptr inbounds %struct.DState, ptr %8, i64 0, i32 58
  store i32 0, ptr %save_zj, align 4
  %save_gSel = getelementptr inbounds %struct.DState, ptr %8, i64 0, i32 59
  store i32 0, ptr %save_gSel, align 8
  %save_gMinlen = getelementptr inbounds %struct.DState, ptr %8, i64 0, i32 60
  store i32 0, ptr %save_gMinlen, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %save_gLimit = getelementptr inbounds %struct.DState, ptr %9, i64 0, i32 61
  store ptr null, ptr %save_gLimit, align 8
  %save_gBase = getelementptr inbounds %struct.DState, ptr %9, i64 0, i32 62
  store ptr null, ptr %save_gBase, align 8
  %save_gPerm = getelementptr inbounds %struct.DState, ptr %9, i64 0, i32 63
  store ptr null, ptr %save_gPerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %s.addr, align 8
  %save_i2 = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 40
  %11 = load i32, ptr %save_i2, align 4
  store i32 %11, ptr %i, align 4
  %save_j3 = getelementptr inbounds %struct.DState, ptr %10, i64 0, i32 41
  %12 = load i32, ptr %save_j3, align 8
  store i32 %12, ptr %j, align 4
  %13 = load ptr, ptr %s.addr, align 8
  %save_t4 = getelementptr inbounds %struct.DState, ptr %13, i64 0, i32 42
  %14 = load i32, ptr %save_t4, align 4
  store i32 %14, ptr %t, align 4
  %save_alphaSize5 = getelementptr inbounds %struct.DState, ptr %13, i64 0, i32 43
  %15 = load i32, ptr %save_alphaSize5, align 8
  store i32 %15, ptr %alphaSize, align 4
  %16 = load ptr, ptr %s.addr, align 8
  %save_nGroups6 = getelementptr inbounds %struct.DState, ptr %16, i64 0, i32 44
  %17 = load i32, ptr %save_nGroups6, align 4
  store i32 %17, ptr %nGroups, align 4
  %save_nSelectors7 = getelementptr inbounds %struct.DState, ptr %16, i64 0, i32 45
  %18 = load i32, ptr %save_nSelectors7, align 8
  store i32 %18, ptr %nSelectors, align 4
  %19 = load ptr, ptr %s.addr, align 8
  %save_EOB8 = getelementptr inbounds %struct.DState, ptr %19, i64 0, i32 46
  %20 = load i32, ptr %save_EOB8, align 4
  store i32 %20, ptr %EOB, align 4
  %save_groupNo9 = getelementptr inbounds %struct.DState, ptr %19, i64 0, i32 47
  %21 = load i32, ptr %save_groupNo9, align 8
  store i32 %21, ptr %groupNo, align 4
  %22 = load ptr, ptr %s.addr, align 8
  %save_groupPos10 = getelementptr inbounds %struct.DState, ptr %22, i64 0, i32 48
  %23 = load i32, ptr %save_groupPos10, align 4
  store i32 %23, ptr %groupPos, align 4
  %save_nextSym11 = getelementptr inbounds %struct.DState, ptr %22, i64 0, i32 49
  %24 = load i32, ptr %save_nextSym11, align 8
  store i32 %24, ptr %nextSym, align 4
  %25 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX12 = getelementptr inbounds %struct.DState, ptr %25, i64 0, i32 50
  %26 = load i32, ptr %save_nblockMAX12, align 4
  store i32 %26, ptr %nblockMAX, align 4
  %save_nblock13 = getelementptr inbounds %struct.DState, ptr %25, i64 0, i32 51
  %27 = load i32, ptr %save_nblock13, align 8
  store i32 %27, ptr %nblock, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %save_es14 = getelementptr inbounds %struct.DState, ptr %28, i64 0, i32 52
  %29 = load i32, ptr %save_es14, align 4
  store i32 %29, ptr %es, align 4
  %save_N15 = getelementptr inbounds %struct.DState, ptr %28, i64 0, i32 53
  %30 = load i32, ptr %save_N15, align 8
  store i32 %30, ptr %N, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %save_curr16 = getelementptr inbounds %struct.DState, ptr %31, i64 0, i32 54
  %32 = load i32, ptr %save_curr16, align 4
  store i32 %32, ptr %curr, align 4
  %save_zt17 = getelementptr inbounds %struct.DState, ptr %31, i64 0, i32 55
  %33 = load i32, ptr %save_zt17, align 8
  store i32 %33, ptr %zt, align 4
  %34 = load ptr, ptr %s.addr, align 8
  %save_zn18 = getelementptr inbounds %struct.DState, ptr %34, i64 0, i32 56
  %35 = load i32, ptr %save_zn18, align 4
  store i32 %35, ptr %zn, align 4
  %save_zvec19 = getelementptr inbounds %struct.DState, ptr %34, i64 0, i32 57
  %36 = load i32, ptr %save_zvec19, align 8
  store i32 %36, ptr %zvec, align 4
  %37 = load ptr, ptr %s.addr, align 8
  %save_zj20 = getelementptr inbounds %struct.DState, ptr %37, i64 0, i32 58
  %38 = load i32, ptr %save_zj20, align 4
  store i32 %38, ptr %zj, align 4
  %save_gSel21 = getelementptr inbounds %struct.DState, ptr %37, i64 0, i32 59
  %39 = load i32, ptr %save_gSel21, align 8
  store i32 %39, ptr %gSel, align 4
  %40 = load ptr, ptr %s.addr, align 8
  %save_gMinlen22 = getelementptr inbounds %struct.DState, ptr %40, i64 0, i32 60
  %41 = load i32, ptr %save_gMinlen22, align 4
  store i32 %41, ptr %gMinlen, align 4
  %save_gLimit23 = getelementptr inbounds %struct.DState, ptr %40, i64 0, i32 61
  %42 = load ptr, ptr %save_gLimit23, align 8
  store ptr %42, ptr %gLimit, align 8
  %43 = load ptr, ptr %s.addr, align 8
  %save_gBase24 = getelementptr inbounds %struct.DState, ptr %43, i64 0, i32 62
  %44 = load ptr, ptr %save_gBase24, align 8
  store ptr %44, ptr %gBase, align 8
  %save_gPerm25 = getelementptr inbounds %struct.DState, ptr %43, i64 0, i32 63
  %45 = load ptr, ptr %save_gPerm25, align 8
  store ptr %45, ptr %gPerm, align 8
  store i32 0, ptr %retVal, align 4
  %46 = load ptr, ptr %s.addr, align 8
  %state26 = getelementptr inbounds %struct.DState, ptr %46, i64 0, i32 1
  %47 = load i32, ptr %state26, align 8
  switch i32 %47, label %sw.default [
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
  %48 = load ptr, ptr %s.addr, align 8
  %state27 = getelementptr inbounds %struct.DState, ptr %48, i64 0, i32 1
  store i32 10, ptr %state27, align 8
  br label %while.body

while.body:                                       ; preds = %if.end56, %sw.bb
  %49 = load ptr, ptr %s.addr, align 8
  %bsLive = getelementptr inbounds %struct.DState, ptr %49, i64 0, i32 8
  %50 = load i32, ptr %bsLive, align 4
  %cmp28 = icmp sgt i32 %50, 7
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %while.body
  %51 = load ptr, ptr %s.addr, align 8
  %bsBuff = getelementptr inbounds %struct.DState, ptr %51, i64 0, i32 7
  %52 = load i32, ptr %bsBuff, align 8
  %bsLive30 = getelementptr inbounds %struct.DState, ptr %51, i64 0, i32 8
  %53 = load i32, ptr %bsLive30, align 4
  %sub = add nsw i32 %53, -8
  %shr = lshr i32 %52, %sub
  %54 = load ptr, ptr %s.addr, align 8
  %bsLive31 = getelementptr inbounds %struct.DState, ptr %54, i64 0, i32 8
  %55 = load i32, ptr %bsLive31, align 4
  %sub32 = add nsw i32 %55, -8
  store i32 %sub32, ptr %bsLive31, align 4
  %conv = trunc i32 %shr to i8
  store i8 %conv, ptr %uc, align 1
  %56 = load i8, ptr %uc, align 1
  %cmp58.not = icmp eq i8 %56, 66
  br i1 %cmp58.not, label %sw.bb62, label %if.then60

if.end33:                                         ; preds = %while.body
  %57 = load ptr, ptr %s.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, ptr %58, i64 0, i32 1
  %59 = load i32, ptr %avail_in, align 8
  %cmp35 = icmp eq i32 %59, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end38:                                         ; preds = %if.end33
  %60 = load ptr, ptr %s.addr, align 8
  %bsBuff39 = getelementptr inbounds %struct.DState, ptr %60, i64 0, i32 7
  %61 = load i32, ptr %bsBuff39, align 8
  %shl = shl i32 %61, 8
  %62 = load ptr, ptr %60, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = load i8, ptr %63, align 1
  %conv41 = zext i8 %64 to i32
  %or = or i32 %shl, %conv41
  %65 = load ptr, ptr %s.addr, align 8
  %bsBuff42 = getelementptr inbounds %struct.DState, ptr %65, i64 0, i32 7
  store i32 %or, ptr %bsBuff42, align 8
  %bsLive43 = getelementptr inbounds %struct.DState, ptr %65, i64 0, i32 8
  %66 = load i32, ptr %bsLive43, align 4
  %add = add nsw i32 %66, 8
  store i32 %add, ptr %bsLive43, align 4
  %67 = load ptr, ptr %s.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %68, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr, ptr %68, align 8
  %70 = load ptr, ptr %s.addr, align 8
  %71 = load ptr, ptr %70, align 8
  %avail_in47 = getelementptr inbounds %struct.bz_stream, ptr %71, i64 0, i32 1
  %72 = load i32, ptr %avail_in47, align 8
  %dec = add i32 %72, -1
  store i32 %dec, ptr %avail_in47, align 8
  %73 = load ptr, ptr %70, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, ptr %73, i64 0, i32 2
  %74 = load i32, ptr %total_in_lo32, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %total_in_lo32, align 4
  %75 = load ptr, ptr %s.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %total_in_lo3250 = getelementptr inbounds %struct.bz_stream, ptr %76, i64 0, i32 2
  %77 = load i32, ptr %total_in_lo3250, align 4
  %cmp51 = icmp eq i32 %77, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end38
  %78 = load ptr, ptr %s.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, ptr %79, i64 0, i32 3
  %80 = load i32, ptr %total_in_hi32, align 8
  %inc55 = add i32 %80, 1
  store i32 %inc55, ptr %total_in_hi32, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end38
  br label %while.body

if.then60:                                        ; preds = %if.then29
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb62:                                          ; preds = %if.then29, %if.end
  %81 = load ptr, ptr %s.addr, align 8
  %state63 = getelementptr inbounds %struct.DState, ptr %81, i64 0, i32 1
  store i32 11, ptr %state63, align 8
  br label %while.body64

while.body64:                                     ; preds = %if.end111, %sw.bb62
  %82 = load ptr, ptr %s.addr, align 8
  %bsLive65 = getelementptr inbounds %struct.DState, ptr %82, i64 0, i32 8
  %83 = load i32, ptr %bsLive65, align 4
  %cmp66 = icmp sgt i32 %83, 7
  br i1 %cmp66, label %if.then68, label %if.end78

if.then68:                                        ; preds = %while.body64
  %84 = load ptr, ptr %s.addr, align 8
  %bsBuff70 = getelementptr inbounds %struct.DState, ptr %84, i64 0, i32 7
  %85 = load i32, ptr %bsBuff70, align 8
  %bsLive71 = getelementptr inbounds %struct.DState, ptr %84, i64 0, i32 8
  %86 = load i32, ptr %bsLive71, align 4
  %sub72 = add nsw i32 %86, -8
  %shr73 = lshr i32 %85, %sub72
  %87 = load ptr, ptr %s.addr, align 8
  %bsLive75 = getelementptr inbounds %struct.DState, ptr %87, i64 0, i32 8
  %88 = load i32, ptr %bsLive75, align 4
  %sub76 = add nsw i32 %88, -8
  store i32 %sub76, ptr %bsLive75, align 4
  %conv77 = trunc i32 %shr73 to i8
  store i8 %conv77, ptr %uc, align 1
  %89 = load i8, ptr %uc, align 1
  %cmp114.not = icmp eq i8 %89, 90
  br i1 %cmp114.not, label %sw.bb118, label %if.then116

if.end78:                                         ; preds = %while.body64
  %90 = load ptr, ptr %s.addr, align 8
  %91 = load ptr, ptr %90, align 8
  %avail_in80 = getelementptr inbounds %struct.bz_stream, ptr %91, i64 0, i32 1
  %92 = load i32, ptr %avail_in80, align 8
  %cmp81 = icmp eq i32 %92, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end78
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end84:                                         ; preds = %if.end78
  %93 = load ptr, ptr %s.addr, align 8
  %bsBuff85 = getelementptr inbounds %struct.DState, ptr %93, i64 0, i32 7
  %94 = load i32, ptr %bsBuff85, align 8
  %shl86 = shl i32 %94, 8
  %95 = load ptr, ptr %93, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = load i8, ptr %96, align 1
  %conv89 = zext i8 %97 to i32
  %or90 = or i32 %shl86, %conv89
  %98 = load ptr, ptr %s.addr, align 8
  %bsBuff91 = getelementptr inbounds %struct.DState, ptr %98, i64 0, i32 7
  store i32 %or90, ptr %bsBuff91, align 8
  %bsLive92 = getelementptr inbounds %struct.DState, ptr %98, i64 0, i32 8
  %99 = load i32, ptr %bsLive92, align 4
  %add93 = add nsw i32 %99, 8
  store i32 %add93, ptr %bsLive92, align 4
  %100 = load ptr, ptr %s.addr, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = load ptr, ptr %101, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %incdec.ptr96, ptr %101, align 8
  %103 = load ptr, ptr %s.addr, align 8
  %104 = load ptr, ptr %103, align 8
  %avail_in98 = getelementptr inbounds %struct.bz_stream, ptr %104, i64 0, i32 1
  %105 = load i32, ptr %avail_in98, align 8
  %dec99 = add i32 %105, -1
  store i32 %dec99, ptr %avail_in98, align 8
  %106 = load ptr, ptr %103, align 8
  %total_in_lo32101 = getelementptr inbounds %struct.bz_stream, ptr %106, i64 0, i32 2
  %107 = load i32, ptr %total_in_lo32101, align 4
  %inc102 = add i32 %107, 1
  store i32 %inc102, ptr %total_in_lo32101, align 4
  %108 = load ptr, ptr %s.addr, align 8
  %109 = load ptr, ptr %108, align 8
  %total_in_lo32104 = getelementptr inbounds %struct.bz_stream, ptr %109, i64 0, i32 2
  %110 = load i32, ptr %total_in_lo32104, align 4
  %cmp105 = icmp eq i32 %110, 0
  br i1 %cmp105, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end84
  %111 = load ptr, ptr %s.addr, align 8
  %112 = load ptr, ptr %111, align 8
  %total_in_hi32109 = getelementptr inbounds %struct.bz_stream, ptr %112, i64 0, i32 3
  %113 = load i32, ptr %total_in_hi32109, align 8
  %inc110 = add i32 %113, 1
  store i32 %inc110, ptr %total_in_hi32109, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end84
  br label %while.body64

if.then116:                                       ; preds = %if.then68
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb118:                                         ; preds = %if.then68, %if.end
  %114 = load ptr, ptr %s.addr, align 8
  %state119 = getelementptr inbounds %struct.DState, ptr %114, i64 0, i32 1
  store i32 12, ptr %state119, align 8
  br label %while.body120

while.body120:                                    ; preds = %if.end167, %sw.bb118
  %115 = load ptr, ptr %s.addr, align 8
  %bsLive121 = getelementptr inbounds %struct.DState, ptr %115, i64 0, i32 8
  %116 = load i32, ptr %bsLive121, align 4
  %cmp122 = icmp sgt i32 %116, 7
  br i1 %cmp122, label %if.then124, label %if.end134

if.then124:                                       ; preds = %while.body120
  %117 = load ptr, ptr %s.addr, align 8
  %bsBuff126 = getelementptr inbounds %struct.DState, ptr %117, i64 0, i32 7
  %118 = load i32, ptr %bsBuff126, align 8
  %bsLive127 = getelementptr inbounds %struct.DState, ptr %117, i64 0, i32 8
  %119 = load i32, ptr %bsLive127, align 4
  %sub128 = add nsw i32 %119, -8
  %shr129 = lshr i32 %118, %sub128
  %120 = load ptr, ptr %s.addr, align 8
  %bsLive131 = getelementptr inbounds %struct.DState, ptr %120, i64 0, i32 8
  %121 = load i32, ptr %bsLive131, align 4
  %sub132 = add nsw i32 %121, -8
  store i32 %sub132, ptr %bsLive131, align 4
  %conv133 = trunc i32 %shr129 to i8
  store i8 %conv133, ptr %uc, align 1
  %122 = load i8, ptr %uc, align 1
  %cmp170.not = icmp eq i8 %122, 104
  br i1 %cmp170.not, label %sw.bb174, label %if.then172

if.end134:                                        ; preds = %while.body120
  %123 = load ptr, ptr %s.addr, align 8
  %124 = load ptr, ptr %123, align 8
  %avail_in136 = getelementptr inbounds %struct.bz_stream, ptr %124, i64 0, i32 1
  %125 = load i32, ptr %avail_in136, align 8
  %cmp137 = icmp eq i32 %125, 0
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end134
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end140:                                        ; preds = %if.end134
  %126 = load ptr, ptr %s.addr, align 8
  %bsBuff141 = getelementptr inbounds %struct.DState, ptr %126, i64 0, i32 7
  %127 = load i32, ptr %bsBuff141, align 8
  %shl142 = shl i32 %127, 8
  %128 = load ptr, ptr %126, align 8
  %129 = load ptr, ptr %128, align 8
  %130 = load i8, ptr %129, align 1
  %conv145 = zext i8 %130 to i32
  %or146 = or i32 %shl142, %conv145
  %131 = load ptr, ptr %s.addr, align 8
  %bsBuff147 = getelementptr inbounds %struct.DState, ptr %131, i64 0, i32 7
  store i32 %or146, ptr %bsBuff147, align 8
  %bsLive148 = getelementptr inbounds %struct.DState, ptr %131, i64 0, i32 8
  %132 = load i32, ptr %bsLive148, align 4
  %add149 = add nsw i32 %132, 8
  store i32 %add149, ptr %bsLive148, align 4
  %133 = load ptr, ptr %s.addr, align 8
  %134 = load ptr, ptr %133, align 8
  %135 = load ptr, ptr %134, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %incdec.ptr152, ptr %134, align 8
  %136 = load ptr, ptr %s.addr, align 8
  %137 = load ptr, ptr %136, align 8
  %avail_in154 = getelementptr inbounds %struct.bz_stream, ptr %137, i64 0, i32 1
  %138 = load i32, ptr %avail_in154, align 8
  %dec155 = add i32 %138, -1
  store i32 %dec155, ptr %avail_in154, align 8
  %139 = load ptr, ptr %136, align 8
  %total_in_lo32157 = getelementptr inbounds %struct.bz_stream, ptr %139, i64 0, i32 2
  %140 = load i32, ptr %total_in_lo32157, align 4
  %inc158 = add i32 %140, 1
  store i32 %inc158, ptr %total_in_lo32157, align 4
  %141 = load ptr, ptr %s.addr, align 8
  %142 = load ptr, ptr %141, align 8
  %total_in_lo32160 = getelementptr inbounds %struct.bz_stream, ptr %142, i64 0, i32 2
  %143 = load i32, ptr %total_in_lo32160, align 4
  %cmp161 = icmp eq i32 %143, 0
  br i1 %cmp161, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end140
  %144 = load ptr, ptr %s.addr, align 8
  %145 = load ptr, ptr %144, align 8
  %total_in_hi32165 = getelementptr inbounds %struct.bz_stream, ptr %145, i64 0, i32 3
  %146 = load i32, ptr %total_in_hi32165, align 8
  %inc166 = add i32 %146, 1
  store i32 %inc166, ptr %total_in_hi32165, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end140
  br label %while.body120

if.then172:                                       ; preds = %if.then124
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb174:                                         ; preds = %if.then124, %if.end
  %147 = load ptr, ptr %s.addr, align 8
  %state175 = getelementptr inbounds %struct.DState, ptr %147, i64 0, i32 1
  store i32 13, ptr %state175, align 8
  br label %while.body176

while.body176:                                    ; preds = %if.end222, %sw.bb174
  %148 = load ptr, ptr %s.addr, align 8
  %bsLive177 = getelementptr inbounds %struct.DState, ptr %148, i64 0, i32 8
  %149 = load i32, ptr %bsLive177, align 4
  %cmp178 = icmp sgt i32 %149, 7
  br i1 %cmp178, label %if.then180, label %if.end189

if.then180:                                       ; preds = %while.body176
  %150 = load ptr, ptr %s.addr, align 8
  %bsBuff182 = getelementptr inbounds %struct.DState, ptr %150, i64 0, i32 7
  %151 = load i32, ptr %bsBuff182, align 8
  %bsLive183 = getelementptr inbounds %struct.DState, ptr %150, i64 0, i32 8
  %152 = load i32, ptr %bsLive183, align 4
  %sub184 = add nsw i32 %152, -8
  %shr185 = lshr i32 %151, %sub184
  %and186 = and i32 %shr185, 255
  %153 = load ptr, ptr %s.addr, align 8
  %bsLive187 = getelementptr inbounds %struct.DState, ptr %153, i64 0, i32 8
  %154 = load i32, ptr %bsLive187, align 4
  %sub188 = add nsw i32 %154, -8
  store i32 %sub188, ptr %bsLive187, align 4
  %blockSize100k = getelementptr inbounds %struct.DState, ptr %153, i64 0, i32 9
  store i32 %and186, ptr %blockSize100k, align 8
  %155 = load ptr, ptr %s.addr, align 8
  %blockSize100k224 = getelementptr inbounds %struct.DState, ptr %155, i64 0, i32 9
  %156 = load i32, ptr %blockSize100k224, align 8
  %cmp225 = icmp slt i32 %156, 49
  br i1 %cmp225, label %if.then230, label %lor.lhs.false

if.end189:                                        ; preds = %while.body176
  %157 = load ptr, ptr %s.addr, align 8
  %158 = load ptr, ptr %157, align 8
  %avail_in191 = getelementptr inbounds %struct.bz_stream, ptr %158, i64 0, i32 1
  %159 = load i32, ptr %avail_in191, align 8
  %cmp192 = icmp eq i32 %159, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end189
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end195:                                        ; preds = %if.end189
  %160 = load ptr, ptr %s.addr, align 8
  %bsBuff196 = getelementptr inbounds %struct.DState, ptr %160, i64 0, i32 7
  %161 = load i32, ptr %bsBuff196, align 8
  %shl197 = shl i32 %161, 8
  %162 = load ptr, ptr %160, align 8
  %163 = load ptr, ptr %162, align 8
  %164 = load i8, ptr %163, align 1
  %conv200 = zext i8 %164 to i32
  %or201 = or i32 %shl197, %conv200
  %165 = load ptr, ptr %s.addr, align 8
  %bsBuff202 = getelementptr inbounds %struct.DState, ptr %165, i64 0, i32 7
  store i32 %or201, ptr %bsBuff202, align 8
  %bsLive203 = getelementptr inbounds %struct.DState, ptr %165, i64 0, i32 8
  %166 = load i32, ptr %bsLive203, align 4
  %add204 = add nsw i32 %166, 8
  store i32 %add204, ptr %bsLive203, align 4
  %167 = load ptr, ptr %s.addr, align 8
  %168 = load ptr, ptr %167, align 8
  %169 = load ptr, ptr %168, align 8
  %incdec.ptr207 = getelementptr inbounds i8, ptr %169, i64 1
  store ptr %incdec.ptr207, ptr %168, align 8
  %170 = load ptr, ptr %s.addr, align 8
  %171 = load ptr, ptr %170, align 8
  %avail_in209 = getelementptr inbounds %struct.bz_stream, ptr %171, i64 0, i32 1
  %172 = load i32, ptr %avail_in209, align 8
  %dec210 = add i32 %172, -1
  store i32 %dec210, ptr %avail_in209, align 8
  %173 = load ptr, ptr %170, align 8
  %total_in_lo32212 = getelementptr inbounds %struct.bz_stream, ptr %173, i64 0, i32 2
  %174 = load i32, ptr %total_in_lo32212, align 4
  %inc213 = add i32 %174, 1
  store i32 %inc213, ptr %total_in_lo32212, align 4
  %175 = load ptr, ptr %s.addr, align 8
  %176 = load ptr, ptr %175, align 8
  %total_in_lo32215 = getelementptr inbounds %struct.bz_stream, ptr %176, i64 0, i32 2
  %177 = load i32, ptr %total_in_lo32215, align 4
  %cmp216 = icmp eq i32 %177, 0
  br i1 %cmp216, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.end195
  %178 = load ptr, ptr %s.addr, align 8
  %179 = load ptr, ptr %178, align 8
  %total_in_hi32220 = getelementptr inbounds %struct.bz_stream, ptr %179, i64 0, i32 3
  %180 = load i32, ptr %total_in_hi32220, align 8
  %inc221 = add i32 %180, 1
  store i32 %inc221, ptr %total_in_hi32220, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.end195
  br label %while.body176

lor.lhs.false:                                    ; preds = %if.then180
  %181 = load ptr, ptr %s.addr, align 8
  %blockSize100k227 = getelementptr inbounds %struct.DState, ptr %181, i64 0, i32 9
  %182 = load i32, ptr %blockSize100k227, align 8
  %cmp228 = icmp sgt i32 %182, 57
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false, %if.then180
  store i32 -5, ptr %retVal, align 4
  br label %save_state_and_return

if.end231:                                        ; preds = %lor.lhs.false
  %183 = load ptr, ptr %s.addr, align 8
  %blockSize100k232 = getelementptr inbounds %struct.DState, ptr %183, i64 0, i32 9
  %184 = load i32, ptr %blockSize100k232, align 8
  %sub233 = add nsw i32 %184, -48
  store i32 %sub233, ptr %blockSize100k232, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, ptr %183, i64 0, i32 10
  %185 = load i8, ptr %smallDecompress, align 4
  %tobool.not = icmp eq i8 %185, 0
  br i1 %tobool.not, label %if.else, label %if.then234

if.then234:                                       ; preds = %if.end231
  %186 = load ptr, ptr %strm, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, ptr %186, i64 0, i32 9
  %187 = load ptr, ptr %bzalloc, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, ptr %186, i64 0, i32 11
  %188 = load ptr, ptr %opaque, align 8
  %189 = load ptr, ptr %s.addr, align 8
  %blockSize100k235 = getelementptr inbounds %struct.DState, ptr %189, i64 0, i32 9
  %190 = load i32, ptr %blockSize100k235, align 8
  %mul237 = mul i32 %190, 200000
  %call = call ptr %187(ptr noundef %188, i32 noundef %mul237, i32 noundef 1) #3
  %191 = load ptr, ptr %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, ptr %191, i64 0, i32 21
  store ptr %call, ptr %ll16, align 8
  %192 = load ptr, ptr %strm, align 8
  %bzalloc239 = getelementptr inbounds %struct.bz_stream, ptr %192, i64 0, i32 9
  %193 = load ptr, ptr %bzalloc239, align 8
  %opaque240 = getelementptr inbounds %struct.bz_stream, ptr %192, i64 0, i32 11
  %194 = load ptr, ptr %opaque240, align 8
  %195 = load ptr, ptr %s.addr, align 8
  %blockSize100k241 = getelementptr inbounds %struct.DState, ptr %195, i64 0, i32 9
  %196 = load i32, ptr %blockSize100k241, align 8
  %mul242 = mul nsw i32 %196, 100000
  %shr244 = ashr exact i32 %mul242, 1
  %call248 = call ptr %193(ptr noundef %194, i32 noundef %shr244, i32 noundef 1) #3
  %197 = load ptr, ptr %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, ptr %197, i64 0, i32 22
  store ptr %call248, ptr %ll4, align 8
  %ll16249 = getelementptr inbounds %struct.DState, ptr %197, i64 0, i32 21
  %198 = load ptr, ptr %ll16249, align 8
  %cmp250 = icmp eq ptr %198, null
  br i1 %cmp250, label %if.then256, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %if.then234
  %199 = load ptr, ptr %s.addr, align 8
  %ll4253 = getelementptr inbounds %struct.DState, ptr %199, i64 0, i32 22
  %200 = load ptr, ptr %ll4253, align 8
  %cmp254 = icmp eq ptr %200, null
  br i1 %cmp254, label %if.then256, label %sw.bb272

if.then256:                                       ; preds = %lor.lhs.false252, %if.then234
  store i32 -3, ptr %retVal, align 4
  br label %save_state_and_return

if.else:                                          ; preds = %if.end231
  %201 = load ptr, ptr %strm, align 8
  %bzalloc258 = getelementptr inbounds %struct.bz_stream, ptr %201, i64 0, i32 9
  %202 = load ptr, ptr %bzalloc258, align 8
  %opaque259 = getelementptr inbounds %struct.bz_stream, ptr %201, i64 0, i32 11
  %203 = load ptr, ptr %opaque259, align 8
  %204 = load ptr, ptr %s.addr, align 8
  %blockSize100k260 = getelementptr inbounds %struct.DState, ptr %204, i64 0, i32 9
  %205 = load i32, ptr %blockSize100k260, align 8
  %mul263 = mul i32 %205, 400000
  %call265 = call ptr %202(ptr noundef %203, i32 noundef %mul263, i32 noundef 1) #3
  %206 = load ptr, ptr %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, ptr %206, i64 0, i32 20
  store ptr %call265, ptr %tt, align 8
  %cmp267 = icmp eq ptr %call265, null
  br i1 %cmp267, label %if.then269, label %sw.bb272

if.then269:                                       ; preds = %if.else
  store i32 -3, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb272:                                         ; preds = %lor.lhs.false252, %if.else, %if.end
  %207 = load ptr, ptr %s.addr, align 8
  %state273 = getelementptr inbounds %struct.DState, ptr %207, i64 0, i32 1
  store i32 14, ptr %state273, align 8
  br label %while.body274

while.body274:                                    ; preds = %if.end321, %sw.bb272
  %208 = load ptr, ptr %s.addr, align 8
  %bsLive275 = getelementptr inbounds %struct.DState, ptr %208, i64 0, i32 8
  %209 = load i32, ptr %bsLive275, align 4
  %cmp276 = icmp sgt i32 %209, 7
  br i1 %cmp276, label %if.then278, label %if.end288

if.then278:                                       ; preds = %while.body274
  %210 = load ptr, ptr %s.addr, align 8
  %bsBuff280 = getelementptr inbounds %struct.DState, ptr %210, i64 0, i32 7
  %211 = load i32, ptr %bsBuff280, align 8
  %bsLive281 = getelementptr inbounds %struct.DState, ptr %210, i64 0, i32 8
  %212 = load i32, ptr %bsLive281, align 4
  %sub282 = add nsw i32 %212, -8
  %shr283 = lshr i32 %211, %sub282
  %213 = load ptr, ptr %s.addr, align 8
  %bsLive285 = getelementptr inbounds %struct.DState, ptr %213, i64 0, i32 8
  %214 = load i32, ptr %bsLive285, align 4
  %sub286 = add nsw i32 %214, -8
  store i32 %sub286, ptr %bsLive285, align 4
  %conv287 = trunc i32 %shr283 to i8
  store i8 %conv287, ptr %uc, align 1
  %215 = load i8, ptr %uc, align 1
  %cmp324 = icmp eq i8 %215, 23
  br i1 %cmp324, label %sw.bb2920, label %if.end327

if.end288:                                        ; preds = %while.body274
  %216 = load ptr, ptr %s.addr, align 8
  %217 = load ptr, ptr %216, align 8
  %avail_in290 = getelementptr inbounds %struct.bz_stream, ptr %217, i64 0, i32 1
  %218 = load i32, ptr %avail_in290, align 8
  %cmp291 = icmp eq i32 %218, 0
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.end288
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end294:                                        ; preds = %if.end288
  %219 = load ptr, ptr %s.addr, align 8
  %bsBuff295 = getelementptr inbounds %struct.DState, ptr %219, i64 0, i32 7
  %220 = load i32, ptr %bsBuff295, align 8
  %shl296 = shl i32 %220, 8
  %221 = load ptr, ptr %219, align 8
  %222 = load ptr, ptr %221, align 8
  %223 = load i8, ptr %222, align 1
  %conv299 = zext i8 %223 to i32
  %or300 = or i32 %shl296, %conv299
  %224 = load ptr, ptr %s.addr, align 8
  %bsBuff301 = getelementptr inbounds %struct.DState, ptr %224, i64 0, i32 7
  store i32 %or300, ptr %bsBuff301, align 8
  %bsLive302 = getelementptr inbounds %struct.DState, ptr %224, i64 0, i32 8
  %225 = load i32, ptr %bsLive302, align 4
  %add303 = add nsw i32 %225, 8
  store i32 %add303, ptr %bsLive302, align 4
  %226 = load ptr, ptr %s.addr, align 8
  %227 = load ptr, ptr %226, align 8
  %228 = load ptr, ptr %227, align 8
  %incdec.ptr306 = getelementptr inbounds i8, ptr %228, i64 1
  store ptr %incdec.ptr306, ptr %227, align 8
  %229 = load ptr, ptr %s.addr, align 8
  %230 = load ptr, ptr %229, align 8
  %avail_in308 = getelementptr inbounds %struct.bz_stream, ptr %230, i64 0, i32 1
  %231 = load i32, ptr %avail_in308, align 8
  %dec309 = add i32 %231, -1
  store i32 %dec309, ptr %avail_in308, align 8
  %232 = load ptr, ptr %229, align 8
  %total_in_lo32311 = getelementptr inbounds %struct.bz_stream, ptr %232, i64 0, i32 2
  %233 = load i32, ptr %total_in_lo32311, align 4
  %inc312 = add i32 %233, 1
  store i32 %inc312, ptr %total_in_lo32311, align 4
  %234 = load ptr, ptr %s.addr, align 8
  %235 = load ptr, ptr %234, align 8
  %total_in_lo32314 = getelementptr inbounds %struct.bz_stream, ptr %235, i64 0, i32 2
  %236 = load i32, ptr %total_in_lo32314, align 4
  %cmp315 = icmp eq i32 %236, 0
  br i1 %cmp315, label %if.then317, label %if.end321

if.then317:                                       ; preds = %if.end294
  %237 = load ptr, ptr %s.addr, align 8
  %238 = load ptr, ptr %237, align 8
  %total_in_hi32319 = getelementptr inbounds %struct.bz_stream, ptr %238, i64 0, i32 3
  %239 = load i32, ptr %total_in_hi32319, align 8
  %inc320 = add i32 %239, 1
  store i32 %inc320, ptr %total_in_hi32319, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.then317, %if.end294
  br label %while.body274

if.end327:                                        ; preds = %if.then278
  %240 = load i8, ptr %uc, align 1
  %cmp329.not = icmp eq i8 %240, 49
  br i1 %cmp329.not, label %sw.bb333, label %if.then331

if.then331:                                       ; preds = %if.end327
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb333:                                         ; preds = %if.end327, %if.end
  %241 = load ptr, ptr %s.addr, align 8
  %state334 = getelementptr inbounds %struct.DState, ptr %241, i64 0, i32 1
  store i32 15, ptr %state334, align 8
  br label %while.body335

while.body335:                                    ; preds = %if.end382, %sw.bb333
  %242 = load ptr, ptr %s.addr, align 8
  %bsLive336 = getelementptr inbounds %struct.DState, ptr %242, i64 0, i32 8
  %243 = load i32, ptr %bsLive336, align 4
  %cmp337 = icmp sgt i32 %243, 7
  br i1 %cmp337, label %if.then339, label %if.end349

if.then339:                                       ; preds = %while.body335
  %244 = load ptr, ptr %s.addr, align 8
  %bsBuff341 = getelementptr inbounds %struct.DState, ptr %244, i64 0, i32 7
  %245 = load i32, ptr %bsBuff341, align 8
  %bsLive342 = getelementptr inbounds %struct.DState, ptr %244, i64 0, i32 8
  %246 = load i32, ptr %bsLive342, align 4
  %sub343 = add nsw i32 %246, -8
  %shr344 = lshr i32 %245, %sub343
  %247 = load ptr, ptr %s.addr, align 8
  %bsLive346 = getelementptr inbounds %struct.DState, ptr %247, i64 0, i32 8
  %248 = load i32, ptr %bsLive346, align 4
  %sub347 = add nsw i32 %248, -8
  store i32 %sub347, ptr %bsLive346, align 4
  %conv348 = trunc i32 %shr344 to i8
  store i8 %conv348, ptr %uc, align 1
  %249 = load i8, ptr %uc, align 1
  %cmp385.not = icmp eq i8 %249, 65
  br i1 %cmp385.not, label %sw.bb389, label %if.then387

if.end349:                                        ; preds = %while.body335
  %250 = load ptr, ptr %s.addr, align 8
  %251 = load ptr, ptr %250, align 8
  %avail_in351 = getelementptr inbounds %struct.bz_stream, ptr %251, i64 0, i32 1
  %252 = load i32, ptr %avail_in351, align 8
  %cmp352 = icmp eq i32 %252, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end349
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end355:                                        ; preds = %if.end349
  %253 = load ptr, ptr %s.addr, align 8
  %bsBuff356 = getelementptr inbounds %struct.DState, ptr %253, i64 0, i32 7
  %254 = load i32, ptr %bsBuff356, align 8
  %shl357 = shl i32 %254, 8
  %255 = load ptr, ptr %253, align 8
  %256 = load ptr, ptr %255, align 8
  %257 = load i8, ptr %256, align 1
  %conv360 = zext i8 %257 to i32
  %or361 = or i32 %shl357, %conv360
  %258 = load ptr, ptr %s.addr, align 8
  %bsBuff362 = getelementptr inbounds %struct.DState, ptr %258, i64 0, i32 7
  store i32 %or361, ptr %bsBuff362, align 8
  %bsLive363 = getelementptr inbounds %struct.DState, ptr %258, i64 0, i32 8
  %259 = load i32, ptr %bsLive363, align 4
  %add364 = add nsw i32 %259, 8
  store i32 %add364, ptr %bsLive363, align 4
  %260 = load ptr, ptr %s.addr, align 8
  %261 = load ptr, ptr %260, align 8
  %262 = load ptr, ptr %261, align 8
  %incdec.ptr367 = getelementptr inbounds i8, ptr %262, i64 1
  store ptr %incdec.ptr367, ptr %261, align 8
  %263 = load ptr, ptr %s.addr, align 8
  %264 = load ptr, ptr %263, align 8
  %avail_in369 = getelementptr inbounds %struct.bz_stream, ptr %264, i64 0, i32 1
  %265 = load i32, ptr %avail_in369, align 8
  %dec370 = add i32 %265, -1
  store i32 %dec370, ptr %avail_in369, align 8
  %266 = load ptr, ptr %263, align 8
  %total_in_lo32372 = getelementptr inbounds %struct.bz_stream, ptr %266, i64 0, i32 2
  %267 = load i32, ptr %total_in_lo32372, align 4
  %inc373 = add i32 %267, 1
  store i32 %inc373, ptr %total_in_lo32372, align 4
  %268 = load ptr, ptr %s.addr, align 8
  %269 = load ptr, ptr %268, align 8
  %total_in_lo32375 = getelementptr inbounds %struct.bz_stream, ptr %269, i64 0, i32 2
  %270 = load i32, ptr %total_in_lo32375, align 4
  %cmp376 = icmp eq i32 %270, 0
  br i1 %cmp376, label %if.then378, label %if.end382

if.then378:                                       ; preds = %if.end355
  %271 = load ptr, ptr %s.addr, align 8
  %272 = load ptr, ptr %271, align 8
  %total_in_hi32380 = getelementptr inbounds %struct.bz_stream, ptr %272, i64 0, i32 3
  %273 = load i32, ptr %total_in_hi32380, align 8
  %inc381 = add i32 %273, 1
  store i32 %inc381, ptr %total_in_hi32380, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.then378, %if.end355
  br label %while.body335

if.then387:                                       ; preds = %if.then339
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb389:                                         ; preds = %if.then339, %if.end
  %274 = load ptr, ptr %s.addr, align 8
  %state390 = getelementptr inbounds %struct.DState, ptr %274, i64 0, i32 1
  store i32 16, ptr %state390, align 8
  br label %while.body391

while.body391:                                    ; preds = %if.end438, %sw.bb389
  %275 = load ptr, ptr %s.addr, align 8
  %bsLive392 = getelementptr inbounds %struct.DState, ptr %275, i64 0, i32 8
  %276 = load i32, ptr %bsLive392, align 4
  %cmp393 = icmp sgt i32 %276, 7
  br i1 %cmp393, label %if.then395, label %if.end405

if.then395:                                       ; preds = %while.body391
  %277 = load ptr, ptr %s.addr, align 8
  %bsBuff397 = getelementptr inbounds %struct.DState, ptr %277, i64 0, i32 7
  %278 = load i32, ptr %bsBuff397, align 8
  %bsLive398 = getelementptr inbounds %struct.DState, ptr %277, i64 0, i32 8
  %279 = load i32, ptr %bsLive398, align 4
  %sub399 = add nsw i32 %279, -8
  %shr400 = lshr i32 %278, %sub399
  %280 = load ptr, ptr %s.addr, align 8
  %bsLive402 = getelementptr inbounds %struct.DState, ptr %280, i64 0, i32 8
  %281 = load i32, ptr %bsLive402, align 4
  %sub403 = add nsw i32 %281, -8
  store i32 %sub403, ptr %bsLive402, align 4
  %conv404 = trunc i32 %shr400 to i8
  store i8 %conv404, ptr %uc, align 1
  %282 = load i8, ptr %uc, align 1
  %cmp441.not = icmp eq i8 %282, 89
  br i1 %cmp441.not, label %sw.bb445, label %if.then443

if.end405:                                        ; preds = %while.body391
  %283 = load ptr, ptr %s.addr, align 8
  %284 = load ptr, ptr %283, align 8
  %avail_in407 = getelementptr inbounds %struct.bz_stream, ptr %284, i64 0, i32 1
  %285 = load i32, ptr %avail_in407, align 8
  %cmp408 = icmp eq i32 %285, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.end405
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end411:                                        ; preds = %if.end405
  %286 = load ptr, ptr %s.addr, align 8
  %bsBuff412 = getelementptr inbounds %struct.DState, ptr %286, i64 0, i32 7
  %287 = load i32, ptr %bsBuff412, align 8
  %shl413 = shl i32 %287, 8
  %288 = load ptr, ptr %286, align 8
  %289 = load ptr, ptr %288, align 8
  %290 = load i8, ptr %289, align 1
  %conv416 = zext i8 %290 to i32
  %or417 = or i32 %shl413, %conv416
  %291 = load ptr, ptr %s.addr, align 8
  %bsBuff418 = getelementptr inbounds %struct.DState, ptr %291, i64 0, i32 7
  store i32 %or417, ptr %bsBuff418, align 8
  %bsLive419 = getelementptr inbounds %struct.DState, ptr %291, i64 0, i32 8
  %292 = load i32, ptr %bsLive419, align 4
  %add420 = add nsw i32 %292, 8
  store i32 %add420, ptr %bsLive419, align 4
  %293 = load ptr, ptr %s.addr, align 8
  %294 = load ptr, ptr %293, align 8
  %295 = load ptr, ptr %294, align 8
  %incdec.ptr423 = getelementptr inbounds i8, ptr %295, i64 1
  store ptr %incdec.ptr423, ptr %294, align 8
  %296 = load ptr, ptr %s.addr, align 8
  %297 = load ptr, ptr %296, align 8
  %avail_in425 = getelementptr inbounds %struct.bz_stream, ptr %297, i64 0, i32 1
  %298 = load i32, ptr %avail_in425, align 8
  %dec426 = add i32 %298, -1
  store i32 %dec426, ptr %avail_in425, align 8
  %299 = load ptr, ptr %296, align 8
  %total_in_lo32428 = getelementptr inbounds %struct.bz_stream, ptr %299, i64 0, i32 2
  %300 = load i32, ptr %total_in_lo32428, align 4
  %inc429 = add i32 %300, 1
  store i32 %inc429, ptr %total_in_lo32428, align 4
  %301 = load ptr, ptr %s.addr, align 8
  %302 = load ptr, ptr %301, align 8
  %total_in_lo32431 = getelementptr inbounds %struct.bz_stream, ptr %302, i64 0, i32 2
  %303 = load i32, ptr %total_in_lo32431, align 4
  %cmp432 = icmp eq i32 %303, 0
  br i1 %cmp432, label %if.then434, label %if.end438

if.then434:                                       ; preds = %if.end411
  %304 = load ptr, ptr %s.addr, align 8
  %305 = load ptr, ptr %304, align 8
  %total_in_hi32436 = getelementptr inbounds %struct.bz_stream, ptr %305, i64 0, i32 3
  %306 = load i32, ptr %total_in_hi32436, align 8
  %inc437 = add i32 %306, 1
  store i32 %inc437, ptr %total_in_hi32436, align 8
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %if.end411
  br label %while.body391

if.then443:                                       ; preds = %if.then395
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb445:                                         ; preds = %if.then395, %if.end
  %307 = load ptr, ptr %s.addr, align 8
  %state446 = getelementptr inbounds %struct.DState, ptr %307, i64 0, i32 1
  store i32 17, ptr %state446, align 8
  br label %while.body447

while.body447:                                    ; preds = %if.end494, %sw.bb445
  %308 = load ptr, ptr %s.addr, align 8
  %bsLive448 = getelementptr inbounds %struct.DState, ptr %308, i64 0, i32 8
  %309 = load i32, ptr %bsLive448, align 4
  %cmp449 = icmp sgt i32 %309, 7
  br i1 %cmp449, label %if.then451, label %if.end461

if.then451:                                       ; preds = %while.body447
  %310 = load ptr, ptr %s.addr, align 8
  %bsBuff453 = getelementptr inbounds %struct.DState, ptr %310, i64 0, i32 7
  %311 = load i32, ptr %bsBuff453, align 8
  %bsLive454 = getelementptr inbounds %struct.DState, ptr %310, i64 0, i32 8
  %312 = load i32, ptr %bsLive454, align 4
  %sub455 = add nsw i32 %312, -8
  %shr456 = lshr i32 %311, %sub455
  %313 = load ptr, ptr %s.addr, align 8
  %bsLive458 = getelementptr inbounds %struct.DState, ptr %313, i64 0, i32 8
  %314 = load i32, ptr %bsLive458, align 4
  %sub459 = add nsw i32 %314, -8
  store i32 %sub459, ptr %bsLive458, align 4
  %conv460 = trunc i32 %shr456 to i8
  store i8 %conv460, ptr %uc, align 1
  %315 = load i8, ptr %uc, align 1
  %cmp497.not = icmp eq i8 %315, 38
  br i1 %cmp497.not, label %sw.bb501, label %if.then499

if.end461:                                        ; preds = %while.body447
  %316 = load ptr, ptr %s.addr, align 8
  %317 = load ptr, ptr %316, align 8
  %avail_in463 = getelementptr inbounds %struct.bz_stream, ptr %317, i64 0, i32 1
  %318 = load i32, ptr %avail_in463, align 8
  %cmp464 = icmp eq i32 %318, 0
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %if.end461
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end467:                                        ; preds = %if.end461
  %319 = load ptr, ptr %s.addr, align 8
  %bsBuff468 = getelementptr inbounds %struct.DState, ptr %319, i64 0, i32 7
  %320 = load i32, ptr %bsBuff468, align 8
  %shl469 = shl i32 %320, 8
  %321 = load ptr, ptr %319, align 8
  %322 = load ptr, ptr %321, align 8
  %323 = load i8, ptr %322, align 1
  %conv472 = zext i8 %323 to i32
  %or473 = or i32 %shl469, %conv472
  %324 = load ptr, ptr %s.addr, align 8
  %bsBuff474 = getelementptr inbounds %struct.DState, ptr %324, i64 0, i32 7
  store i32 %or473, ptr %bsBuff474, align 8
  %bsLive475 = getelementptr inbounds %struct.DState, ptr %324, i64 0, i32 8
  %325 = load i32, ptr %bsLive475, align 4
  %add476 = add nsw i32 %325, 8
  store i32 %add476, ptr %bsLive475, align 4
  %326 = load ptr, ptr %s.addr, align 8
  %327 = load ptr, ptr %326, align 8
  %328 = load ptr, ptr %327, align 8
  %incdec.ptr479 = getelementptr inbounds i8, ptr %328, i64 1
  store ptr %incdec.ptr479, ptr %327, align 8
  %329 = load ptr, ptr %s.addr, align 8
  %330 = load ptr, ptr %329, align 8
  %avail_in481 = getelementptr inbounds %struct.bz_stream, ptr %330, i64 0, i32 1
  %331 = load i32, ptr %avail_in481, align 8
  %dec482 = add i32 %331, -1
  store i32 %dec482, ptr %avail_in481, align 8
  %332 = load ptr, ptr %329, align 8
  %total_in_lo32484 = getelementptr inbounds %struct.bz_stream, ptr %332, i64 0, i32 2
  %333 = load i32, ptr %total_in_lo32484, align 4
  %inc485 = add i32 %333, 1
  store i32 %inc485, ptr %total_in_lo32484, align 4
  %334 = load ptr, ptr %s.addr, align 8
  %335 = load ptr, ptr %334, align 8
  %total_in_lo32487 = getelementptr inbounds %struct.bz_stream, ptr %335, i64 0, i32 2
  %336 = load i32, ptr %total_in_lo32487, align 4
  %cmp488 = icmp eq i32 %336, 0
  br i1 %cmp488, label %if.then490, label %if.end494

if.then490:                                       ; preds = %if.end467
  %337 = load ptr, ptr %s.addr, align 8
  %338 = load ptr, ptr %337, align 8
  %total_in_hi32492 = getelementptr inbounds %struct.bz_stream, ptr %338, i64 0, i32 3
  %339 = load i32, ptr %total_in_hi32492, align 8
  %inc493 = add i32 %339, 1
  store i32 %inc493, ptr %total_in_hi32492, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end467
  br label %while.body447

if.then499:                                       ; preds = %if.then451
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb501:                                         ; preds = %if.then451, %if.end
  %340 = load ptr, ptr %s.addr, align 8
  %state502 = getelementptr inbounds %struct.DState, ptr %340, i64 0, i32 1
  store i32 18, ptr %state502, align 8
  br label %while.body503

while.body503:                                    ; preds = %if.end550, %sw.bb501
  %341 = load ptr, ptr %s.addr, align 8
  %bsLive504 = getelementptr inbounds %struct.DState, ptr %341, i64 0, i32 8
  %342 = load i32, ptr %bsLive504, align 4
  %cmp505 = icmp sgt i32 %342, 7
  br i1 %cmp505, label %if.then507, label %if.end517

if.then507:                                       ; preds = %while.body503
  %343 = load ptr, ptr %s.addr, align 8
  %bsBuff509 = getelementptr inbounds %struct.DState, ptr %343, i64 0, i32 7
  %344 = load i32, ptr %bsBuff509, align 8
  %bsLive510 = getelementptr inbounds %struct.DState, ptr %343, i64 0, i32 8
  %345 = load i32, ptr %bsLive510, align 4
  %sub511 = add nsw i32 %345, -8
  %shr512 = lshr i32 %344, %sub511
  %346 = load ptr, ptr %s.addr, align 8
  %bsLive514 = getelementptr inbounds %struct.DState, ptr %346, i64 0, i32 8
  %347 = load i32, ptr %bsLive514, align 4
  %sub515 = add nsw i32 %347, -8
  store i32 %sub515, ptr %bsLive514, align 4
  %conv516 = trunc i32 %shr512 to i8
  store i8 %conv516, ptr %uc, align 1
  %348 = load i8, ptr %uc, align 1
  %cmp553.not = icmp eq i8 %348, 83
  br i1 %cmp553.not, label %sw.bb557, label %if.then555

if.end517:                                        ; preds = %while.body503
  %349 = load ptr, ptr %s.addr, align 8
  %350 = load ptr, ptr %349, align 8
  %avail_in519 = getelementptr inbounds %struct.bz_stream, ptr %350, i64 0, i32 1
  %351 = load i32, ptr %avail_in519, align 8
  %cmp520 = icmp eq i32 %351, 0
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %if.end517
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end523:                                        ; preds = %if.end517
  %352 = load ptr, ptr %s.addr, align 8
  %bsBuff524 = getelementptr inbounds %struct.DState, ptr %352, i64 0, i32 7
  %353 = load i32, ptr %bsBuff524, align 8
  %shl525 = shl i32 %353, 8
  %354 = load ptr, ptr %352, align 8
  %355 = load ptr, ptr %354, align 8
  %356 = load i8, ptr %355, align 1
  %conv528 = zext i8 %356 to i32
  %or529 = or i32 %shl525, %conv528
  %357 = load ptr, ptr %s.addr, align 8
  %bsBuff530 = getelementptr inbounds %struct.DState, ptr %357, i64 0, i32 7
  store i32 %or529, ptr %bsBuff530, align 8
  %bsLive531 = getelementptr inbounds %struct.DState, ptr %357, i64 0, i32 8
  %358 = load i32, ptr %bsLive531, align 4
  %add532 = add nsw i32 %358, 8
  store i32 %add532, ptr %bsLive531, align 4
  %359 = load ptr, ptr %s.addr, align 8
  %360 = load ptr, ptr %359, align 8
  %361 = load ptr, ptr %360, align 8
  %incdec.ptr535 = getelementptr inbounds i8, ptr %361, i64 1
  store ptr %incdec.ptr535, ptr %360, align 8
  %362 = load ptr, ptr %s.addr, align 8
  %363 = load ptr, ptr %362, align 8
  %avail_in537 = getelementptr inbounds %struct.bz_stream, ptr %363, i64 0, i32 1
  %364 = load i32, ptr %avail_in537, align 8
  %dec538 = add i32 %364, -1
  store i32 %dec538, ptr %avail_in537, align 8
  %365 = load ptr, ptr %362, align 8
  %total_in_lo32540 = getelementptr inbounds %struct.bz_stream, ptr %365, i64 0, i32 2
  %366 = load i32, ptr %total_in_lo32540, align 4
  %inc541 = add i32 %366, 1
  store i32 %inc541, ptr %total_in_lo32540, align 4
  %367 = load ptr, ptr %s.addr, align 8
  %368 = load ptr, ptr %367, align 8
  %total_in_lo32543 = getelementptr inbounds %struct.bz_stream, ptr %368, i64 0, i32 2
  %369 = load i32, ptr %total_in_lo32543, align 4
  %cmp544 = icmp eq i32 %369, 0
  br i1 %cmp544, label %if.then546, label %if.end550

if.then546:                                       ; preds = %if.end523
  %370 = load ptr, ptr %s.addr, align 8
  %371 = load ptr, ptr %370, align 8
  %total_in_hi32548 = getelementptr inbounds %struct.bz_stream, ptr %371, i64 0, i32 3
  %372 = load i32, ptr %total_in_hi32548, align 8
  %inc549 = add i32 %372, 1
  store i32 %inc549, ptr %total_in_hi32548, align 8
  br label %if.end550

if.end550:                                        ; preds = %if.then546, %if.end523
  br label %while.body503

if.then555:                                       ; preds = %if.then507
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb557:                                         ; preds = %if.then507, %if.end
  %373 = load ptr, ptr %s.addr, align 8
  %state558 = getelementptr inbounds %struct.DState, ptr %373, i64 0, i32 1
  store i32 19, ptr %state558, align 8
  br label %while.body559

while.body559:                                    ; preds = %if.end606, %sw.bb557
  %374 = load ptr, ptr %s.addr, align 8
  %bsLive560 = getelementptr inbounds %struct.DState, ptr %374, i64 0, i32 8
  %375 = load i32, ptr %bsLive560, align 4
  %cmp561 = icmp sgt i32 %375, 7
  br i1 %cmp561, label %if.then563, label %if.end573

if.then563:                                       ; preds = %while.body559
  %376 = load ptr, ptr %s.addr, align 8
  %bsBuff565 = getelementptr inbounds %struct.DState, ptr %376, i64 0, i32 7
  %377 = load i32, ptr %bsBuff565, align 8
  %bsLive566 = getelementptr inbounds %struct.DState, ptr %376, i64 0, i32 8
  %378 = load i32, ptr %bsLive566, align 4
  %sub567 = add nsw i32 %378, -8
  %shr568 = lshr i32 %377, %sub567
  %379 = load ptr, ptr %s.addr, align 8
  %bsLive570 = getelementptr inbounds %struct.DState, ptr %379, i64 0, i32 8
  %380 = load i32, ptr %bsLive570, align 4
  %sub571 = add nsw i32 %380, -8
  store i32 %sub571, ptr %bsLive570, align 4
  %conv572 = trunc i32 %shr568 to i8
  store i8 %conv572, ptr %uc, align 1
  %381 = load i8, ptr %uc, align 1
  %cmp609.not = icmp eq i8 %381, 89
  br i1 %cmp609.not, label %if.end612, label %if.then611

if.end573:                                        ; preds = %while.body559
  %382 = load ptr, ptr %s.addr, align 8
  %383 = load ptr, ptr %382, align 8
  %avail_in575 = getelementptr inbounds %struct.bz_stream, ptr %383, i64 0, i32 1
  %384 = load i32, ptr %avail_in575, align 8
  %cmp576 = icmp eq i32 %384, 0
  br i1 %cmp576, label %if.then578, label %if.end579

if.then578:                                       ; preds = %if.end573
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end579:                                        ; preds = %if.end573
  %385 = load ptr, ptr %s.addr, align 8
  %bsBuff580 = getelementptr inbounds %struct.DState, ptr %385, i64 0, i32 7
  %386 = load i32, ptr %bsBuff580, align 8
  %shl581 = shl i32 %386, 8
  %387 = load ptr, ptr %385, align 8
  %388 = load ptr, ptr %387, align 8
  %389 = load i8, ptr %388, align 1
  %conv584 = zext i8 %389 to i32
  %or585 = or i32 %shl581, %conv584
  %390 = load ptr, ptr %s.addr, align 8
  %bsBuff586 = getelementptr inbounds %struct.DState, ptr %390, i64 0, i32 7
  store i32 %or585, ptr %bsBuff586, align 8
  %bsLive587 = getelementptr inbounds %struct.DState, ptr %390, i64 0, i32 8
  %391 = load i32, ptr %bsLive587, align 4
  %add588 = add nsw i32 %391, 8
  store i32 %add588, ptr %bsLive587, align 4
  %392 = load ptr, ptr %s.addr, align 8
  %393 = load ptr, ptr %392, align 8
  %394 = load ptr, ptr %393, align 8
  %incdec.ptr591 = getelementptr inbounds i8, ptr %394, i64 1
  store ptr %incdec.ptr591, ptr %393, align 8
  %395 = load ptr, ptr %s.addr, align 8
  %396 = load ptr, ptr %395, align 8
  %avail_in593 = getelementptr inbounds %struct.bz_stream, ptr %396, i64 0, i32 1
  %397 = load i32, ptr %avail_in593, align 8
  %dec594 = add i32 %397, -1
  store i32 %dec594, ptr %avail_in593, align 8
  %398 = load ptr, ptr %395, align 8
  %total_in_lo32596 = getelementptr inbounds %struct.bz_stream, ptr %398, i64 0, i32 2
  %399 = load i32, ptr %total_in_lo32596, align 4
  %inc597 = add i32 %399, 1
  store i32 %inc597, ptr %total_in_lo32596, align 4
  %400 = load ptr, ptr %s.addr, align 8
  %401 = load ptr, ptr %400, align 8
  %total_in_lo32599 = getelementptr inbounds %struct.bz_stream, ptr %401, i64 0, i32 2
  %402 = load i32, ptr %total_in_lo32599, align 4
  %cmp600 = icmp eq i32 %402, 0
  br i1 %cmp600, label %if.then602, label %if.end606

if.then602:                                       ; preds = %if.end579
  %403 = load ptr, ptr %s.addr, align 8
  %404 = load ptr, ptr %403, align 8
  %total_in_hi32604 = getelementptr inbounds %struct.bz_stream, ptr %404, i64 0, i32 3
  %405 = load i32, ptr %total_in_hi32604, align 8
  %inc605 = add i32 %405, 1
  store i32 %inc605, ptr %total_in_hi32604, align 8
  br label %if.end606

if.end606:                                        ; preds = %if.then602, %if.end579
  br label %while.body559

if.then611:                                       ; preds = %if.then563
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end612:                                        ; preds = %if.then563
  %406 = load ptr, ptr %s.addr, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, ptr %406, i64 0, i32 11
  %407 = load i32, ptr %currBlockNo, align 8
  %inc613 = add nsw i32 %407, 1
  store i32 %inc613, ptr %currBlockNo, align 8
  %verbosity = getelementptr inbounds %struct.DState, ptr %406, i64 0, i32 12
  %408 = load i32, ptr %verbosity, align 4
  %cmp614 = icmp sgt i32 %408, 1
  br i1 %cmp614, label %if.then616, label %if.end619

if.then616:                                       ; preds = %if.end612
  %409 = load ptr, ptr @__stderrp, align 8
  %410 = load ptr, ptr %s.addr, align 8
  %currBlockNo617 = getelementptr inbounds %struct.DState, ptr %410, i64 0, i32 11
  %411 = load i32, ptr %currBlockNo617, align 8
  %call618 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %409, ptr noundef nonnull @.str, i32 noundef %411) #3
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %if.end612
  %412 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, ptr %412, i64 0, i32 23
  store i32 0, ptr %storedBlockCRC, align 8
  br label %sw.bb620

sw.bb620:                                         ; preds = %if.end619, %if.end
  %413 = load ptr, ptr %s.addr, align 8
  %state621 = getelementptr inbounds %struct.DState, ptr %413, i64 0, i32 1
  store i32 20, ptr %state621, align 8
  br label %while.body622

while.body622:                                    ; preds = %if.end669, %sw.bb620
  %414 = load ptr, ptr %s.addr, align 8
  %bsLive623 = getelementptr inbounds %struct.DState, ptr %414, i64 0, i32 8
  %415 = load i32, ptr %bsLive623, align 4
  %cmp624 = icmp sgt i32 %415, 7
  br i1 %cmp624, label %if.then626, label %if.end636

if.then626:                                       ; preds = %while.body622
  %416 = load ptr, ptr %s.addr, align 8
  %bsBuff628 = getelementptr inbounds %struct.DState, ptr %416, i64 0, i32 7
  %417 = load i32, ptr %bsBuff628, align 8
  %bsLive629 = getelementptr inbounds %struct.DState, ptr %416, i64 0, i32 8
  %418 = load i32, ptr %bsLive629, align 4
  %sub630 = add nsw i32 %418, -8
  %shr631 = lshr i32 %417, %sub630
  %419 = load ptr, ptr %s.addr, align 8
  %bsLive633 = getelementptr inbounds %struct.DState, ptr %419, i64 0, i32 8
  %420 = load i32, ptr %bsLive633, align 4
  %sub634 = add nsw i32 %420, -8
  store i32 %sub634, ptr %bsLive633, align 4
  %conv635 = trunc i32 %shr631 to i8
  store i8 %conv635, ptr %uc, align 1
  %421 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC671 = getelementptr inbounds %struct.DState, ptr %421, i64 0, i32 23
  %422 = load i32, ptr %storedBlockCRC671, align 8
  %shl672 = shl i32 %422, 8
  %423 = load i8, ptr %uc, align 1
  %conv673 = zext i8 %423 to i32
  %or674 = or i32 %shl672, %conv673
  %424 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC675 = getelementptr inbounds %struct.DState, ptr %424, i64 0, i32 23
  store i32 %or674, ptr %storedBlockCRC675, align 8
  br label %sw.bb676

if.end636:                                        ; preds = %while.body622
  %425 = load ptr, ptr %s.addr, align 8
  %426 = load ptr, ptr %425, align 8
  %avail_in638 = getelementptr inbounds %struct.bz_stream, ptr %426, i64 0, i32 1
  %427 = load i32, ptr %avail_in638, align 8
  %cmp639 = icmp eq i32 %427, 0
  br i1 %cmp639, label %if.then641, label %if.end642

if.then641:                                       ; preds = %if.end636
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end642:                                        ; preds = %if.end636
  %428 = load ptr, ptr %s.addr, align 8
  %bsBuff643 = getelementptr inbounds %struct.DState, ptr %428, i64 0, i32 7
  %429 = load i32, ptr %bsBuff643, align 8
  %shl644 = shl i32 %429, 8
  %430 = load ptr, ptr %428, align 8
  %431 = load ptr, ptr %430, align 8
  %432 = load i8, ptr %431, align 1
  %conv647 = zext i8 %432 to i32
  %or648 = or i32 %shl644, %conv647
  %433 = load ptr, ptr %s.addr, align 8
  %bsBuff649 = getelementptr inbounds %struct.DState, ptr %433, i64 0, i32 7
  store i32 %or648, ptr %bsBuff649, align 8
  %bsLive650 = getelementptr inbounds %struct.DState, ptr %433, i64 0, i32 8
  %434 = load i32, ptr %bsLive650, align 4
  %add651 = add nsw i32 %434, 8
  store i32 %add651, ptr %bsLive650, align 4
  %435 = load ptr, ptr %s.addr, align 8
  %436 = load ptr, ptr %435, align 8
  %437 = load ptr, ptr %436, align 8
  %incdec.ptr654 = getelementptr inbounds i8, ptr %437, i64 1
  store ptr %incdec.ptr654, ptr %436, align 8
  %438 = load ptr, ptr %s.addr, align 8
  %439 = load ptr, ptr %438, align 8
  %avail_in656 = getelementptr inbounds %struct.bz_stream, ptr %439, i64 0, i32 1
  %440 = load i32, ptr %avail_in656, align 8
  %dec657 = add i32 %440, -1
  store i32 %dec657, ptr %avail_in656, align 8
  %441 = load ptr, ptr %438, align 8
  %total_in_lo32659 = getelementptr inbounds %struct.bz_stream, ptr %441, i64 0, i32 2
  %442 = load i32, ptr %total_in_lo32659, align 4
  %inc660 = add i32 %442, 1
  store i32 %inc660, ptr %total_in_lo32659, align 4
  %443 = load ptr, ptr %s.addr, align 8
  %444 = load ptr, ptr %443, align 8
  %total_in_lo32662 = getelementptr inbounds %struct.bz_stream, ptr %444, i64 0, i32 2
  %445 = load i32, ptr %total_in_lo32662, align 4
  %cmp663 = icmp eq i32 %445, 0
  br i1 %cmp663, label %if.then665, label %if.end669

if.then665:                                       ; preds = %if.end642
  %446 = load ptr, ptr %s.addr, align 8
  %447 = load ptr, ptr %446, align 8
  %total_in_hi32667 = getelementptr inbounds %struct.bz_stream, ptr %447, i64 0, i32 3
  %448 = load i32, ptr %total_in_hi32667, align 8
  %inc668 = add i32 %448, 1
  store i32 %inc668, ptr %total_in_hi32667, align 8
  br label %if.end669

if.end669:                                        ; preds = %if.then665, %if.end642
  br label %while.body622

sw.bb676:                                         ; preds = %if.then626, %if.end
  %449 = load ptr, ptr %s.addr, align 8
  %state677 = getelementptr inbounds %struct.DState, ptr %449, i64 0, i32 1
  store i32 21, ptr %state677, align 8
  br label %while.body678

while.body678:                                    ; preds = %if.end725, %sw.bb676
  %450 = load ptr, ptr %s.addr, align 8
  %bsLive679 = getelementptr inbounds %struct.DState, ptr %450, i64 0, i32 8
  %451 = load i32, ptr %bsLive679, align 4
  %cmp680 = icmp sgt i32 %451, 7
  br i1 %cmp680, label %if.then682, label %if.end692

if.then682:                                       ; preds = %while.body678
  %452 = load ptr, ptr %s.addr, align 8
  %bsBuff684 = getelementptr inbounds %struct.DState, ptr %452, i64 0, i32 7
  %453 = load i32, ptr %bsBuff684, align 8
  %bsLive685 = getelementptr inbounds %struct.DState, ptr %452, i64 0, i32 8
  %454 = load i32, ptr %bsLive685, align 4
  %sub686 = add nsw i32 %454, -8
  %shr687 = lshr i32 %453, %sub686
  %455 = load ptr, ptr %s.addr, align 8
  %bsLive689 = getelementptr inbounds %struct.DState, ptr %455, i64 0, i32 8
  %456 = load i32, ptr %bsLive689, align 4
  %sub690 = add nsw i32 %456, -8
  store i32 %sub690, ptr %bsLive689, align 4
  %conv691 = trunc i32 %shr687 to i8
  store i8 %conv691, ptr %uc, align 1
  %457 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC727 = getelementptr inbounds %struct.DState, ptr %457, i64 0, i32 23
  %458 = load i32, ptr %storedBlockCRC727, align 8
  %shl728 = shl i32 %458, 8
  %459 = load i8, ptr %uc, align 1
  %conv729 = zext i8 %459 to i32
  %or730 = or i32 %shl728, %conv729
  %460 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC731 = getelementptr inbounds %struct.DState, ptr %460, i64 0, i32 23
  store i32 %or730, ptr %storedBlockCRC731, align 8
  br label %sw.bb732

if.end692:                                        ; preds = %while.body678
  %461 = load ptr, ptr %s.addr, align 8
  %462 = load ptr, ptr %461, align 8
  %avail_in694 = getelementptr inbounds %struct.bz_stream, ptr %462, i64 0, i32 1
  %463 = load i32, ptr %avail_in694, align 8
  %cmp695 = icmp eq i32 %463, 0
  br i1 %cmp695, label %if.then697, label %if.end698

if.then697:                                       ; preds = %if.end692
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end698:                                        ; preds = %if.end692
  %464 = load ptr, ptr %s.addr, align 8
  %bsBuff699 = getelementptr inbounds %struct.DState, ptr %464, i64 0, i32 7
  %465 = load i32, ptr %bsBuff699, align 8
  %shl700 = shl i32 %465, 8
  %466 = load ptr, ptr %464, align 8
  %467 = load ptr, ptr %466, align 8
  %468 = load i8, ptr %467, align 1
  %conv703 = zext i8 %468 to i32
  %or704 = or i32 %shl700, %conv703
  %469 = load ptr, ptr %s.addr, align 8
  %bsBuff705 = getelementptr inbounds %struct.DState, ptr %469, i64 0, i32 7
  store i32 %or704, ptr %bsBuff705, align 8
  %bsLive706 = getelementptr inbounds %struct.DState, ptr %469, i64 0, i32 8
  %470 = load i32, ptr %bsLive706, align 4
  %add707 = add nsw i32 %470, 8
  store i32 %add707, ptr %bsLive706, align 4
  %471 = load ptr, ptr %s.addr, align 8
  %472 = load ptr, ptr %471, align 8
  %473 = load ptr, ptr %472, align 8
  %incdec.ptr710 = getelementptr inbounds i8, ptr %473, i64 1
  store ptr %incdec.ptr710, ptr %472, align 8
  %474 = load ptr, ptr %s.addr, align 8
  %475 = load ptr, ptr %474, align 8
  %avail_in712 = getelementptr inbounds %struct.bz_stream, ptr %475, i64 0, i32 1
  %476 = load i32, ptr %avail_in712, align 8
  %dec713 = add i32 %476, -1
  store i32 %dec713, ptr %avail_in712, align 8
  %477 = load ptr, ptr %474, align 8
  %total_in_lo32715 = getelementptr inbounds %struct.bz_stream, ptr %477, i64 0, i32 2
  %478 = load i32, ptr %total_in_lo32715, align 4
  %inc716 = add i32 %478, 1
  store i32 %inc716, ptr %total_in_lo32715, align 4
  %479 = load ptr, ptr %s.addr, align 8
  %480 = load ptr, ptr %479, align 8
  %total_in_lo32718 = getelementptr inbounds %struct.bz_stream, ptr %480, i64 0, i32 2
  %481 = load i32, ptr %total_in_lo32718, align 4
  %cmp719 = icmp eq i32 %481, 0
  br i1 %cmp719, label %if.then721, label %if.end725

if.then721:                                       ; preds = %if.end698
  %482 = load ptr, ptr %s.addr, align 8
  %483 = load ptr, ptr %482, align 8
  %total_in_hi32723 = getelementptr inbounds %struct.bz_stream, ptr %483, i64 0, i32 3
  %484 = load i32, ptr %total_in_hi32723, align 8
  %inc724 = add i32 %484, 1
  store i32 %inc724, ptr %total_in_hi32723, align 8
  br label %if.end725

if.end725:                                        ; preds = %if.then721, %if.end698
  br label %while.body678

sw.bb732:                                         ; preds = %if.then682, %if.end
  %485 = load ptr, ptr %s.addr, align 8
  %state733 = getelementptr inbounds %struct.DState, ptr %485, i64 0, i32 1
  store i32 22, ptr %state733, align 8
  br label %while.body734

while.body734:                                    ; preds = %if.end781, %sw.bb732
  %486 = load ptr, ptr %s.addr, align 8
  %bsLive735 = getelementptr inbounds %struct.DState, ptr %486, i64 0, i32 8
  %487 = load i32, ptr %bsLive735, align 4
  %cmp736 = icmp sgt i32 %487, 7
  br i1 %cmp736, label %if.then738, label %if.end748

if.then738:                                       ; preds = %while.body734
  %488 = load ptr, ptr %s.addr, align 8
  %bsBuff740 = getelementptr inbounds %struct.DState, ptr %488, i64 0, i32 7
  %489 = load i32, ptr %bsBuff740, align 8
  %bsLive741 = getelementptr inbounds %struct.DState, ptr %488, i64 0, i32 8
  %490 = load i32, ptr %bsLive741, align 4
  %sub742 = add nsw i32 %490, -8
  %shr743 = lshr i32 %489, %sub742
  %491 = load ptr, ptr %s.addr, align 8
  %bsLive745 = getelementptr inbounds %struct.DState, ptr %491, i64 0, i32 8
  %492 = load i32, ptr %bsLive745, align 4
  %sub746 = add nsw i32 %492, -8
  store i32 %sub746, ptr %bsLive745, align 4
  %conv747 = trunc i32 %shr743 to i8
  store i8 %conv747, ptr %uc, align 1
  %493 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC783 = getelementptr inbounds %struct.DState, ptr %493, i64 0, i32 23
  %494 = load i32, ptr %storedBlockCRC783, align 8
  %shl784 = shl i32 %494, 8
  %495 = load i8, ptr %uc, align 1
  %conv785 = zext i8 %495 to i32
  %or786 = or i32 %shl784, %conv785
  %496 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC787 = getelementptr inbounds %struct.DState, ptr %496, i64 0, i32 23
  store i32 %or786, ptr %storedBlockCRC787, align 8
  br label %sw.bb788

if.end748:                                        ; preds = %while.body734
  %497 = load ptr, ptr %s.addr, align 8
  %498 = load ptr, ptr %497, align 8
  %avail_in750 = getelementptr inbounds %struct.bz_stream, ptr %498, i64 0, i32 1
  %499 = load i32, ptr %avail_in750, align 8
  %cmp751 = icmp eq i32 %499, 0
  br i1 %cmp751, label %if.then753, label %if.end754

if.then753:                                       ; preds = %if.end748
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end754:                                        ; preds = %if.end748
  %500 = load ptr, ptr %s.addr, align 8
  %bsBuff755 = getelementptr inbounds %struct.DState, ptr %500, i64 0, i32 7
  %501 = load i32, ptr %bsBuff755, align 8
  %shl756 = shl i32 %501, 8
  %502 = load ptr, ptr %500, align 8
  %503 = load ptr, ptr %502, align 8
  %504 = load i8, ptr %503, align 1
  %conv759 = zext i8 %504 to i32
  %or760 = or i32 %shl756, %conv759
  %505 = load ptr, ptr %s.addr, align 8
  %bsBuff761 = getelementptr inbounds %struct.DState, ptr %505, i64 0, i32 7
  store i32 %or760, ptr %bsBuff761, align 8
  %bsLive762 = getelementptr inbounds %struct.DState, ptr %505, i64 0, i32 8
  %506 = load i32, ptr %bsLive762, align 4
  %add763 = add nsw i32 %506, 8
  store i32 %add763, ptr %bsLive762, align 4
  %507 = load ptr, ptr %s.addr, align 8
  %508 = load ptr, ptr %507, align 8
  %509 = load ptr, ptr %508, align 8
  %incdec.ptr766 = getelementptr inbounds i8, ptr %509, i64 1
  store ptr %incdec.ptr766, ptr %508, align 8
  %510 = load ptr, ptr %s.addr, align 8
  %511 = load ptr, ptr %510, align 8
  %avail_in768 = getelementptr inbounds %struct.bz_stream, ptr %511, i64 0, i32 1
  %512 = load i32, ptr %avail_in768, align 8
  %dec769 = add i32 %512, -1
  store i32 %dec769, ptr %avail_in768, align 8
  %513 = load ptr, ptr %510, align 8
  %total_in_lo32771 = getelementptr inbounds %struct.bz_stream, ptr %513, i64 0, i32 2
  %514 = load i32, ptr %total_in_lo32771, align 4
  %inc772 = add i32 %514, 1
  store i32 %inc772, ptr %total_in_lo32771, align 4
  %515 = load ptr, ptr %s.addr, align 8
  %516 = load ptr, ptr %515, align 8
  %total_in_lo32774 = getelementptr inbounds %struct.bz_stream, ptr %516, i64 0, i32 2
  %517 = load i32, ptr %total_in_lo32774, align 4
  %cmp775 = icmp eq i32 %517, 0
  br i1 %cmp775, label %if.then777, label %if.end781

if.then777:                                       ; preds = %if.end754
  %518 = load ptr, ptr %s.addr, align 8
  %519 = load ptr, ptr %518, align 8
  %total_in_hi32779 = getelementptr inbounds %struct.bz_stream, ptr %519, i64 0, i32 3
  %520 = load i32, ptr %total_in_hi32779, align 8
  %inc780 = add i32 %520, 1
  store i32 %inc780, ptr %total_in_hi32779, align 8
  br label %if.end781

if.end781:                                        ; preds = %if.then777, %if.end754
  br label %while.body734

sw.bb788:                                         ; preds = %if.then738, %if.end
  %521 = load ptr, ptr %s.addr, align 8
  %state789 = getelementptr inbounds %struct.DState, ptr %521, i64 0, i32 1
  store i32 23, ptr %state789, align 8
  br label %while.body790

while.body790:                                    ; preds = %if.end837, %sw.bb788
  %522 = load ptr, ptr %s.addr, align 8
  %bsLive791 = getelementptr inbounds %struct.DState, ptr %522, i64 0, i32 8
  %523 = load i32, ptr %bsLive791, align 4
  %cmp792 = icmp sgt i32 %523, 7
  br i1 %cmp792, label %if.then794, label %if.end804

if.then794:                                       ; preds = %while.body790
  %524 = load ptr, ptr %s.addr, align 8
  %bsBuff796 = getelementptr inbounds %struct.DState, ptr %524, i64 0, i32 7
  %525 = load i32, ptr %bsBuff796, align 8
  %bsLive797 = getelementptr inbounds %struct.DState, ptr %524, i64 0, i32 8
  %526 = load i32, ptr %bsLive797, align 4
  %sub798 = add nsw i32 %526, -8
  %shr799 = lshr i32 %525, %sub798
  %527 = load ptr, ptr %s.addr, align 8
  %bsLive801 = getelementptr inbounds %struct.DState, ptr %527, i64 0, i32 8
  %528 = load i32, ptr %bsLive801, align 4
  %sub802 = add nsw i32 %528, -8
  store i32 %sub802, ptr %bsLive801, align 4
  %conv803 = trunc i32 %shr799 to i8
  store i8 %conv803, ptr %uc, align 1
  %529 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC839 = getelementptr inbounds %struct.DState, ptr %529, i64 0, i32 23
  %530 = load i32, ptr %storedBlockCRC839, align 8
  %shl840 = shl i32 %530, 8
  %531 = load i8, ptr %uc, align 1
  %conv841 = zext i8 %531 to i32
  %or842 = or i32 %shl840, %conv841
  %532 = load ptr, ptr %s.addr, align 8
  %storedBlockCRC843 = getelementptr inbounds %struct.DState, ptr %532, i64 0, i32 23
  store i32 %or842, ptr %storedBlockCRC843, align 8
  br label %sw.bb844

if.end804:                                        ; preds = %while.body790
  %533 = load ptr, ptr %s.addr, align 8
  %534 = load ptr, ptr %533, align 8
  %avail_in806 = getelementptr inbounds %struct.bz_stream, ptr %534, i64 0, i32 1
  %535 = load i32, ptr %avail_in806, align 8
  %cmp807 = icmp eq i32 %535, 0
  br i1 %cmp807, label %if.then809, label %if.end810

if.then809:                                       ; preds = %if.end804
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end810:                                        ; preds = %if.end804
  %536 = load ptr, ptr %s.addr, align 8
  %bsBuff811 = getelementptr inbounds %struct.DState, ptr %536, i64 0, i32 7
  %537 = load i32, ptr %bsBuff811, align 8
  %shl812 = shl i32 %537, 8
  %538 = load ptr, ptr %536, align 8
  %539 = load ptr, ptr %538, align 8
  %540 = load i8, ptr %539, align 1
  %conv815 = zext i8 %540 to i32
  %or816 = or i32 %shl812, %conv815
  %541 = load ptr, ptr %s.addr, align 8
  %bsBuff817 = getelementptr inbounds %struct.DState, ptr %541, i64 0, i32 7
  store i32 %or816, ptr %bsBuff817, align 8
  %bsLive818 = getelementptr inbounds %struct.DState, ptr %541, i64 0, i32 8
  %542 = load i32, ptr %bsLive818, align 4
  %add819 = add nsw i32 %542, 8
  store i32 %add819, ptr %bsLive818, align 4
  %543 = load ptr, ptr %s.addr, align 8
  %544 = load ptr, ptr %543, align 8
  %545 = load ptr, ptr %544, align 8
  %incdec.ptr822 = getelementptr inbounds i8, ptr %545, i64 1
  store ptr %incdec.ptr822, ptr %544, align 8
  %546 = load ptr, ptr %s.addr, align 8
  %547 = load ptr, ptr %546, align 8
  %avail_in824 = getelementptr inbounds %struct.bz_stream, ptr %547, i64 0, i32 1
  %548 = load i32, ptr %avail_in824, align 8
  %dec825 = add i32 %548, -1
  store i32 %dec825, ptr %avail_in824, align 8
  %549 = load ptr, ptr %546, align 8
  %total_in_lo32827 = getelementptr inbounds %struct.bz_stream, ptr %549, i64 0, i32 2
  %550 = load i32, ptr %total_in_lo32827, align 4
  %inc828 = add i32 %550, 1
  store i32 %inc828, ptr %total_in_lo32827, align 4
  %551 = load ptr, ptr %s.addr, align 8
  %552 = load ptr, ptr %551, align 8
  %total_in_lo32830 = getelementptr inbounds %struct.bz_stream, ptr %552, i64 0, i32 2
  %553 = load i32, ptr %total_in_lo32830, align 4
  %cmp831 = icmp eq i32 %553, 0
  br i1 %cmp831, label %if.then833, label %if.end837

if.then833:                                       ; preds = %if.end810
  %554 = load ptr, ptr %s.addr, align 8
  %555 = load ptr, ptr %554, align 8
  %total_in_hi32835 = getelementptr inbounds %struct.bz_stream, ptr %555, i64 0, i32 3
  %556 = load i32, ptr %total_in_hi32835, align 8
  %inc836 = add i32 %556, 1
  store i32 %inc836, ptr %total_in_hi32835, align 8
  br label %if.end837

if.end837:                                        ; preds = %if.then833, %if.end810
  br label %while.body790

sw.bb844:                                         ; preds = %if.then794, %if.end
  %557 = load ptr, ptr %s.addr, align 8
  %state845 = getelementptr inbounds %struct.DState, ptr %557, i64 0, i32 1
  store i32 24, ptr %state845, align 8
  br label %while.body846

while.body846:                                    ; preds = %if.end893, %sw.bb844
  %558 = load ptr, ptr %s.addr, align 8
  %bsLive847 = getelementptr inbounds %struct.DState, ptr %558, i64 0, i32 8
  %559 = load i32, ptr %bsLive847, align 4
  %cmp848 = icmp sgt i32 %559, 0
  br i1 %cmp848, label %if.then850, label %if.end860

if.then850:                                       ; preds = %while.body846
  %560 = load ptr, ptr %s.addr, align 8
  %bsBuff852 = getelementptr inbounds %struct.DState, ptr %560, i64 0, i32 7
  %561 = load i32, ptr %bsBuff852, align 8
  %bsLive853 = getelementptr inbounds %struct.DState, ptr %560, i64 0, i32 8
  %562 = load i32, ptr %bsLive853, align 4
  %sub854 = add nsw i32 %562, -1
  %shr855 = lshr i32 %561, %sub854
  %563 = load ptr, ptr %s.addr, align 8
  %bsLive857 = getelementptr inbounds %struct.DState, ptr %563, i64 0, i32 8
  %564 = load i32, ptr %bsLive857, align 4
  %sub858 = add nsw i32 %564, -1
  store i32 %sub858, ptr %bsLive857, align 4
  %565 = trunc i32 %shr855 to i8
  %conv859 = and i8 %565, 1
  %566 = load ptr, ptr %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, ptr %566, i64 0, i32 4
  store i8 %conv859, ptr %blockRandomised, align 4
  %567 = load ptr, ptr %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.DState, ptr %567, i64 0, i32 13
  store i32 0, ptr %origPtr, align 8
  br label %sw.bb895

if.end860:                                        ; preds = %while.body846
  %568 = load ptr, ptr %s.addr, align 8
  %569 = load ptr, ptr %568, align 8
  %avail_in862 = getelementptr inbounds %struct.bz_stream, ptr %569, i64 0, i32 1
  %570 = load i32, ptr %avail_in862, align 8
  %cmp863 = icmp eq i32 %570, 0
  br i1 %cmp863, label %if.then865, label %if.end866

if.then865:                                       ; preds = %if.end860
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end866:                                        ; preds = %if.end860
  %571 = load ptr, ptr %s.addr, align 8
  %bsBuff867 = getelementptr inbounds %struct.DState, ptr %571, i64 0, i32 7
  %572 = load i32, ptr %bsBuff867, align 8
  %shl868 = shl i32 %572, 8
  %573 = load ptr, ptr %571, align 8
  %574 = load ptr, ptr %573, align 8
  %575 = load i8, ptr %574, align 1
  %conv871 = zext i8 %575 to i32
  %or872 = or i32 %shl868, %conv871
  %576 = load ptr, ptr %s.addr, align 8
  %bsBuff873 = getelementptr inbounds %struct.DState, ptr %576, i64 0, i32 7
  store i32 %or872, ptr %bsBuff873, align 8
  %bsLive874 = getelementptr inbounds %struct.DState, ptr %576, i64 0, i32 8
  %577 = load i32, ptr %bsLive874, align 4
  %add875 = add nsw i32 %577, 8
  store i32 %add875, ptr %bsLive874, align 4
  %578 = load ptr, ptr %s.addr, align 8
  %579 = load ptr, ptr %578, align 8
  %580 = load ptr, ptr %579, align 8
  %incdec.ptr878 = getelementptr inbounds i8, ptr %580, i64 1
  store ptr %incdec.ptr878, ptr %579, align 8
  %581 = load ptr, ptr %s.addr, align 8
  %582 = load ptr, ptr %581, align 8
  %avail_in880 = getelementptr inbounds %struct.bz_stream, ptr %582, i64 0, i32 1
  %583 = load i32, ptr %avail_in880, align 8
  %dec881 = add i32 %583, -1
  store i32 %dec881, ptr %avail_in880, align 8
  %584 = load ptr, ptr %581, align 8
  %total_in_lo32883 = getelementptr inbounds %struct.bz_stream, ptr %584, i64 0, i32 2
  %585 = load i32, ptr %total_in_lo32883, align 4
  %inc884 = add i32 %585, 1
  store i32 %inc884, ptr %total_in_lo32883, align 4
  %586 = load ptr, ptr %s.addr, align 8
  %587 = load ptr, ptr %586, align 8
  %total_in_lo32886 = getelementptr inbounds %struct.bz_stream, ptr %587, i64 0, i32 2
  %588 = load i32, ptr %total_in_lo32886, align 4
  %cmp887 = icmp eq i32 %588, 0
  br i1 %cmp887, label %if.then889, label %if.end893

if.then889:                                       ; preds = %if.end866
  %589 = load ptr, ptr %s.addr, align 8
  %590 = load ptr, ptr %589, align 8
  %total_in_hi32891 = getelementptr inbounds %struct.bz_stream, ptr %590, i64 0, i32 3
  %591 = load i32, ptr %total_in_hi32891, align 8
  %inc892 = add i32 %591, 1
  store i32 %inc892, ptr %total_in_hi32891, align 8
  br label %if.end893

if.end893:                                        ; preds = %if.then889, %if.end866
  br label %while.body846

sw.bb895:                                         ; preds = %if.then850, %if.end
  %592 = load ptr, ptr %s.addr, align 8
  %state896 = getelementptr inbounds %struct.DState, ptr %592, i64 0, i32 1
  store i32 25, ptr %state896, align 8
  br label %while.body897

while.body897:                                    ; preds = %if.end944, %sw.bb895
  %593 = load ptr, ptr %s.addr, align 8
  %bsLive898 = getelementptr inbounds %struct.DState, ptr %593, i64 0, i32 8
  %594 = load i32, ptr %bsLive898, align 4
  %cmp899 = icmp sgt i32 %594, 7
  br i1 %cmp899, label %if.then901, label %if.end911

if.then901:                                       ; preds = %while.body897
  %595 = load ptr, ptr %s.addr, align 8
  %bsBuff903 = getelementptr inbounds %struct.DState, ptr %595, i64 0, i32 7
  %596 = load i32, ptr %bsBuff903, align 8
  %bsLive904 = getelementptr inbounds %struct.DState, ptr %595, i64 0, i32 8
  %597 = load i32, ptr %bsLive904, align 4
  %sub905 = add nsw i32 %597, -8
  %shr906 = lshr i32 %596, %sub905
  %598 = load ptr, ptr %s.addr, align 8
  %bsLive908 = getelementptr inbounds %struct.DState, ptr %598, i64 0, i32 8
  %599 = load i32, ptr %bsLive908, align 4
  %sub909 = add nsw i32 %599, -8
  store i32 %sub909, ptr %bsLive908, align 4
  %conv910 = trunc i32 %shr906 to i8
  store i8 %conv910, ptr %uc, align 1
  %600 = load ptr, ptr %s.addr, align 8
  %origPtr946 = getelementptr inbounds %struct.DState, ptr %600, i64 0, i32 13
  %601 = load i32, ptr %origPtr946, align 8
  %shl947 = shl i32 %601, 8
  %602 = load i8, ptr %uc, align 1
  %conv948 = zext i8 %602 to i32
  %or949 = or i32 %shl947, %conv948
  %603 = load ptr, ptr %s.addr, align 8
  %origPtr950 = getelementptr inbounds %struct.DState, ptr %603, i64 0, i32 13
  store i32 %or949, ptr %origPtr950, align 8
  br label %sw.bb951

if.end911:                                        ; preds = %while.body897
  %604 = load ptr, ptr %s.addr, align 8
  %605 = load ptr, ptr %604, align 8
  %avail_in913 = getelementptr inbounds %struct.bz_stream, ptr %605, i64 0, i32 1
  %606 = load i32, ptr %avail_in913, align 8
  %cmp914 = icmp eq i32 %606, 0
  br i1 %cmp914, label %if.then916, label %if.end917

if.then916:                                       ; preds = %if.end911
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end917:                                        ; preds = %if.end911
  %607 = load ptr, ptr %s.addr, align 8
  %bsBuff918 = getelementptr inbounds %struct.DState, ptr %607, i64 0, i32 7
  %608 = load i32, ptr %bsBuff918, align 8
  %shl919 = shl i32 %608, 8
  %609 = load ptr, ptr %607, align 8
  %610 = load ptr, ptr %609, align 8
  %611 = load i8, ptr %610, align 1
  %conv922 = zext i8 %611 to i32
  %or923 = or i32 %shl919, %conv922
  %612 = load ptr, ptr %s.addr, align 8
  %bsBuff924 = getelementptr inbounds %struct.DState, ptr %612, i64 0, i32 7
  store i32 %or923, ptr %bsBuff924, align 8
  %bsLive925 = getelementptr inbounds %struct.DState, ptr %612, i64 0, i32 8
  %613 = load i32, ptr %bsLive925, align 4
  %add926 = add nsw i32 %613, 8
  store i32 %add926, ptr %bsLive925, align 4
  %614 = load ptr, ptr %s.addr, align 8
  %615 = load ptr, ptr %614, align 8
  %616 = load ptr, ptr %615, align 8
  %incdec.ptr929 = getelementptr inbounds i8, ptr %616, i64 1
  store ptr %incdec.ptr929, ptr %615, align 8
  %617 = load ptr, ptr %s.addr, align 8
  %618 = load ptr, ptr %617, align 8
  %avail_in931 = getelementptr inbounds %struct.bz_stream, ptr %618, i64 0, i32 1
  %619 = load i32, ptr %avail_in931, align 8
  %dec932 = add i32 %619, -1
  store i32 %dec932, ptr %avail_in931, align 8
  %620 = load ptr, ptr %617, align 8
  %total_in_lo32934 = getelementptr inbounds %struct.bz_stream, ptr %620, i64 0, i32 2
  %621 = load i32, ptr %total_in_lo32934, align 4
  %inc935 = add i32 %621, 1
  store i32 %inc935, ptr %total_in_lo32934, align 4
  %622 = load ptr, ptr %s.addr, align 8
  %623 = load ptr, ptr %622, align 8
  %total_in_lo32937 = getelementptr inbounds %struct.bz_stream, ptr %623, i64 0, i32 2
  %624 = load i32, ptr %total_in_lo32937, align 4
  %cmp938 = icmp eq i32 %624, 0
  br i1 %cmp938, label %if.then940, label %if.end944

if.then940:                                       ; preds = %if.end917
  %625 = load ptr, ptr %s.addr, align 8
  %626 = load ptr, ptr %625, align 8
  %total_in_hi32942 = getelementptr inbounds %struct.bz_stream, ptr %626, i64 0, i32 3
  %627 = load i32, ptr %total_in_hi32942, align 8
  %inc943 = add i32 %627, 1
  store i32 %inc943, ptr %total_in_hi32942, align 8
  br label %if.end944

if.end944:                                        ; preds = %if.then940, %if.end917
  br label %while.body897

sw.bb951:                                         ; preds = %if.then901, %if.end
  %628 = load ptr, ptr %s.addr, align 8
  %state952 = getelementptr inbounds %struct.DState, ptr %628, i64 0, i32 1
  store i32 26, ptr %state952, align 8
  br label %while.body953

while.body953:                                    ; preds = %if.end1000, %sw.bb951
  %629 = load ptr, ptr %s.addr, align 8
  %bsLive954 = getelementptr inbounds %struct.DState, ptr %629, i64 0, i32 8
  %630 = load i32, ptr %bsLive954, align 4
  %cmp955 = icmp sgt i32 %630, 7
  br i1 %cmp955, label %if.then957, label %if.end967

if.then957:                                       ; preds = %while.body953
  %631 = load ptr, ptr %s.addr, align 8
  %bsBuff959 = getelementptr inbounds %struct.DState, ptr %631, i64 0, i32 7
  %632 = load i32, ptr %bsBuff959, align 8
  %bsLive960 = getelementptr inbounds %struct.DState, ptr %631, i64 0, i32 8
  %633 = load i32, ptr %bsLive960, align 4
  %sub961 = add nsw i32 %633, -8
  %shr962 = lshr i32 %632, %sub961
  %634 = load ptr, ptr %s.addr, align 8
  %bsLive964 = getelementptr inbounds %struct.DState, ptr %634, i64 0, i32 8
  %635 = load i32, ptr %bsLive964, align 4
  %sub965 = add nsw i32 %635, -8
  store i32 %sub965, ptr %bsLive964, align 4
  %conv966 = trunc i32 %shr962 to i8
  store i8 %conv966, ptr %uc, align 1
  %636 = load ptr, ptr %s.addr, align 8
  %origPtr1002 = getelementptr inbounds %struct.DState, ptr %636, i64 0, i32 13
  %637 = load i32, ptr %origPtr1002, align 8
  %shl1003 = shl i32 %637, 8
  %638 = load i8, ptr %uc, align 1
  %conv1004 = zext i8 %638 to i32
  %or1005 = or i32 %shl1003, %conv1004
  %639 = load ptr, ptr %s.addr, align 8
  %origPtr1006 = getelementptr inbounds %struct.DState, ptr %639, i64 0, i32 13
  store i32 %or1005, ptr %origPtr1006, align 8
  br label %sw.bb1007

if.end967:                                        ; preds = %while.body953
  %640 = load ptr, ptr %s.addr, align 8
  %641 = load ptr, ptr %640, align 8
  %avail_in969 = getelementptr inbounds %struct.bz_stream, ptr %641, i64 0, i32 1
  %642 = load i32, ptr %avail_in969, align 8
  %cmp970 = icmp eq i32 %642, 0
  br i1 %cmp970, label %if.then972, label %if.end973

if.then972:                                       ; preds = %if.end967
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end973:                                        ; preds = %if.end967
  %643 = load ptr, ptr %s.addr, align 8
  %bsBuff974 = getelementptr inbounds %struct.DState, ptr %643, i64 0, i32 7
  %644 = load i32, ptr %bsBuff974, align 8
  %shl975 = shl i32 %644, 8
  %645 = load ptr, ptr %643, align 8
  %646 = load ptr, ptr %645, align 8
  %647 = load i8, ptr %646, align 1
  %conv978 = zext i8 %647 to i32
  %or979 = or i32 %shl975, %conv978
  %648 = load ptr, ptr %s.addr, align 8
  %bsBuff980 = getelementptr inbounds %struct.DState, ptr %648, i64 0, i32 7
  store i32 %or979, ptr %bsBuff980, align 8
  %bsLive981 = getelementptr inbounds %struct.DState, ptr %648, i64 0, i32 8
  %649 = load i32, ptr %bsLive981, align 4
  %add982 = add nsw i32 %649, 8
  store i32 %add982, ptr %bsLive981, align 4
  %650 = load ptr, ptr %s.addr, align 8
  %651 = load ptr, ptr %650, align 8
  %652 = load ptr, ptr %651, align 8
  %incdec.ptr985 = getelementptr inbounds i8, ptr %652, i64 1
  store ptr %incdec.ptr985, ptr %651, align 8
  %653 = load ptr, ptr %s.addr, align 8
  %654 = load ptr, ptr %653, align 8
  %avail_in987 = getelementptr inbounds %struct.bz_stream, ptr %654, i64 0, i32 1
  %655 = load i32, ptr %avail_in987, align 8
  %dec988 = add i32 %655, -1
  store i32 %dec988, ptr %avail_in987, align 8
  %656 = load ptr, ptr %653, align 8
  %total_in_lo32990 = getelementptr inbounds %struct.bz_stream, ptr %656, i64 0, i32 2
  %657 = load i32, ptr %total_in_lo32990, align 4
  %inc991 = add i32 %657, 1
  store i32 %inc991, ptr %total_in_lo32990, align 4
  %658 = load ptr, ptr %s.addr, align 8
  %659 = load ptr, ptr %658, align 8
  %total_in_lo32993 = getelementptr inbounds %struct.bz_stream, ptr %659, i64 0, i32 2
  %660 = load i32, ptr %total_in_lo32993, align 4
  %cmp994 = icmp eq i32 %660, 0
  br i1 %cmp994, label %if.then996, label %if.end1000

if.then996:                                       ; preds = %if.end973
  %661 = load ptr, ptr %s.addr, align 8
  %662 = load ptr, ptr %661, align 8
  %total_in_hi32998 = getelementptr inbounds %struct.bz_stream, ptr %662, i64 0, i32 3
  %663 = load i32, ptr %total_in_hi32998, align 8
  %inc999 = add i32 %663, 1
  store i32 %inc999, ptr %total_in_hi32998, align 8
  br label %if.end1000

if.end1000:                                       ; preds = %if.then996, %if.end973
  br label %while.body953

sw.bb1007:                                        ; preds = %if.then957, %if.end
  %664 = load ptr, ptr %s.addr, align 8
  %state1008 = getelementptr inbounds %struct.DState, ptr %664, i64 0, i32 1
  store i32 27, ptr %state1008, align 8
  br label %while.body1009

while.body1009:                                   ; preds = %if.end1056, %sw.bb1007
  %665 = load ptr, ptr %s.addr, align 8
  %bsLive1010 = getelementptr inbounds %struct.DState, ptr %665, i64 0, i32 8
  %666 = load i32, ptr %bsLive1010, align 4
  %cmp1011 = icmp sgt i32 %666, 7
  br i1 %cmp1011, label %if.then1013, label %if.end1023

if.then1013:                                      ; preds = %while.body1009
  %667 = load ptr, ptr %s.addr, align 8
  %bsBuff1015 = getelementptr inbounds %struct.DState, ptr %667, i64 0, i32 7
  %668 = load i32, ptr %bsBuff1015, align 8
  %bsLive1016 = getelementptr inbounds %struct.DState, ptr %667, i64 0, i32 8
  %669 = load i32, ptr %bsLive1016, align 4
  %sub1017 = add nsw i32 %669, -8
  %shr1018 = lshr i32 %668, %sub1017
  %670 = load ptr, ptr %s.addr, align 8
  %bsLive1020 = getelementptr inbounds %struct.DState, ptr %670, i64 0, i32 8
  %671 = load i32, ptr %bsLive1020, align 4
  %sub1021 = add nsw i32 %671, -8
  store i32 %sub1021, ptr %bsLive1020, align 4
  %conv1022 = trunc i32 %shr1018 to i8
  store i8 %conv1022, ptr %uc, align 1
  %672 = load ptr, ptr %s.addr, align 8
  %origPtr1058 = getelementptr inbounds %struct.DState, ptr %672, i64 0, i32 13
  %673 = load i32, ptr %origPtr1058, align 8
  %shl1059 = shl i32 %673, 8
  %674 = load i8, ptr %uc, align 1
  %conv1060 = zext i8 %674 to i32
  %or1061 = or i32 %shl1059, %conv1060
  %675 = load ptr, ptr %s.addr, align 8
  %origPtr1062 = getelementptr inbounds %struct.DState, ptr %675, i64 0, i32 13
  store i32 %or1061, ptr %origPtr1062, align 8
  %cmp1064 = icmp slt i32 %or1061, 0
  br i1 %cmp1064, label %if.then1066, label %if.end1067

if.end1023:                                       ; preds = %while.body1009
  %676 = load ptr, ptr %s.addr, align 8
  %677 = load ptr, ptr %676, align 8
  %avail_in1025 = getelementptr inbounds %struct.bz_stream, ptr %677, i64 0, i32 1
  %678 = load i32, ptr %avail_in1025, align 8
  %cmp1026 = icmp eq i32 %678, 0
  br i1 %cmp1026, label %if.then1028, label %if.end1029

if.then1028:                                      ; preds = %if.end1023
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1029:                                       ; preds = %if.end1023
  %679 = load ptr, ptr %s.addr, align 8
  %bsBuff1030 = getelementptr inbounds %struct.DState, ptr %679, i64 0, i32 7
  %680 = load i32, ptr %bsBuff1030, align 8
  %shl1031 = shl i32 %680, 8
  %681 = load ptr, ptr %679, align 8
  %682 = load ptr, ptr %681, align 8
  %683 = load i8, ptr %682, align 1
  %conv1034 = zext i8 %683 to i32
  %or1035 = or i32 %shl1031, %conv1034
  %684 = load ptr, ptr %s.addr, align 8
  %bsBuff1036 = getelementptr inbounds %struct.DState, ptr %684, i64 0, i32 7
  store i32 %or1035, ptr %bsBuff1036, align 8
  %bsLive1037 = getelementptr inbounds %struct.DState, ptr %684, i64 0, i32 8
  %685 = load i32, ptr %bsLive1037, align 4
  %add1038 = add nsw i32 %685, 8
  store i32 %add1038, ptr %bsLive1037, align 4
  %686 = load ptr, ptr %s.addr, align 8
  %687 = load ptr, ptr %686, align 8
  %688 = load ptr, ptr %687, align 8
  %incdec.ptr1041 = getelementptr inbounds i8, ptr %688, i64 1
  store ptr %incdec.ptr1041, ptr %687, align 8
  %689 = load ptr, ptr %s.addr, align 8
  %690 = load ptr, ptr %689, align 8
  %avail_in1043 = getelementptr inbounds %struct.bz_stream, ptr %690, i64 0, i32 1
  %691 = load i32, ptr %avail_in1043, align 8
  %dec1044 = add i32 %691, -1
  store i32 %dec1044, ptr %avail_in1043, align 8
  %692 = load ptr, ptr %689, align 8
  %total_in_lo321046 = getelementptr inbounds %struct.bz_stream, ptr %692, i64 0, i32 2
  %693 = load i32, ptr %total_in_lo321046, align 4
  %inc1047 = add i32 %693, 1
  store i32 %inc1047, ptr %total_in_lo321046, align 4
  %694 = load ptr, ptr %s.addr, align 8
  %695 = load ptr, ptr %694, align 8
  %total_in_lo321049 = getelementptr inbounds %struct.bz_stream, ptr %695, i64 0, i32 2
  %696 = load i32, ptr %total_in_lo321049, align 4
  %cmp1050 = icmp eq i32 %696, 0
  br i1 %cmp1050, label %if.then1052, label %if.end1056

if.then1052:                                      ; preds = %if.end1029
  %697 = load ptr, ptr %s.addr, align 8
  %698 = load ptr, ptr %697, align 8
  %total_in_hi321054 = getelementptr inbounds %struct.bz_stream, ptr %698, i64 0, i32 3
  %699 = load i32, ptr %total_in_hi321054, align 8
  %inc1055 = add i32 %699, 1
  store i32 %inc1055, ptr %total_in_hi321054, align 8
  br label %if.end1056

if.end1056:                                       ; preds = %if.then1052, %if.end1029
  br label %while.body1009

if.then1066:                                      ; preds = %if.then1013
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1067:                                       ; preds = %if.then1013
  %700 = load ptr, ptr %s.addr, align 8
  %origPtr1068 = getelementptr inbounds %struct.DState, ptr %700, i64 0, i32 13
  %701 = load i32, ptr %origPtr1068, align 8
  %blockSize100k1069 = getelementptr inbounds %struct.DState, ptr %700, i64 0, i32 9
  %702 = load i32, ptr %blockSize100k1069, align 8
  %mul1070 = mul nsw i32 %702, 100000
  %add1071 = or i32 %mul1070, 10
  %cmp1072 = icmp sgt i32 %701, %add1071
  br i1 %cmp1072, label %if.then1074, label %for.cond

if.then1074:                                      ; preds = %if.end1067
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

for.cond:                                         ; preds = %if.end1067, %for.inc
  %storemerge24 = phi i32 [ %inc1138, %for.inc ], [ 0, %if.end1067 ]
  store i32 %storemerge24, ptr %i, align 4
  %cmp1076 = icmp slt i32 %storemerge24, 16
  br i1 %cmp1076, label %sw.bb1078, label %for.cond1139

sw.bb1078:                                        ; preds = %for.cond, %if.end
  %703 = load ptr, ptr %s.addr, align 8
  %state1079 = getelementptr inbounds %struct.DState, ptr %703, i64 0, i32 1
  store i32 28, ptr %state1079, align 8
  br label %while.body1080

while.body1080:                                   ; preds = %if.end1127, %sw.bb1078
  %704 = load ptr, ptr %s.addr, align 8
  %bsLive1081 = getelementptr inbounds %struct.DState, ptr %704, i64 0, i32 8
  %705 = load i32, ptr %bsLive1081, align 4
  %cmp1082 = icmp sgt i32 %705, 0
  br i1 %cmp1082, label %if.then1084, label %if.end1094

if.then1084:                                      ; preds = %while.body1080
  %706 = load ptr, ptr %s.addr, align 8
  %bsBuff1086 = getelementptr inbounds %struct.DState, ptr %706, i64 0, i32 7
  %707 = load i32, ptr %bsBuff1086, align 8
  %bsLive1087 = getelementptr inbounds %struct.DState, ptr %706, i64 0, i32 8
  %708 = load i32, ptr %bsLive1087, align 4
  %sub1088 = add nsw i32 %708, -1
  %shr1089 = lshr i32 %707, %sub1088
  %709 = load ptr, ptr %s.addr, align 8
  %bsLive1091 = getelementptr inbounds %struct.DState, ptr %709, i64 0, i32 8
  %710 = load i32, ptr %bsLive1091, align 4
  %sub1092 = add nsw i32 %710, -1
  store i32 %sub1092, ptr %bsLive1091, align 4
  %711 = trunc i32 %shr1089 to i8
  %conv1093 = and i8 %711, 1
  store i8 %conv1093, ptr %uc, align 1
  %712 = load i8, ptr %uc, align 1
  %cmp1130 = icmp eq i8 %712, 1
  br i1 %cmp1130, label %if.then1132, label %if.else1133

if.end1094:                                       ; preds = %while.body1080
  %713 = load ptr, ptr %s.addr, align 8
  %714 = load ptr, ptr %713, align 8
  %avail_in1096 = getelementptr inbounds %struct.bz_stream, ptr %714, i64 0, i32 1
  %715 = load i32, ptr %avail_in1096, align 8
  %cmp1097 = icmp eq i32 %715, 0
  br i1 %cmp1097, label %if.then1099, label %if.end1100

if.then1099:                                      ; preds = %if.end1094
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1100:                                       ; preds = %if.end1094
  %716 = load ptr, ptr %s.addr, align 8
  %bsBuff1101 = getelementptr inbounds %struct.DState, ptr %716, i64 0, i32 7
  %717 = load i32, ptr %bsBuff1101, align 8
  %shl1102 = shl i32 %717, 8
  %718 = load ptr, ptr %716, align 8
  %719 = load ptr, ptr %718, align 8
  %720 = load i8, ptr %719, align 1
  %conv1105 = zext i8 %720 to i32
  %or1106 = or i32 %shl1102, %conv1105
  %721 = load ptr, ptr %s.addr, align 8
  %bsBuff1107 = getelementptr inbounds %struct.DState, ptr %721, i64 0, i32 7
  store i32 %or1106, ptr %bsBuff1107, align 8
  %bsLive1108 = getelementptr inbounds %struct.DState, ptr %721, i64 0, i32 8
  %722 = load i32, ptr %bsLive1108, align 4
  %add1109 = add nsw i32 %722, 8
  store i32 %add1109, ptr %bsLive1108, align 4
  %723 = load ptr, ptr %s.addr, align 8
  %724 = load ptr, ptr %723, align 8
  %725 = load ptr, ptr %724, align 8
  %incdec.ptr1112 = getelementptr inbounds i8, ptr %725, i64 1
  store ptr %incdec.ptr1112, ptr %724, align 8
  %726 = load ptr, ptr %s.addr, align 8
  %727 = load ptr, ptr %726, align 8
  %avail_in1114 = getelementptr inbounds %struct.bz_stream, ptr %727, i64 0, i32 1
  %728 = load i32, ptr %avail_in1114, align 8
  %dec1115 = add i32 %728, -1
  store i32 %dec1115, ptr %avail_in1114, align 8
  %729 = load ptr, ptr %726, align 8
  %total_in_lo321117 = getelementptr inbounds %struct.bz_stream, ptr %729, i64 0, i32 2
  %730 = load i32, ptr %total_in_lo321117, align 4
  %inc1118 = add i32 %730, 1
  store i32 %inc1118, ptr %total_in_lo321117, align 4
  %731 = load ptr, ptr %s.addr, align 8
  %732 = load ptr, ptr %731, align 8
  %total_in_lo321120 = getelementptr inbounds %struct.bz_stream, ptr %732, i64 0, i32 2
  %733 = load i32, ptr %total_in_lo321120, align 4
  %cmp1121 = icmp eq i32 %733, 0
  br i1 %cmp1121, label %if.then1123, label %if.end1127

if.then1123:                                      ; preds = %if.end1100
  %734 = load ptr, ptr %s.addr, align 8
  %735 = load ptr, ptr %734, align 8
  %total_in_hi321125 = getelementptr inbounds %struct.bz_stream, ptr %735, i64 0, i32 3
  %736 = load i32, ptr %total_in_hi321125, align 8
  %inc1126 = add i32 %736, 1
  store i32 %inc1126, ptr %total_in_hi321125, align 8
  br label %if.end1127

if.end1127:                                       ; preds = %if.then1123, %if.end1100
  br label %while.body1080

if.then1132:                                      ; preds = %if.then1084
  %737 = load ptr, ptr %s.addr, align 8
  %738 = load i32, ptr %i, align 4
  %idxprom = sext i32 %738 to i64
  %arrayidx = getelementptr inbounds %struct.DState, ptr %737, i64 0, i32 29, i64 %idxprom
  store i8 1, ptr %arrayidx, align 1
  br label %for.inc

if.else1133:                                      ; preds = %if.then1084
  %739 = load ptr, ptr %s.addr, align 8
  %740 = load i32, ptr %i, align 4
  %idxprom1135 = sext i32 %740 to i64
  %arrayidx1136 = getelementptr inbounds %struct.DState, ptr %739, i64 0, i32 29, i64 %idxprom1135
  store i8 0, ptr %arrayidx1136, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then1132, %if.else1133
  %741 = load i32, ptr %i, align 4
  %inc1138 = add nsw i32 %741, 1
  br label %for.cond, !llvm.loop !6

for.cond1139:                                     ; preds = %for.cond, %for.body1142
  %storemerge25 = phi i32 [ %inc1146, %for.body1142 ], [ 0, %for.cond ]
  store i32 %storemerge25, ptr %i, align 4
  %cmp1140 = icmp slt i32 %storemerge25, 256
  br i1 %cmp1140, label %for.body1142, label %for.cond1148

for.body1142:                                     ; preds = %for.cond1139
  %742 = load ptr, ptr %s.addr, align 8
  %743 = load i32, ptr %i, align 4
  %idxprom1143 = sext i32 %743 to i64
  %arrayidx1144 = getelementptr inbounds %struct.DState, ptr %742, i64 0, i32 28, i64 %idxprom1143
  store i8 0, ptr %arrayidx1144, align 1
  %744 = load i32, ptr %i, align 4
  %inc1146 = add nsw i32 %744, 1
  br label %for.cond1139, !llvm.loop !8

for.cond1148:                                     ; preds = %for.cond1139, %for.inc1226
  %storemerge23 = phi i32 [ %inc1227, %for.inc1226 ], [ 0, %for.cond1139 ]
  store i32 %storemerge23, ptr %i, align 4
  %cmp1149 = icmp slt i32 %storemerge23, 16
  br i1 %cmp1149, label %for.body1151, label %for.end1228

for.body1151:                                     ; preds = %for.cond1148
  %745 = load ptr, ptr %s.addr, align 8
  %746 = load i32, ptr %i, align 4
  %idxprom1153 = sext i32 %746 to i64
  %arrayidx1154 = getelementptr inbounds %struct.DState, ptr %745, i64 0, i32 29, i64 %idxprom1153
  %747 = load i8, ptr %arrayidx1154, align 1
  %tobool1155.not = icmp eq i8 %747, 0
  br i1 %tobool1155.not, label %for.inc1226, label %for.cond1157

for.cond1157:                                     ; preds = %for.body1151, %for.inc1222
  %storemerge22 = phi i32 [ %inc1223, %for.inc1222 ], [ 0, %for.body1151 ]
  store i32 %storemerge22, ptr %j, align 4
  %cmp1158 = icmp slt i32 %storemerge22, 16
  br i1 %cmp1158, label %sw.bb1161, label %for.inc1226

sw.bb1161:                                        ; preds = %for.cond1157, %if.end
  %748 = load ptr, ptr %s.addr, align 8
  %state1162 = getelementptr inbounds %struct.DState, ptr %748, i64 0, i32 1
  store i32 29, ptr %state1162, align 8
  br label %while.body1163

while.body1163:                                   ; preds = %if.end1210, %sw.bb1161
  %749 = load ptr, ptr %s.addr, align 8
  %bsLive1164 = getelementptr inbounds %struct.DState, ptr %749, i64 0, i32 8
  %750 = load i32, ptr %bsLive1164, align 4
  %cmp1165 = icmp sgt i32 %750, 0
  br i1 %cmp1165, label %if.then1167, label %if.end1177

if.then1167:                                      ; preds = %while.body1163
  %751 = load ptr, ptr %s.addr, align 8
  %bsBuff1169 = getelementptr inbounds %struct.DState, ptr %751, i64 0, i32 7
  %752 = load i32, ptr %bsBuff1169, align 8
  %bsLive1170 = getelementptr inbounds %struct.DState, ptr %751, i64 0, i32 8
  %753 = load i32, ptr %bsLive1170, align 4
  %sub1171 = add nsw i32 %753, -1
  %shr1172 = lshr i32 %752, %sub1171
  %754 = load ptr, ptr %s.addr, align 8
  %bsLive1174 = getelementptr inbounds %struct.DState, ptr %754, i64 0, i32 8
  %755 = load i32, ptr %bsLive1174, align 4
  %sub1175 = add nsw i32 %755, -1
  store i32 %sub1175, ptr %bsLive1174, align 4
  %756 = trunc i32 %shr1172 to i8
  %conv1176 = and i8 %756, 1
  store i8 %conv1176, ptr %uc, align 1
  %757 = load i8, ptr %uc, align 1
  %cmp1213 = icmp eq i8 %757, 1
  br i1 %cmp1213, label %if.then1215, label %for.inc1222

if.end1177:                                       ; preds = %while.body1163
  %758 = load ptr, ptr %s.addr, align 8
  %759 = load ptr, ptr %758, align 8
  %avail_in1179 = getelementptr inbounds %struct.bz_stream, ptr %759, i64 0, i32 1
  %760 = load i32, ptr %avail_in1179, align 8
  %cmp1180 = icmp eq i32 %760, 0
  br i1 %cmp1180, label %if.then1182, label %if.end1183

if.then1182:                                      ; preds = %if.end1177
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1183:                                       ; preds = %if.end1177
  %761 = load ptr, ptr %s.addr, align 8
  %bsBuff1184 = getelementptr inbounds %struct.DState, ptr %761, i64 0, i32 7
  %762 = load i32, ptr %bsBuff1184, align 8
  %shl1185 = shl i32 %762, 8
  %763 = load ptr, ptr %761, align 8
  %764 = load ptr, ptr %763, align 8
  %765 = load i8, ptr %764, align 1
  %conv1188 = zext i8 %765 to i32
  %or1189 = or i32 %shl1185, %conv1188
  %766 = load ptr, ptr %s.addr, align 8
  %bsBuff1190 = getelementptr inbounds %struct.DState, ptr %766, i64 0, i32 7
  store i32 %or1189, ptr %bsBuff1190, align 8
  %bsLive1191 = getelementptr inbounds %struct.DState, ptr %766, i64 0, i32 8
  %767 = load i32, ptr %bsLive1191, align 4
  %add1192 = add nsw i32 %767, 8
  store i32 %add1192, ptr %bsLive1191, align 4
  %768 = load ptr, ptr %s.addr, align 8
  %769 = load ptr, ptr %768, align 8
  %770 = load ptr, ptr %769, align 8
  %incdec.ptr1195 = getelementptr inbounds i8, ptr %770, i64 1
  store ptr %incdec.ptr1195, ptr %769, align 8
  %771 = load ptr, ptr %s.addr, align 8
  %772 = load ptr, ptr %771, align 8
  %avail_in1197 = getelementptr inbounds %struct.bz_stream, ptr %772, i64 0, i32 1
  %773 = load i32, ptr %avail_in1197, align 8
  %dec1198 = add i32 %773, -1
  store i32 %dec1198, ptr %avail_in1197, align 8
  %774 = load ptr, ptr %771, align 8
  %total_in_lo321200 = getelementptr inbounds %struct.bz_stream, ptr %774, i64 0, i32 2
  %775 = load i32, ptr %total_in_lo321200, align 4
  %inc1201 = add i32 %775, 1
  store i32 %inc1201, ptr %total_in_lo321200, align 4
  %776 = load ptr, ptr %s.addr, align 8
  %777 = load ptr, ptr %776, align 8
  %total_in_lo321203 = getelementptr inbounds %struct.bz_stream, ptr %777, i64 0, i32 2
  %778 = load i32, ptr %total_in_lo321203, align 4
  %cmp1204 = icmp eq i32 %778, 0
  br i1 %cmp1204, label %if.then1206, label %if.end1210

if.then1206:                                      ; preds = %if.end1183
  %779 = load ptr, ptr %s.addr, align 8
  %780 = load ptr, ptr %779, align 8
  %total_in_hi321208 = getelementptr inbounds %struct.bz_stream, ptr %780, i64 0, i32 3
  %781 = load i32, ptr %total_in_hi321208, align 8
  %inc1209 = add i32 %781, 1
  store i32 %inc1209, ptr %total_in_hi321208, align 8
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1206, %if.end1183
  br label %while.body1163

if.then1215:                                      ; preds = %if.then1167
  %782 = load ptr, ptr %s.addr, align 8
  %783 = load i32, ptr %i, align 4
  %mul1217 = shl nsw i32 %783, 4
  %784 = load i32, ptr %j, align 4
  %add1218 = add nsw i32 %mul1217, %784
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds %struct.DState, ptr %782, i64 0, i32 28, i64 %idxprom1219
  store i8 1, ptr %arrayidx1220, align 1
  br label %for.inc1222

for.inc1222:                                      ; preds = %if.then1167, %if.then1215
  %785 = load i32, ptr %j, align 4
  %inc1223 = add nsw i32 %785, 1
  br label %for.cond1157, !llvm.loop !9

for.inc1226:                                      ; preds = %for.body1151, %for.cond1157
  %786 = load i32, ptr %i, align 4
  %inc1227 = add nsw i32 %786, 1
  br label %for.cond1148, !llvm.loop !10

for.end1228:                                      ; preds = %for.cond1148
  %787 = load ptr, ptr %s.addr, align 8
  call void @makeMaps_d(ptr noundef %787)
  %788 = load ptr, ptr %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, ptr %788, i64 0, i32 27
  %789 = load i32, ptr %nInUse, align 8
  %cmp1229 = icmp eq i32 %789, 0
  br i1 %cmp1229, label %if.then1231, label %if.end1232

if.then1231:                                      ; preds = %for.end1228
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1232:                                       ; preds = %for.end1228
  %790 = load ptr, ptr %s.addr, align 8
  %nInUse1233 = getelementptr inbounds %struct.DState, ptr %790, i64 0, i32 27
  %791 = load i32, ptr %nInUse1233, align 8
  %add1234 = add nsw i32 %791, 2
  store i32 %add1234, ptr %alphaSize, align 4
  br label %sw.bb1235

sw.bb1235:                                        ; preds = %if.end1232, %if.end
  %792 = load ptr, ptr %s.addr, align 8
  %state1236 = getelementptr inbounds %struct.DState, ptr %792, i64 0, i32 1
  store i32 30, ptr %state1236, align 8
  br label %while.body1237

while.body1237:                                   ; preds = %if.end1283, %sw.bb1235
  %793 = load ptr, ptr %s.addr, align 8
  %bsLive1238 = getelementptr inbounds %struct.DState, ptr %793, i64 0, i32 8
  %794 = load i32, ptr %bsLive1238, align 4
  %cmp1239 = icmp sgt i32 %794, 2
  br i1 %cmp1239, label %if.then1241, label %if.end1250

if.then1241:                                      ; preds = %while.body1237
  %795 = load ptr, ptr %s.addr, align 8
  %bsBuff1243 = getelementptr inbounds %struct.DState, ptr %795, i64 0, i32 7
  %796 = load i32, ptr %bsBuff1243, align 8
  %bsLive1244 = getelementptr inbounds %struct.DState, ptr %795, i64 0, i32 8
  %797 = load i32, ptr %bsLive1244, align 4
  %sub1245 = add nsw i32 %797, -3
  %shr1246 = lshr i32 %796, %sub1245
  %and1247 = and i32 %shr1246, 7
  %798 = load ptr, ptr %s.addr, align 8
  %bsLive1248 = getelementptr inbounds %struct.DState, ptr %798, i64 0, i32 8
  %799 = load i32, ptr %bsLive1248, align 4
  %sub1249 = add nsw i32 %799, -3
  store i32 %sub1249, ptr %bsLive1248, align 4
  store i32 %and1247, ptr %nGroups, align 4
  %800 = load i32, ptr %nGroups, align 4
  %cmp1285 = icmp slt i32 %800, 2
  %801 = load i32, ptr %nGroups, align 4
  %cmp1288 = icmp sgt i32 %801, 6
  %or.cond = select i1 %cmp1285, i1 true, i1 %cmp1288
  br i1 %or.cond, label %if.then1290, label %sw.bb1292

if.end1250:                                       ; preds = %while.body1237
  %802 = load ptr, ptr %s.addr, align 8
  %803 = load ptr, ptr %802, align 8
  %avail_in1252 = getelementptr inbounds %struct.bz_stream, ptr %803, i64 0, i32 1
  %804 = load i32, ptr %avail_in1252, align 8
  %cmp1253 = icmp eq i32 %804, 0
  br i1 %cmp1253, label %if.then1255, label %if.end1256

if.then1255:                                      ; preds = %if.end1250
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1256:                                       ; preds = %if.end1250
  %805 = load ptr, ptr %s.addr, align 8
  %bsBuff1257 = getelementptr inbounds %struct.DState, ptr %805, i64 0, i32 7
  %806 = load i32, ptr %bsBuff1257, align 8
  %shl1258 = shl i32 %806, 8
  %807 = load ptr, ptr %805, align 8
  %808 = load ptr, ptr %807, align 8
  %809 = load i8, ptr %808, align 1
  %conv1261 = zext i8 %809 to i32
  %or1262 = or i32 %shl1258, %conv1261
  %810 = load ptr, ptr %s.addr, align 8
  %bsBuff1263 = getelementptr inbounds %struct.DState, ptr %810, i64 0, i32 7
  store i32 %or1262, ptr %bsBuff1263, align 8
  %bsLive1264 = getelementptr inbounds %struct.DState, ptr %810, i64 0, i32 8
  %811 = load i32, ptr %bsLive1264, align 4
  %add1265 = add nsw i32 %811, 8
  store i32 %add1265, ptr %bsLive1264, align 4
  %812 = load ptr, ptr %s.addr, align 8
  %813 = load ptr, ptr %812, align 8
  %814 = load ptr, ptr %813, align 8
  %incdec.ptr1268 = getelementptr inbounds i8, ptr %814, i64 1
  store ptr %incdec.ptr1268, ptr %813, align 8
  %815 = load ptr, ptr %s.addr, align 8
  %816 = load ptr, ptr %815, align 8
  %avail_in1270 = getelementptr inbounds %struct.bz_stream, ptr %816, i64 0, i32 1
  %817 = load i32, ptr %avail_in1270, align 8
  %dec1271 = add i32 %817, -1
  store i32 %dec1271, ptr %avail_in1270, align 8
  %818 = load ptr, ptr %815, align 8
  %total_in_lo321273 = getelementptr inbounds %struct.bz_stream, ptr %818, i64 0, i32 2
  %819 = load i32, ptr %total_in_lo321273, align 4
  %inc1274 = add i32 %819, 1
  store i32 %inc1274, ptr %total_in_lo321273, align 4
  %820 = load ptr, ptr %s.addr, align 8
  %821 = load ptr, ptr %820, align 8
  %total_in_lo321276 = getelementptr inbounds %struct.bz_stream, ptr %821, i64 0, i32 2
  %822 = load i32, ptr %total_in_lo321276, align 4
  %cmp1277 = icmp eq i32 %822, 0
  br i1 %cmp1277, label %if.then1279, label %if.end1283

if.then1279:                                      ; preds = %if.end1256
  %823 = load ptr, ptr %s.addr, align 8
  %824 = load ptr, ptr %823, align 8
  %total_in_hi321281 = getelementptr inbounds %struct.bz_stream, ptr %824, i64 0, i32 3
  %825 = load i32, ptr %total_in_hi321281, align 8
  %inc1282 = add i32 %825, 1
  store i32 %inc1282, ptr %total_in_hi321281, align 8
  br label %if.end1283

if.end1283:                                       ; preds = %if.then1279, %if.end1256
  br label %while.body1237

if.then1290:                                      ; preds = %if.then1241
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb1292:                                        ; preds = %if.then1241, %if.end
  %826 = load ptr, ptr %s.addr, align 8
  %state1293 = getelementptr inbounds %struct.DState, ptr %826, i64 0, i32 1
  store i32 31, ptr %state1293, align 8
  br label %while.body1294

while.body1294:                                   ; preds = %if.end1340, %sw.bb1292
  %827 = load ptr, ptr %s.addr, align 8
  %bsLive1295 = getelementptr inbounds %struct.DState, ptr %827, i64 0, i32 8
  %828 = load i32, ptr %bsLive1295, align 4
  %cmp1296 = icmp sgt i32 %828, 14
  br i1 %cmp1296, label %if.then1298, label %if.end1307

if.then1298:                                      ; preds = %while.body1294
  %829 = load ptr, ptr %s.addr, align 8
  %bsBuff1300 = getelementptr inbounds %struct.DState, ptr %829, i64 0, i32 7
  %830 = load i32, ptr %bsBuff1300, align 8
  %bsLive1301 = getelementptr inbounds %struct.DState, ptr %829, i64 0, i32 8
  %831 = load i32, ptr %bsLive1301, align 4
  %sub1302 = add nsw i32 %831, -15
  %shr1303 = lshr i32 %830, %sub1302
  %and1304 = and i32 %shr1303, 32767
  %832 = load ptr, ptr %s.addr, align 8
  %bsLive1305 = getelementptr inbounds %struct.DState, ptr %832, i64 0, i32 8
  %833 = load i32, ptr %bsLive1305, align 4
  %sub1306 = add nsw i32 %833, -15
  store i32 %sub1306, ptr %bsLive1305, align 4
  store i32 %and1304, ptr %nSelectors, align 4
  %834 = load i32, ptr %nSelectors, align 4
  %cmp1342 = icmp slt i32 %834, 1
  br i1 %cmp1342, label %if.then1344, label %for.cond1346

if.end1307:                                       ; preds = %while.body1294
  %835 = load ptr, ptr %s.addr, align 8
  %836 = load ptr, ptr %835, align 8
  %avail_in1309 = getelementptr inbounds %struct.bz_stream, ptr %836, i64 0, i32 1
  %837 = load i32, ptr %avail_in1309, align 8
  %cmp1310 = icmp eq i32 %837, 0
  br i1 %cmp1310, label %if.then1312, label %if.end1313

if.then1312:                                      ; preds = %if.end1307
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1313:                                       ; preds = %if.end1307
  %838 = load ptr, ptr %s.addr, align 8
  %bsBuff1314 = getelementptr inbounds %struct.DState, ptr %838, i64 0, i32 7
  %839 = load i32, ptr %bsBuff1314, align 8
  %shl1315 = shl i32 %839, 8
  %840 = load ptr, ptr %838, align 8
  %841 = load ptr, ptr %840, align 8
  %842 = load i8, ptr %841, align 1
  %conv1318 = zext i8 %842 to i32
  %or1319 = or i32 %shl1315, %conv1318
  %843 = load ptr, ptr %s.addr, align 8
  %bsBuff1320 = getelementptr inbounds %struct.DState, ptr %843, i64 0, i32 7
  store i32 %or1319, ptr %bsBuff1320, align 8
  %bsLive1321 = getelementptr inbounds %struct.DState, ptr %843, i64 0, i32 8
  %844 = load i32, ptr %bsLive1321, align 4
  %add1322 = add nsw i32 %844, 8
  store i32 %add1322, ptr %bsLive1321, align 4
  %845 = load ptr, ptr %s.addr, align 8
  %846 = load ptr, ptr %845, align 8
  %847 = load ptr, ptr %846, align 8
  %incdec.ptr1325 = getelementptr inbounds i8, ptr %847, i64 1
  store ptr %incdec.ptr1325, ptr %846, align 8
  %848 = load ptr, ptr %s.addr, align 8
  %849 = load ptr, ptr %848, align 8
  %avail_in1327 = getelementptr inbounds %struct.bz_stream, ptr %849, i64 0, i32 1
  %850 = load i32, ptr %avail_in1327, align 8
  %dec1328 = add i32 %850, -1
  store i32 %dec1328, ptr %avail_in1327, align 8
  %851 = load ptr, ptr %848, align 8
  %total_in_lo321330 = getelementptr inbounds %struct.bz_stream, ptr %851, i64 0, i32 2
  %852 = load i32, ptr %total_in_lo321330, align 4
  %inc1331 = add i32 %852, 1
  store i32 %inc1331, ptr %total_in_lo321330, align 4
  %853 = load ptr, ptr %s.addr, align 8
  %854 = load ptr, ptr %853, align 8
  %total_in_lo321333 = getelementptr inbounds %struct.bz_stream, ptr %854, i64 0, i32 2
  %855 = load i32, ptr %total_in_lo321333, align 4
  %cmp1334 = icmp eq i32 %855, 0
  br i1 %cmp1334, label %if.then1336, label %if.end1340

if.then1336:                                      ; preds = %if.end1313
  %856 = load ptr, ptr %s.addr, align 8
  %857 = load ptr, ptr %856, align 8
  %total_in_hi321338 = getelementptr inbounds %struct.bz_stream, ptr %857, i64 0, i32 3
  %858 = load i32, ptr %total_in_hi321338, align 8
  %inc1339 = add i32 %858, 1
  store i32 %inc1339, ptr %total_in_hi321338, align 8
  br label %if.end1340

if.end1340:                                       ; preds = %if.then1336, %if.end1313
  br label %while.body1294

if.then1344:                                      ; preds = %if.then1298
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

for.cond1346:                                     ; preds = %if.then1298, %while.end1413
  %storemerge19 = phi i32 [ %inc1418, %while.end1413 ], [ 0, %if.then1298 ]
  store i32 %storemerge19, ptr %i, align 4
  %859 = load i32, ptr %nSelectors, align 4
  %cmp1347 = icmp slt i32 %storemerge19, %859
  br i1 %cmp1347, label %for.body1349, label %for.cond1421

for.body1349:                                     ; preds = %for.cond1346
  store i32 0, ptr %j, align 4
  br label %while.body1350

while.body1350:                                   ; preds = %if.end1407, %for.body1349
  br label %sw.bb1351

sw.bb1351:                                        ; preds = %while.body1350, %if.end
  %860 = load ptr, ptr %s.addr, align 8
  %state1352 = getelementptr inbounds %struct.DState, ptr %860, i64 0, i32 1
  store i32 32, ptr %state1352, align 8
  br label %while.body1354

while.body1354:                                   ; preds = %if.end1401, %sw.bb1351
  %861 = load ptr, ptr %s.addr, align 8
  %bsLive1355 = getelementptr inbounds %struct.DState, ptr %861, i64 0, i32 8
  %862 = load i32, ptr %bsLive1355, align 4
  %cmp1356 = icmp sgt i32 %862, 0
  br i1 %cmp1356, label %if.then1358, label %if.end1368

if.then1358:                                      ; preds = %while.body1354
  %863 = load ptr, ptr %s.addr, align 8
  %bsBuff1360 = getelementptr inbounds %struct.DState, ptr %863, i64 0, i32 7
  %864 = load i32, ptr %bsBuff1360, align 8
  %bsLive1361 = getelementptr inbounds %struct.DState, ptr %863, i64 0, i32 8
  %865 = load i32, ptr %bsLive1361, align 4
  %sub1362 = add nsw i32 %865, -1
  %shr1363 = lshr i32 %864, %sub1362
  %866 = load ptr, ptr %s.addr, align 8
  %bsLive1365 = getelementptr inbounds %struct.DState, ptr %866, i64 0, i32 8
  %867 = load i32, ptr %bsLive1365, align 4
  %sub1366 = add nsw i32 %867, -1
  store i32 %sub1366, ptr %bsLive1365, align 4
  %868 = trunc i32 %shr1363 to i8
  %conv1367 = and i8 %868, 1
  store i8 %conv1367, ptr %uc, align 1
  %869 = load i8, ptr %uc, align 1
  %cmp1404 = icmp eq i8 %869, 0
  br i1 %cmp1404, label %while.end1413, label %if.end1407

if.end1368:                                       ; preds = %while.body1354
  %870 = load ptr, ptr %s.addr, align 8
  %871 = load ptr, ptr %870, align 8
  %avail_in1370 = getelementptr inbounds %struct.bz_stream, ptr %871, i64 0, i32 1
  %872 = load i32, ptr %avail_in1370, align 8
  %cmp1371 = icmp eq i32 %872, 0
  br i1 %cmp1371, label %if.then1373, label %if.end1374

if.then1373:                                      ; preds = %if.end1368
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1374:                                       ; preds = %if.end1368
  %873 = load ptr, ptr %s.addr, align 8
  %bsBuff1375 = getelementptr inbounds %struct.DState, ptr %873, i64 0, i32 7
  %874 = load i32, ptr %bsBuff1375, align 8
  %shl1376 = shl i32 %874, 8
  %875 = load ptr, ptr %873, align 8
  %876 = load ptr, ptr %875, align 8
  %877 = load i8, ptr %876, align 1
  %conv1379 = zext i8 %877 to i32
  %or1380 = or i32 %shl1376, %conv1379
  %878 = load ptr, ptr %s.addr, align 8
  %bsBuff1381 = getelementptr inbounds %struct.DState, ptr %878, i64 0, i32 7
  store i32 %or1380, ptr %bsBuff1381, align 8
  %bsLive1382 = getelementptr inbounds %struct.DState, ptr %878, i64 0, i32 8
  %879 = load i32, ptr %bsLive1382, align 4
  %add1383 = add nsw i32 %879, 8
  store i32 %add1383, ptr %bsLive1382, align 4
  %880 = load ptr, ptr %s.addr, align 8
  %881 = load ptr, ptr %880, align 8
  %882 = load ptr, ptr %881, align 8
  %incdec.ptr1386 = getelementptr inbounds i8, ptr %882, i64 1
  store ptr %incdec.ptr1386, ptr %881, align 8
  %883 = load ptr, ptr %s.addr, align 8
  %884 = load ptr, ptr %883, align 8
  %avail_in1388 = getelementptr inbounds %struct.bz_stream, ptr %884, i64 0, i32 1
  %885 = load i32, ptr %avail_in1388, align 8
  %dec1389 = add i32 %885, -1
  store i32 %dec1389, ptr %avail_in1388, align 8
  %886 = load ptr, ptr %883, align 8
  %total_in_lo321391 = getelementptr inbounds %struct.bz_stream, ptr %886, i64 0, i32 2
  %887 = load i32, ptr %total_in_lo321391, align 4
  %inc1392 = add i32 %887, 1
  store i32 %inc1392, ptr %total_in_lo321391, align 4
  %888 = load ptr, ptr %s.addr, align 8
  %889 = load ptr, ptr %888, align 8
  %total_in_lo321394 = getelementptr inbounds %struct.bz_stream, ptr %889, i64 0, i32 2
  %890 = load i32, ptr %total_in_lo321394, align 4
  %cmp1395 = icmp eq i32 %890, 0
  br i1 %cmp1395, label %if.then1397, label %if.end1401

if.then1397:                                      ; preds = %if.end1374
  %891 = load ptr, ptr %s.addr, align 8
  %892 = load ptr, ptr %891, align 8
  %total_in_hi321399 = getelementptr inbounds %struct.bz_stream, ptr %892, i64 0, i32 3
  %893 = load i32, ptr %total_in_hi321399, align 8
  %inc1400 = add i32 %893, 1
  store i32 %inc1400, ptr %total_in_hi321399, align 8
  br label %if.end1401

if.end1401:                                       ; preds = %if.then1397, %if.end1374
  br label %while.body1354

if.end1407:                                       ; preds = %if.then1358
  %894 = load i32, ptr %j, align 4
  %inc1408 = add nsw i32 %894, 1
  store i32 %inc1408, ptr %j, align 4
  %895 = load i32, ptr %nGroups, align 4
  %cmp1409.not = icmp slt i32 %inc1408, %895
  br i1 %cmp1409.not, label %while.body1350, label %if.then1411

if.then1411:                                      ; preds = %if.end1407
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

while.end1413:                                    ; preds = %if.then1358
  %896 = load i32, ptr %j, align 4
  %conv1414 = trunc i32 %896 to i8
  %897 = load ptr, ptr %s.addr, align 8
  %898 = load i32, ptr %i, align 4
  %idxprom1415 = sext i32 %898 to i64
  %arrayidx1416 = getelementptr inbounds %struct.DState, ptr %897, i64 0, i32 34, i64 %idxprom1415
  store i8 %conv1414, ptr %arrayidx1416, align 1
  %899 = load i32, ptr %i, align 4
  %inc1418 = add nsw i32 %899, 1
  br label %for.cond1346, !llvm.loop !11

for.cond1421:                                     ; preds = %for.cond1346, %for.body1425
  %storemerge20 = phi i8 [ %inc1429, %for.body1425 ], [ 0, %for.cond1346 ]
  store i8 %storemerge20, ptr %v1420, align 1
  %conv1422 = zext i8 %storemerge20 to i32
  %900 = load i32, ptr %nGroups, align 4
  %cmp1423 = icmp sgt i32 %900, %conv1422
  br i1 %cmp1423, label %for.body1425, label %for.cond1431

for.body1425:                                     ; preds = %for.cond1421
  %901 = load i8, ptr %v1420, align 1
  %idxprom1426 = zext i8 %901 to i64
  %arrayidx1427 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1426
  store i8 %901, ptr %arrayidx1427, align 1
  %902 = load i8, ptr %v1420, align 1
  %inc1429 = add i8 %902, 1
  br label %for.cond1421, !llvm.loop !12

for.cond1431:                                     ; preds = %for.cond1421, %while.end1451
  %storemerge21 = phi i32 [ %inc1456, %while.end1451 ], [ 0, %for.cond1421 ]
  store i32 %storemerge21, ptr %i, align 4
  %903 = load i32, ptr %nSelectors, align 4
  %cmp1432 = icmp slt i32 %storemerge21, %903
  br i1 %cmp1432, label %for.body1434, label %for.cond1458

for.body1434:                                     ; preds = %for.cond1431
  %904 = load ptr, ptr %s.addr, align 8
  %905 = load i32, ptr %i, align 4
  %idxprom1436 = sext i32 %905 to i64
  %arrayidx1437 = getelementptr inbounds %struct.DState, ptr %904, i64 0, i32 34, i64 %idxprom1436
  %906 = load i8, ptr %arrayidx1437, align 1
  store i8 %906, ptr %v1420, align 1
  %idxprom1438 = zext i8 %906 to i64
  %arrayidx1439 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1438
  %907 = load i8, ptr %arrayidx1439, align 1
  store i8 %907, ptr %tmp, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body1443, %for.body1434
  %908 = load i8, ptr %v1420, align 1
  %cmp1441.not = icmp eq i8 %908, 0
  br i1 %cmp1441.not, label %while.end1451, label %while.body1443

while.body1443:                                   ; preds = %while.cond
  %909 = load i8, ptr %v1420, align 1
  %conv1444 = zext i8 %909 to i64
  %sub1445 = add nsw i64 %conv1444, -1
  %arrayidx1447 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %sub1445
  %910 = load i8, ptr %arrayidx1447, align 1
  %idxprom1448 = zext i8 %909 to i64
  %arrayidx1449 = getelementptr inbounds [6 x i8], ptr %pos, i64 0, i64 %idxprom1448
  store i8 %910, ptr %arrayidx1449, align 1
  %911 = load i8, ptr %v1420, align 1
  %dec1450 = add i8 %911, -1
  store i8 %dec1450, ptr %v1420, align 1
  br label %while.cond, !llvm.loop !13

while.end1451:                                    ; preds = %while.cond
  %912 = load i8, ptr %tmp, align 1
  store i8 %912, ptr %pos, align 1
  %913 = load ptr, ptr %s.addr, align 8
  %914 = load i32, ptr %i, align 4
  %idxprom1453 = sext i32 %914 to i64
  %arrayidx1454 = getelementptr inbounds %struct.DState, ptr %913, i64 0, i32 33, i64 %idxprom1453
  store i8 %912, ptr %arrayidx1454, align 1
  %915 = load i32, ptr %i, align 4
  %inc1456 = add nsw i32 %915, 1
  br label %for.cond1431, !llvm.loop !14

for.cond1458:                                     ; preds = %for.cond1431, %for.inc1652
  %storemerge13 = phi i32 [ %inc1653, %for.inc1652 ], [ 0, %for.cond1431 ]
  store i32 %storemerge13, ptr %t, align 4
  %916 = load i32, ptr %nGroups, align 4
  %cmp1459 = icmp slt i32 %storemerge13, %916
  br i1 %cmp1459, label %sw.bb1462, label %for.cond1655

sw.bb1462:                                        ; preds = %for.cond1458, %if.end
  %917 = load ptr, ptr %s.addr, align 8
  %state1463 = getelementptr inbounds %struct.DState, ptr %917, i64 0, i32 1
  store i32 33, ptr %state1463, align 8
  br label %while.body1465

while.body1465:                                   ; preds = %if.end1511, %sw.bb1462
  %918 = load ptr, ptr %s.addr, align 8
  %bsLive1466 = getelementptr inbounds %struct.DState, ptr %918, i64 0, i32 8
  %919 = load i32, ptr %bsLive1466, align 4
  %cmp1467 = icmp sgt i32 %919, 4
  br i1 %cmp1467, label %if.then1469, label %if.end1478

if.then1469:                                      ; preds = %while.body1465
  %920 = load ptr, ptr %s.addr, align 8
  %bsBuff1471 = getelementptr inbounds %struct.DState, ptr %920, i64 0, i32 7
  %921 = load i32, ptr %bsBuff1471, align 8
  %bsLive1472 = getelementptr inbounds %struct.DState, ptr %920, i64 0, i32 8
  %922 = load i32, ptr %bsLive1472, align 4
  %sub1473 = add nsw i32 %922, -5
  %shr1474 = lshr i32 %921, %sub1473
  %and1475 = and i32 %shr1474, 31
  %923 = load ptr, ptr %s.addr, align 8
  %bsLive1476 = getelementptr inbounds %struct.DState, ptr %923, i64 0, i32 8
  %924 = load i32, ptr %bsLive1476, align 4
  %sub1477 = add nsw i32 %924, -5
  store i32 %sub1477, ptr %bsLive1476, align 4
  store i32 %and1475, ptr %curr, align 4
  br label %for.cond1513

if.end1478:                                       ; preds = %while.body1465
  %925 = load ptr, ptr %s.addr, align 8
  %926 = load ptr, ptr %925, align 8
  %avail_in1480 = getelementptr inbounds %struct.bz_stream, ptr %926, i64 0, i32 1
  %927 = load i32, ptr %avail_in1480, align 8
  %cmp1481 = icmp eq i32 %927, 0
  br i1 %cmp1481, label %if.then1483, label %if.end1484

if.then1483:                                      ; preds = %if.end1478
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1484:                                       ; preds = %if.end1478
  %928 = load ptr, ptr %s.addr, align 8
  %bsBuff1485 = getelementptr inbounds %struct.DState, ptr %928, i64 0, i32 7
  %929 = load i32, ptr %bsBuff1485, align 8
  %shl1486 = shl i32 %929, 8
  %930 = load ptr, ptr %928, align 8
  %931 = load ptr, ptr %930, align 8
  %932 = load i8, ptr %931, align 1
  %conv1489 = zext i8 %932 to i32
  %or1490 = or i32 %shl1486, %conv1489
  %933 = load ptr, ptr %s.addr, align 8
  %bsBuff1491 = getelementptr inbounds %struct.DState, ptr %933, i64 0, i32 7
  store i32 %or1490, ptr %bsBuff1491, align 8
  %bsLive1492 = getelementptr inbounds %struct.DState, ptr %933, i64 0, i32 8
  %934 = load i32, ptr %bsLive1492, align 4
  %add1493 = add nsw i32 %934, 8
  store i32 %add1493, ptr %bsLive1492, align 4
  %935 = load ptr, ptr %s.addr, align 8
  %936 = load ptr, ptr %935, align 8
  %937 = load ptr, ptr %936, align 8
  %incdec.ptr1496 = getelementptr inbounds i8, ptr %937, i64 1
  store ptr %incdec.ptr1496, ptr %936, align 8
  %938 = load ptr, ptr %s.addr, align 8
  %939 = load ptr, ptr %938, align 8
  %avail_in1498 = getelementptr inbounds %struct.bz_stream, ptr %939, i64 0, i32 1
  %940 = load i32, ptr %avail_in1498, align 8
  %dec1499 = add i32 %940, -1
  store i32 %dec1499, ptr %avail_in1498, align 8
  %941 = load ptr, ptr %938, align 8
  %total_in_lo321501 = getelementptr inbounds %struct.bz_stream, ptr %941, i64 0, i32 2
  %942 = load i32, ptr %total_in_lo321501, align 4
  %inc1502 = add i32 %942, 1
  store i32 %inc1502, ptr %total_in_lo321501, align 4
  %943 = load ptr, ptr %s.addr, align 8
  %944 = load ptr, ptr %943, align 8
  %total_in_lo321504 = getelementptr inbounds %struct.bz_stream, ptr %944, i64 0, i32 2
  %945 = load i32, ptr %total_in_lo321504, align 4
  %cmp1505 = icmp eq i32 %945, 0
  br i1 %cmp1505, label %if.then1507, label %if.end1511

if.then1507:                                      ; preds = %if.end1484
  %946 = load ptr, ptr %s.addr, align 8
  %947 = load ptr, ptr %946, align 8
  %total_in_hi321509 = getelementptr inbounds %struct.bz_stream, ptr %947, i64 0, i32 3
  %948 = load i32, ptr %total_in_hi321509, align 8
  %inc1510 = add i32 %948, 1
  store i32 %inc1510, ptr %total_in_hi321509, align 8
  br label %if.end1511

if.end1511:                                       ; preds = %if.then1507, %if.end1484
  br label %while.body1465

for.cond1513:                                     ; preds = %while.end1643, %if.then1469
  %storemerge12 = phi i32 [ %inc1650, %while.end1643 ], [ 0, %if.then1469 ]
  store i32 %storemerge12, ptr %i, align 4
  %949 = load i32, ptr %alphaSize, align 4
  %cmp1514 = icmp slt i32 %storemerge12, %949
  br i1 %cmp1514, label %while.body1518, label %for.inc1652

while.body1518:                                   ; preds = %for.cond1513, %if.then1590
  %950 = load i32, ptr %curr, align 4
  %cmp1519 = icmp slt i32 %950, 1
  %951 = load i32, ptr %curr, align 4
  %cmp1522 = icmp sgt i32 %951, 20
  %or.cond26 = select i1 %cmp1519, i1 true, i1 %cmp1522
  br i1 %or.cond26, label %if.then1524, label %sw.bb1526

if.then1524:                                      ; preds = %while.body1518
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb1526:                                        ; preds = %while.body1518, %if.end
  %952 = load ptr, ptr %s.addr, align 8
  %state1527 = getelementptr inbounds %struct.DState, ptr %952, i64 0, i32 1
  store i32 34, ptr %state1527, align 8
  br label %while.body1529

while.body1529:                                   ; preds = %if.end1576, %sw.bb1526
  %953 = load ptr, ptr %s.addr, align 8
  %bsLive1530 = getelementptr inbounds %struct.DState, ptr %953, i64 0, i32 8
  %954 = load i32, ptr %bsLive1530, align 4
  %cmp1531 = icmp sgt i32 %954, 0
  br i1 %cmp1531, label %if.then1533, label %if.end1543

if.then1533:                                      ; preds = %while.body1529
  %955 = load ptr, ptr %s.addr, align 8
  %bsBuff1535 = getelementptr inbounds %struct.DState, ptr %955, i64 0, i32 7
  %956 = load i32, ptr %bsBuff1535, align 8
  %bsLive1536 = getelementptr inbounds %struct.DState, ptr %955, i64 0, i32 8
  %957 = load i32, ptr %bsLive1536, align 4
  %sub1537 = add nsw i32 %957, -1
  %shr1538 = lshr i32 %956, %sub1537
  %958 = load ptr, ptr %s.addr, align 8
  %bsLive1540 = getelementptr inbounds %struct.DState, ptr %958, i64 0, i32 8
  %959 = load i32, ptr %bsLive1540, align 4
  %sub1541 = add nsw i32 %959, -1
  store i32 %sub1541, ptr %bsLive1540, align 4
  %960 = trunc i32 %shr1538 to i8
  %conv1542 = and i8 %960, 1
  store i8 %conv1542, ptr %uc, align 1
  %961 = load i8, ptr %uc, align 1
  %cmp1579 = icmp eq i8 %961, 0
  br i1 %cmp1579, label %while.end1643, label %sw.bb1583

if.end1543:                                       ; preds = %while.body1529
  %962 = load ptr, ptr %s.addr, align 8
  %963 = load ptr, ptr %962, align 8
  %avail_in1545 = getelementptr inbounds %struct.bz_stream, ptr %963, i64 0, i32 1
  %964 = load i32, ptr %avail_in1545, align 8
  %cmp1546 = icmp eq i32 %964, 0
  br i1 %cmp1546, label %if.then1548, label %if.end1549

if.then1548:                                      ; preds = %if.end1543
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1549:                                       ; preds = %if.end1543
  %965 = load ptr, ptr %s.addr, align 8
  %bsBuff1550 = getelementptr inbounds %struct.DState, ptr %965, i64 0, i32 7
  %966 = load i32, ptr %bsBuff1550, align 8
  %shl1551 = shl i32 %966, 8
  %967 = load ptr, ptr %965, align 8
  %968 = load ptr, ptr %967, align 8
  %969 = load i8, ptr %968, align 1
  %conv1554 = zext i8 %969 to i32
  %or1555 = or i32 %shl1551, %conv1554
  %970 = load ptr, ptr %s.addr, align 8
  %bsBuff1556 = getelementptr inbounds %struct.DState, ptr %970, i64 0, i32 7
  store i32 %or1555, ptr %bsBuff1556, align 8
  %bsLive1557 = getelementptr inbounds %struct.DState, ptr %970, i64 0, i32 8
  %971 = load i32, ptr %bsLive1557, align 4
  %add1558 = add nsw i32 %971, 8
  store i32 %add1558, ptr %bsLive1557, align 4
  %972 = load ptr, ptr %s.addr, align 8
  %973 = load ptr, ptr %972, align 8
  %974 = load ptr, ptr %973, align 8
  %incdec.ptr1561 = getelementptr inbounds i8, ptr %974, i64 1
  store ptr %incdec.ptr1561, ptr %973, align 8
  %975 = load ptr, ptr %s.addr, align 8
  %976 = load ptr, ptr %975, align 8
  %avail_in1563 = getelementptr inbounds %struct.bz_stream, ptr %976, i64 0, i32 1
  %977 = load i32, ptr %avail_in1563, align 8
  %dec1564 = add i32 %977, -1
  store i32 %dec1564, ptr %avail_in1563, align 8
  %978 = load ptr, ptr %975, align 8
  %total_in_lo321566 = getelementptr inbounds %struct.bz_stream, ptr %978, i64 0, i32 2
  %979 = load i32, ptr %total_in_lo321566, align 4
  %inc1567 = add i32 %979, 1
  store i32 %inc1567, ptr %total_in_lo321566, align 4
  %980 = load ptr, ptr %s.addr, align 8
  %981 = load ptr, ptr %980, align 8
  %total_in_lo321569 = getelementptr inbounds %struct.bz_stream, ptr %981, i64 0, i32 2
  %982 = load i32, ptr %total_in_lo321569, align 4
  %cmp1570 = icmp eq i32 %982, 0
  br i1 %cmp1570, label %if.then1572, label %if.end1576

if.then1572:                                      ; preds = %if.end1549
  %983 = load ptr, ptr %s.addr, align 8
  %984 = load ptr, ptr %983, align 8
  %total_in_hi321574 = getelementptr inbounds %struct.bz_stream, ptr %984, i64 0, i32 3
  %985 = load i32, ptr %total_in_hi321574, align 8
  %inc1575 = add i32 %985, 1
  store i32 %inc1575, ptr %total_in_hi321574, align 8
  br label %if.end1576

if.end1576:                                       ; preds = %if.then1572, %if.end1549
  br label %while.body1529

sw.bb1583:                                        ; preds = %if.then1533, %if.end
  %986 = load ptr, ptr %s.addr, align 8
  %state1584 = getelementptr inbounds %struct.DState, ptr %986, i64 0, i32 1
  store i32 35, ptr %state1584, align 8
  br label %while.body1586

while.body1586:                                   ; preds = %if.end1633, %sw.bb1583
  %987 = load ptr, ptr %s.addr, align 8
  %bsLive1587 = getelementptr inbounds %struct.DState, ptr %987, i64 0, i32 8
  %988 = load i32, ptr %bsLive1587, align 4
  %cmp1588 = icmp sgt i32 %988, 0
  br i1 %cmp1588, label %if.then1590, label %if.end1600

if.then1590:                                      ; preds = %while.body1586
  %989 = load ptr, ptr %s.addr, align 8
  %bsBuff1592 = getelementptr inbounds %struct.DState, ptr %989, i64 0, i32 7
  %990 = load i32, ptr %bsBuff1592, align 8
  %bsLive1593 = getelementptr inbounds %struct.DState, ptr %989, i64 0, i32 8
  %991 = load i32, ptr %bsLive1593, align 4
  %sub1594 = add nsw i32 %991, -1
  %shr1595 = lshr i32 %990, %sub1594
  %992 = load ptr, ptr %s.addr, align 8
  %bsLive1597 = getelementptr inbounds %struct.DState, ptr %992, i64 0, i32 8
  %993 = load i32, ptr %bsLive1597, align 4
  %sub1598 = add nsw i32 %993, -1
  store i32 %sub1598, ptr %bsLive1597, align 4
  %994 = trunc i32 %shr1595 to i8
  %conv1599 = and i8 %994, 1
  store i8 %conv1599, ptr %uc, align 1
  %995 = load i8, ptr %uc, align 1
  %cmp1636 = icmp eq i8 %995, 0
  %996 = load i32, ptr %curr, align 4
  %dec1641 = add nsw i32 %996, -1
  %997 = load i32, ptr %curr, align 4
  %inc1639 = add nsw i32 %997, 1
  %storemerge11 = select i1 %cmp1636, i32 %inc1639, i32 %dec1641
  store i32 %storemerge11, ptr %curr, align 4
  br label %while.body1518

if.end1600:                                       ; preds = %while.body1586
  %998 = load ptr, ptr %s.addr, align 8
  %999 = load ptr, ptr %998, align 8
  %avail_in1602 = getelementptr inbounds %struct.bz_stream, ptr %999, i64 0, i32 1
  %1000 = load i32, ptr %avail_in1602, align 8
  %cmp1603 = icmp eq i32 %1000, 0
  br i1 %cmp1603, label %if.then1605, label %if.end1606

if.then1605:                                      ; preds = %if.end1600
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1606:                                       ; preds = %if.end1600
  %1001 = load ptr, ptr %s.addr, align 8
  %bsBuff1607 = getelementptr inbounds %struct.DState, ptr %1001, i64 0, i32 7
  %1002 = load i32, ptr %bsBuff1607, align 8
  %shl1608 = shl i32 %1002, 8
  %1003 = load ptr, ptr %1001, align 8
  %1004 = load ptr, ptr %1003, align 8
  %1005 = load i8, ptr %1004, align 1
  %conv1611 = zext i8 %1005 to i32
  %or1612 = or i32 %shl1608, %conv1611
  %1006 = load ptr, ptr %s.addr, align 8
  %bsBuff1613 = getelementptr inbounds %struct.DState, ptr %1006, i64 0, i32 7
  store i32 %or1612, ptr %bsBuff1613, align 8
  %bsLive1614 = getelementptr inbounds %struct.DState, ptr %1006, i64 0, i32 8
  %1007 = load i32, ptr %bsLive1614, align 4
  %add1615 = add nsw i32 %1007, 8
  store i32 %add1615, ptr %bsLive1614, align 4
  %1008 = load ptr, ptr %s.addr, align 8
  %1009 = load ptr, ptr %1008, align 8
  %1010 = load ptr, ptr %1009, align 8
  %incdec.ptr1618 = getelementptr inbounds i8, ptr %1010, i64 1
  store ptr %incdec.ptr1618, ptr %1009, align 8
  %1011 = load ptr, ptr %s.addr, align 8
  %1012 = load ptr, ptr %1011, align 8
  %avail_in1620 = getelementptr inbounds %struct.bz_stream, ptr %1012, i64 0, i32 1
  %1013 = load i32, ptr %avail_in1620, align 8
  %dec1621 = add i32 %1013, -1
  store i32 %dec1621, ptr %avail_in1620, align 8
  %1014 = load ptr, ptr %1011, align 8
  %total_in_lo321623 = getelementptr inbounds %struct.bz_stream, ptr %1014, i64 0, i32 2
  %1015 = load i32, ptr %total_in_lo321623, align 4
  %inc1624 = add i32 %1015, 1
  store i32 %inc1624, ptr %total_in_lo321623, align 4
  %1016 = load ptr, ptr %s.addr, align 8
  %1017 = load ptr, ptr %1016, align 8
  %total_in_lo321626 = getelementptr inbounds %struct.bz_stream, ptr %1017, i64 0, i32 2
  %1018 = load i32, ptr %total_in_lo321626, align 4
  %cmp1627 = icmp eq i32 %1018, 0
  br i1 %cmp1627, label %if.then1629, label %if.end1633

if.then1629:                                      ; preds = %if.end1606
  %1019 = load ptr, ptr %s.addr, align 8
  %1020 = load ptr, ptr %1019, align 8
  %total_in_hi321631 = getelementptr inbounds %struct.bz_stream, ptr %1020, i64 0, i32 3
  %1021 = load i32, ptr %total_in_hi321631, align 8
  %inc1632 = add i32 %1021, 1
  store i32 %inc1632, ptr %total_in_hi321631, align 8
  br label %if.end1633

if.end1633:                                       ; preds = %if.then1629, %if.end1606
  br label %while.body1586

while.end1643:                                    ; preds = %if.then1533
  %1022 = load i32, ptr %curr, align 4
  %conv1644 = trunc i32 %1022 to i8
  %1023 = load ptr, ptr %s.addr, align 8
  %1024 = load i32, ptr %t, align 4
  %idxprom1645 = sext i32 %1024 to i64
  %1025 = load i32, ptr %i, align 4
  %idxprom1647 = sext i32 %1025 to i64
  %arrayidx1648 = getelementptr inbounds %struct.DState, ptr %1023, i64 0, i32 35, i64 %idxprom1645, i64 %idxprom1647
  store i8 %conv1644, ptr %arrayidx1648, align 1
  %1026 = load i32, ptr %i, align 4
  %inc1650 = add nsw i32 %1026, 1
  br label %for.cond1513, !llvm.loop !15

for.inc1652:                                      ; preds = %for.cond1513
  %1027 = load i32, ptr %t, align 4
  %inc1653 = add nsw i32 %1027, 1
  br label %for.cond1458, !llvm.loop !16

for.cond1655:                                     ; preds = %for.cond1458, %for.end1697
  %storemerge14 = phi i32 [ %inc1714, %for.end1697 ], [ 0, %for.cond1458 ]
  store i32 %storemerge14, ptr %t, align 4
  %1028 = load i32, ptr %nGroups, align 4
  %cmp1656 = icmp slt i32 %storemerge14, %1028
  br i1 %cmp1656, label %for.body1658, label %for.end1715

for.body1658:                                     ; preds = %for.cond1655
  store i32 32, ptr %minLen, align 4
  store i32 0, ptr %maxLen, align 4
  br label %for.cond1659

for.cond1659:                                     ; preds = %for.inc1695, %for.body1658
  %storemerge18 = phi i32 [ 0, %for.body1658 ], [ %inc1696, %for.inc1695 ]
  store i32 %storemerge18, ptr %i, align 4
  %1029 = load i32, ptr %alphaSize, align 4
  %cmp1660 = icmp slt i32 %storemerge18, %1029
  br i1 %cmp1660, label %for.body1662, label %for.end1697

for.body1662:                                     ; preds = %for.cond1659
  %1030 = load ptr, ptr %s.addr, align 8
  %1031 = load i32, ptr %t, align 4
  %idxprom1664 = sext i32 %1031 to i64
  %1032 = load i32, ptr %i, align 4
  %idxprom1666 = sext i32 %1032 to i64
  %arrayidx1667 = getelementptr inbounds %struct.DState, ptr %1030, i64 0, i32 35, i64 %idxprom1664, i64 %idxprom1666
  %1033 = load i8, ptr %arrayidx1667, align 1
  %conv1668 = zext i8 %1033 to i32
  %1034 = load i32, ptr %maxLen, align 4
  %cmp1669 = icmp slt i32 %1034, %conv1668
  br i1 %cmp1669, label %if.then1671, label %if.end1678

if.then1671:                                      ; preds = %for.body1662
  %1035 = load ptr, ptr %s.addr, align 8
  %1036 = load i32, ptr %t, align 4
  %idxprom1673 = sext i32 %1036 to i64
  %1037 = load i32, ptr %i, align 4
  %idxprom1675 = sext i32 %1037 to i64
  %arrayidx1676 = getelementptr inbounds %struct.DState, ptr %1035, i64 0, i32 35, i64 %idxprom1673, i64 %idxprom1675
  %1038 = load i8, ptr %arrayidx1676, align 1
  %conv1677 = zext i8 %1038 to i32
  store i32 %conv1677, ptr %maxLen, align 4
  br label %if.end1678

if.end1678:                                       ; preds = %if.then1671, %for.body1662
  %1039 = load ptr, ptr %s.addr, align 8
  %1040 = load i32, ptr %t, align 4
  %idxprom1680 = sext i32 %1040 to i64
  %1041 = load i32, ptr %i, align 4
  %idxprom1682 = sext i32 %1041 to i64
  %arrayidx1683 = getelementptr inbounds %struct.DState, ptr %1039, i64 0, i32 35, i64 %idxprom1680, i64 %idxprom1682
  %1042 = load i8, ptr %arrayidx1683, align 1
  %conv1684 = zext i8 %1042 to i32
  %1043 = load i32, ptr %minLen, align 4
  %cmp1685 = icmp sgt i32 %1043, %conv1684
  br i1 %cmp1685, label %if.then1687, label %for.inc1695

if.then1687:                                      ; preds = %if.end1678
  %1044 = load ptr, ptr %s.addr, align 8
  %1045 = load i32, ptr %t, align 4
  %idxprom1689 = sext i32 %1045 to i64
  %1046 = load i32, ptr %i, align 4
  %idxprom1691 = sext i32 %1046 to i64
  %arrayidx1692 = getelementptr inbounds %struct.DState, ptr %1044, i64 0, i32 35, i64 %idxprom1689, i64 %idxprom1691
  %1047 = load i8, ptr %arrayidx1692, align 1
  %conv1693 = zext i8 %1047 to i32
  store i32 %conv1693, ptr %minLen, align 4
  br label %for.inc1695

for.inc1695:                                      ; preds = %if.end1678, %if.then1687
  %1048 = load i32, ptr %i, align 4
  %inc1696 = add nsw i32 %1048, 1
  br label %for.cond1659, !llvm.loop !17

for.end1697:                                      ; preds = %for.cond1659
  %1049 = load ptr, ptr %s.addr, align 8
  %1050 = load i32, ptr %t, align 4
  %idxprom1698 = sext i32 %1050 to i64
  %arrayidx1699 = getelementptr inbounds %struct.DState, ptr %1049, i64 0, i32 36, i64 %idxprom1698
  %idxprom1701 = sext i32 %1050 to i64
  %arrayidx1702 = getelementptr inbounds %struct.DState, ptr %1049, i64 0, i32 37, i64 %idxprom1701
  %idxprom1704 = sext i32 %1050 to i64
  %arrayidx1705 = getelementptr inbounds %struct.DState, ptr %1049, i64 0, i32 38, i64 %idxprom1704
  %1051 = load ptr, ptr %s.addr, align 8
  %1052 = load i32, ptr %t, align 4
  %idxprom1708 = sext i32 %1052 to i64
  %arrayidx1709 = getelementptr inbounds %struct.DState, ptr %1051, i64 0, i32 35, i64 %idxprom1708
  %1053 = load i32, ptr %minLen, align 4
  %1054 = load i32, ptr %maxLen, align 4
  %1055 = load i32, ptr %alphaSize, align 4
  call void @BZ2_hbCreateDecodeTables(ptr noundef nonnull %arrayidx1699, ptr noundef nonnull %arrayidx1702, ptr noundef nonnull %arrayidx1705, ptr noundef nonnull %arrayidx1709, i32 noundef %1053, i32 noundef %1054, i32 noundef %1055) #3
  %1056 = load ptr, ptr %s.addr, align 8
  %1057 = load i32, ptr %t, align 4
  %idxprom1711 = sext i32 %1057 to i64
  %arrayidx1712 = getelementptr inbounds %struct.DState, ptr %1056, i64 0, i32 39, i64 %idxprom1711
  store i32 %1053, ptr %arrayidx1712, align 4
  %1058 = load i32, ptr %t, align 4
  %inc1714 = add nsw i32 %1058, 1
  br label %for.cond1655, !llvm.loop !18

for.end1715:                                      ; preds = %for.cond1655
  %1059 = load ptr, ptr %s.addr, align 8
  %nInUse1716 = getelementptr inbounds %struct.DState, ptr %1059, i64 0, i32 27
  %1060 = load i32, ptr %nInUse1716, align 8
  %add1717 = add nsw i32 %1060, 1
  store i32 %add1717, ptr %EOB, align 4
  %blockSize100k1718 = getelementptr inbounds %struct.DState, ptr %1059, i64 0, i32 9
  %1061 = load i32, ptr %blockSize100k1718, align 8
  %mul1719 = mul nsw i32 %1061, 100000
  store i32 %mul1719, ptr %nblockMAX, align 4
  store i32 -1, ptr %groupNo, align 4
  store i32 0, ptr %groupPos, align 4
  br label %for.cond1720

for.cond1720:                                     ; preds = %for.body1723, %for.end1715
  %storemerge15 = phi i32 [ 0, %for.end1715 ], [ %inc1727, %for.body1723 ]
  store i32 %storemerge15, ptr %i, align 4
  %cmp1721 = icmp slt i32 %storemerge15, 256
  br i1 %cmp1721, label %for.body1723, label %for.end1728

for.body1723:                                     ; preds = %for.cond1720
  %1062 = load ptr, ptr %s.addr, align 8
  %1063 = load i32, ptr %i, align 4
  %idxprom1724 = sext i32 %1063 to i64
  %arrayidx1725 = getelementptr inbounds %struct.DState, ptr %1062, i64 0, i32 16, i64 %idxprom1724
  store i32 0, ptr %arrayidx1725, align 4
  %1064 = load i32, ptr %i, align 4
  %inc1727 = add nsw i32 %1064, 1
  br label %for.cond1720, !llvm.loop !19

for.end1728:                                      ; preds = %for.cond1720
  store i32 4095, ptr %kk, align 4
  br label %for.cond1729

for.cond1729:                                     ; preds = %for.end1745, %for.end1728
  %storemerge16 = phi i32 [ 15, %for.end1728 ], [ %dec1750, %for.end1745 ]
  store i32 %storemerge16, ptr %ii, align 4
  %cmp1730 = icmp sgt i32 %storemerge16, -1
  br i1 %cmp1730, label %for.cond1733, label %for.end1751

for.cond1733:                                     ; preds = %for.cond1729, %for.body1736
  %storemerge17 = phi i32 [ %dec1744, %for.body1736 ], [ 15, %for.cond1729 ]
  store i32 %storemerge17, ptr %jj, align 4
  %cmp1734 = icmp sgt i32 %storemerge17, -1
  br i1 %cmp1734, label %for.body1736, label %for.end1745

for.body1736:                                     ; preds = %for.cond1733
  %1065 = load i32, ptr %ii, align 4
  %mul1737 = shl nsw i32 %1065, 4
  %1066 = load i32, ptr %jj, align 4
  %add1738 = add nsw i32 %mul1737, %1066
  %conv1739 = trunc i32 %add1738 to i8
  %1067 = load ptr, ptr %s.addr, align 8
  %1068 = load i32, ptr %kk, align 4
  %idxprom1740 = sext i32 %1068 to i64
  %arrayidx1741 = getelementptr inbounds %struct.DState, ptr %1067, i64 0, i32 31, i64 %idxprom1740
  store i8 %conv1739, ptr %arrayidx1741, align 1
  %dec1742 = add nsw i32 %1068, -1
  store i32 %dec1742, ptr %kk, align 4
  %1069 = load i32, ptr %jj, align 4
  %dec1744 = add nsw i32 %1069, -1
  br label %for.cond1733, !llvm.loop !20

for.end1745:                                      ; preds = %for.cond1733
  %1070 = load i32, ptr %kk, align 4
  %add1746 = add nsw i32 %1070, 1
  %1071 = load ptr, ptr %s.addr, align 8
  %1072 = load i32, ptr %ii, align 4
  %idxprom1747 = sext i32 %1072 to i64
  %arrayidx1748 = getelementptr inbounds %struct.DState, ptr %1071, i64 0, i32 32, i64 %idxprom1747
  store i32 %add1746, ptr %arrayidx1748, align 4
  %1073 = load i32, ptr %ii, align 4
  %dec1750 = add nsw i32 %1073, -1
  br label %for.cond1729, !llvm.loop !21

for.end1751:                                      ; preds = %for.cond1729
  store i32 0, ptr %nblock, align 4
  %1074 = load i32, ptr %groupPos, align 4
  %cmp1752 = icmp eq i32 %1074, 0
  br i1 %cmp1752, label %if.then1754, label %if.end1779

if.then1754:                                      ; preds = %for.end1751
  %1075 = load i32, ptr %groupNo, align 4
  %inc1755 = add nsw i32 %1075, 1
  store i32 %inc1755, ptr %groupNo, align 4
  %1076 = load i32, ptr %nSelectors, align 4
  %cmp1756.not = icmp slt i32 %inc1755, %1076
  br i1 %cmp1756.not, label %if.end1759, label %if.then1758

if.then1758:                                      ; preds = %if.then1754
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1759:                                       ; preds = %if.then1754
  store i32 50, ptr %groupPos, align 4
  %1077 = load ptr, ptr %s.addr, align 8
  %1078 = load i32, ptr %groupNo, align 4
  %idxprom1761 = sext i32 %1078 to i64
  %arrayidx1762 = getelementptr inbounds %struct.DState, ptr %1077, i64 0, i32 33, i64 %idxprom1761
  %1079 = load i8, ptr %arrayidx1762, align 1
  %conv1763 = zext i8 %1079 to i32
  store i32 %conv1763, ptr %gSel, align 4
  %1080 = load ptr, ptr %s.addr, align 8
  %idxprom1765 = zext i8 %1079 to i64
  %arrayidx1766 = getelementptr inbounds %struct.DState, ptr %1080, i64 0, i32 39, i64 %idxprom1765
  %1081 = load i32, ptr %arrayidx1766, align 4
  store i32 %1081, ptr %gMinlen, align 4
  %idxprom1768 = zext i8 %1079 to i64
  %arrayidx1769 = getelementptr inbounds %struct.DState, ptr %1080, i64 0, i32 36, i64 %idxprom1768
  store ptr %arrayidx1769, ptr %gLimit, align 8
  %1082 = load ptr, ptr %s.addr, align 8
  %idxprom1772 = zext i8 %1079 to i64
  %arrayidx1773 = getelementptr inbounds %struct.DState, ptr %1082, i64 0, i32 38, i64 %idxprom1772
  store ptr %arrayidx1773, ptr %gPerm, align 8
  %1083 = load i32, ptr %gSel, align 4
  %idxprom1776 = sext i32 %1083 to i64
  %arrayidx1777 = getelementptr inbounds %struct.DState, ptr %1082, i64 0, i32 37, i64 %idxprom1776
  store ptr %arrayidx1777, ptr %gBase, align 8
  br label %if.end1779

if.end1779:                                       ; preds = %if.end1759, %for.end1751
  %1084 = load i32, ptr %groupPos, align 4
  %dec1780 = add nsw i32 %1084, -1
  store i32 %dec1780, ptr %groupPos, align 4
  %1085 = load i32, ptr %gMinlen, align 4
  store i32 %1085, ptr %zn, align 4
  br label %sw.bb1781

sw.bb1781:                                        ; preds = %if.end1779, %if.end
  %1086 = load ptr, ptr %s.addr, align 8
  %state1782 = getelementptr inbounds %struct.DState, ptr %1086, i64 0, i32 1
  store i32 36, ptr %state1782, align 8
  br label %while.body1784

while.body1784:                                   ; preds = %if.end1832, %sw.bb1781
  %1087 = load ptr, ptr %s.addr, align 8
  %bsLive1785 = getelementptr inbounds %struct.DState, ptr %1087, i64 0, i32 8
  %1088 = load i32, ptr %bsLive1785, align 4
  %1089 = load i32, ptr %zn, align 4
  %cmp1786.not = icmp slt i32 %1088, %1089
  br i1 %cmp1786.not, label %if.end1799, label %if.then1788

if.then1788:                                      ; preds = %while.body1784
  %1090 = load ptr, ptr %s.addr, align 8
  %bsBuff1790 = getelementptr inbounds %struct.DState, ptr %1090, i64 0, i32 7
  %1091 = load i32, ptr %bsBuff1790, align 8
  %bsLive1791 = getelementptr inbounds %struct.DState, ptr %1090, i64 0, i32 8
  %1092 = load i32, ptr %bsLive1791, align 4
  %1093 = load i32, ptr %zn, align 4
  %sub1792 = sub nsw i32 %1092, %1093
  %shr1793 = lshr i32 %1091, %sub1792
  %notmask10 = shl nsw i32 -1, %1093
  %sub1795 = xor i32 %notmask10, -1
  %and1796 = and i32 %shr1793, %sub1795
  store i32 %and1796, ptr %v1789, align 4
  %1094 = load i32, ptr %zn, align 4
  %1095 = load ptr, ptr %s.addr, align 8
  %bsLive1797 = getelementptr inbounds %struct.DState, ptr %1095, i64 0, i32 8
  %1096 = load i32, ptr %bsLive1797, align 4
  %sub1798 = sub nsw i32 %1096, %1094
  store i32 %sub1798, ptr %bsLive1797, align 4
  %1097 = load i32, ptr %v1789, align 4
  store i32 %1097, ptr %zvec, align 4
  br label %while.body1835

if.end1799:                                       ; preds = %while.body1784
  %1098 = load ptr, ptr %s.addr, align 8
  %1099 = load ptr, ptr %1098, align 8
  %avail_in1801 = getelementptr inbounds %struct.bz_stream, ptr %1099, i64 0, i32 1
  %1100 = load i32, ptr %avail_in1801, align 8
  %cmp1802 = icmp eq i32 %1100, 0
  br i1 %cmp1802, label %if.then1804, label %if.end1805

if.then1804:                                      ; preds = %if.end1799
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1805:                                       ; preds = %if.end1799
  %1101 = load ptr, ptr %s.addr, align 8
  %bsBuff1806 = getelementptr inbounds %struct.DState, ptr %1101, i64 0, i32 7
  %1102 = load i32, ptr %bsBuff1806, align 8
  %shl1807 = shl i32 %1102, 8
  %1103 = load ptr, ptr %1101, align 8
  %1104 = load ptr, ptr %1103, align 8
  %1105 = load i8, ptr %1104, align 1
  %conv1810 = zext i8 %1105 to i32
  %or1811 = or i32 %shl1807, %conv1810
  %1106 = load ptr, ptr %s.addr, align 8
  %bsBuff1812 = getelementptr inbounds %struct.DState, ptr %1106, i64 0, i32 7
  store i32 %or1811, ptr %bsBuff1812, align 8
  %bsLive1813 = getelementptr inbounds %struct.DState, ptr %1106, i64 0, i32 8
  %1107 = load i32, ptr %bsLive1813, align 4
  %add1814 = add nsw i32 %1107, 8
  store i32 %add1814, ptr %bsLive1813, align 4
  %1108 = load ptr, ptr %s.addr, align 8
  %1109 = load ptr, ptr %1108, align 8
  %1110 = load ptr, ptr %1109, align 8
  %incdec.ptr1817 = getelementptr inbounds i8, ptr %1110, i64 1
  store ptr %incdec.ptr1817, ptr %1109, align 8
  %1111 = load ptr, ptr %s.addr, align 8
  %1112 = load ptr, ptr %1111, align 8
  %avail_in1819 = getelementptr inbounds %struct.bz_stream, ptr %1112, i64 0, i32 1
  %1113 = load i32, ptr %avail_in1819, align 8
  %dec1820 = add i32 %1113, -1
  store i32 %dec1820, ptr %avail_in1819, align 8
  %1114 = load ptr, ptr %1111, align 8
  %total_in_lo321822 = getelementptr inbounds %struct.bz_stream, ptr %1114, i64 0, i32 2
  %1115 = load i32, ptr %total_in_lo321822, align 4
  %inc1823 = add i32 %1115, 1
  store i32 %inc1823, ptr %total_in_lo321822, align 4
  %1116 = load ptr, ptr %s.addr, align 8
  %1117 = load ptr, ptr %1116, align 8
  %total_in_lo321825 = getelementptr inbounds %struct.bz_stream, ptr %1117, i64 0, i32 2
  %1118 = load i32, ptr %total_in_lo321825, align 4
  %cmp1826 = icmp eq i32 %1118, 0
  br i1 %cmp1826, label %if.then1828, label %if.end1832

if.then1828:                                      ; preds = %if.end1805
  %1119 = load ptr, ptr %s.addr, align 8
  %1120 = load ptr, ptr %1119, align 8
  %total_in_hi321830 = getelementptr inbounds %struct.bz_stream, ptr %1120, i64 0, i32 3
  %1121 = load i32, ptr %total_in_hi321830, align 8
  %inc1831 = add i32 %1121, 1
  store i32 %inc1831, ptr %total_in_hi321830, align 8
  br label %if.end1832

if.end1832:                                       ; preds = %if.then1828, %if.end1805
  br label %while.body1784

while.body1835:                                   ; preds = %if.then1854, %if.then1788
  %1122 = load i32, ptr %zn, align 4
  %cmp1836 = icmp sgt i32 %1122, 20
  br i1 %cmp1836, label %if.then1838, label %if.end1839

if.then1838:                                      ; preds = %while.body1835
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1839:                                       ; preds = %while.body1835
  %1123 = load i32, ptr %zvec, align 4
  %1124 = load ptr, ptr %gLimit, align 8
  %1125 = load i32, ptr %zn, align 4
  %idxprom1840 = sext i32 %1125 to i64
  %arrayidx1841 = getelementptr inbounds i32, ptr %1124, i64 %idxprom1840
  %1126 = load i32, ptr %arrayidx1841, align 4
  %cmp1842.not = icmp sgt i32 %1123, %1126
  br i1 %cmp1842.not, label %if.end1845, label %while.end1900

if.end1845:                                       ; preds = %if.end1839
  %1127 = load i32, ptr %zn, align 4
  %inc1846 = add nsw i32 %1127, 1
  store i32 %inc1846, ptr %zn, align 4
  br label %sw.bb1847

sw.bb1847:                                        ; preds = %if.end1845, %if.end
  %1128 = load ptr, ptr %s.addr, align 8
  %state1848 = getelementptr inbounds %struct.DState, ptr %1128, i64 0, i32 1
  store i32 37, ptr %state1848, align 8
  br label %while.body1850

while.body1850:                                   ; preds = %if.end1896, %sw.bb1847
  %1129 = load ptr, ptr %s.addr, align 8
  %bsLive1851 = getelementptr inbounds %struct.DState, ptr %1129, i64 0, i32 8
  %1130 = load i32, ptr %bsLive1851, align 4
  %cmp1852 = icmp sgt i32 %1130, 0
  br i1 %cmp1852, label %if.then1854, label %if.end1863

if.then1854:                                      ; preds = %while.body1850
  %1131 = load ptr, ptr %s.addr, align 8
  %bsBuff1856 = getelementptr inbounds %struct.DState, ptr %1131, i64 0, i32 7
  %1132 = load i32, ptr %bsBuff1856, align 8
  %bsLive1857 = getelementptr inbounds %struct.DState, ptr %1131, i64 0, i32 8
  %1133 = load i32, ptr %bsLive1857, align 4
  %sub1858 = add nsw i32 %1133, -1
  %shr1859 = lshr i32 %1132, %sub1858
  %and1860 = and i32 %shr1859, 1
  %1134 = load ptr, ptr %s.addr, align 8
  %bsLive1861 = getelementptr inbounds %struct.DState, ptr %1134, i64 0, i32 8
  %1135 = load i32, ptr %bsLive1861, align 4
  %sub1862 = add nsw i32 %1135, -1
  store i32 %sub1862, ptr %bsLive1861, align 4
  store i32 %and1860, ptr %zj, align 4
  %1136 = load i32, ptr %zvec, align 4
  %shl1898 = shl i32 %1136, 1
  %1137 = load i32, ptr %zj, align 4
  %or1899 = or i32 %shl1898, %1137
  store i32 %or1899, ptr %zvec, align 4
  br label %while.body1835

if.end1863:                                       ; preds = %while.body1850
  %1138 = load ptr, ptr %s.addr, align 8
  %1139 = load ptr, ptr %1138, align 8
  %avail_in1865 = getelementptr inbounds %struct.bz_stream, ptr %1139, i64 0, i32 1
  %1140 = load i32, ptr %avail_in1865, align 8
  %cmp1866 = icmp eq i32 %1140, 0
  br i1 %cmp1866, label %if.then1868, label %if.end1869

if.then1868:                                      ; preds = %if.end1863
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1869:                                       ; preds = %if.end1863
  %1141 = load ptr, ptr %s.addr, align 8
  %bsBuff1870 = getelementptr inbounds %struct.DState, ptr %1141, i64 0, i32 7
  %1142 = load i32, ptr %bsBuff1870, align 8
  %shl1871 = shl i32 %1142, 8
  %1143 = load ptr, ptr %1141, align 8
  %1144 = load ptr, ptr %1143, align 8
  %1145 = load i8, ptr %1144, align 1
  %conv1874 = zext i8 %1145 to i32
  %or1875 = or i32 %shl1871, %conv1874
  %1146 = load ptr, ptr %s.addr, align 8
  %bsBuff1876 = getelementptr inbounds %struct.DState, ptr %1146, i64 0, i32 7
  store i32 %or1875, ptr %bsBuff1876, align 8
  %bsLive1877 = getelementptr inbounds %struct.DState, ptr %1146, i64 0, i32 8
  %1147 = load i32, ptr %bsLive1877, align 4
  %add1878 = add nsw i32 %1147, 8
  store i32 %add1878, ptr %bsLive1877, align 4
  %1148 = load ptr, ptr %s.addr, align 8
  %1149 = load ptr, ptr %1148, align 8
  %1150 = load ptr, ptr %1149, align 8
  %incdec.ptr1881 = getelementptr inbounds i8, ptr %1150, i64 1
  store ptr %incdec.ptr1881, ptr %1149, align 8
  %1151 = load ptr, ptr %s.addr, align 8
  %1152 = load ptr, ptr %1151, align 8
  %avail_in1883 = getelementptr inbounds %struct.bz_stream, ptr %1152, i64 0, i32 1
  %1153 = load i32, ptr %avail_in1883, align 8
  %dec1884 = add i32 %1153, -1
  store i32 %dec1884, ptr %avail_in1883, align 8
  %1154 = load ptr, ptr %1151, align 8
  %total_in_lo321886 = getelementptr inbounds %struct.bz_stream, ptr %1154, i64 0, i32 2
  %1155 = load i32, ptr %total_in_lo321886, align 4
  %inc1887 = add i32 %1155, 1
  store i32 %inc1887, ptr %total_in_lo321886, align 4
  %1156 = load ptr, ptr %s.addr, align 8
  %1157 = load ptr, ptr %1156, align 8
  %total_in_lo321889 = getelementptr inbounds %struct.bz_stream, ptr %1157, i64 0, i32 2
  %1158 = load i32, ptr %total_in_lo321889, align 4
  %cmp1890 = icmp eq i32 %1158, 0
  br i1 %cmp1890, label %if.then1892, label %if.end1896

if.then1892:                                      ; preds = %if.end1869
  %1159 = load ptr, ptr %s.addr, align 8
  %1160 = load ptr, ptr %1159, align 8
  %total_in_hi321894 = getelementptr inbounds %struct.bz_stream, ptr %1160, i64 0, i32 3
  %1161 = load i32, ptr %total_in_hi321894, align 8
  %inc1895 = add i32 %1161, 1
  store i32 %inc1895, ptr %total_in_hi321894, align 8
  br label %if.end1896

if.end1896:                                       ; preds = %if.then1892, %if.end1869
  br label %while.body1850

while.end1900:                                    ; preds = %if.end1839
  %1162 = load i32, ptr %zvec, align 4
  %1163 = load ptr, ptr %gBase, align 8
  %1164 = load i32, ptr %zn, align 4
  %idxprom1901 = sext i32 %1164 to i64
  %arrayidx1902 = getelementptr inbounds i32, ptr %1163, i64 %idxprom1901
  %1165 = load i32, ptr %arrayidx1902, align 4
  %cmp1904 = icmp slt i32 %1162, %1165
  br i1 %cmp1904, label %if.then1912, label %lor.lhs.false1906

lor.lhs.false1906:                                ; preds = %while.end1900
  %1166 = load i32, ptr %zvec, align 4
  %1167 = load ptr, ptr %gBase, align 8
  %1168 = load i32, ptr %zn, align 4
  %idxprom1907 = sext i32 %1168 to i64
  %arrayidx1908 = getelementptr inbounds i32, ptr %1167, i64 %idxprom1907
  %1169 = load i32, ptr %arrayidx1908, align 4
  %sub1909 = sub nsw i32 %1166, %1169
  %cmp1910 = icmp sgt i32 %sub1909, 257
  br i1 %cmp1910, label %if.then1912, label %if.end1913

if.then1912:                                      ; preds = %lor.lhs.false1906, %while.end1900
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1913:                                       ; preds = %lor.lhs.false1906
  %1170 = load ptr, ptr %gPerm, align 8
  %1171 = load i32, ptr %zvec, align 4
  %1172 = load ptr, ptr %gBase, align 8
  %1173 = load i32, ptr %zn, align 4
  %idxprom1914 = sext i32 %1173 to i64
  %arrayidx1915 = getelementptr inbounds i32, ptr %1172, i64 %idxprom1914
  %1174 = load i32, ptr %arrayidx1915, align 4
  %sub1916 = sub nsw i32 %1171, %1174
  %idxprom1917 = sext i32 %sub1916 to i64
  %arrayidx1918 = getelementptr inbounds i32, ptr %1170, i64 %idxprom1917
  %1175 = load i32, ptr %arrayidx1918, align 4
  store i32 %1175, ptr %nextSym, align 4
  br label %while.body1920

while.body1920:                                   ; preds = %if.end2522, %if.end2162, %if.end1913
  %1176 = load i32, ptr %nextSym, align 4
  %1177 = load i32, ptr %EOB, align 4
  %cmp1921 = icmp eq i32 %1176, %1177
  br i1 %cmp1921, label %while.end2528, label %if.end1924

if.end1924:                                       ; preds = %while.body1920
  %1178 = load i32, ptr %nextSym, align 4
  %cmp1925 = icmp eq i32 %1178, 0
  %1179 = load i32, ptr %nextSym, align 4
  %cmp1928 = icmp eq i32 %1179, 1
  %or.cond27 = select i1 %cmp1925, i1 true, i1 %cmp1928
  br i1 %or.cond27, label %if.then1930, label %if.else2163

if.then1930:                                      ; preds = %if.end1924
  store i32 -1, ptr %es, align 4
  store i32 1, ptr %N, align 4
  br label %do.body

do.body:                                          ; preds = %if.end2106, %if.then1930
  %1180 = load i32, ptr %nextSym, align 4
  %cmp1931 = icmp eq i32 %1180, 0
  br i1 %cmp1931, label %if.then1933, label %if.else1936

if.then1933:                                      ; preds = %do.body
  %1181 = load i32, ptr %es, align 4
  %1182 = load i32, ptr %N, align 4
  %add1935 = add nsw i32 %1181, %1182
  store i32 %add1935, ptr %es, align 4
  br label %if.end1943

if.else1936:                                      ; preds = %do.body
  %1183 = load i32, ptr %nextSym, align 4
  %cmp1937 = icmp eq i32 %1183, 1
  br i1 %cmp1937, label %if.then1939, label %if.end1943

if.then1939:                                      ; preds = %if.else1936
  %1184 = load i32, ptr %es, align 4
  %1185 = load i32, ptr %N, align 4
  %mul1940 = shl nsw i32 %1185, 1
  %add1941 = add nsw i32 %1184, %mul1940
  store i32 %add1941, ptr %es, align 4
  br label %if.end1943

if.end1943:                                       ; preds = %if.else1936, %if.then1939, %if.then1933
  %1186 = load i32, ptr %N, align 4
  %mul1944 = shl nsw i32 %1186, 1
  store i32 %mul1944, ptr %N, align 4
  %1187 = load i32, ptr %groupPos, align 4
  %cmp1945 = icmp eq i32 %1187, 0
  br i1 %cmp1945, label %if.then1947, label %if.end1972

if.then1947:                                      ; preds = %if.end1943
  %1188 = load i32, ptr %groupNo, align 4
  %inc1948 = add nsw i32 %1188, 1
  store i32 %inc1948, ptr %groupNo, align 4
  %1189 = load i32, ptr %nSelectors, align 4
  %cmp1949.not = icmp slt i32 %inc1948, %1189
  br i1 %cmp1949.not, label %if.end1952, label %if.then1951

if.then1951:                                      ; preds = %if.then1947
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end1952:                                       ; preds = %if.then1947
  store i32 50, ptr %groupPos, align 4
  %1190 = load ptr, ptr %s.addr, align 8
  %1191 = load i32, ptr %groupNo, align 4
  %idxprom1954 = sext i32 %1191 to i64
  %arrayidx1955 = getelementptr inbounds %struct.DState, ptr %1190, i64 0, i32 33, i64 %idxprom1954
  %1192 = load i8, ptr %arrayidx1955, align 1
  %conv1956 = zext i8 %1192 to i32
  store i32 %conv1956, ptr %gSel, align 4
  %1193 = load ptr, ptr %s.addr, align 8
  %idxprom1958 = zext i8 %1192 to i64
  %arrayidx1959 = getelementptr inbounds %struct.DState, ptr %1193, i64 0, i32 39, i64 %idxprom1958
  %1194 = load i32, ptr %arrayidx1959, align 4
  store i32 %1194, ptr %gMinlen, align 4
  %idxprom1961 = zext i8 %1192 to i64
  %arrayidx1962 = getelementptr inbounds %struct.DState, ptr %1193, i64 0, i32 36, i64 %idxprom1961
  store ptr %arrayidx1962, ptr %gLimit, align 8
  %1195 = load ptr, ptr %s.addr, align 8
  %idxprom1965 = zext i8 %1192 to i64
  %arrayidx1966 = getelementptr inbounds %struct.DState, ptr %1195, i64 0, i32 38, i64 %idxprom1965
  store ptr %arrayidx1966, ptr %gPerm, align 8
  %1196 = load i32, ptr %gSel, align 4
  %idxprom1969 = sext i32 %1196 to i64
  %arrayidx1970 = getelementptr inbounds %struct.DState, ptr %1195, i64 0, i32 37, i64 %idxprom1969
  store ptr %arrayidx1970, ptr %gBase, align 8
  br label %if.end1972

if.end1972:                                       ; preds = %if.end1952, %if.end1943
  %1197 = load i32, ptr %groupPos, align 4
  %dec1973 = add nsw i32 %1197, -1
  store i32 %dec1973, ptr %groupPos, align 4
  %1198 = load i32, ptr %gMinlen, align 4
  store i32 %1198, ptr %zn, align 4
  br label %sw.bb1974

sw.bb1974:                                        ; preds = %if.end1972, %if.end
  %1199 = load ptr, ptr %s.addr, align 8
  %state1975 = getelementptr inbounds %struct.DState, ptr %1199, i64 0, i32 1
  store i32 38, ptr %state1975, align 8
  br label %while.body1977

while.body1977:                                   ; preds = %if.end2025, %sw.bb1974
  %1200 = load ptr, ptr %s.addr, align 8
  %bsLive1978 = getelementptr inbounds %struct.DState, ptr %1200, i64 0, i32 8
  %1201 = load i32, ptr %bsLive1978, align 4
  %1202 = load i32, ptr %zn, align 4
  %cmp1979.not = icmp slt i32 %1201, %1202
  br i1 %cmp1979.not, label %if.end1992, label %if.then1981

if.then1981:                                      ; preds = %while.body1977
  %1203 = load ptr, ptr %s.addr, align 8
  %bsBuff1983 = getelementptr inbounds %struct.DState, ptr %1203, i64 0, i32 7
  %1204 = load i32, ptr %bsBuff1983, align 8
  %bsLive1984 = getelementptr inbounds %struct.DState, ptr %1203, i64 0, i32 8
  %1205 = load i32, ptr %bsLive1984, align 4
  %1206 = load i32, ptr %zn, align 4
  %sub1985 = sub nsw i32 %1205, %1206
  %shr1986 = lshr i32 %1204, %sub1985
  %notmask3 = shl nsw i32 -1, %1206
  %sub1988 = xor i32 %notmask3, -1
  %and1989 = and i32 %shr1986, %sub1988
  store i32 %and1989, ptr %v1982, align 4
  %1207 = load i32, ptr %zn, align 4
  %1208 = load ptr, ptr %s.addr, align 8
  %bsLive1990 = getelementptr inbounds %struct.DState, ptr %1208, i64 0, i32 8
  %1209 = load i32, ptr %bsLive1990, align 4
  %sub1991 = sub nsw i32 %1209, %1207
  store i32 %sub1991, ptr %bsLive1990, align 4
  %1210 = load i32, ptr %v1982, align 4
  store i32 %1210, ptr %zvec, align 4
  br label %while.body2028

if.end1992:                                       ; preds = %while.body1977
  %1211 = load ptr, ptr %s.addr, align 8
  %1212 = load ptr, ptr %1211, align 8
  %avail_in1994 = getelementptr inbounds %struct.bz_stream, ptr %1212, i64 0, i32 1
  %1213 = load i32, ptr %avail_in1994, align 8
  %cmp1995 = icmp eq i32 %1213, 0
  br i1 %cmp1995, label %if.then1997, label %if.end1998

if.then1997:                                      ; preds = %if.end1992
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end1998:                                       ; preds = %if.end1992
  %1214 = load ptr, ptr %s.addr, align 8
  %bsBuff1999 = getelementptr inbounds %struct.DState, ptr %1214, i64 0, i32 7
  %1215 = load i32, ptr %bsBuff1999, align 8
  %shl2000 = shl i32 %1215, 8
  %1216 = load ptr, ptr %1214, align 8
  %1217 = load ptr, ptr %1216, align 8
  %1218 = load i8, ptr %1217, align 1
  %conv2003 = zext i8 %1218 to i32
  %or2004 = or i32 %shl2000, %conv2003
  %1219 = load ptr, ptr %s.addr, align 8
  %bsBuff2005 = getelementptr inbounds %struct.DState, ptr %1219, i64 0, i32 7
  store i32 %or2004, ptr %bsBuff2005, align 8
  %bsLive2006 = getelementptr inbounds %struct.DState, ptr %1219, i64 0, i32 8
  %1220 = load i32, ptr %bsLive2006, align 4
  %add2007 = add nsw i32 %1220, 8
  store i32 %add2007, ptr %bsLive2006, align 4
  %1221 = load ptr, ptr %s.addr, align 8
  %1222 = load ptr, ptr %1221, align 8
  %1223 = load ptr, ptr %1222, align 8
  %incdec.ptr2010 = getelementptr inbounds i8, ptr %1223, i64 1
  store ptr %incdec.ptr2010, ptr %1222, align 8
  %1224 = load ptr, ptr %s.addr, align 8
  %1225 = load ptr, ptr %1224, align 8
  %avail_in2012 = getelementptr inbounds %struct.bz_stream, ptr %1225, i64 0, i32 1
  %1226 = load i32, ptr %avail_in2012, align 8
  %dec2013 = add i32 %1226, -1
  store i32 %dec2013, ptr %avail_in2012, align 8
  %1227 = load ptr, ptr %1224, align 8
  %total_in_lo322015 = getelementptr inbounds %struct.bz_stream, ptr %1227, i64 0, i32 2
  %1228 = load i32, ptr %total_in_lo322015, align 4
  %inc2016 = add i32 %1228, 1
  store i32 %inc2016, ptr %total_in_lo322015, align 4
  %1229 = load ptr, ptr %s.addr, align 8
  %1230 = load ptr, ptr %1229, align 8
  %total_in_lo322018 = getelementptr inbounds %struct.bz_stream, ptr %1230, i64 0, i32 2
  %1231 = load i32, ptr %total_in_lo322018, align 4
  %cmp2019 = icmp eq i32 %1231, 0
  br i1 %cmp2019, label %if.then2021, label %if.end2025

if.then2021:                                      ; preds = %if.end1998
  %1232 = load ptr, ptr %s.addr, align 8
  %1233 = load ptr, ptr %1232, align 8
  %total_in_hi322023 = getelementptr inbounds %struct.bz_stream, ptr %1233, i64 0, i32 3
  %1234 = load i32, ptr %total_in_hi322023, align 8
  %inc2024 = add i32 %1234, 1
  store i32 %inc2024, ptr %total_in_hi322023, align 8
  br label %if.end2025

if.end2025:                                       ; preds = %if.then2021, %if.end1998
  br label %while.body1977

while.body2028:                                   ; preds = %if.then2047, %if.then1981
  %1235 = load i32, ptr %zn, align 4
  %cmp2029 = icmp sgt i32 %1235, 20
  br i1 %cmp2029, label %if.then2031, label %if.end2032

if.then2031:                                      ; preds = %while.body2028
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2032:                                       ; preds = %while.body2028
  %1236 = load i32, ptr %zvec, align 4
  %1237 = load ptr, ptr %gLimit, align 8
  %1238 = load i32, ptr %zn, align 4
  %idxprom2033 = sext i32 %1238 to i64
  %arrayidx2034 = getelementptr inbounds i32, ptr %1237, i64 %idxprom2033
  %1239 = load i32, ptr %arrayidx2034, align 4
  %cmp2035.not = icmp sgt i32 %1236, %1239
  br i1 %cmp2035.not, label %if.end2038, label %while.end2093

if.end2038:                                       ; preds = %if.end2032
  %1240 = load i32, ptr %zn, align 4
  %inc2039 = add nsw i32 %1240, 1
  store i32 %inc2039, ptr %zn, align 4
  br label %sw.bb2040

sw.bb2040:                                        ; preds = %if.end2038, %if.end
  %1241 = load ptr, ptr %s.addr, align 8
  %state2041 = getelementptr inbounds %struct.DState, ptr %1241, i64 0, i32 1
  store i32 39, ptr %state2041, align 8
  br label %while.body2043

while.body2043:                                   ; preds = %if.end2089, %sw.bb2040
  %1242 = load ptr, ptr %s.addr, align 8
  %bsLive2044 = getelementptr inbounds %struct.DState, ptr %1242, i64 0, i32 8
  %1243 = load i32, ptr %bsLive2044, align 4
  %cmp2045 = icmp sgt i32 %1243, 0
  br i1 %cmp2045, label %if.then2047, label %if.end2056

if.then2047:                                      ; preds = %while.body2043
  %1244 = load ptr, ptr %s.addr, align 8
  %bsBuff2049 = getelementptr inbounds %struct.DState, ptr %1244, i64 0, i32 7
  %1245 = load i32, ptr %bsBuff2049, align 8
  %bsLive2050 = getelementptr inbounds %struct.DState, ptr %1244, i64 0, i32 8
  %1246 = load i32, ptr %bsLive2050, align 4
  %sub2051 = add nsw i32 %1246, -1
  %shr2052 = lshr i32 %1245, %sub2051
  %and2053 = and i32 %shr2052, 1
  %1247 = load ptr, ptr %s.addr, align 8
  %bsLive2054 = getelementptr inbounds %struct.DState, ptr %1247, i64 0, i32 8
  %1248 = load i32, ptr %bsLive2054, align 4
  %sub2055 = add nsw i32 %1248, -1
  store i32 %sub2055, ptr %bsLive2054, align 4
  store i32 %and2053, ptr %zj, align 4
  %1249 = load i32, ptr %zvec, align 4
  %shl2091 = shl i32 %1249, 1
  %1250 = load i32, ptr %zj, align 4
  %or2092 = or i32 %shl2091, %1250
  store i32 %or2092, ptr %zvec, align 4
  br label %while.body2028

if.end2056:                                       ; preds = %while.body2043
  %1251 = load ptr, ptr %s.addr, align 8
  %1252 = load ptr, ptr %1251, align 8
  %avail_in2058 = getelementptr inbounds %struct.bz_stream, ptr %1252, i64 0, i32 1
  %1253 = load i32, ptr %avail_in2058, align 8
  %cmp2059 = icmp eq i32 %1253, 0
  br i1 %cmp2059, label %if.then2061, label %if.end2062

if.then2061:                                      ; preds = %if.end2056
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2062:                                       ; preds = %if.end2056
  %1254 = load ptr, ptr %s.addr, align 8
  %bsBuff2063 = getelementptr inbounds %struct.DState, ptr %1254, i64 0, i32 7
  %1255 = load i32, ptr %bsBuff2063, align 8
  %shl2064 = shl i32 %1255, 8
  %1256 = load ptr, ptr %1254, align 8
  %1257 = load ptr, ptr %1256, align 8
  %1258 = load i8, ptr %1257, align 1
  %conv2067 = zext i8 %1258 to i32
  %or2068 = or i32 %shl2064, %conv2067
  %1259 = load ptr, ptr %s.addr, align 8
  %bsBuff2069 = getelementptr inbounds %struct.DState, ptr %1259, i64 0, i32 7
  store i32 %or2068, ptr %bsBuff2069, align 8
  %bsLive2070 = getelementptr inbounds %struct.DState, ptr %1259, i64 0, i32 8
  %1260 = load i32, ptr %bsLive2070, align 4
  %add2071 = add nsw i32 %1260, 8
  store i32 %add2071, ptr %bsLive2070, align 4
  %1261 = load ptr, ptr %s.addr, align 8
  %1262 = load ptr, ptr %1261, align 8
  %1263 = load ptr, ptr %1262, align 8
  %incdec.ptr2074 = getelementptr inbounds i8, ptr %1263, i64 1
  store ptr %incdec.ptr2074, ptr %1262, align 8
  %1264 = load ptr, ptr %s.addr, align 8
  %1265 = load ptr, ptr %1264, align 8
  %avail_in2076 = getelementptr inbounds %struct.bz_stream, ptr %1265, i64 0, i32 1
  %1266 = load i32, ptr %avail_in2076, align 8
  %dec2077 = add i32 %1266, -1
  store i32 %dec2077, ptr %avail_in2076, align 8
  %1267 = load ptr, ptr %1264, align 8
  %total_in_lo322079 = getelementptr inbounds %struct.bz_stream, ptr %1267, i64 0, i32 2
  %1268 = load i32, ptr %total_in_lo322079, align 4
  %inc2080 = add i32 %1268, 1
  store i32 %inc2080, ptr %total_in_lo322079, align 4
  %1269 = load ptr, ptr %s.addr, align 8
  %1270 = load ptr, ptr %1269, align 8
  %total_in_lo322082 = getelementptr inbounds %struct.bz_stream, ptr %1270, i64 0, i32 2
  %1271 = load i32, ptr %total_in_lo322082, align 4
  %cmp2083 = icmp eq i32 %1271, 0
  br i1 %cmp2083, label %if.then2085, label %if.end2089

if.then2085:                                      ; preds = %if.end2062
  %1272 = load ptr, ptr %s.addr, align 8
  %1273 = load ptr, ptr %1272, align 8
  %total_in_hi322087 = getelementptr inbounds %struct.bz_stream, ptr %1273, i64 0, i32 3
  %1274 = load i32, ptr %total_in_hi322087, align 8
  %inc2088 = add i32 %1274, 1
  store i32 %inc2088, ptr %total_in_hi322087, align 8
  br label %if.end2089

if.end2089:                                       ; preds = %if.then2085, %if.end2062
  br label %while.body2043

while.end2093:                                    ; preds = %if.end2032
  %1275 = load i32, ptr %zvec, align 4
  %1276 = load ptr, ptr %gBase, align 8
  %1277 = load i32, ptr %zn, align 4
  %idxprom2094 = sext i32 %1277 to i64
  %arrayidx2095 = getelementptr inbounds i32, ptr %1276, i64 %idxprom2094
  %1278 = load i32, ptr %arrayidx2095, align 4
  %cmp2097 = icmp slt i32 %1275, %1278
  br i1 %cmp2097, label %if.then2105, label %lor.lhs.false2099

lor.lhs.false2099:                                ; preds = %while.end2093
  %1279 = load i32, ptr %zvec, align 4
  %1280 = load ptr, ptr %gBase, align 8
  %1281 = load i32, ptr %zn, align 4
  %idxprom2100 = sext i32 %1281 to i64
  %arrayidx2101 = getelementptr inbounds i32, ptr %1280, i64 %idxprom2100
  %1282 = load i32, ptr %arrayidx2101, align 4
  %sub2102 = sub nsw i32 %1279, %1282
  %cmp2103 = icmp sgt i32 %sub2102, 257
  br i1 %cmp2103, label %if.then2105, label %if.end2106

if.then2105:                                      ; preds = %lor.lhs.false2099, %while.end2093
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2106:                                       ; preds = %lor.lhs.false2099
  %1283 = load ptr, ptr %gPerm, align 8
  %1284 = load i32, ptr %zvec, align 4
  %1285 = load ptr, ptr %gBase, align 8
  %1286 = load i32, ptr %zn, align 4
  %idxprom2107 = sext i32 %1286 to i64
  %arrayidx2108 = getelementptr inbounds i32, ptr %1285, i64 %idxprom2107
  %1287 = load i32, ptr %arrayidx2108, align 4
  %sub2109 = sub nsw i32 %1284, %1287
  %idxprom2110 = sext i32 %sub2109 to i64
  %arrayidx2111 = getelementptr inbounds i32, ptr %1283, i64 %idxprom2110
  %1288 = load i32, ptr %arrayidx2111, align 4
  store i32 %1288, ptr %nextSym, align 4
  %1289 = load i32, ptr %nextSym, align 4
  %cmp2112 = icmp eq i32 %1289, 0
  %1290 = load i32, ptr %nextSym, align 4
  %cmp2114 = icmp eq i32 %1290, 1
  %1291 = select i1 %cmp2112, i1 true, i1 %cmp2114
  br i1 %1291, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %if.end2106
  %1292 = load i32, ptr %es, align 4
  %inc2116 = add nsw i32 %1292, 1
  store i32 %inc2116, ptr %es, align 4
  %1293 = load ptr, ptr %s.addr, align 8
  %mtfbase2118 = getelementptr inbounds %struct.DState, ptr %1293, i64 0, i32 32
  %1294 = load i32, ptr %mtfbase2118, align 4
  %idxprom2120 = sext i32 %1294 to i64
  %arrayidx2121 = getelementptr inbounds %struct.DState, ptr %1293, i64 0, i32 31, i64 %idxprom2120
  %1295 = load i8, ptr %arrayidx2121, align 1
  %idxprom2122 = zext i8 %1295 to i64
  %arrayidx2123 = getelementptr inbounds %struct.DState, ptr %1293, i64 0, i32 30, i64 %idxprom2122
  %1296 = load i8, ptr %arrayidx2123, align 1
  store i8 %1296, ptr %uc, align 1
  %1297 = load i32, ptr %es, align 4
  %1298 = load ptr, ptr %s.addr, align 8
  %idxprom2125 = zext i8 %1296 to i64
  %arrayidx2126 = getelementptr inbounds %struct.DState, ptr %1298, i64 0, i32 16, i64 %idxprom2125
  %1299 = load i32, ptr %arrayidx2126, align 4
  %add2127 = add nsw i32 %1299, %1297
  store i32 %add2127, ptr %arrayidx2126, align 4
  %1300 = load ptr, ptr %s.addr, align 8
  %smallDecompress2128 = getelementptr inbounds %struct.DState, ptr %1300, i64 0, i32 10
  %1301 = load i8, ptr %smallDecompress2128, align 4
  %tobool2129.not = icmp eq i8 %1301, 0
  br i1 %tobool2129.not, label %while.cond2147, label %while.cond2131

while.cond2131:                                   ; preds = %do.end, %if.end2138
  %1302 = load i32, ptr %es, align 4
  %cmp2132 = icmp sgt i32 %1302, 0
  br i1 %cmp2132, label %while.body2134, label %if.end2162

while.body2134:                                   ; preds = %while.cond2131
  %1303 = load i32, ptr %nblock, align 4
  %1304 = load i32, ptr %nblockMAX, align 4
  %cmp2135.not = icmp slt i32 %1303, %1304
  br i1 %cmp2135.not, label %if.end2138, label %if.then2137

if.then2137:                                      ; preds = %while.body2134
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2138:                                       ; preds = %while.body2134
  %1305 = load i8, ptr %uc, align 1
  %conv2139 = zext i8 %1305 to i16
  %1306 = load ptr, ptr %s.addr, align 8
  %ll162140 = getelementptr inbounds %struct.DState, ptr %1306, i64 0, i32 21
  %1307 = load ptr, ptr %ll162140, align 8
  %1308 = load i32, ptr %nblock, align 4
  %idxprom2141 = sext i32 %1308 to i64
  %arrayidx2142 = getelementptr inbounds i16, ptr %1307, i64 %idxprom2141
  store i16 %conv2139, ptr %arrayidx2142, align 2
  %inc2143 = add nsw i32 %1308, 1
  store i32 %inc2143, ptr %nblock, align 4
  %1309 = load i32, ptr %es, align 4
  %dec2144 = add nsw i32 %1309, -1
  store i32 %dec2144, ptr %es, align 4
  br label %while.cond2131, !llvm.loop !23

while.cond2147:                                   ; preds = %do.end, %if.end2154
  %1310 = load i32, ptr %es, align 4
  %cmp2148 = icmp sgt i32 %1310, 0
  br i1 %cmp2148, label %while.body2150, label %if.end2162

while.body2150:                                   ; preds = %while.cond2147
  %1311 = load i32, ptr %nblock, align 4
  %1312 = load i32, ptr %nblockMAX, align 4
  %cmp2151.not = icmp slt i32 %1311, %1312
  br i1 %cmp2151.not, label %if.end2154, label %if.then2153

if.then2153:                                      ; preds = %while.body2150
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2154:                                       ; preds = %while.body2150
  %1313 = load i8, ptr %uc, align 1
  %conv2155 = zext i8 %1313 to i32
  %1314 = load ptr, ptr %s.addr, align 8
  %tt2156 = getelementptr inbounds %struct.DState, ptr %1314, i64 0, i32 20
  %1315 = load ptr, ptr %tt2156, align 8
  %1316 = load i32, ptr %nblock, align 4
  %idxprom2157 = sext i32 %1316 to i64
  %arrayidx2158 = getelementptr inbounds i32, ptr %1315, i64 %idxprom2157
  store i32 %conv2155, ptr %arrayidx2158, align 4
  %inc2159 = add nsw i32 %1316, 1
  store i32 %inc2159, ptr %nblock, align 4
  %1317 = load i32, ptr %es, align 4
  %dec2160 = add nsw i32 %1317, -1
  store i32 %dec2160, ptr %es, align 4
  br label %while.cond2147, !llvm.loop !24

if.end2162:                                       ; preds = %while.cond2147, %while.cond2131
  br label %while.body1920

if.else2163:                                      ; preds = %if.end1924
  %1318 = load i32, ptr %nblock, align 4
  %1319 = load i32, ptr %nblockMAX, align 4
  %cmp2164.not = icmp slt i32 %1318, %1319
  br i1 %cmp2164.not, label %if.end2167, label %if.then2166

if.then2166:                                      ; preds = %if.else2163
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2167:                                       ; preds = %if.else2163
  %1320 = load i32, ptr %nextSym, align 4
  %sub2171 = add nsw i32 %1320, -1
  store i32 %sub2171, ptr %nn, align 4
  %cmp2172 = icmp ult i32 %sub2171, 16
  br i1 %cmp2172, label %if.then2174, label %if.else2237

if.then2174:                                      ; preds = %if.end2167
  %1321 = load ptr, ptr %s.addr, align 8
  %mtfbase2175 = getelementptr inbounds %struct.DState, ptr %1321, i64 0, i32 32
  %1322 = load i32, ptr %mtfbase2175, align 4
  store i32 %1322, ptr %pp, align 4
  %1323 = load i32, ptr %nn, align 4
  %add2178 = add i32 %1322, %1323
  %idxprom2179 = zext i32 %add2178 to i64
  %arrayidx2180 = getelementptr inbounds %struct.DState, ptr %1321, i64 0, i32 31, i64 %idxprom2179
  %1324 = load i8, ptr %arrayidx2180, align 1
  store i8 %1324, ptr %uc, align 1
  br label %while.cond2181

while.cond2181:                                   ; preds = %while.body2184, %if.then2174
  %1325 = load i32, ptr %nn, align 4
  %cmp2182 = icmp ugt i32 %1325, 3
  br i1 %cmp2182, label %while.body2184, label %while.cond2219

while.body2184:                                   ; preds = %while.cond2181
  %1326 = load i32, ptr %pp, align 4
  %1327 = load i32, ptr %nn, align 4
  %add2185 = add i32 %1326, %1327
  store i32 %add2185, ptr %z, align 4
  %1328 = load ptr, ptr %s.addr, align 8
  %sub2187 = add nsw i32 %add2185, -1
  %idxprom2188 = sext i32 %sub2187 to i64
  %arrayidx2189 = getelementptr inbounds %struct.DState, ptr %1328, i64 0, i32 31, i64 %idxprom2188
  %1329 = load i8, ptr %arrayidx2189, align 1
  %idxprom2191 = sext i32 %add2185 to i64
  %arrayidx2192 = getelementptr inbounds %struct.DState, ptr %1328, i64 0, i32 31, i64 %idxprom2191
  store i8 %1329, ptr %arrayidx2192, align 1
  %1330 = load ptr, ptr %s.addr, align 8
  %sub2194 = add nsw i32 %add2185, -2
  %idxprom2195 = sext i32 %sub2194 to i64
  %arrayidx2196 = getelementptr inbounds %struct.DState, ptr %1330, i64 0, i32 31, i64 %idxprom2195
  %1331 = load i8, ptr %arrayidx2196, align 1
  %1332 = load i32, ptr %z, align 4
  %sub2198 = add nsw i32 %1332, -1
  %idxprom2199 = sext i32 %sub2198 to i64
  %arrayidx2200 = getelementptr inbounds %struct.DState, ptr %1330, i64 0, i32 31, i64 %idxprom2199
  store i8 %1331, ptr %arrayidx2200, align 1
  %1333 = load ptr, ptr %s.addr, align 8
  %sub2202 = add nsw i32 %1332, -3
  %idxprom2203 = sext i32 %sub2202 to i64
  %arrayidx2204 = getelementptr inbounds %struct.DState, ptr %1333, i64 0, i32 31, i64 %idxprom2203
  %1334 = load i8, ptr %arrayidx2204, align 1
  %sub2206 = add nsw i32 %1332, -2
  %idxprom2207 = sext i32 %sub2206 to i64
  %arrayidx2208 = getelementptr inbounds %struct.DState, ptr %1333, i64 0, i32 31, i64 %idxprom2207
  store i8 %1334, ptr %arrayidx2208, align 1
  %1335 = load ptr, ptr %s.addr, align 8
  %1336 = load i32, ptr %z, align 4
  %sub2210 = add nsw i32 %1336, -4
  %idxprom2211 = sext i32 %sub2210 to i64
  %arrayidx2212 = getelementptr inbounds %struct.DState, ptr %1335, i64 0, i32 31, i64 %idxprom2211
  %1337 = load i8, ptr %arrayidx2212, align 1
  %sub2214 = add nsw i32 %1336, -3
  %idxprom2215 = sext i32 %sub2214 to i64
  %arrayidx2216 = getelementptr inbounds %struct.DState, ptr %1335, i64 0, i32 31, i64 %idxprom2215
  store i8 %1337, ptr %arrayidx2216, align 1
  %1338 = load i32, ptr %nn, align 4
  %sub2217 = add i32 %1338, -4
  store i32 %sub2217, ptr %nn, align 4
  br label %while.cond2181, !llvm.loop !25

while.cond2219:                                   ; preds = %while.cond2181, %while.body2222
  %1339 = load i32, ptr %nn, align 4
  %cmp2220.not = icmp eq i32 %1339, 0
  br i1 %cmp2220.not, label %while.end2233, label %while.body2222

while.body2222:                                   ; preds = %while.cond2219
  %1340 = load ptr, ptr %s.addr, align 8
  %1341 = load i32, ptr %pp, align 4
  %1342 = load i32, ptr %nn, align 4
  %add2224 = add i32 %1341, %1342
  %sub2225 = add i32 %add2224, -1
  %idxprom2226 = zext i32 %sub2225 to i64
  %arrayidx2227 = getelementptr inbounds %struct.DState, ptr %1340, i64 0, i32 31, i64 %idxprom2226
  %1343 = load i8, ptr %arrayidx2227, align 1
  %1344 = load ptr, ptr %s.addr, align 8
  %1345 = load i32, ptr %pp, align 4
  %1346 = load i32, ptr %nn, align 4
  %add2229 = add i32 %1345, %1346
  %idxprom2230 = zext i32 %add2229 to i64
  %arrayidx2231 = getelementptr inbounds %struct.DState, ptr %1344, i64 0, i32 31, i64 %idxprom2230
  store i8 %1343, ptr %arrayidx2231, align 1
  %dec2232 = add i32 %1346, -1
  store i32 %dec2232, ptr %nn, align 4
  br label %while.cond2219, !llvm.loop !26

while.end2233:                                    ; preds = %while.cond2219
  %1347 = load i8, ptr %uc, align 1
  %1348 = load ptr, ptr %s.addr, align 8
  %1349 = load i32, ptr %pp, align 4
  %idxprom2235 = sext i32 %1349 to i64
  %arrayidx2236 = getelementptr inbounds %struct.DState, ptr %1348, i64 0, i32 31, i64 %idxprom2235
  store i8 %1347, ptr %arrayidx2236, align 1
  br label %if.end2333

if.else2237:                                      ; preds = %if.end2167
  %1350 = load i32, ptr %nn, align 4
  %div1 = lshr i32 %1350, 4
  store i32 %div1, ptr %lno, align 4
  %rem = and i32 %1350, 15
  %1351 = load ptr, ptr %s.addr, align 8
  %idxprom2239 = zext i32 %div1 to i64
  %arrayidx2240 = getelementptr inbounds %struct.DState, ptr %1351, i64 0, i32 32, i64 %idxprom2239
  %1352 = load i32, ptr %arrayidx2240, align 4
  %add2241 = add nsw i32 %1352, %rem
  store i32 %add2241, ptr %pp, align 4
  %idxprom2243 = sext i32 %add2241 to i64
  %arrayidx2244 = getelementptr inbounds %struct.DState, ptr %1351, i64 0, i32 31, i64 %idxprom2243
  %1353 = load i8, ptr %arrayidx2244, align 1
  store i8 %1353, ptr %uc, align 1
  br label %while.cond2245

while.cond2245:                                   ; preds = %while.body2251, %if.else2237
  %1354 = load i32, ptr %pp, align 4
  %1355 = load ptr, ptr %s.addr, align 8
  %1356 = load i32, ptr %lno, align 4
  %idxprom2247 = sext i32 %1356 to i64
  %arrayidx2248 = getelementptr inbounds %struct.DState, ptr %1355, i64 0, i32 32, i64 %idxprom2247
  %1357 = load i32, ptr %arrayidx2248, align 4
  %cmp2249 = icmp sgt i32 %1354, %1357
  br i1 %cmp2249, label %while.body2251, label %while.end2260

while.body2251:                                   ; preds = %while.cond2245
  %1358 = load ptr, ptr %s.addr, align 8
  %1359 = load i32, ptr %pp, align 4
  %sub2253 = add nsw i32 %1359, -1
  %idxprom2254 = sext i32 %sub2253 to i64
  %arrayidx2255 = getelementptr inbounds %struct.DState, ptr %1358, i64 0, i32 31, i64 %idxprom2254
  %1360 = load i8, ptr %arrayidx2255, align 1
  %idxprom2257 = sext i32 %1359 to i64
  %arrayidx2258 = getelementptr inbounds %struct.DState, ptr %1358, i64 0, i32 31, i64 %idxprom2257
  store i8 %1360, ptr %arrayidx2258, align 1
  %1361 = load i32, ptr %pp, align 4
  %dec2259 = add nsw i32 %1361, -1
  store i32 %dec2259, ptr %pp, align 4
  br label %while.cond2245, !llvm.loop !27

while.end2260:                                    ; preds = %while.cond2245
  %1362 = load ptr, ptr %s.addr, align 8
  %1363 = load i32, ptr %lno, align 4
  %idxprom2262 = sext i32 %1363 to i64
  %arrayidx2263 = getelementptr inbounds %struct.DState, ptr %1362, i64 0, i32 32, i64 %idxprom2262
  %1364 = load i32, ptr %arrayidx2263, align 4
  %inc2264 = add nsw i32 %1364, 1
  store i32 %inc2264, ptr %arrayidx2263, align 4
  br label %while.cond2265

while.cond2265:                                   ; preds = %while.body2268, %while.end2260
  %1365 = load i32, ptr %lno, align 4
  %cmp2266 = icmp sgt i32 %1365, 0
  br i1 %cmp2266, label %while.body2268, label %while.end2289

while.body2268:                                   ; preds = %while.cond2265
  %1366 = load ptr, ptr %s.addr, align 8
  %1367 = load i32, ptr %lno, align 4
  %idxprom2270 = sext i32 %1367 to i64
  %arrayidx2271 = getelementptr inbounds %struct.DState, ptr %1366, i64 0, i32 32, i64 %idxprom2270
  %1368 = load i32, ptr %arrayidx2271, align 4
  %dec2272 = add nsw i32 %1368, -1
  store i32 %dec2272, ptr %arrayidx2271, align 4
  %1369 = load ptr, ptr %s.addr, align 8
  %1370 = load i32, ptr %lno, align 4
  %sub2275 = add nsw i32 %1370, -1
  %idxprom2276 = sext i32 %sub2275 to i64
  %arrayidx2277 = getelementptr inbounds %struct.DState, ptr %1369, i64 0, i32 32, i64 %idxprom2276
  %1371 = load i32, ptr %arrayidx2277, align 4
  %sub2279 = add nsw i32 %1371, 15
  %idxprom2280 = sext i32 %sub2279 to i64
  %arrayidx2281 = getelementptr inbounds %struct.DState, ptr %1369, i64 0, i32 31, i64 %idxprom2280
  %1372 = load i8, ptr %arrayidx2281, align 1
  %1373 = load ptr, ptr %s.addr, align 8
  %1374 = load i32, ptr %lno, align 4
  %idxprom2284 = sext i32 %1374 to i64
  %arrayidx2285 = getelementptr inbounds %struct.DState, ptr %1373, i64 0, i32 32, i64 %idxprom2284
  %1375 = load i32, ptr %arrayidx2285, align 4
  %idxprom2286 = sext i32 %1375 to i64
  %arrayidx2287 = getelementptr inbounds %struct.DState, ptr %1373, i64 0, i32 31, i64 %idxprom2286
  store i8 %1372, ptr %arrayidx2287, align 1
  %1376 = load i32, ptr %lno, align 4
  %dec2288 = add nsw i32 %1376, -1
  store i32 %dec2288, ptr %lno, align 4
  br label %while.cond2265, !llvm.loop !28

while.end2289:                                    ; preds = %while.cond2265
  %1377 = load ptr, ptr %s.addr, align 8
  %mtfbase2290 = getelementptr inbounds %struct.DState, ptr %1377, i64 0, i32 32
  %1378 = load i32, ptr %mtfbase2290, align 4
  %dec2292 = add nsw i32 %1378, -1
  store i32 %dec2292, ptr %mtfbase2290, align 4
  %1379 = load i8, ptr %uc, align 1
  %idxprom2296 = sext i32 %dec2292 to i64
  %arrayidx2297 = getelementptr inbounds %struct.DState, ptr %1377, i64 0, i32 31, i64 %idxprom2296
  store i8 %1379, ptr %arrayidx2297, align 1
  %1380 = load ptr, ptr %s.addr, align 8
  %mtfbase2298 = getelementptr inbounds %struct.DState, ptr %1380, i64 0, i32 32
  %1381 = load i32, ptr %mtfbase2298, align 4
  %cmp2300 = icmp eq i32 %1381, 0
  br i1 %cmp2300, label %if.then2302, label %if.end2333

if.then2302:                                      ; preds = %while.end2289
  store i32 4095, ptr %kk2170, align 4
  br label %for.cond2303

for.cond2303:                                     ; preds = %for.end2324, %if.then2302
  %storemerge = phi i32 [ 15, %if.then2302 ], [ %dec2330, %for.end2324 ]
  store i32 %storemerge, ptr %ii2168, align 4
  %cmp2304 = icmp sgt i32 %storemerge, -1
  br i1 %cmp2304, label %for.cond2307, label %if.end2333

for.cond2307:                                     ; preds = %for.cond2303, %for.body2310
  %storemerge2 = phi i32 [ %dec2323, %for.body2310 ], [ 15, %for.cond2303 ]
  store i32 %storemerge2, ptr %jj2169, align 4
  %cmp2308 = icmp sgt i32 %storemerge2, -1
  br i1 %cmp2308, label %for.body2310, label %for.end2324

for.body2310:                                     ; preds = %for.cond2307
  %1382 = load ptr, ptr %s.addr, align 8
  %1383 = load i32, ptr %ii2168, align 4
  %idxprom2313 = sext i32 %1383 to i64
  %arrayidx2314 = getelementptr inbounds %struct.DState, ptr %1382, i64 0, i32 32, i64 %idxprom2313
  %1384 = load i32, ptr %arrayidx2314, align 4
  %1385 = load i32, ptr %jj2169, align 4
  %add2315 = add nsw i32 %1384, %1385
  %idxprom2316 = sext i32 %add2315 to i64
  %arrayidx2317 = getelementptr inbounds %struct.DState, ptr %1382, i64 0, i32 31, i64 %idxprom2316
  %1386 = load i8, ptr %arrayidx2317, align 1
  %1387 = load ptr, ptr %s.addr, align 8
  %1388 = load i32, ptr %kk2170, align 4
  %idxprom2319 = sext i32 %1388 to i64
  %arrayidx2320 = getelementptr inbounds %struct.DState, ptr %1387, i64 0, i32 31, i64 %idxprom2319
  store i8 %1386, ptr %arrayidx2320, align 1
  %dec2321 = add nsw i32 %1388, -1
  store i32 %dec2321, ptr %kk2170, align 4
  %1389 = load i32, ptr %jj2169, align 4
  %dec2323 = add nsw i32 %1389, -1
  br label %for.cond2307, !llvm.loop !29

for.end2324:                                      ; preds = %for.cond2307
  %1390 = load i32, ptr %kk2170, align 4
  %add2325 = add nsw i32 %1390, 1
  %1391 = load ptr, ptr %s.addr, align 8
  %1392 = load i32, ptr %ii2168, align 4
  %idxprom2327 = sext i32 %1392 to i64
  %arrayidx2328 = getelementptr inbounds %struct.DState, ptr %1391, i64 0, i32 32, i64 %idxprom2327
  store i32 %add2325, ptr %arrayidx2328, align 4
  %1393 = load i32, ptr %ii2168, align 4
  %dec2330 = add nsw i32 %1393, -1
  br label %for.cond2303, !llvm.loop !30

if.end2333:                                       ; preds = %while.end2289, %for.cond2303, %while.end2233
  %1394 = load ptr, ptr %s.addr, align 8
  %1395 = load i8, ptr %uc, align 1
  %idxprom2336 = zext i8 %1395 to i64
  %arrayidx2337 = getelementptr inbounds %struct.DState, ptr %1394, i64 0, i32 30, i64 %idxprom2336
  %1396 = load i8, ptr %arrayidx2337, align 1
  %idxprom2338 = zext i8 %1396 to i64
  %arrayidx2339 = getelementptr inbounds %struct.DState, ptr %1394, i64 0, i32 16, i64 %idxprom2338
  %1397 = load i32, ptr %arrayidx2339, align 4
  %inc2340 = add nsw i32 %1397, 1
  store i32 %inc2340, ptr %arrayidx2339, align 4
  %1398 = load ptr, ptr %s.addr, align 8
  %smallDecompress2341 = getelementptr inbounds %struct.DState, ptr %1398, i64 0, i32 10
  %1399 = load i8, ptr %smallDecompress2341, align 4
  %tobool2342.not = icmp eq i8 %1399, 0
  br i1 %tobool2342.not, label %if.else2351, label %if.then2343

if.then2343:                                      ; preds = %if.end2333
  %1400 = load ptr, ptr %s.addr, align 8
  %1401 = load i8, ptr %uc, align 1
  %idxprom2345 = zext i8 %1401 to i64
  %arrayidx2346 = getelementptr inbounds %struct.DState, ptr %1400, i64 0, i32 30, i64 %idxprom2345
  %1402 = load i8, ptr %arrayidx2346, align 1
  %conv2347 = zext i8 %1402 to i16
  %ll162348 = getelementptr inbounds %struct.DState, ptr %1400, i64 0, i32 21
  %1403 = load ptr, ptr %ll162348, align 8
  %1404 = load i32, ptr %nblock, align 4
  %idxprom2349 = sext i32 %1404 to i64
  %arrayidx2350 = getelementptr inbounds i16, ptr %1403, i64 %idxprom2349
  store i16 %conv2347, ptr %arrayidx2350, align 2
  br label %if.end2359

if.else2351:                                      ; preds = %if.end2333
  %1405 = load ptr, ptr %s.addr, align 8
  %1406 = load i8, ptr %uc, align 1
  %idxprom2353 = zext i8 %1406 to i64
  %arrayidx2354 = getelementptr inbounds %struct.DState, ptr %1405, i64 0, i32 30, i64 %idxprom2353
  %1407 = load i8, ptr %arrayidx2354, align 1
  %conv2355 = zext i8 %1407 to i32
  %tt2356 = getelementptr inbounds %struct.DState, ptr %1405, i64 0, i32 20
  %1408 = load ptr, ptr %tt2356, align 8
  %1409 = load i32, ptr %nblock, align 4
  %idxprom2357 = sext i32 %1409 to i64
  %arrayidx2358 = getelementptr inbounds i32, ptr %1408, i64 %idxprom2357
  store i32 %conv2355, ptr %arrayidx2358, align 4
  br label %if.end2359

if.end2359:                                       ; preds = %if.else2351, %if.then2343
  %1410 = load i32, ptr %nblock, align 4
  %inc2360 = add nsw i32 %1410, 1
  store i32 %inc2360, ptr %nblock, align 4
  %1411 = load i32, ptr %groupPos, align 4
  %cmp2361 = icmp eq i32 %1411, 0
  br i1 %cmp2361, label %if.then2363, label %if.end2388

if.then2363:                                      ; preds = %if.end2359
  %1412 = load i32, ptr %groupNo, align 4
  %inc2364 = add nsw i32 %1412, 1
  store i32 %inc2364, ptr %groupNo, align 4
  %1413 = load i32, ptr %nSelectors, align 4
  %cmp2365.not = icmp slt i32 %inc2364, %1413
  br i1 %cmp2365.not, label %if.end2368, label %if.then2367

if.then2367:                                      ; preds = %if.then2363
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2368:                                       ; preds = %if.then2363
  store i32 50, ptr %groupPos, align 4
  %1414 = load ptr, ptr %s.addr, align 8
  %1415 = load i32, ptr %groupNo, align 4
  %idxprom2370 = sext i32 %1415 to i64
  %arrayidx2371 = getelementptr inbounds %struct.DState, ptr %1414, i64 0, i32 33, i64 %idxprom2370
  %1416 = load i8, ptr %arrayidx2371, align 1
  %conv2372 = zext i8 %1416 to i32
  store i32 %conv2372, ptr %gSel, align 4
  %1417 = load ptr, ptr %s.addr, align 8
  %idxprom2374 = zext i8 %1416 to i64
  %arrayidx2375 = getelementptr inbounds %struct.DState, ptr %1417, i64 0, i32 39, i64 %idxprom2374
  %1418 = load i32, ptr %arrayidx2375, align 4
  store i32 %1418, ptr %gMinlen, align 4
  %idxprom2377 = zext i8 %1416 to i64
  %arrayidx2378 = getelementptr inbounds %struct.DState, ptr %1417, i64 0, i32 36, i64 %idxprom2377
  store ptr %arrayidx2378, ptr %gLimit, align 8
  %1419 = load ptr, ptr %s.addr, align 8
  %idxprom2381 = zext i8 %1416 to i64
  %arrayidx2382 = getelementptr inbounds %struct.DState, ptr %1419, i64 0, i32 38, i64 %idxprom2381
  store ptr %arrayidx2382, ptr %gPerm, align 8
  %1420 = load i32, ptr %gSel, align 4
  %idxprom2385 = sext i32 %1420 to i64
  %arrayidx2386 = getelementptr inbounds %struct.DState, ptr %1419, i64 0, i32 37, i64 %idxprom2385
  store ptr %arrayidx2386, ptr %gBase, align 8
  br label %if.end2388

if.end2388:                                       ; preds = %if.end2368, %if.end2359
  %1421 = load i32, ptr %groupPos, align 4
  %dec2389 = add nsw i32 %1421, -1
  store i32 %dec2389, ptr %groupPos, align 4
  %1422 = load i32, ptr %gMinlen, align 4
  store i32 %1422, ptr %zn, align 4
  br label %sw.bb2390

sw.bb2390:                                        ; preds = %if.end2388, %if.end
  %1423 = load ptr, ptr %s.addr, align 8
  %state2391 = getelementptr inbounds %struct.DState, ptr %1423, i64 0, i32 1
  store i32 40, ptr %state2391, align 8
  br label %while.body2393

while.body2393:                                   ; preds = %if.end2441, %sw.bb2390
  %1424 = load ptr, ptr %s.addr, align 8
  %bsLive2394 = getelementptr inbounds %struct.DState, ptr %1424, i64 0, i32 8
  %1425 = load i32, ptr %bsLive2394, align 4
  %1426 = load i32, ptr %zn, align 4
  %cmp2395.not = icmp slt i32 %1425, %1426
  br i1 %cmp2395.not, label %if.end2408, label %if.then2397

if.then2397:                                      ; preds = %while.body2393
  %1427 = load ptr, ptr %s.addr, align 8
  %bsBuff2399 = getelementptr inbounds %struct.DState, ptr %1427, i64 0, i32 7
  %1428 = load i32, ptr %bsBuff2399, align 8
  %bsLive2400 = getelementptr inbounds %struct.DState, ptr %1427, i64 0, i32 8
  %1429 = load i32, ptr %bsLive2400, align 4
  %1430 = load i32, ptr %zn, align 4
  %sub2401 = sub nsw i32 %1429, %1430
  %shr2402 = lshr i32 %1428, %sub2401
  %notmask = shl nsw i32 -1, %1430
  %sub2404 = xor i32 %notmask, -1
  %and2405 = and i32 %shr2402, %sub2404
  store i32 %and2405, ptr %v2398, align 4
  %1431 = load i32, ptr %zn, align 4
  %1432 = load ptr, ptr %s.addr, align 8
  %bsLive2406 = getelementptr inbounds %struct.DState, ptr %1432, i64 0, i32 8
  %1433 = load i32, ptr %bsLive2406, align 4
  %sub2407 = sub nsw i32 %1433, %1431
  store i32 %sub2407, ptr %bsLive2406, align 4
  %1434 = load i32, ptr %v2398, align 4
  store i32 %1434, ptr %zvec, align 4
  br label %while.body2444

if.end2408:                                       ; preds = %while.body2393
  %1435 = load ptr, ptr %s.addr, align 8
  %1436 = load ptr, ptr %1435, align 8
  %avail_in2410 = getelementptr inbounds %struct.bz_stream, ptr %1436, i64 0, i32 1
  %1437 = load i32, ptr %avail_in2410, align 8
  %cmp2411 = icmp eq i32 %1437, 0
  br i1 %cmp2411, label %if.then2413, label %if.end2414

if.then2413:                                      ; preds = %if.end2408
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2414:                                       ; preds = %if.end2408
  %1438 = load ptr, ptr %s.addr, align 8
  %bsBuff2415 = getelementptr inbounds %struct.DState, ptr %1438, i64 0, i32 7
  %1439 = load i32, ptr %bsBuff2415, align 8
  %shl2416 = shl i32 %1439, 8
  %1440 = load ptr, ptr %1438, align 8
  %1441 = load ptr, ptr %1440, align 8
  %1442 = load i8, ptr %1441, align 1
  %conv2419 = zext i8 %1442 to i32
  %or2420 = or i32 %shl2416, %conv2419
  %1443 = load ptr, ptr %s.addr, align 8
  %bsBuff2421 = getelementptr inbounds %struct.DState, ptr %1443, i64 0, i32 7
  store i32 %or2420, ptr %bsBuff2421, align 8
  %bsLive2422 = getelementptr inbounds %struct.DState, ptr %1443, i64 0, i32 8
  %1444 = load i32, ptr %bsLive2422, align 4
  %add2423 = add nsw i32 %1444, 8
  store i32 %add2423, ptr %bsLive2422, align 4
  %1445 = load ptr, ptr %s.addr, align 8
  %1446 = load ptr, ptr %1445, align 8
  %1447 = load ptr, ptr %1446, align 8
  %incdec.ptr2426 = getelementptr inbounds i8, ptr %1447, i64 1
  store ptr %incdec.ptr2426, ptr %1446, align 8
  %1448 = load ptr, ptr %s.addr, align 8
  %1449 = load ptr, ptr %1448, align 8
  %avail_in2428 = getelementptr inbounds %struct.bz_stream, ptr %1449, i64 0, i32 1
  %1450 = load i32, ptr %avail_in2428, align 8
  %dec2429 = add i32 %1450, -1
  store i32 %dec2429, ptr %avail_in2428, align 8
  %1451 = load ptr, ptr %1448, align 8
  %total_in_lo322431 = getelementptr inbounds %struct.bz_stream, ptr %1451, i64 0, i32 2
  %1452 = load i32, ptr %total_in_lo322431, align 4
  %inc2432 = add i32 %1452, 1
  store i32 %inc2432, ptr %total_in_lo322431, align 4
  %1453 = load ptr, ptr %s.addr, align 8
  %1454 = load ptr, ptr %1453, align 8
  %total_in_lo322434 = getelementptr inbounds %struct.bz_stream, ptr %1454, i64 0, i32 2
  %1455 = load i32, ptr %total_in_lo322434, align 4
  %cmp2435 = icmp eq i32 %1455, 0
  br i1 %cmp2435, label %if.then2437, label %if.end2441

if.then2437:                                      ; preds = %if.end2414
  %1456 = load ptr, ptr %s.addr, align 8
  %1457 = load ptr, ptr %1456, align 8
  %total_in_hi322439 = getelementptr inbounds %struct.bz_stream, ptr %1457, i64 0, i32 3
  %1458 = load i32, ptr %total_in_hi322439, align 8
  %inc2440 = add i32 %1458, 1
  store i32 %inc2440, ptr %total_in_hi322439, align 8
  br label %if.end2441

if.end2441:                                       ; preds = %if.then2437, %if.end2414
  br label %while.body2393

while.body2444:                                   ; preds = %if.then2463, %if.then2397
  %1459 = load i32, ptr %zn, align 4
  %cmp2445 = icmp sgt i32 %1459, 20
  br i1 %cmp2445, label %if.then2447, label %if.end2448

if.then2447:                                      ; preds = %while.body2444
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2448:                                       ; preds = %while.body2444
  %1460 = load i32, ptr %zvec, align 4
  %1461 = load ptr, ptr %gLimit, align 8
  %1462 = load i32, ptr %zn, align 4
  %idxprom2449 = sext i32 %1462 to i64
  %arrayidx2450 = getelementptr inbounds i32, ptr %1461, i64 %idxprom2449
  %1463 = load i32, ptr %arrayidx2450, align 4
  %cmp2451.not = icmp sgt i32 %1460, %1463
  br i1 %cmp2451.not, label %if.end2454, label %while.end2509

if.end2454:                                       ; preds = %if.end2448
  %1464 = load i32, ptr %zn, align 4
  %inc2455 = add nsw i32 %1464, 1
  store i32 %inc2455, ptr %zn, align 4
  br label %sw.bb2456

sw.bb2456:                                        ; preds = %if.end2454, %if.end
  %1465 = load ptr, ptr %s.addr, align 8
  %state2457 = getelementptr inbounds %struct.DState, ptr %1465, i64 0, i32 1
  store i32 41, ptr %state2457, align 8
  br label %while.body2459

while.body2459:                                   ; preds = %if.end2505, %sw.bb2456
  %1466 = load ptr, ptr %s.addr, align 8
  %bsLive2460 = getelementptr inbounds %struct.DState, ptr %1466, i64 0, i32 8
  %1467 = load i32, ptr %bsLive2460, align 4
  %cmp2461 = icmp sgt i32 %1467, 0
  br i1 %cmp2461, label %if.then2463, label %if.end2472

if.then2463:                                      ; preds = %while.body2459
  %1468 = load ptr, ptr %s.addr, align 8
  %bsBuff2465 = getelementptr inbounds %struct.DState, ptr %1468, i64 0, i32 7
  %1469 = load i32, ptr %bsBuff2465, align 8
  %bsLive2466 = getelementptr inbounds %struct.DState, ptr %1468, i64 0, i32 8
  %1470 = load i32, ptr %bsLive2466, align 4
  %sub2467 = add nsw i32 %1470, -1
  %shr2468 = lshr i32 %1469, %sub2467
  %and2469 = and i32 %shr2468, 1
  %1471 = load ptr, ptr %s.addr, align 8
  %bsLive2470 = getelementptr inbounds %struct.DState, ptr %1471, i64 0, i32 8
  %1472 = load i32, ptr %bsLive2470, align 4
  %sub2471 = add nsw i32 %1472, -1
  store i32 %sub2471, ptr %bsLive2470, align 4
  store i32 %and2469, ptr %zj, align 4
  %1473 = load i32, ptr %zvec, align 4
  %shl2507 = shl i32 %1473, 1
  %1474 = load i32, ptr %zj, align 4
  %or2508 = or i32 %shl2507, %1474
  store i32 %or2508, ptr %zvec, align 4
  br label %while.body2444

if.end2472:                                       ; preds = %while.body2459
  %1475 = load ptr, ptr %s.addr, align 8
  %1476 = load ptr, ptr %1475, align 8
  %avail_in2474 = getelementptr inbounds %struct.bz_stream, ptr %1476, i64 0, i32 1
  %1477 = load i32, ptr %avail_in2474, align 8
  %cmp2475 = icmp eq i32 %1477, 0
  br i1 %cmp2475, label %if.then2477, label %if.end2478

if.then2477:                                      ; preds = %if.end2472
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2478:                                       ; preds = %if.end2472
  %1478 = load ptr, ptr %s.addr, align 8
  %bsBuff2479 = getelementptr inbounds %struct.DState, ptr %1478, i64 0, i32 7
  %1479 = load i32, ptr %bsBuff2479, align 8
  %shl2480 = shl i32 %1479, 8
  %1480 = load ptr, ptr %1478, align 8
  %1481 = load ptr, ptr %1480, align 8
  %1482 = load i8, ptr %1481, align 1
  %conv2483 = zext i8 %1482 to i32
  %or2484 = or i32 %shl2480, %conv2483
  %1483 = load ptr, ptr %s.addr, align 8
  %bsBuff2485 = getelementptr inbounds %struct.DState, ptr %1483, i64 0, i32 7
  store i32 %or2484, ptr %bsBuff2485, align 8
  %bsLive2486 = getelementptr inbounds %struct.DState, ptr %1483, i64 0, i32 8
  %1484 = load i32, ptr %bsLive2486, align 4
  %add2487 = add nsw i32 %1484, 8
  store i32 %add2487, ptr %bsLive2486, align 4
  %1485 = load ptr, ptr %s.addr, align 8
  %1486 = load ptr, ptr %1485, align 8
  %1487 = load ptr, ptr %1486, align 8
  %incdec.ptr2490 = getelementptr inbounds i8, ptr %1487, i64 1
  store ptr %incdec.ptr2490, ptr %1486, align 8
  %1488 = load ptr, ptr %s.addr, align 8
  %1489 = load ptr, ptr %1488, align 8
  %avail_in2492 = getelementptr inbounds %struct.bz_stream, ptr %1489, i64 0, i32 1
  %1490 = load i32, ptr %avail_in2492, align 8
  %dec2493 = add i32 %1490, -1
  store i32 %dec2493, ptr %avail_in2492, align 8
  %1491 = load ptr, ptr %1488, align 8
  %total_in_lo322495 = getelementptr inbounds %struct.bz_stream, ptr %1491, i64 0, i32 2
  %1492 = load i32, ptr %total_in_lo322495, align 4
  %inc2496 = add i32 %1492, 1
  store i32 %inc2496, ptr %total_in_lo322495, align 4
  %1493 = load ptr, ptr %s.addr, align 8
  %1494 = load ptr, ptr %1493, align 8
  %total_in_lo322498 = getelementptr inbounds %struct.bz_stream, ptr %1494, i64 0, i32 2
  %1495 = load i32, ptr %total_in_lo322498, align 4
  %cmp2499 = icmp eq i32 %1495, 0
  br i1 %cmp2499, label %if.then2501, label %if.end2505

if.then2501:                                      ; preds = %if.end2478
  %1496 = load ptr, ptr %s.addr, align 8
  %1497 = load ptr, ptr %1496, align 8
  %total_in_hi322503 = getelementptr inbounds %struct.bz_stream, ptr %1497, i64 0, i32 3
  %1498 = load i32, ptr %total_in_hi322503, align 8
  %inc2504 = add i32 %1498, 1
  store i32 %inc2504, ptr %total_in_hi322503, align 8
  br label %if.end2505

if.end2505:                                       ; preds = %if.then2501, %if.end2478
  br label %while.body2459

while.end2509:                                    ; preds = %if.end2448
  %1499 = load i32, ptr %zvec, align 4
  %1500 = load ptr, ptr %gBase, align 8
  %1501 = load i32, ptr %zn, align 4
  %idxprom2510 = sext i32 %1501 to i64
  %arrayidx2511 = getelementptr inbounds i32, ptr %1500, i64 %idxprom2510
  %1502 = load i32, ptr %arrayidx2511, align 4
  %cmp2513 = icmp slt i32 %1499, %1502
  br i1 %cmp2513, label %if.then2521, label %lor.lhs.false2515

lor.lhs.false2515:                                ; preds = %while.end2509
  %1503 = load i32, ptr %zvec, align 4
  %1504 = load ptr, ptr %gBase, align 8
  %1505 = load i32, ptr %zn, align 4
  %idxprom2516 = sext i32 %1505 to i64
  %arrayidx2517 = getelementptr inbounds i32, ptr %1504, i64 %idxprom2516
  %1506 = load i32, ptr %arrayidx2517, align 4
  %sub2518 = sub nsw i32 %1503, %1506
  %cmp2519 = icmp sgt i32 %sub2518, 257
  br i1 %cmp2519, label %if.then2521, label %if.end2522

if.then2521:                                      ; preds = %lor.lhs.false2515, %while.end2509
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2522:                                       ; preds = %lor.lhs.false2515
  %1507 = load ptr, ptr %gPerm, align 8
  %1508 = load i32, ptr %zvec, align 4
  %1509 = load ptr, ptr %gBase, align 8
  %1510 = load i32, ptr %zn, align 4
  %idxprom2523 = sext i32 %1510 to i64
  %arrayidx2524 = getelementptr inbounds i32, ptr %1509, i64 %idxprom2523
  %1511 = load i32, ptr %arrayidx2524, align 4
  %sub2525 = sub nsw i32 %1508, %1511
  %idxprom2526 = sext i32 %sub2525 to i64
  %arrayidx2527 = getelementptr inbounds i32, ptr %1507, i64 %idxprom2526
  %1512 = load i32, ptr %arrayidx2527, align 4
  store i32 %1512, ptr %nextSym, align 4
  br label %while.body1920

while.end2528:                                    ; preds = %while.body1920
  %1513 = load ptr, ptr %s.addr, align 8
  %origPtr2529 = getelementptr inbounds %struct.DState, ptr %1513, i64 0, i32 13
  %1514 = load i32, ptr %origPtr2529, align 8
  %cmp2530 = icmp slt i32 %1514, 0
  br i1 %cmp2530, label %if.then2536, label %lor.lhs.false2532

lor.lhs.false2532:                                ; preds = %while.end2528
  %1515 = load ptr, ptr %s.addr, align 8
  %origPtr2533 = getelementptr inbounds %struct.DState, ptr %1515, i64 0, i32 13
  %1516 = load i32, ptr %origPtr2533, align 8
  %1517 = load i32, ptr %nblock, align 4
  %cmp2534.not = icmp slt i32 %1516, %1517
  br i1 %cmp2534.not, label %if.end2537, label %if.then2536

if.then2536:                                      ; preds = %lor.lhs.false2532, %while.end2528
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end2537:                                       ; preds = %lor.lhs.false2532
  %1518 = load ptr, ptr %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, ptr %1518, i64 0, i32 18
  store i32 0, ptr %cftab, align 8
  br label %for.cond2539

for.cond2539:                                     ; preds = %for.body2542, %if.end2537
  %storemerge4 = phi i32 [ 1, %if.end2537 ], [ %inc2551, %for.body2542 ]
  store i32 %storemerge4, ptr %i, align 4
  %cmp2540 = icmp slt i32 %storemerge4, 257
  br i1 %cmp2540, label %for.body2542, label %for.cond2553

for.body2542:                                     ; preds = %for.cond2539
  %1519 = load ptr, ptr %s.addr, align 8
  %1520 = load i32, ptr %i, align 4
  %sub2544 = add nsw i32 %1520, -1
  %idxprom2545 = sext i32 %sub2544 to i64
  %arrayidx2546 = getelementptr inbounds %struct.DState, ptr %1519, i64 0, i32 16, i64 %idxprom2545
  %1521 = load i32, ptr %arrayidx2546, align 4
  %idxprom2548 = sext i32 %1520 to i64
  %arrayidx2549 = getelementptr inbounds %struct.DState, ptr %1519, i64 0, i32 18, i64 %idxprom2548
  store i32 %1521, ptr %arrayidx2549, align 4
  %1522 = load i32, ptr %i, align 4
  %inc2551 = add nsw i32 %1522, 1
  br label %for.cond2539, !llvm.loop !31

for.cond2553:                                     ; preds = %for.cond2539, %for.body2556
  %storemerge5 = phi i32 [ %inc2566, %for.body2556 ], [ 1, %for.cond2539 ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp2554 = icmp slt i32 %storemerge5, 257
  br i1 %cmp2554, label %for.body2556, label %for.cond2568

for.body2556:                                     ; preds = %for.cond2553
  %1523 = load ptr, ptr %s.addr, align 8
  %1524 = load i32, ptr %i, align 4
  %sub2558 = add nsw i32 %1524, -1
  %idxprom2559 = sext i32 %sub2558 to i64
  %arrayidx2560 = getelementptr inbounds %struct.DState, ptr %1523, i64 0, i32 18, i64 %idxprom2559
  %1525 = load i32, ptr %arrayidx2560, align 4
  %idxprom2562 = sext i32 %1524 to i64
  %arrayidx2563 = getelementptr inbounds %struct.DState, ptr %1523, i64 0, i32 18, i64 %idxprom2562
  %1526 = load i32, ptr %arrayidx2563, align 4
  %add2564 = add nsw i32 %1526, %1525
  store i32 %add2564, ptr %arrayidx2563, align 4
  %1527 = load i32, ptr %i, align 4
  %inc2566 = add nsw i32 %1527, 1
  br label %for.cond2553, !llvm.loop !32

for.cond2568:                                     ; preds = %for.cond2553, %for.inc2585
  %storemerge6 = phi i32 [ %inc2586, %for.inc2585 ], [ 0, %for.cond2553 ]
  store i32 %storemerge6, ptr %i, align 4
  %cmp2569 = icmp slt i32 %storemerge6, 257
  br i1 %cmp2569, label %for.body2571, label %for.end2587

for.body2571:                                     ; preds = %for.cond2568
  %1528 = load ptr, ptr %s.addr, align 8
  %1529 = load i32, ptr %i, align 4
  %idxprom2573 = sext i32 %1529 to i64
  %arrayidx2574 = getelementptr inbounds %struct.DState, ptr %1528, i64 0, i32 18, i64 %idxprom2573
  %1530 = load i32, ptr %arrayidx2574, align 4
  %cmp2575 = icmp slt i32 %1530, 0
  br i1 %cmp2575, label %if.then2583, label %lor.lhs.false2577

lor.lhs.false2577:                                ; preds = %for.body2571
  %1531 = load ptr, ptr %s.addr, align 8
  %1532 = load i32, ptr %i, align 4
  %idxprom2579 = sext i32 %1532 to i64
  %arrayidx2580 = getelementptr inbounds %struct.DState, ptr %1531, i64 0, i32 18, i64 %idxprom2579
  %1533 = load i32, ptr %arrayidx2580, align 4
  %1534 = load i32, ptr %nblock, align 4
  %cmp2581 = icmp sgt i32 %1533, %1534
  br i1 %cmp2581, label %if.then2583, label %for.inc2585

if.then2583:                                      ; preds = %lor.lhs.false2577, %for.body2571
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

for.inc2585:                                      ; preds = %lor.lhs.false2577
  %1535 = load i32, ptr %i, align 4
  %inc2586 = add nsw i32 %1535, 1
  br label %for.cond2568, !llvm.loop !33

for.end2587:                                      ; preds = %for.cond2568
  %1536 = load ptr, ptr %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, ptr %1536, i64 0, i32 3
  store i32 0, ptr %state_out_len, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, ptr %1536, i64 0, i32 2
  store i8 0, ptr %state_out_ch, align 4
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, ptr %1536, i64 0, i32 25
  store i32 -1, ptr %calculatedBlockCRC, align 8
  %1537 = load ptr, ptr %s.addr, align 8
  %state2588 = getelementptr inbounds %struct.DState, ptr %1537, i64 0, i32 1
  store i32 2, ptr %state2588, align 8
  %verbosity2589 = getelementptr inbounds %struct.DState, ptr %1537, i64 0, i32 12
  %1538 = load i32, ptr %verbosity2589, align 4
  %cmp2590 = icmp sgt i32 %1538, 1
  br i1 %cmp2590, label %if.then2592, label %if.end2594

if.then2592:                                      ; preds = %for.end2587
  %1539 = load ptr, ptr @__stderrp, align 8
  %1540 = call i64 @fwrite(ptr nonnull @.str.1, i64 6, i64 1, ptr %1539)
  br label %if.end2594

if.end2594:                                       ; preds = %if.then2592, %for.end2587
  %1541 = load ptr, ptr %s.addr, align 8
  %smallDecompress2595 = getelementptr inbounds %struct.DState, ptr %1541, i64 0, i32 10
  %1542 = load i8, ptr %smallDecompress2595, align 4
  %tobool2596.not = icmp eq i8 %1542, 0
  br i1 %tobool2596.not, label %for.cond2828, label %for.cond2598

for.cond2598:                                     ; preds = %if.end2594, %for.body2601
  %storemerge8 = phi i32 [ %inc2608, %for.body2601 ], [ 0, %if.end2594 ]
  store i32 %storemerge8, ptr %i, align 4
  %cmp2599 = icmp slt i32 %storemerge8, 257
  br i1 %cmp2599, label %for.body2601, label %for.cond2610

for.body2601:                                     ; preds = %for.cond2598
  %1543 = load ptr, ptr %s.addr, align 8
  %1544 = load i32, ptr %i, align 4
  %idxprom2603 = sext i32 %1544 to i64
  %arrayidx2604 = getelementptr inbounds %struct.DState, ptr %1543, i64 0, i32 18, i64 %idxprom2603
  %1545 = load i32, ptr %arrayidx2604, align 4
  %idxprom2605 = sext i32 %1544 to i64
  %arrayidx2606 = getelementptr inbounds %struct.DState, ptr %1543, i64 0, i32 19, i64 %idxprom2605
  store i32 %1545, ptr %arrayidx2606, align 4
  %1546 = load i32, ptr %i, align 4
  %inc2608 = add nsw i32 %1546, 1
  br label %for.cond2598, !llvm.loop !34

for.cond2610:                                     ; preds = %for.cond2598, %if.end2664
  %storemerge9 = phi i32 [ %inc2670, %if.end2664 ], [ 0, %for.cond2598 ]
  store i32 %storemerge9, ptr %i, align 4
  %1547 = load i32, ptr %nblock, align 4
  %cmp2611 = icmp slt i32 %storemerge9, %1547
  br i1 %cmp2611, label %for.body2613, label %for.end2671

for.body2613:                                     ; preds = %for.cond2610
  %1548 = load ptr, ptr %s.addr, align 8
  %ll162614 = getelementptr inbounds %struct.DState, ptr %1548, i64 0, i32 21
  %1549 = load ptr, ptr %ll162614, align 8
  %1550 = load i32, ptr %i, align 4
  %idxprom2615 = sext i32 %1550 to i64
  %arrayidx2616 = getelementptr inbounds i16, ptr %1549, i64 %idxprom2615
  %1551 = load i16, ptr %arrayidx2616, align 2
  %conv2617 = trunc i16 %1551 to i8
  store i8 %conv2617, ptr %uc, align 1
  %1552 = load ptr, ptr %s.addr, align 8
  %conv2617.mask = and i16 %1551, 255
  %idxprom2619 = zext i16 %conv2617.mask to i64
  %arrayidx2620 = getelementptr inbounds %struct.DState, ptr %1552, i64 0, i32 19, i64 %idxprom2619
  %1553 = load i32, ptr %arrayidx2620, align 4
  %conv2622 = trunc i32 %1553 to i16
  %ll162623 = getelementptr inbounds %struct.DState, ptr %1552, i64 0, i32 21
  %1554 = load ptr, ptr %ll162623, align 8
  %1555 = load i32, ptr %i, align 4
  %idxprom2624 = sext i32 %1555 to i64
  %arrayidx2625 = getelementptr inbounds i16, ptr %1554, i64 %idxprom2624
  store i16 %conv2622, ptr %arrayidx2625, align 2
  %and2626 = and i32 %1555, 1
  %cmp2627 = icmp eq i32 %and2626, 0
  br i1 %cmp2627, label %if.then2629, label %if.else2646

if.then2629:                                      ; preds = %for.body2613
  %1556 = load ptr, ptr %s.addr, align 8
  %ll42630 = getelementptr inbounds %struct.DState, ptr %1556, i64 0, i32 22
  %1557 = load ptr, ptr %ll42630, align 8
  %1558 = load i32, ptr %i, align 4
  %shr2631 = ashr i32 %1558, 1
  %idxprom2632 = sext i32 %shr2631 to i64
  %arrayidx2633 = getelementptr inbounds i8, ptr %1557, i64 %idxprom2632
  %1559 = load i8, ptr %arrayidx2633, align 1
  %1560 = and i8 %1559, -16
  %1561 = load ptr, ptr %s.addr, align 8
  %1562 = load i8, ptr %uc, align 1
  %idxprom2637 = zext i8 %1562 to i64
  %arrayidx2638 = getelementptr inbounds %struct.DState, ptr %1561, i64 0, i32 19, i64 %idxprom2637
  %1563 = load i32, ptr %arrayidx2638, align 4
  %1564 = lshr i32 %1563, 16
  %1565 = trunc i32 %1564 to i8
  %conv2641 = or i8 %1560, %1565
  %1566 = load ptr, ptr %s.addr, align 8
  %ll42642 = getelementptr inbounds %struct.DState, ptr %1566, i64 0, i32 22
  %1567 = load ptr, ptr %ll42642, align 8
  %1568 = load i32, ptr %i, align 4
  %shr2643 = ashr i32 %1568, 1
  %idxprom2644 = sext i32 %shr2643 to i64
  %arrayidx2645 = getelementptr inbounds i8, ptr %1567, i64 %idxprom2644
  store i8 %conv2641, ptr %arrayidx2645, align 1
  br label %if.end2664

if.else2646:                                      ; preds = %for.body2613
  %1569 = load ptr, ptr %s.addr, align 8
  %ll42647 = getelementptr inbounds %struct.DState, ptr %1569, i64 0, i32 22
  %1570 = load ptr, ptr %ll42647, align 8
  %1571 = load i32, ptr %i, align 4
  %shr2648 = ashr i32 %1571, 1
  %idxprom2649 = sext i32 %shr2648 to i64
  %arrayidx2650 = getelementptr inbounds i8, ptr %1570, i64 %idxprom2649
  %1572 = load i8, ptr %arrayidx2650, align 1
  %1573 = and i8 %1572, 15
  %1574 = load ptr, ptr %s.addr, align 8
  %1575 = load i8, ptr %uc, align 1
  %idxprom2654 = zext i8 %1575 to i64
  %arrayidx2655 = getelementptr inbounds %struct.DState, ptr %1574, i64 0, i32 19, i64 %idxprom2654
  %1576 = load i32, ptr %arrayidx2655, align 4
  %1577 = lshr i32 %1576, 12
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, -16
  %conv2659 = or i8 %1579, %1573
  %1580 = load ptr, ptr %s.addr, align 8
  %ll42660 = getelementptr inbounds %struct.DState, ptr %1580, i64 0, i32 22
  %1581 = load ptr, ptr %ll42660, align 8
  %1582 = load i32, ptr %i, align 4
  %shr2661 = ashr i32 %1582, 1
  %idxprom2662 = sext i32 %shr2661 to i64
  %arrayidx2663 = getelementptr inbounds i8, ptr %1581, i64 %idxprom2662
  store i8 %conv2659, ptr %arrayidx2663, align 1
  br label %if.end2664

if.end2664:                                       ; preds = %if.else2646, %if.then2629
  %1583 = load ptr, ptr %s.addr, align 8
  %1584 = load i8, ptr %uc, align 1
  %idxprom2666 = zext i8 %1584 to i64
  %arrayidx2667 = getelementptr inbounds %struct.DState, ptr %1583, i64 0, i32 19, i64 %idxprom2666
  %1585 = load i32, ptr %arrayidx2667, align 4
  %inc2668 = add nsw i32 %1585, 1
  store i32 %inc2668, ptr %arrayidx2667, align 4
  %1586 = load i32, ptr %i, align 4
  %inc2670 = add nsw i32 %1586, 1
  br label %for.cond2610, !llvm.loop !35

for.end2671:                                      ; preds = %for.cond2610
  %1587 = load ptr, ptr %s.addr, align 8
  %origPtr2672 = getelementptr inbounds %struct.DState, ptr %1587, i64 0, i32 13
  %1588 = load i32, ptr %origPtr2672, align 8
  store i32 %1588, ptr %i, align 4
  %ll162673 = getelementptr inbounds %struct.DState, ptr %1587, i64 0, i32 21
  %1589 = load ptr, ptr %ll162673, align 8
  %idxprom2674 = sext i32 %1588 to i64
  %arrayidx2675 = getelementptr inbounds i16, ptr %1589, i64 %idxprom2674
  %1590 = load i16, ptr %arrayidx2675, align 2
  %conv2676 = zext i16 %1590 to i32
  %1591 = load ptr, ptr %s.addr, align 8
  %ll42677 = getelementptr inbounds %struct.DState, ptr %1591, i64 0, i32 22
  %1592 = load ptr, ptr %ll42677, align 8
  %1593 = load i32, ptr %i, align 4
  %shr2678 = ashr i32 %1593, 1
  %idxprom2679 = sext i32 %shr2678 to i64
  %arrayidx2680 = getelementptr inbounds i8, ptr %1592, i64 %idxprom2679
  %1594 = load i8, ptr %arrayidx2680, align 1
  %conv2681 = zext i8 %1594 to i32
  %shl2682 = shl i32 %1593, 2
  %and2683 = and i32 %shl2682, 4
  %shr2684 = lshr i32 %conv2681, %and2683
  %and2685 = shl nuw nsw i32 %shr2684, 16
  %shl2686 = and i32 %and2685, 983040
  %or2687 = or i32 %shl2686, %conv2676
  store i32 %or2687, ptr %j, align 4
  br label %do.body2688

do.body2688:                                      ; preds = %if.end2742, %for.end2671
  %1595 = load ptr, ptr %s.addr, align 8
  %ll162690 = getelementptr inbounds %struct.DState, ptr %1595, i64 0, i32 21
  %1596 = load ptr, ptr %ll162690, align 8
  %1597 = load i32, ptr %j, align 4
  %idxprom2691 = sext i32 %1597 to i64
  %arrayidx2692 = getelementptr inbounds i16, ptr %1596, i64 %idxprom2691
  %1598 = load i16, ptr %arrayidx2692, align 2
  %conv2693 = zext i16 %1598 to i32
  %1599 = load ptr, ptr %s.addr, align 8
  %ll42694 = getelementptr inbounds %struct.DState, ptr %1599, i64 0, i32 22
  %1600 = load ptr, ptr %ll42694, align 8
  %1601 = load i32, ptr %j, align 4
  %shr2695 = ashr i32 %1601, 1
  %idxprom2696 = sext i32 %shr2695 to i64
  %arrayidx2697 = getelementptr inbounds i8, ptr %1600, i64 %idxprom2696
  %1602 = load i8, ptr %arrayidx2697, align 1
  %conv2698 = zext i8 %1602 to i32
  %shl2699 = shl i32 %1601, 2
  %and2700 = and i32 %shl2699, 4
  %shr2701 = lshr i32 %conv2698, %and2700
  %and2702 = shl nuw nsw i32 %shr2701, 16
  %shl2703 = and i32 %and2702, 983040
  %or2704 = or i32 %shl2703, %conv2693
  store i32 %or2704, ptr %tmp2689, align 4
  %1603 = load i32, ptr %i, align 4
  %conv2706 = trunc i32 %1603 to i16
  %1604 = load ptr, ptr %s.addr, align 8
  %ll162707 = getelementptr inbounds %struct.DState, ptr %1604, i64 0, i32 21
  %1605 = load ptr, ptr %ll162707, align 8
  %1606 = load i32, ptr %j, align 4
  %idxprom2708 = sext i32 %1606 to i64
  %arrayidx2709 = getelementptr inbounds i16, ptr %1605, i64 %idxprom2708
  store i16 %conv2706, ptr %arrayidx2709, align 2
  %and2710 = and i32 %1606, 1
  %cmp2711 = icmp eq i32 %and2710, 0
  br i1 %cmp2711, label %if.then2713, label %if.else2727

if.then2713:                                      ; preds = %do.body2688
  %1607 = load ptr, ptr %s.addr, align 8
  %ll42714 = getelementptr inbounds %struct.DState, ptr %1607, i64 0, i32 22
  %1608 = load ptr, ptr %ll42714, align 8
  %1609 = load i32, ptr %j, align 4
  %shr2715 = ashr i32 %1609, 1
  %idxprom2716 = sext i32 %shr2715 to i64
  %arrayidx2717 = getelementptr inbounds i8, ptr %1608, i64 %idxprom2716
  %1610 = load i8, ptr %arrayidx2717, align 1
  %1611 = and i8 %1610, -16
  %1612 = load i32, ptr %i, align 4
  %1613 = lshr i32 %1612, 16
  %1614 = trunc i32 %1613 to i8
  %conv2722 = or i8 %1611, %1614
  %1615 = load ptr, ptr %s.addr, align 8
  %ll42723 = getelementptr inbounds %struct.DState, ptr %1615, i64 0, i32 22
  %1616 = load ptr, ptr %ll42723, align 8
  %1617 = load i32, ptr %j, align 4
  %shr2724 = ashr i32 %1617, 1
  %idxprom2725 = sext i32 %shr2724 to i64
  %arrayidx2726 = getelementptr inbounds i8, ptr %1616, i64 %idxprom2725
  store i8 %conv2722, ptr %arrayidx2726, align 1
  br label %if.end2742

if.else2727:                                      ; preds = %do.body2688
  %1618 = load ptr, ptr %s.addr, align 8
  %ll42728 = getelementptr inbounds %struct.DState, ptr %1618, i64 0, i32 22
  %1619 = load ptr, ptr %ll42728, align 8
  %1620 = load i32, ptr %j, align 4
  %shr2729 = ashr i32 %1620, 1
  %idxprom2730 = sext i32 %shr2729 to i64
  %arrayidx2731 = getelementptr inbounds i8, ptr %1619, i64 %idxprom2730
  %1621 = load i8, ptr %arrayidx2731, align 1
  %1622 = and i8 %1621, 15
  %1623 = load i32, ptr %i, align 4
  %1624 = lshr i32 %1623, 12
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, -16
  %conv2737 = or i8 %1626, %1622
  %1627 = load ptr, ptr %s.addr, align 8
  %ll42738 = getelementptr inbounds %struct.DState, ptr %1627, i64 0, i32 22
  %1628 = load ptr, ptr %ll42738, align 8
  %1629 = load i32, ptr %j, align 4
  %shr2739 = ashr i32 %1629, 1
  %idxprom2740 = sext i32 %shr2739 to i64
  %arrayidx2741 = getelementptr inbounds i8, ptr %1628, i64 %idxprom2740
  store i8 %conv2737, ptr %arrayidx2741, align 1
  br label %if.end2742

if.end2742:                                       ; preds = %if.else2727, %if.then2713
  %1630 = load i32, ptr %j, align 4
  store i32 %1630, ptr %i, align 4
  %1631 = load i32, ptr %tmp2689, align 4
  store i32 %1631, ptr %j, align 4
  %1632 = load i32, ptr %i, align 4
  %1633 = load ptr, ptr %s.addr, align 8
  %origPtr2744 = getelementptr inbounds %struct.DState, ptr %1633, i64 0, i32 13
  %1634 = load i32, ptr %origPtr2744, align 8
  %cmp2745.not = icmp eq i32 %1632, %1634
  br i1 %cmp2745.not, label %do.end2747, label %do.body2688, !llvm.loop !36

do.end2747:                                       ; preds = %if.end2742
  %1635 = load ptr, ptr %s.addr, align 8
  %origPtr2748 = getelementptr inbounds %struct.DState, ptr %1635, i64 0, i32 13
  %1636 = load i32, ptr %origPtr2748, align 8
  %tPos = getelementptr inbounds %struct.DState, ptr %1635, i64 0, i32 14
  store i32 %1636, ptr %tPos, align 4
  %nblock_used = getelementptr inbounds %struct.DState, ptr %1635, i64 0, i32 17
  store i32 0, ptr %nblock_used, align 4
  %1637 = load ptr, ptr %s.addr, align 8
  %blockRandomised2749 = getelementptr inbounds %struct.DState, ptr %1637, i64 0, i32 4
  %1638 = load i8, ptr %blockRandomised2749, align 4
  %tobool2750.not = icmp eq i8 %1638, 0
  br i1 %tobool2750.not, label %if.else2799, label %if.then2751

if.then2751:                                      ; preds = %do.end2747
  %1639 = load ptr, ptr %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, ptr %1639, i64 0, i32 5
  store i32 0, ptr %rNToGo, align 8
  %rTPos = getelementptr inbounds %struct.DState, ptr %1639, i64 0, i32 6
  store i32 0, ptr %rTPos, align 4
  %tPos2752 = getelementptr inbounds %struct.DState, ptr %1639, i64 0, i32 14
  %1640 = load i32, ptr %tPos2752, align 4
  %1641 = load ptr, ptr %s.addr, align 8
  %cftab2753 = getelementptr inbounds %struct.DState, ptr %1641, i64 0, i32 18
  %call2754 = call i32 @BZ2_indexIntoF(i32 noundef %1640, ptr noundef nonnull %cftab2753) #3
  %1642 = load ptr, ptr %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, ptr %1642, i64 0, i32 15
  store i32 %call2754, ptr %k0, align 8
  %ll162755 = getelementptr inbounds %struct.DState, ptr %1642, i64 0, i32 21
  %1643 = load ptr, ptr %ll162755, align 8
  %tPos2756 = getelementptr inbounds %struct.DState, ptr %1642, i64 0, i32 14
  %1644 = load i32, ptr %tPos2756, align 4
  %idxprom2757 = zext i32 %1644 to i64
  %arrayidx2758 = getelementptr inbounds i16, ptr %1643, i64 %idxprom2757
  %1645 = load i16, ptr %arrayidx2758, align 2
  %conv2759 = zext i16 %1645 to i32
  %1646 = load ptr, ptr %s.addr, align 8
  %ll42760 = getelementptr inbounds %struct.DState, ptr %1646, i64 0, i32 22
  %1647 = load ptr, ptr %ll42760, align 8
  %tPos2761 = getelementptr inbounds %struct.DState, ptr %1646, i64 0, i32 14
  %1648 = load i32, ptr %tPos2761, align 4
  %shr2762 = lshr i32 %1648, 1
  %idxprom2763 = zext i32 %shr2762 to i64
  %arrayidx2764 = getelementptr inbounds i8, ptr %1647, i64 %idxprom2763
  %1649 = load i8, ptr %arrayidx2764, align 1
  %conv2765 = zext i8 %1649 to i32
  %1650 = load ptr, ptr %s.addr, align 8
  %tPos2766 = getelementptr inbounds %struct.DState, ptr %1650, i64 0, i32 14
  %1651 = load i32, ptr %tPos2766, align 4
  %shl2767 = shl i32 %1651, 2
  %and2768 = and i32 %shl2767, 4
  %shr2769 = lshr i32 %conv2765, %and2768
  %and2770 = shl nuw nsw i32 %shr2769, 16
  %shl2771 = and i32 %and2770, 983040
  %or2772 = or i32 %shl2771, %conv2759
  %1652 = load ptr, ptr %s.addr, align 8
  %tPos2773 = getelementptr inbounds %struct.DState, ptr %1652, i64 0, i32 14
  store i32 %or2772, ptr %tPos2773, align 4
  %nblock_used2774 = getelementptr inbounds %struct.DState, ptr %1652, i64 0, i32 17
  %1653 = load i32, ptr %nblock_used2774, align 4
  %inc2775 = add nsw i32 %1653, 1
  store i32 %inc2775, ptr %nblock_used2774, align 4
  %1654 = load ptr, ptr %s.addr, align 8
  %rNToGo2776 = getelementptr inbounds %struct.DState, ptr %1654, i64 0, i32 5
  %1655 = load i32, ptr %rNToGo2776, align 8
  %cmp2777 = icmp eq i32 %1655, 0
  br i1 %cmp2777, label %if.then2779, label %if.end2792

if.then2779:                                      ; preds = %if.then2751
  %1656 = load ptr, ptr %s.addr, align 8
  %rTPos2780 = getelementptr inbounds %struct.DState, ptr %1656, i64 0, i32 6
  %1657 = load i32, ptr %rTPos2780, align 4
  %idxprom2781 = sext i32 %1657 to i64
  %arrayidx2782 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom2781
  %1658 = load i32, ptr %arrayidx2782, align 4
  %rNToGo2783 = getelementptr inbounds %struct.DState, ptr %1656, i64 0, i32 5
  store i32 %1658, ptr %rNToGo2783, align 8
  %1659 = load ptr, ptr %s.addr, align 8
  %rTPos2784 = getelementptr inbounds %struct.DState, ptr %1659, i64 0, i32 6
  %1660 = load i32, ptr %rTPos2784, align 4
  %inc2785 = add nsw i32 %1660, 1
  store i32 %inc2785, ptr %rTPos2784, align 4
  %cmp2787 = icmp eq i32 %inc2785, 512
  br i1 %cmp2787, label %if.then2789, label %if.end2792

if.then2789:                                      ; preds = %if.then2779
  %1661 = load ptr, ptr %s.addr, align 8
  %rTPos2790 = getelementptr inbounds %struct.DState, ptr %1661, i64 0, i32 6
  store i32 0, ptr %rTPos2790, align 4
  br label %if.end2792

if.end2792:                                       ; preds = %if.then2779, %if.then2789, %if.then2751
  %1662 = load ptr, ptr %s.addr, align 8
  %rNToGo2793 = getelementptr inbounds %struct.DState, ptr %1662, i64 0, i32 5
  %1663 = load i32, ptr %rNToGo2793, align 8
  %dec2794 = add nsw i32 %1663, -1
  store i32 %dec2794, ptr %rNToGo2793, align 8
  %cmp2796 = icmp eq i32 %dec2794, 1
  %cond = zext i1 %cmp2796 to i32
  %1664 = load ptr, ptr %s.addr, align 8
  %k02798 = getelementptr inbounds %struct.DState, ptr %1664, i64 0, i32 15
  %1665 = load i32, ptr %k02798, align 8
  %xor = xor i32 %1665, %cond
  store i32 %xor, ptr %k02798, align 8
  br label %if.end2919

if.else2799:                                      ; preds = %do.end2747
  %1666 = load ptr, ptr %s.addr, align 8
  %tPos2800 = getelementptr inbounds %struct.DState, ptr %1666, i64 0, i32 14
  %1667 = load i32, ptr %tPos2800, align 4
  %cftab2801 = getelementptr inbounds %struct.DState, ptr %1666, i64 0, i32 18
  %call2803 = call i32 @BZ2_indexIntoF(i32 noundef %1667, ptr noundef nonnull %cftab2801) #3
  %1668 = load ptr, ptr %s.addr, align 8
  %k02804 = getelementptr inbounds %struct.DState, ptr %1668, i64 0, i32 15
  store i32 %call2803, ptr %k02804, align 8
  %ll162805 = getelementptr inbounds %struct.DState, ptr %1668, i64 0, i32 21
  %1669 = load ptr, ptr %ll162805, align 8
  %tPos2806 = getelementptr inbounds %struct.DState, ptr %1668, i64 0, i32 14
  %1670 = load i32, ptr %tPos2806, align 4
  %idxprom2807 = zext i32 %1670 to i64
  %arrayidx2808 = getelementptr inbounds i16, ptr %1669, i64 %idxprom2807
  %1671 = load i16, ptr %arrayidx2808, align 2
  %conv2809 = zext i16 %1671 to i32
  %1672 = load ptr, ptr %s.addr, align 8
  %ll42810 = getelementptr inbounds %struct.DState, ptr %1672, i64 0, i32 22
  %1673 = load ptr, ptr %ll42810, align 8
  %tPos2811 = getelementptr inbounds %struct.DState, ptr %1672, i64 0, i32 14
  %1674 = load i32, ptr %tPos2811, align 4
  %shr2812 = lshr i32 %1674, 1
  %idxprom2813 = zext i32 %shr2812 to i64
  %arrayidx2814 = getelementptr inbounds i8, ptr %1673, i64 %idxprom2813
  %1675 = load i8, ptr %arrayidx2814, align 1
  %conv2815 = zext i8 %1675 to i32
  %1676 = load ptr, ptr %s.addr, align 8
  %tPos2816 = getelementptr inbounds %struct.DState, ptr %1676, i64 0, i32 14
  %1677 = load i32, ptr %tPos2816, align 4
  %shl2817 = shl i32 %1677, 2
  %and2818 = and i32 %shl2817, 4
  %shr2819 = lshr i32 %conv2815, %and2818
  %and2820 = shl nuw nsw i32 %shr2819, 16
  %shl2821 = and i32 %and2820, 983040
  %or2822 = or i32 %shl2821, %conv2809
  %1678 = load ptr, ptr %s.addr, align 8
  %tPos2823 = getelementptr inbounds %struct.DState, ptr %1678, i64 0, i32 14
  store i32 %or2822, ptr %tPos2823, align 4
  %nblock_used2824 = getelementptr inbounds %struct.DState, ptr %1678, i64 0, i32 17
  %1679 = load i32, ptr %nblock_used2824, align 4
  %inc2825 = add nsw i32 %1679, 1
  store i32 %inc2825, ptr %nblock_used2824, align 4
  br label %if.end2919

for.cond2828:                                     ; preds = %if.end2594, %for.body2831
  %storemerge7 = phi i32 [ %inc2850, %for.body2831 ], [ 0, %if.end2594 ]
  store i32 %storemerge7, ptr %i, align 4
  %1680 = load i32, ptr %nblock, align 4
  %cmp2829 = icmp slt i32 %storemerge7, %1680
  br i1 %cmp2829, label %for.body2831, label %for.end2851

for.body2831:                                     ; preds = %for.cond2828
  %1681 = load ptr, ptr %s.addr, align 8
  %tt2832 = getelementptr inbounds %struct.DState, ptr %1681, i64 0, i32 20
  %1682 = load ptr, ptr %tt2832, align 8
  %1683 = load i32, ptr %i, align 4
  %idxprom2833 = sext i32 %1683 to i64
  %arrayidx2834 = getelementptr inbounds i32, ptr %1682, i64 %idxprom2833
  %1684 = load i32, ptr %arrayidx2834, align 4
  %conv2836 = trunc i32 %1684 to i8
  store i8 %conv2836, ptr %uc, align 1
  %shl2837 = shl i32 %1683, 8
  %1685 = load ptr, ptr %s.addr, align 8
  %tt2838 = getelementptr inbounds %struct.DState, ptr %1685, i64 0, i32 20
  %1686 = load ptr, ptr %tt2838, align 8
  %conv2836.mask = and i32 %1684, 255
  %idxprom2840 = zext i32 %conv2836.mask to i64
  %arrayidx2841 = getelementptr inbounds %struct.DState, ptr %1685, i64 0, i32 18, i64 %idxprom2840
  %1687 = load i32, ptr %arrayidx2841, align 4
  %idxprom2842 = sext i32 %1687 to i64
  %arrayidx2843 = getelementptr inbounds i32, ptr %1686, i64 %idxprom2842
  %1688 = load i32, ptr %arrayidx2843, align 4
  %or2844 = or i32 %1688, %shl2837
  store i32 %or2844, ptr %arrayidx2843, align 4
  %1689 = load ptr, ptr %s.addr, align 8
  %1690 = load i8, ptr %uc, align 1
  %idxprom2846 = zext i8 %1690 to i64
  %arrayidx2847 = getelementptr inbounds %struct.DState, ptr %1689, i64 0, i32 18, i64 %idxprom2846
  %1691 = load i32, ptr %arrayidx2847, align 4
  %inc2848 = add nsw i32 %1691, 1
  store i32 %inc2848, ptr %arrayidx2847, align 4
  %1692 = load i32, ptr %i, align 4
  %inc2850 = add nsw i32 %1692, 1
  br label %for.cond2828, !llvm.loop !37

for.end2851:                                      ; preds = %for.cond2828
  %1693 = load ptr, ptr %s.addr, align 8
  %tt2852 = getelementptr inbounds %struct.DState, ptr %1693, i64 0, i32 20
  %1694 = load ptr, ptr %tt2852, align 8
  %origPtr2853 = getelementptr inbounds %struct.DState, ptr %1693, i64 0, i32 13
  %1695 = load i32, ptr %origPtr2853, align 8
  %idxprom2854 = sext i32 %1695 to i64
  %arrayidx2855 = getelementptr inbounds i32, ptr %1694, i64 %idxprom2854
  %1696 = load i32, ptr %arrayidx2855, align 4
  %shr2856 = lshr i32 %1696, 8
  %1697 = load ptr, ptr %s.addr, align 8
  %tPos2857 = getelementptr inbounds %struct.DState, ptr %1697, i64 0, i32 14
  store i32 %shr2856, ptr %tPos2857, align 4
  %nblock_used2858 = getelementptr inbounds %struct.DState, ptr %1697, i64 0, i32 17
  store i32 0, ptr %nblock_used2858, align 4
  %blockRandomised2859 = getelementptr inbounds %struct.DState, ptr %1697, i64 0, i32 4
  %1698 = load i8, ptr %blockRandomised2859, align 4
  %tobool2860.not = icmp eq i8 %1698, 0
  br i1 %tobool2860.not, label %if.else2903, label %if.then2861

if.then2861:                                      ; preds = %for.end2851
  %1699 = load ptr, ptr %s.addr, align 8
  %rNToGo2862 = getelementptr inbounds %struct.DState, ptr %1699, i64 0, i32 5
  store i32 0, ptr %rNToGo2862, align 8
  %rTPos2863 = getelementptr inbounds %struct.DState, ptr %1699, i64 0, i32 6
  store i32 0, ptr %rTPos2863, align 4
  %tt2864 = getelementptr inbounds %struct.DState, ptr %1699, i64 0, i32 20
  %1700 = load ptr, ptr %tt2864, align 8
  %1701 = load ptr, ptr %s.addr, align 8
  %tPos2865 = getelementptr inbounds %struct.DState, ptr %1701, i64 0, i32 14
  %1702 = load i32, ptr %tPos2865, align 4
  %idxprom2866 = zext i32 %1702 to i64
  %arrayidx2867 = getelementptr inbounds i32, ptr %1700, i64 %idxprom2866
  %1703 = load i32, ptr %arrayidx2867, align 4
  %tPos2868 = getelementptr inbounds %struct.DState, ptr %1701, i64 0, i32 14
  store i32 %1703, ptr %tPos2868, align 4
  %1704 = load ptr, ptr %s.addr, align 8
  %tPos2869 = getelementptr inbounds %struct.DState, ptr %1704, i64 0, i32 14
  %1705 = load i32, ptr %tPos2869, align 4
  %conv2872 = and i32 %1705, 255
  %k02873 = getelementptr inbounds %struct.DState, ptr %1704, i64 0, i32 15
  store i32 %conv2872, ptr %k02873, align 8
  %tPos2874 = getelementptr inbounds %struct.DState, ptr %1704, i64 0, i32 14
  %shr2875 = lshr i32 %1705, 8
  store i32 %shr2875, ptr %tPos2874, align 4
  %1706 = load ptr, ptr %s.addr, align 8
  %nblock_used2876 = getelementptr inbounds %struct.DState, ptr %1706, i64 0, i32 17
  %1707 = load i32, ptr %nblock_used2876, align 4
  %inc2877 = add nsw i32 %1707, 1
  store i32 %inc2877, ptr %nblock_used2876, align 4
  %rNToGo2878 = getelementptr inbounds %struct.DState, ptr %1706, i64 0, i32 5
  %1708 = load i32, ptr %rNToGo2878, align 8
  %cmp2879 = icmp eq i32 %1708, 0
  br i1 %cmp2879, label %if.then2881, label %if.end2894

if.then2881:                                      ; preds = %if.then2861
  %1709 = load ptr, ptr %s.addr, align 8
  %rTPos2882 = getelementptr inbounds %struct.DState, ptr %1709, i64 0, i32 6
  %1710 = load i32, ptr %rTPos2882, align 4
  %idxprom2883 = sext i32 %1710 to i64
  %arrayidx2884 = getelementptr inbounds [512 x i32], ptr @BZ2_rNums, i64 0, i64 %idxprom2883
  %1711 = load i32, ptr %arrayidx2884, align 4
  %rNToGo2885 = getelementptr inbounds %struct.DState, ptr %1709, i64 0, i32 5
  store i32 %1711, ptr %rNToGo2885, align 8
  %1712 = load ptr, ptr %s.addr, align 8
  %rTPos2886 = getelementptr inbounds %struct.DState, ptr %1712, i64 0, i32 6
  %1713 = load i32, ptr %rTPos2886, align 4
  %inc2887 = add nsw i32 %1713, 1
  store i32 %inc2887, ptr %rTPos2886, align 4
  %cmp2889 = icmp eq i32 %inc2887, 512
  br i1 %cmp2889, label %if.then2891, label %if.end2894

if.then2891:                                      ; preds = %if.then2881
  %1714 = load ptr, ptr %s.addr, align 8
  %rTPos2892 = getelementptr inbounds %struct.DState, ptr %1714, i64 0, i32 6
  store i32 0, ptr %rTPos2892, align 4
  br label %if.end2894

if.end2894:                                       ; preds = %if.then2881, %if.then2891, %if.then2861
  %1715 = load ptr, ptr %s.addr, align 8
  %rNToGo2895 = getelementptr inbounds %struct.DState, ptr %1715, i64 0, i32 5
  %1716 = load i32, ptr %rNToGo2895, align 8
  %dec2896 = add nsw i32 %1716, -1
  store i32 %dec2896, ptr %rNToGo2895, align 8
  %cmp2898 = icmp eq i32 %dec2896, 1
  %cond2900 = zext i1 %cmp2898 to i32
  %1717 = load ptr, ptr %s.addr, align 8
  %k02901 = getelementptr inbounds %struct.DState, ptr %1717, i64 0, i32 15
  %1718 = load i32, ptr %k02901, align 8
  %xor2902 = xor i32 %1718, %cond2900
  store i32 %xor2902, ptr %k02901, align 8
  br label %if.end2919

if.else2903:                                      ; preds = %for.end2851
  %1719 = load ptr, ptr %s.addr, align 8
  %tt2904 = getelementptr inbounds %struct.DState, ptr %1719, i64 0, i32 20
  %1720 = load ptr, ptr %tt2904, align 8
  %tPos2905 = getelementptr inbounds %struct.DState, ptr %1719, i64 0, i32 14
  %1721 = load i32, ptr %tPos2905, align 4
  %idxprom2906 = zext i32 %1721 to i64
  %arrayidx2907 = getelementptr inbounds i32, ptr %1720, i64 %idxprom2906
  %1722 = load i32, ptr %arrayidx2907, align 4
  %1723 = load ptr, ptr %s.addr, align 8
  %tPos2908 = getelementptr inbounds %struct.DState, ptr %1723, i64 0, i32 14
  store i32 %1722, ptr %tPos2908, align 4
  %conv2912 = and i32 %1722, 255
  %k02913 = getelementptr inbounds %struct.DState, ptr %1723, i64 0, i32 15
  store i32 %conv2912, ptr %k02913, align 8
  %tPos2914 = getelementptr inbounds %struct.DState, ptr %1723, i64 0, i32 14
  %shr2915 = lshr i32 %1722, 8
  store i32 %shr2915, ptr %tPos2914, align 4
  %1724 = load ptr, ptr %s.addr, align 8
  %nblock_used2916 = getelementptr inbounds %struct.DState, ptr %1724, i64 0, i32 17
  %1725 = load i32, ptr %nblock_used2916, align 4
  %inc2917 = add nsw i32 %1725, 1
  store i32 %inc2917, ptr %nblock_used2916, align 4
  br label %if.end2919

if.end2919:                                       ; preds = %if.end2894, %if.else2903, %if.end2792, %if.else2799
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb2920:                                        ; preds = %if.then278, %if.end
  %1726 = load ptr, ptr %s.addr, align 8
  %state2921 = getelementptr inbounds %struct.DState, ptr %1726, i64 0, i32 1
  store i32 42, ptr %state2921, align 8
  br label %while.body2923

while.body2923:                                   ; preds = %if.end2970, %sw.bb2920
  %1727 = load ptr, ptr %s.addr, align 8
  %bsLive2924 = getelementptr inbounds %struct.DState, ptr %1727, i64 0, i32 8
  %1728 = load i32, ptr %bsLive2924, align 4
  %cmp2925 = icmp sgt i32 %1728, 7
  br i1 %cmp2925, label %if.then2927, label %if.end2937

if.then2927:                                      ; preds = %while.body2923
  %1729 = load ptr, ptr %s.addr, align 8
  %bsBuff2929 = getelementptr inbounds %struct.DState, ptr %1729, i64 0, i32 7
  %1730 = load i32, ptr %bsBuff2929, align 8
  %bsLive2930 = getelementptr inbounds %struct.DState, ptr %1729, i64 0, i32 8
  %1731 = load i32, ptr %bsLive2930, align 4
  %sub2931 = add nsw i32 %1731, -8
  %shr2932 = lshr i32 %1730, %sub2931
  %1732 = load ptr, ptr %s.addr, align 8
  %bsLive2934 = getelementptr inbounds %struct.DState, ptr %1732, i64 0, i32 8
  %1733 = load i32, ptr %bsLive2934, align 4
  %sub2935 = add nsw i32 %1733, -8
  store i32 %sub2935, ptr %bsLive2934, align 4
  %conv2936 = trunc i32 %shr2932 to i8
  store i8 %conv2936, ptr %uc, align 1
  %1734 = load i8, ptr %uc, align 1
  %cmp2973.not = icmp eq i8 %1734, 114
  br i1 %cmp2973.not, label %sw.bb2977, label %if.then2975

if.end2937:                                       ; preds = %while.body2923
  %1735 = load ptr, ptr %s.addr, align 8
  %1736 = load ptr, ptr %1735, align 8
  %avail_in2939 = getelementptr inbounds %struct.bz_stream, ptr %1736, i64 0, i32 1
  %1737 = load i32, ptr %avail_in2939, align 8
  %cmp2940 = icmp eq i32 %1737, 0
  br i1 %cmp2940, label %if.then2942, label %if.end2943

if.then2942:                                      ; preds = %if.end2937
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end2943:                                       ; preds = %if.end2937
  %1738 = load ptr, ptr %s.addr, align 8
  %bsBuff2944 = getelementptr inbounds %struct.DState, ptr %1738, i64 0, i32 7
  %1739 = load i32, ptr %bsBuff2944, align 8
  %shl2945 = shl i32 %1739, 8
  %1740 = load ptr, ptr %1738, align 8
  %1741 = load ptr, ptr %1740, align 8
  %1742 = load i8, ptr %1741, align 1
  %conv2948 = zext i8 %1742 to i32
  %or2949 = or i32 %shl2945, %conv2948
  %1743 = load ptr, ptr %s.addr, align 8
  %bsBuff2950 = getelementptr inbounds %struct.DState, ptr %1743, i64 0, i32 7
  store i32 %or2949, ptr %bsBuff2950, align 8
  %bsLive2951 = getelementptr inbounds %struct.DState, ptr %1743, i64 0, i32 8
  %1744 = load i32, ptr %bsLive2951, align 4
  %add2952 = add nsw i32 %1744, 8
  store i32 %add2952, ptr %bsLive2951, align 4
  %1745 = load ptr, ptr %s.addr, align 8
  %1746 = load ptr, ptr %1745, align 8
  %1747 = load ptr, ptr %1746, align 8
  %incdec.ptr2955 = getelementptr inbounds i8, ptr %1747, i64 1
  store ptr %incdec.ptr2955, ptr %1746, align 8
  %1748 = load ptr, ptr %s.addr, align 8
  %1749 = load ptr, ptr %1748, align 8
  %avail_in2957 = getelementptr inbounds %struct.bz_stream, ptr %1749, i64 0, i32 1
  %1750 = load i32, ptr %avail_in2957, align 8
  %dec2958 = add i32 %1750, -1
  store i32 %dec2958, ptr %avail_in2957, align 8
  %1751 = load ptr, ptr %1748, align 8
  %total_in_lo322960 = getelementptr inbounds %struct.bz_stream, ptr %1751, i64 0, i32 2
  %1752 = load i32, ptr %total_in_lo322960, align 4
  %inc2961 = add i32 %1752, 1
  store i32 %inc2961, ptr %total_in_lo322960, align 4
  %1753 = load ptr, ptr %s.addr, align 8
  %1754 = load ptr, ptr %1753, align 8
  %total_in_lo322963 = getelementptr inbounds %struct.bz_stream, ptr %1754, i64 0, i32 2
  %1755 = load i32, ptr %total_in_lo322963, align 4
  %cmp2964 = icmp eq i32 %1755, 0
  br i1 %cmp2964, label %if.then2966, label %if.end2970

if.then2966:                                      ; preds = %if.end2943
  %1756 = load ptr, ptr %s.addr, align 8
  %1757 = load ptr, ptr %1756, align 8
  %total_in_hi322968 = getelementptr inbounds %struct.bz_stream, ptr %1757, i64 0, i32 3
  %1758 = load i32, ptr %total_in_hi322968, align 8
  %inc2969 = add i32 %1758, 1
  store i32 %inc2969, ptr %total_in_hi322968, align 8
  br label %if.end2970

if.end2970:                                       ; preds = %if.then2966, %if.end2943
  br label %while.body2923

if.then2975:                                      ; preds = %if.then2927
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb2977:                                        ; preds = %if.then2927, %if.end
  %1759 = load ptr, ptr %s.addr, align 8
  %state2978 = getelementptr inbounds %struct.DState, ptr %1759, i64 0, i32 1
  store i32 43, ptr %state2978, align 8
  br label %while.body2980

while.body2980:                                   ; preds = %if.end3027, %sw.bb2977
  %1760 = load ptr, ptr %s.addr, align 8
  %bsLive2981 = getelementptr inbounds %struct.DState, ptr %1760, i64 0, i32 8
  %1761 = load i32, ptr %bsLive2981, align 4
  %cmp2982 = icmp sgt i32 %1761, 7
  br i1 %cmp2982, label %if.then2984, label %if.end2994

if.then2984:                                      ; preds = %while.body2980
  %1762 = load ptr, ptr %s.addr, align 8
  %bsBuff2986 = getelementptr inbounds %struct.DState, ptr %1762, i64 0, i32 7
  %1763 = load i32, ptr %bsBuff2986, align 8
  %bsLive2987 = getelementptr inbounds %struct.DState, ptr %1762, i64 0, i32 8
  %1764 = load i32, ptr %bsLive2987, align 4
  %sub2988 = add nsw i32 %1764, -8
  %shr2989 = lshr i32 %1763, %sub2988
  %1765 = load ptr, ptr %s.addr, align 8
  %bsLive2991 = getelementptr inbounds %struct.DState, ptr %1765, i64 0, i32 8
  %1766 = load i32, ptr %bsLive2991, align 4
  %sub2992 = add nsw i32 %1766, -8
  store i32 %sub2992, ptr %bsLive2991, align 4
  %conv2993 = trunc i32 %shr2989 to i8
  store i8 %conv2993, ptr %uc, align 1
  %1767 = load i8, ptr %uc, align 1
  %cmp3030.not = icmp eq i8 %1767, 69
  br i1 %cmp3030.not, label %sw.bb3034, label %if.then3032

if.end2994:                                       ; preds = %while.body2980
  %1768 = load ptr, ptr %s.addr, align 8
  %1769 = load ptr, ptr %1768, align 8
  %avail_in2996 = getelementptr inbounds %struct.bz_stream, ptr %1769, i64 0, i32 1
  %1770 = load i32, ptr %avail_in2996, align 8
  %cmp2997 = icmp eq i32 %1770, 0
  br i1 %cmp2997, label %if.then2999, label %if.end3000

if.then2999:                                      ; preds = %if.end2994
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3000:                                       ; preds = %if.end2994
  %1771 = load ptr, ptr %s.addr, align 8
  %bsBuff3001 = getelementptr inbounds %struct.DState, ptr %1771, i64 0, i32 7
  %1772 = load i32, ptr %bsBuff3001, align 8
  %shl3002 = shl i32 %1772, 8
  %1773 = load ptr, ptr %1771, align 8
  %1774 = load ptr, ptr %1773, align 8
  %1775 = load i8, ptr %1774, align 1
  %conv3005 = zext i8 %1775 to i32
  %or3006 = or i32 %shl3002, %conv3005
  %1776 = load ptr, ptr %s.addr, align 8
  %bsBuff3007 = getelementptr inbounds %struct.DState, ptr %1776, i64 0, i32 7
  store i32 %or3006, ptr %bsBuff3007, align 8
  %bsLive3008 = getelementptr inbounds %struct.DState, ptr %1776, i64 0, i32 8
  %1777 = load i32, ptr %bsLive3008, align 4
  %add3009 = add nsw i32 %1777, 8
  store i32 %add3009, ptr %bsLive3008, align 4
  %1778 = load ptr, ptr %s.addr, align 8
  %1779 = load ptr, ptr %1778, align 8
  %1780 = load ptr, ptr %1779, align 8
  %incdec.ptr3012 = getelementptr inbounds i8, ptr %1780, i64 1
  store ptr %incdec.ptr3012, ptr %1779, align 8
  %1781 = load ptr, ptr %s.addr, align 8
  %1782 = load ptr, ptr %1781, align 8
  %avail_in3014 = getelementptr inbounds %struct.bz_stream, ptr %1782, i64 0, i32 1
  %1783 = load i32, ptr %avail_in3014, align 8
  %dec3015 = add i32 %1783, -1
  store i32 %dec3015, ptr %avail_in3014, align 8
  %1784 = load ptr, ptr %1781, align 8
  %total_in_lo323017 = getelementptr inbounds %struct.bz_stream, ptr %1784, i64 0, i32 2
  %1785 = load i32, ptr %total_in_lo323017, align 4
  %inc3018 = add i32 %1785, 1
  store i32 %inc3018, ptr %total_in_lo323017, align 4
  %1786 = load ptr, ptr %s.addr, align 8
  %1787 = load ptr, ptr %1786, align 8
  %total_in_lo323020 = getelementptr inbounds %struct.bz_stream, ptr %1787, i64 0, i32 2
  %1788 = load i32, ptr %total_in_lo323020, align 4
  %cmp3021 = icmp eq i32 %1788, 0
  br i1 %cmp3021, label %if.then3023, label %if.end3027

if.then3023:                                      ; preds = %if.end3000
  %1789 = load ptr, ptr %s.addr, align 8
  %1790 = load ptr, ptr %1789, align 8
  %total_in_hi323025 = getelementptr inbounds %struct.bz_stream, ptr %1790, i64 0, i32 3
  %1791 = load i32, ptr %total_in_hi323025, align 8
  %inc3026 = add i32 %1791, 1
  store i32 %inc3026, ptr %total_in_hi323025, align 8
  br label %if.end3027

if.end3027:                                       ; preds = %if.then3023, %if.end3000
  br label %while.body2980

if.then3032:                                      ; preds = %if.then2984
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb3034:                                        ; preds = %if.then2984, %if.end
  %1792 = load ptr, ptr %s.addr, align 8
  %state3035 = getelementptr inbounds %struct.DState, ptr %1792, i64 0, i32 1
  store i32 44, ptr %state3035, align 8
  br label %while.body3037

while.body3037:                                   ; preds = %if.end3084, %sw.bb3034
  %1793 = load ptr, ptr %s.addr, align 8
  %bsLive3038 = getelementptr inbounds %struct.DState, ptr %1793, i64 0, i32 8
  %1794 = load i32, ptr %bsLive3038, align 4
  %cmp3039 = icmp sgt i32 %1794, 7
  br i1 %cmp3039, label %if.then3041, label %if.end3051

if.then3041:                                      ; preds = %while.body3037
  %1795 = load ptr, ptr %s.addr, align 8
  %bsBuff3043 = getelementptr inbounds %struct.DState, ptr %1795, i64 0, i32 7
  %1796 = load i32, ptr %bsBuff3043, align 8
  %bsLive3044 = getelementptr inbounds %struct.DState, ptr %1795, i64 0, i32 8
  %1797 = load i32, ptr %bsLive3044, align 4
  %sub3045 = add nsw i32 %1797, -8
  %shr3046 = lshr i32 %1796, %sub3045
  %1798 = load ptr, ptr %s.addr, align 8
  %bsLive3048 = getelementptr inbounds %struct.DState, ptr %1798, i64 0, i32 8
  %1799 = load i32, ptr %bsLive3048, align 4
  %sub3049 = add nsw i32 %1799, -8
  store i32 %sub3049, ptr %bsLive3048, align 4
  %conv3050 = trunc i32 %shr3046 to i8
  store i8 %conv3050, ptr %uc, align 1
  %1800 = load i8, ptr %uc, align 1
  %cmp3087.not = icmp eq i8 %1800, 56
  br i1 %cmp3087.not, label %sw.bb3091, label %if.then3089

if.end3051:                                       ; preds = %while.body3037
  %1801 = load ptr, ptr %s.addr, align 8
  %1802 = load ptr, ptr %1801, align 8
  %avail_in3053 = getelementptr inbounds %struct.bz_stream, ptr %1802, i64 0, i32 1
  %1803 = load i32, ptr %avail_in3053, align 8
  %cmp3054 = icmp eq i32 %1803, 0
  br i1 %cmp3054, label %if.then3056, label %if.end3057

if.then3056:                                      ; preds = %if.end3051
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3057:                                       ; preds = %if.end3051
  %1804 = load ptr, ptr %s.addr, align 8
  %bsBuff3058 = getelementptr inbounds %struct.DState, ptr %1804, i64 0, i32 7
  %1805 = load i32, ptr %bsBuff3058, align 8
  %shl3059 = shl i32 %1805, 8
  %1806 = load ptr, ptr %1804, align 8
  %1807 = load ptr, ptr %1806, align 8
  %1808 = load i8, ptr %1807, align 1
  %conv3062 = zext i8 %1808 to i32
  %or3063 = or i32 %shl3059, %conv3062
  %1809 = load ptr, ptr %s.addr, align 8
  %bsBuff3064 = getelementptr inbounds %struct.DState, ptr %1809, i64 0, i32 7
  store i32 %or3063, ptr %bsBuff3064, align 8
  %bsLive3065 = getelementptr inbounds %struct.DState, ptr %1809, i64 0, i32 8
  %1810 = load i32, ptr %bsLive3065, align 4
  %add3066 = add nsw i32 %1810, 8
  store i32 %add3066, ptr %bsLive3065, align 4
  %1811 = load ptr, ptr %s.addr, align 8
  %1812 = load ptr, ptr %1811, align 8
  %1813 = load ptr, ptr %1812, align 8
  %incdec.ptr3069 = getelementptr inbounds i8, ptr %1813, i64 1
  store ptr %incdec.ptr3069, ptr %1812, align 8
  %1814 = load ptr, ptr %s.addr, align 8
  %1815 = load ptr, ptr %1814, align 8
  %avail_in3071 = getelementptr inbounds %struct.bz_stream, ptr %1815, i64 0, i32 1
  %1816 = load i32, ptr %avail_in3071, align 8
  %dec3072 = add i32 %1816, -1
  store i32 %dec3072, ptr %avail_in3071, align 8
  %1817 = load ptr, ptr %1814, align 8
  %total_in_lo323074 = getelementptr inbounds %struct.bz_stream, ptr %1817, i64 0, i32 2
  %1818 = load i32, ptr %total_in_lo323074, align 4
  %inc3075 = add i32 %1818, 1
  store i32 %inc3075, ptr %total_in_lo323074, align 4
  %1819 = load ptr, ptr %s.addr, align 8
  %1820 = load ptr, ptr %1819, align 8
  %total_in_lo323077 = getelementptr inbounds %struct.bz_stream, ptr %1820, i64 0, i32 2
  %1821 = load i32, ptr %total_in_lo323077, align 4
  %cmp3078 = icmp eq i32 %1821, 0
  br i1 %cmp3078, label %if.then3080, label %if.end3084

if.then3080:                                      ; preds = %if.end3057
  %1822 = load ptr, ptr %s.addr, align 8
  %1823 = load ptr, ptr %1822, align 8
  %total_in_hi323082 = getelementptr inbounds %struct.bz_stream, ptr %1823, i64 0, i32 3
  %1824 = load i32, ptr %total_in_hi323082, align 8
  %inc3083 = add i32 %1824, 1
  store i32 %inc3083, ptr %total_in_hi323082, align 8
  br label %if.end3084

if.end3084:                                       ; preds = %if.then3080, %if.end3057
  br label %while.body3037

if.then3089:                                      ; preds = %if.then3041
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb3091:                                        ; preds = %if.then3041, %if.end
  %1825 = load ptr, ptr %s.addr, align 8
  %state3092 = getelementptr inbounds %struct.DState, ptr %1825, i64 0, i32 1
  store i32 45, ptr %state3092, align 8
  br label %while.body3094

while.body3094:                                   ; preds = %if.end3141, %sw.bb3091
  %1826 = load ptr, ptr %s.addr, align 8
  %bsLive3095 = getelementptr inbounds %struct.DState, ptr %1826, i64 0, i32 8
  %1827 = load i32, ptr %bsLive3095, align 4
  %cmp3096 = icmp sgt i32 %1827, 7
  br i1 %cmp3096, label %if.then3098, label %if.end3108

if.then3098:                                      ; preds = %while.body3094
  %1828 = load ptr, ptr %s.addr, align 8
  %bsBuff3100 = getelementptr inbounds %struct.DState, ptr %1828, i64 0, i32 7
  %1829 = load i32, ptr %bsBuff3100, align 8
  %bsLive3101 = getelementptr inbounds %struct.DState, ptr %1828, i64 0, i32 8
  %1830 = load i32, ptr %bsLive3101, align 4
  %sub3102 = add nsw i32 %1830, -8
  %shr3103 = lshr i32 %1829, %sub3102
  %1831 = load ptr, ptr %s.addr, align 8
  %bsLive3105 = getelementptr inbounds %struct.DState, ptr %1831, i64 0, i32 8
  %1832 = load i32, ptr %bsLive3105, align 4
  %sub3106 = add nsw i32 %1832, -8
  store i32 %sub3106, ptr %bsLive3105, align 4
  %conv3107 = trunc i32 %shr3103 to i8
  store i8 %conv3107, ptr %uc, align 1
  %1833 = load i8, ptr %uc, align 1
  %cmp3144.not = icmp eq i8 %1833, 80
  br i1 %cmp3144.not, label %sw.bb3148, label %if.then3146

if.end3108:                                       ; preds = %while.body3094
  %1834 = load ptr, ptr %s.addr, align 8
  %1835 = load ptr, ptr %1834, align 8
  %avail_in3110 = getelementptr inbounds %struct.bz_stream, ptr %1835, i64 0, i32 1
  %1836 = load i32, ptr %avail_in3110, align 8
  %cmp3111 = icmp eq i32 %1836, 0
  br i1 %cmp3111, label %if.then3113, label %if.end3114

if.then3113:                                      ; preds = %if.end3108
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3114:                                       ; preds = %if.end3108
  %1837 = load ptr, ptr %s.addr, align 8
  %bsBuff3115 = getelementptr inbounds %struct.DState, ptr %1837, i64 0, i32 7
  %1838 = load i32, ptr %bsBuff3115, align 8
  %shl3116 = shl i32 %1838, 8
  %1839 = load ptr, ptr %1837, align 8
  %1840 = load ptr, ptr %1839, align 8
  %1841 = load i8, ptr %1840, align 1
  %conv3119 = zext i8 %1841 to i32
  %or3120 = or i32 %shl3116, %conv3119
  %1842 = load ptr, ptr %s.addr, align 8
  %bsBuff3121 = getelementptr inbounds %struct.DState, ptr %1842, i64 0, i32 7
  store i32 %or3120, ptr %bsBuff3121, align 8
  %bsLive3122 = getelementptr inbounds %struct.DState, ptr %1842, i64 0, i32 8
  %1843 = load i32, ptr %bsLive3122, align 4
  %add3123 = add nsw i32 %1843, 8
  store i32 %add3123, ptr %bsLive3122, align 4
  %1844 = load ptr, ptr %s.addr, align 8
  %1845 = load ptr, ptr %1844, align 8
  %1846 = load ptr, ptr %1845, align 8
  %incdec.ptr3126 = getelementptr inbounds i8, ptr %1846, i64 1
  store ptr %incdec.ptr3126, ptr %1845, align 8
  %1847 = load ptr, ptr %s.addr, align 8
  %1848 = load ptr, ptr %1847, align 8
  %avail_in3128 = getelementptr inbounds %struct.bz_stream, ptr %1848, i64 0, i32 1
  %1849 = load i32, ptr %avail_in3128, align 8
  %dec3129 = add i32 %1849, -1
  store i32 %dec3129, ptr %avail_in3128, align 8
  %1850 = load ptr, ptr %1847, align 8
  %total_in_lo323131 = getelementptr inbounds %struct.bz_stream, ptr %1850, i64 0, i32 2
  %1851 = load i32, ptr %total_in_lo323131, align 4
  %inc3132 = add i32 %1851, 1
  store i32 %inc3132, ptr %total_in_lo323131, align 4
  %1852 = load ptr, ptr %s.addr, align 8
  %1853 = load ptr, ptr %1852, align 8
  %total_in_lo323134 = getelementptr inbounds %struct.bz_stream, ptr %1853, i64 0, i32 2
  %1854 = load i32, ptr %total_in_lo323134, align 4
  %cmp3135 = icmp eq i32 %1854, 0
  br i1 %cmp3135, label %if.then3137, label %if.end3141

if.then3137:                                      ; preds = %if.end3114
  %1855 = load ptr, ptr %s.addr, align 8
  %1856 = load ptr, ptr %1855, align 8
  %total_in_hi323139 = getelementptr inbounds %struct.bz_stream, ptr %1856, i64 0, i32 3
  %1857 = load i32, ptr %total_in_hi323139, align 8
  %inc3140 = add i32 %1857, 1
  store i32 %inc3140, ptr %total_in_hi323139, align 8
  br label %if.end3141

if.end3141:                                       ; preds = %if.then3137, %if.end3114
  br label %while.body3094

if.then3146:                                      ; preds = %if.then3098
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

sw.bb3148:                                        ; preds = %if.then3098, %if.end
  %1858 = load ptr, ptr %s.addr, align 8
  %state3149 = getelementptr inbounds %struct.DState, ptr %1858, i64 0, i32 1
  store i32 46, ptr %state3149, align 8
  br label %while.body3151

while.body3151:                                   ; preds = %if.end3198, %sw.bb3148
  %1859 = load ptr, ptr %s.addr, align 8
  %bsLive3152 = getelementptr inbounds %struct.DState, ptr %1859, i64 0, i32 8
  %1860 = load i32, ptr %bsLive3152, align 4
  %cmp3153 = icmp sgt i32 %1860, 7
  br i1 %cmp3153, label %if.then3155, label %if.end3165

if.then3155:                                      ; preds = %while.body3151
  %1861 = load ptr, ptr %s.addr, align 8
  %bsBuff3157 = getelementptr inbounds %struct.DState, ptr %1861, i64 0, i32 7
  %1862 = load i32, ptr %bsBuff3157, align 8
  %bsLive3158 = getelementptr inbounds %struct.DState, ptr %1861, i64 0, i32 8
  %1863 = load i32, ptr %bsLive3158, align 4
  %sub3159 = add nsw i32 %1863, -8
  %shr3160 = lshr i32 %1862, %sub3159
  %1864 = load ptr, ptr %s.addr, align 8
  %bsLive3162 = getelementptr inbounds %struct.DState, ptr %1864, i64 0, i32 8
  %1865 = load i32, ptr %bsLive3162, align 4
  %sub3163 = add nsw i32 %1865, -8
  store i32 %sub3163, ptr %bsLive3162, align 4
  %conv3164 = trunc i32 %shr3160 to i8
  store i8 %conv3164, ptr %uc, align 1
  %1866 = load i8, ptr %uc, align 1
  %cmp3201.not = icmp eq i8 %1866, -112
  br i1 %cmp3201.not, label %if.end3204, label %if.then3203

if.end3165:                                       ; preds = %while.body3151
  %1867 = load ptr, ptr %s.addr, align 8
  %1868 = load ptr, ptr %1867, align 8
  %avail_in3167 = getelementptr inbounds %struct.bz_stream, ptr %1868, i64 0, i32 1
  %1869 = load i32, ptr %avail_in3167, align 8
  %cmp3168 = icmp eq i32 %1869, 0
  br i1 %cmp3168, label %if.then3170, label %if.end3171

if.then3170:                                      ; preds = %if.end3165
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3171:                                       ; preds = %if.end3165
  %1870 = load ptr, ptr %s.addr, align 8
  %bsBuff3172 = getelementptr inbounds %struct.DState, ptr %1870, i64 0, i32 7
  %1871 = load i32, ptr %bsBuff3172, align 8
  %shl3173 = shl i32 %1871, 8
  %1872 = load ptr, ptr %1870, align 8
  %1873 = load ptr, ptr %1872, align 8
  %1874 = load i8, ptr %1873, align 1
  %conv3176 = zext i8 %1874 to i32
  %or3177 = or i32 %shl3173, %conv3176
  %1875 = load ptr, ptr %s.addr, align 8
  %bsBuff3178 = getelementptr inbounds %struct.DState, ptr %1875, i64 0, i32 7
  store i32 %or3177, ptr %bsBuff3178, align 8
  %bsLive3179 = getelementptr inbounds %struct.DState, ptr %1875, i64 0, i32 8
  %1876 = load i32, ptr %bsLive3179, align 4
  %add3180 = add nsw i32 %1876, 8
  store i32 %add3180, ptr %bsLive3179, align 4
  %1877 = load ptr, ptr %s.addr, align 8
  %1878 = load ptr, ptr %1877, align 8
  %1879 = load ptr, ptr %1878, align 8
  %incdec.ptr3183 = getelementptr inbounds i8, ptr %1879, i64 1
  store ptr %incdec.ptr3183, ptr %1878, align 8
  %1880 = load ptr, ptr %s.addr, align 8
  %1881 = load ptr, ptr %1880, align 8
  %avail_in3185 = getelementptr inbounds %struct.bz_stream, ptr %1881, i64 0, i32 1
  %1882 = load i32, ptr %avail_in3185, align 8
  %dec3186 = add i32 %1882, -1
  store i32 %dec3186, ptr %avail_in3185, align 8
  %1883 = load ptr, ptr %1880, align 8
  %total_in_lo323188 = getelementptr inbounds %struct.bz_stream, ptr %1883, i64 0, i32 2
  %1884 = load i32, ptr %total_in_lo323188, align 4
  %inc3189 = add i32 %1884, 1
  store i32 %inc3189, ptr %total_in_lo323188, align 4
  %1885 = load ptr, ptr %s.addr, align 8
  %1886 = load ptr, ptr %1885, align 8
  %total_in_lo323191 = getelementptr inbounds %struct.bz_stream, ptr %1886, i64 0, i32 2
  %1887 = load i32, ptr %total_in_lo323191, align 4
  %cmp3192 = icmp eq i32 %1887, 0
  br i1 %cmp3192, label %if.then3194, label %if.end3198

if.then3194:                                      ; preds = %if.end3171
  %1888 = load ptr, ptr %s.addr, align 8
  %1889 = load ptr, ptr %1888, align 8
  %total_in_hi323196 = getelementptr inbounds %struct.bz_stream, ptr %1889, i64 0, i32 3
  %1890 = load i32, ptr %total_in_hi323196, align 8
  %inc3197 = add i32 %1890, 1
  store i32 %inc3197, ptr %total_in_hi323196, align 8
  br label %if.end3198

if.end3198:                                       ; preds = %if.then3194, %if.end3171
  br label %while.body3151

if.then3203:                                      ; preds = %if.then3155
  store i32 -4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3204:                                       ; preds = %if.then3155
  %1891 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, ptr %1891, i64 0, i32 24
  store i32 0, ptr %storedCombinedCRC, align 4
  br label %sw.bb3205

sw.bb3205:                                        ; preds = %if.end3204, %if.end
  %1892 = load ptr, ptr %s.addr, align 8
  %state3206 = getelementptr inbounds %struct.DState, ptr %1892, i64 0, i32 1
  store i32 47, ptr %state3206, align 8
  br label %while.body3208

while.body3208:                                   ; preds = %if.end3255, %sw.bb3205
  %1893 = load ptr, ptr %s.addr, align 8
  %bsLive3209 = getelementptr inbounds %struct.DState, ptr %1893, i64 0, i32 8
  %1894 = load i32, ptr %bsLive3209, align 4
  %cmp3210 = icmp sgt i32 %1894, 7
  br i1 %cmp3210, label %if.then3212, label %if.end3222

if.then3212:                                      ; preds = %while.body3208
  %1895 = load ptr, ptr %s.addr, align 8
  %bsBuff3214 = getelementptr inbounds %struct.DState, ptr %1895, i64 0, i32 7
  %1896 = load i32, ptr %bsBuff3214, align 8
  %bsLive3215 = getelementptr inbounds %struct.DState, ptr %1895, i64 0, i32 8
  %1897 = load i32, ptr %bsLive3215, align 4
  %sub3216 = add nsw i32 %1897, -8
  %shr3217 = lshr i32 %1896, %sub3216
  %1898 = load ptr, ptr %s.addr, align 8
  %bsLive3219 = getelementptr inbounds %struct.DState, ptr %1898, i64 0, i32 8
  %1899 = load i32, ptr %bsLive3219, align 4
  %sub3220 = add nsw i32 %1899, -8
  store i32 %sub3220, ptr %bsLive3219, align 4
  %conv3221 = trunc i32 %shr3217 to i8
  store i8 %conv3221, ptr %uc, align 1
  %1900 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3257 = getelementptr inbounds %struct.DState, ptr %1900, i64 0, i32 24
  %1901 = load i32, ptr %storedCombinedCRC3257, align 4
  %shl3258 = shl i32 %1901, 8
  %1902 = load i8, ptr %uc, align 1
  %conv3259 = zext i8 %1902 to i32
  %or3260 = or i32 %shl3258, %conv3259
  %1903 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3261 = getelementptr inbounds %struct.DState, ptr %1903, i64 0, i32 24
  store i32 %or3260, ptr %storedCombinedCRC3261, align 4
  br label %sw.bb3262

if.end3222:                                       ; preds = %while.body3208
  %1904 = load ptr, ptr %s.addr, align 8
  %1905 = load ptr, ptr %1904, align 8
  %avail_in3224 = getelementptr inbounds %struct.bz_stream, ptr %1905, i64 0, i32 1
  %1906 = load i32, ptr %avail_in3224, align 8
  %cmp3225 = icmp eq i32 %1906, 0
  br i1 %cmp3225, label %if.then3227, label %if.end3228

if.then3227:                                      ; preds = %if.end3222
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3228:                                       ; preds = %if.end3222
  %1907 = load ptr, ptr %s.addr, align 8
  %bsBuff3229 = getelementptr inbounds %struct.DState, ptr %1907, i64 0, i32 7
  %1908 = load i32, ptr %bsBuff3229, align 8
  %shl3230 = shl i32 %1908, 8
  %1909 = load ptr, ptr %1907, align 8
  %1910 = load ptr, ptr %1909, align 8
  %1911 = load i8, ptr %1910, align 1
  %conv3233 = zext i8 %1911 to i32
  %or3234 = or i32 %shl3230, %conv3233
  %1912 = load ptr, ptr %s.addr, align 8
  %bsBuff3235 = getelementptr inbounds %struct.DState, ptr %1912, i64 0, i32 7
  store i32 %or3234, ptr %bsBuff3235, align 8
  %bsLive3236 = getelementptr inbounds %struct.DState, ptr %1912, i64 0, i32 8
  %1913 = load i32, ptr %bsLive3236, align 4
  %add3237 = add nsw i32 %1913, 8
  store i32 %add3237, ptr %bsLive3236, align 4
  %1914 = load ptr, ptr %s.addr, align 8
  %1915 = load ptr, ptr %1914, align 8
  %1916 = load ptr, ptr %1915, align 8
  %incdec.ptr3240 = getelementptr inbounds i8, ptr %1916, i64 1
  store ptr %incdec.ptr3240, ptr %1915, align 8
  %1917 = load ptr, ptr %s.addr, align 8
  %1918 = load ptr, ptr %1917, align 8
  %avail_in3242 = getelementptr inbounds %struct.bz_stream, ptr %1918, i64 0, i32 1
  %1919 = load i32, ptr %avail_in3242, align 8
  %dec3243 = add i32 %1919, -1
  store i32 %dec3243, ptr %avail_in3242, align 8
  %1920 = load ptr, ptr %1917, align 8
  %total_in_lo323245 = getelementptr inbounds %struct.bz_stream, ptr %1920, i64 0, i32 2
  %1921 = load i32, ptr %total_in_lo323245, align 4
  %inc3246 = add i32 %1921, 1
  store i32 %inc3246, ptr %total_in_lo323245, align 4
  %1922 = load ptr, ptr %s.addr, align 8
  %1923 = load ptr, ptr %1922, align 8
  %total_in_lo323248 = getelementptr inbounds %struct.bz_stream, ptr %1923, i64 0, i32 2
  %1924 = load i32, ptr %total_in_lo323248, align 4
  %cmp3249 = icmp eq i32 %1924, 0
  br i1 %cmp3249, label %if.then3251, label %if.end3255

if.then3251:                                      ; preds = %if.end3228
  %1925 = load ptr, ptr %s.addr, align 8
  %1926 = load ptr, ptr %1925, align 8
  %total_in_hi323253 = getelementptr inbounds %struct.bz_stream, ptr %1926, i64 0, i32 3
  %1927 = load i32, ptr %total_in_hi323253, align 8
  %inc3254 = add i32 %1927, 1
  store i32 %inc3254, ptr %total_in_hi323253, align 8
  br label %if.end3255

if.end3255:                                       ; preds = %if.then3251, %if.end3228
  br label %while.body3208

sw.bb3262:                                        ; preds = %if.then3212, %if.end
  %1928 = load ptr, ptr %s.addr, align 8
  %state3263 = getelementptr inbounds %struct.DState, ptr %1928, i64 0, i32 1
  store i32 48, ptr %state3263, align 8
  br label %while.body3265

while.body3265:                                   ; preds = %if.end3312, %sw.bb3262
  %1929 = load ptr, ptr %s.addr, align 8
  %bsLive3266 = getelementptr inbounds %struct.DState, ptr %1929, i64 0, i32 8
  %1930 = load i32, ptr %bsLive3266, align 4
  %cmp3267 = icmp sgt i32 %1930, 7
  br i1 %cmp3267, label %if.then3269, label %if.end3279

if.then3269:                                      ; preds = %while.body3265
  %1931 = load ptr, ptr %s.addr, align 8
  %bsBuff3271 = getelementptr inbounds %struct.DState, ptr %1931, i64 0, i32 7
  %1932 = load i32, ptr %bsBuff3271, align 8
  %bsLive3272 = getelementptr inbounds %struct.DState, ptr %1931, i64 0, i32 8
  %1933 = load i32, ptr %bsLive3272, align 4
  %sub3273 = add nsw i32 %1933, -8
  %shr3274 = lshr i32 %1932, %sub3273
  %1934 = load ptr, ptr %s.addr, align 8
  %bsLive3276 = getelementptr inbounds %struct.DState, ptr %1934, i64 0, i32 8
  %1935 = load i32, ptr %bsLive3276, align 4
  %sub3277 = add nsw i32 %1935, -8
  store i32 %sub3277, ptr %bsLive3276, align 4
  %conv3278 = trunc i32 %shr3274 to i8
  store i8 %conv3278, ptr %uc, align 1
  %1936 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3314 = getelementptr inbounds %struct.DState, ptr %1936, i64 0, i32 24
  %1937 = load i32, ptr %storedCombinedCRC3314, align 4
  %shl3315 = shl i32 %1937, 8
  %1938 = load i8, ptr %uc, align 1
  %conv3316 = zext i8 %1938 to i32
  %or3317 = or i32 %shl3315, %conv3316
  %1939 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3318 = getelementptr inbounds %struct.DState, ptr %1939, i64 0, i32 24
  store i32 %or3317, ptr %storedCombinedCRC3318, align 4
  br label %sw.bb3319

if.end3279:                                       ; preds = %while.body3265
  %1940 = load ptr, ptr %s.addr, align 8
  %1941 = load ptr, ptr %1940, align 8
  %avail_in3281 = getelementptr inbounds %struct.bz_stream, ptr %1941, i64 0, i32 1
  %1942 = load i32, ptr %avail_in3281, align 8
  %cmp3282 = icmp eq i32 %1942, 0
  br i1 %cmp3282, label %if.then3284, label %if.end3285

if.then3284:                                      ; preds = %if.end3279
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3285:                                       ; preds = %if.end3279
  %1943 = load ptr, ptr %s.addr, align 8
  %bsBuff3286 = getelementptr inbounds %struct.DState, ptr %1943, i64 0, i32 7
  %1944 = load i32, ptr %bsBuff3286, align 8
  %shl3287 = shl i32 %1944, 8
  %1945 = load ptr, ptr %1943, align 8
  %1946 = load ptr, ptr %1945, align 8
  %1947 = load i8, ptr %1946, align 1
  %conv3290 = zext i8 %1947 to i32
  %or3291 = or i32 %shl3287, %conv3290
  %1948 = load ptr, ptr %s.addr, align 8
  %bsBuff3292 = getelementptr inbounds %struct.DState, ptr %1948, i64 0, i32 7
  store i32 %or3291, ptr %bsBuff3292, align 8
  %bsLive3293 = getelementptr inbounds %struct.DState, ptr %1948, i64 0, i32 8
  %1949 = load i32, ptr %bsLive3293, align 4
  %add3294 = add nsw i32 %1949, 8
  store i32 %add3294, ptr %bsLive3293, align 4
  %1950 = load ptr, ptr %s.addr, align 8
  %1951 = load ptr, ptr %1950, align 8
  %1952 = load ptr, ptr %1951, align 8
  %incdec.ptr3297 = getelementptr inbounds i8, ptr %1952, i64 1
  store ptr %incdec.ptr3297, ptr %1951, align 8
  %1953 = load ptr, ptr %s.addr, align 8
  %1954 = load ptr, ptr %1953, align 8
  %avail_in3299 = getelementptr inbounds %struct.bz_stream, ptr %1954, i64 0, i32 1
  %1955 = load i32, ptr %avail_in3299, align 8
  %dec3300 = add i32 %1955, -1
  store i32 %dec3300, ptr %avail_in3299, align 8
  %1956 = load ptr, ptr %1953, align 8
  %total_in_lo323302 = getelementptr inbounds %struct.bz_stream, ptr %1956, i64 0, i32 2
  %1957 = load i32, ptr %total_in_lo323302, align 4
  %inc3303 = add i32 %1957, 1
  store i32 %inc3303, ptr %total_in_lo323302, align 4
  %1958 = load ptr, ptr %s.addr, align 8
  %1959 = load ptr, ptr %1958, align 8
  %total_in_lo323305 = getelementptr inbounds %struct.bz_stream, ptr %1959, i64 0, i32 2
  %1960 = load i32, ptr %total_in_lo323305, align 4
  %cmp3306 = icmp eq i32 %1960, 0
  br i1 %cmp3306, label %if.then3308, label %if.end3312

if.then3308:                                      ; preds = %if.end3285
  %1961 = load ptr, ptr %s.addr, align 8
  %1962 = load ptr, ptr %1961, align 8
  %total_in_hi323310 = getelementptr inbounds %struct.bz_stream, ptr %1962, i64 0, i32 3
  %1963 = load i32, ptr %total_in_hi323310, align 8
  %inc3311 = add i32 %1963, 1
  store i32 %inc3311, ptr %total_in_hi323310, align 8
  br label %if.end3312

if.end3312:                                       ; preds = %if.then3308, %if.end3285
  br label %while.body3265

sw.bb3319:                                        ; preds = %if.then3269, %if.end
  %1964 = load ptr, ptr %s.addr, align 8
  %state3320 = getelementptr inbounds %struct.DState, ptr %1964, i64 0, i32 1
  store i32 49, ptr %state3320, align 8
  br label %while.body3322

while.body3322:                                   ; preds = %if.end3369, %sw.bb3319
  %1965 = load ptr, ptr %s.addr, align 8
  %bsLive3323 = getelementptr inbounds %struct.DState, ptr %1965, i64 0, i32 8
  %1966 = load i32, ptr %bsLive3323, align 4
  %cmp3324 = icmp sgt i32 %1966, 7
  br i1 %cmp3324, label %if.then3326, label %if.end3336

if.then3326:                                      ; preds = %while.body3322
  %1967 = load ptr, ptr %s.addr, align 8
  %bsBuff3328 = getelementptr inbounds %struct.DState, ptr %1967, i64 0, i32 7
  %1968 = load i32, ptr %bsBuff3328, align 8
  %bsLive3329 = getelementptr inbounds %struct.DState, ptr %1967, i64 0, i32 8
  %1969 = load i32, ptr %bsLive3329, align 4
  %sub3330 = add nsw i32 %1969, -8
  %shr3331 = lshr i32 %1968, %sub3330
  %1970 = load ptr, ptr %s.addr, align 8
  %bsLive3333 = getelementptr inbounds %struct.DState, ptr %1970, i64 0, i32 8
  %1971 = load i32, ptr %bsLive3333, align 4
  %sub3334 = add nsw i32 %1971, -8
  store i32 %sub3334, ptr %bsLive3333, align 4
  %conv3335 = trunc i32 %shr3331 to i8
  store i8 %conv3335, ptr %uc, align 1
  %1972 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3371 = getelementptr inbounds %struct.DState, ptr %1972, i64 0, i32 24
  %1973 = load i32, ptr %storedCombinedCRC3371, align 4
  %shl3372 = shl i32 %1973, 8
  %1974 = load i8, ptr %uc, align 1
  %conv3373 = zext i8 %1974 to i32
  %or3374 = or i32 %shl3372, %conv3373
  %1975 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3375 = getelementptr inbounds %struct.DState, ptr %1975, i64 0, i32 24
  store i32 %or3374, ptr %storedCombinedCRC3375, align 4
  br label %sw.bb3376

if.end3336:                                       ; preds = %while.body3322
  %1976 = load ptr, ptr %s.addr, align 8
  %1977 = load ptr, ptr %1976, align 8
  %avail_in3338 = getelementptr inbounds %struct.bz_stream, ptr %1977, i64 0, i32 1
  %1978 = load i32, ptr %avail_in3338, align 8
  %cmp3339 = icmp eq i32 %1978, 0
  br i1 %cmp3339, label %if.then3341, label %if.end3342

if.then3341:                                      ; preds = %if.end3336
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3342:                                       ; preds = %if.end3336
  %1979 = load ptr, ptr %s.addr, align 8
  %bsBuff3343 = getelementptr inbounds %struct.DState, ptr %1979, i64 0, i32 7
  %1980 = load i32, ptr %bsBuff3343, align 8
  %shl3344 = shl i32 %1980, 8
  %1981 = load ptr, ptr %1979, align 8
  %1982 = load ptr, ptr %1981, align 8
  %1983 = load i8, ptr %1982, align 1
  %conv3347 = zext i8 %1983 to i32
  %or3348 = or i32 %shl3344, %conv3347
  %1984 = load ptr, ptr %s.addr, align 8
  %bsBuff3349 = getelementptr inbounds %struct.DState, ptr %1984, i64 0, i32 7
  store i32 %or3348, ptr %bsBuff3349, align 8
  %bsLive3350 = getelementptr inbounds %struct.DState, ptr %1984, i64 0, i32 8
  %1985 = load i32, ptr %bsLive3350, align 4
  %add3351 = add nsw i32 %1985, 8
  store i32 %add3351, ptr %bsLive3350, align 4
  %1986 = load ptr, ptr %s.addr, align 8
  %1987 = load ptr, ptr %1986, align 8
  %1988 = load ptr, ptr %1987, align 8
  %incdec.ptr3354 = getelementptr inbounds i8, ptr %1988, i64 1
  store ptr %incdec.ptr3354, ptr %1987, align 8
  %1989 = load ptr, ptr %s.addr, align 8
  %1990 = load ptr, ptr %1989, align 8
  %avail_in3356 = getelementptr inbounds %struct.bz_stream, ptr %1990, i64 0, i32 1
  %1991 = load i32, ptr %avail_in3356, align 8
  %dec3357 = add i32 %1991, -1
  store i32 %dec3357, ptr %avail_in3356, align 8
  %1992 = load ptr, ptr %1989, align 8
  %total_in_lo323359 = getelementptr inbounds %struct.bz_stream, ptr %1992, i64 0, i32 2
  %1993 = load i32, ptr %total_in_lo323359, align 4
  %inc3360 = add i32 %1993, 1
  store i32 %inc3360, ptr %total_in_lo323359, align 4
  %1994 = load ptr, ptr %s.addr, align 8
  %1995 = load ptr, ptr %1994, align 8
  %total_in_lo323362 = getelementptr inbounds %struct.bz_stream, ptr %1995, i64 0, i32 2
  %1996 = load i32, ptr %total_in_lo323362, align 4
  %cmp3363 = icmp eq i32 %1996, 0
  br i1 %cmp3363, label %if.then3365, label %if.end3369

if.then3365:                                      ; preds = %if.end3342
  %1997 = load ptr, ptr %s.addr, align 8
  %1998 = load ptr, ptr %1997, align 8
  %total_in_hi323367 = getelementptr inbounds %struct.bz_stream, ptr %1998, i64 0, i32 3
  %1999 = load i32, ptr %total_in_hi323367, align 8
  %inc3368 = add i32 %1999, 1
  store i32 %inc3368, ptr %total_in_hi323367, align 8
  br label %if.end3369

if.end3369:                                       ; preds = %if.then3365, %if.end3342
  br label %while.body3322

sw.bb3376:                                        ; preds = %if.then3326, %if.end
  %2000 = load ptr, ptr %s.addr, align 8
  %state3377 = getelementptr inbounds %struct.DState, ptr %2000, i64 0, i32 1
  store i32 50, ptr %state3377, align 8
  br label %while.body3379

while.body3379:                                   ; preds = %if.end3426, %sw.bb3376
  %2001 = load ptr, ptr %s.addr, align 8
  %bsLive3380 = getelementptr inbounds %struct.DState, ptr %2001, i64 0, i32 8
  %2002 = load i32, ptr %bsLive3380, align 4
  %cmp3381 = icmp sgt i32 %2002, 7
  br i1 %cmp3381, label %if.then3383, label %if.end3393

if.then3383:                                      ; preds = %while.body3379
  %2003 = load ptr, ptr %s.addr, align 8
  %bsBuff3385 = getelementptr inbounds %struct.DState, ptr %2003, i64 0, i32 7
  %2004 = load i32, ptr %bsBuff3385, align 8
  %bsLive3386 = getelementptr inbounds %struct.DState, ptr %2003, i64 0, i32 8
  %2005 = load i32, ptr %bsLive3386, align 4
  %sub3387 = add nsw i32 %2005, -8
  %shr3388 = lshr i32 %2004, %sub3387
  %2006 = load ptr, ptr %s.addr, align 8
  %bsLive3390 = getelementptr inbounds %struct.DState, ptr %2006, i64 0, i32 8
  %2007 = load i32, ptr %bsLive3390, align 4
  %sub3391 = add nsw i32 %2007, -8
  store i32 %sub3391, ptr %bsLive3390, align 4
  %conv3392 = trunc i32 %shr3388 to i8
  store i8 %conv3392, ptr %uc, align 1
  %2008 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3428 = getelementptr inbounds %struct.DState, ptr %2008, i64 0, i32 24
  %2009 = load i32, ptr %storedCombinedCRC3428, align 4
  %shl3429 = shl i32 %2009, 8
  %2010 = load i8, ptr %uc, align 1
  %conv3430 = zext i8 %2010 to i32
  %or3431 = or i32 %shl3429, %conv3430
  %2011 = load ptr, ptr %s.addr, align 8
  %storedCombinedCRC3432 = getelementptr inbounds %struct.DState, ptr %2011, i64 0, i32 24
  store i32 %or3431, ptr %storedCombinedCRC3432, align 4
  %state3433 = getelementptr inbounds %struct.DState, ptr %2011, i64 0, i32 1
  store i32 1, ptr %state3433, align 8
  store i32 4, ptr %retVal, align 4
  br label %save_state_and_return

if.end3393:                                       ; preds = %while.body3379
  %2012 = load ptr, ptr %s.addr, align 8
  %2013 = load ptr, ptr %2012, align 8
  %avail_in3395 = getelementptr inbounds %struct.bz_stream, ptr %2013, i64 0, i32 1
  %2014 = load i32, ptr %avail_in3395, align 8
  %cmp3396 = icmp eq i32 %2014, 0
  br i1 %cmp3396, label %if.then3398, label %if.end3399

if.then3398:                                      ; preds = %if.end3393
  store i32 0, ptr %retVal, align 4
  br label %save_state_and_return

if.end3399:                                       ; preds = %if.end3393
  %2015 = load ptr, ptr %s.addr, align 8
  %bsBuff3400 = getelementptr inbounds %struct.DState, ptr %2015, i64 0, i32 7
  %2016 = load i32, ptr %bsBuff3400, align 8
  %shl3401 = shl i32 %2016, 8
  %2017 = load ptr, ptr %2015, align 8
  %2018 = load ptr, ptr %2017, align 8
  %2019 = load i8, ptr %2018, align 1
  %conv3404 = zext i8 %2019 to i32
  %or3405 = or i32 %shl3401, %conv3404
  %2020 = load ptr, ptr %s.addr, align 8
  %bsBuff3406 = getelementptr inbounds %struct.DState, ptr %2020, i64 0, i32 7
  store i32 %or3405, ptr %bsBuff3406, align 8
  %bsLive3407 = getelementptr inbounds %struct.DState, ptr %2020, i64 0, i32 8
  %2021 = load i32, ptr %bsLive3407, align 4
  %add3408 = add nsw i32 %2021, 8
  store i32 %add3408, ptr %bsLive3407, align 4
  %2022 = load ptr, ptr %s.addr, align 8
  %2023 = load ptr, ptr %2022, align 8
  %2024 = load ptr, ptr %2023, align 8
  %incdec.ptr3411 = getelementptr inbounds i8, ptr %2024, i64 1
  store ptr %incdec.ptr3411, ptr %2023, align 8
  %2025 = load ptr, ptr %s.addr, align 8
  %2026 = load ptr, ptr %2025, align 8
  %avail_in3413 = getelementptr inbounds %struct.bz_stream, ptr %2026, i64 0, i32 1
  %2027 = load i32, ptr %avail_in3413, align 8
  %dec3414 = add i32 %2027, -1
  store i32 %dec3414, ptr %avail_in3413, align 8
  %2028 = load ptr, ptr %2025, align 8
  %total_in_lo323416 = getelementptr inbounds %struct.bz_stream, ptr %2028, i64 0, i32 2
  %2029 = load i32, ptr %total_in_lo323416, align 4
  %inc3417 = add i32 %2029, 1
  store i32 %inc3417, ptr %total_in_lo323416, align 4
  %2030 = load ptr, ptr %s.addr, align 8
  %2031 = load ptr, ptr %2030, align 8
  %total_in_lo323419 = getelementptr inbounds %struct.bz_stream, ptr %2031, i64 0, i32 2
  %2032 = load i32, ptr %total_in_lo323419, align 4
  %cmp3420 = icmp eq i32 %2032, 0
  br i1 %cmp3420, label %if.then3422, label %if.end3426

if.then3422:                                      ; preds = %if.end3399
  %2033 = load ptr, ptr %s.addr, align 8
  %2034 = load ptr, ptr %2033, align 8
  %total_in_hi323424 = getelementptr inbounds %struct.bz_stream, ptr %2034, i64 0, i32 3
  %2035 = load i32, ptr %total_in_hi323424, align 8
  %inc3425 = add i32 %2035, 1
  store i32 %inc3425, ptr %total_in_hi323424, align 8
  br label %if.end3426

if.end3426:                                       ; preds = %if.then3422, %if.end3399
  br label %while.body3379

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 noundef 4001) #3
  call void @BZ2_bz__AssertH__fail(i32 noundef 4002) #3
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.default, %if.then3383, %if.then3398, %if.then3341, %if.then3284, %if.then3227, %if.then3203, %if.then3170, %if.then3146, %if.then3113, %if.then3089, %if.then3056, %if.then3032, %if.then2999, %if.then2975, %if.then2942, %if.end2919, %if.then2583, %if.then2536, %if.then2521, %if.then2477, %if.then2447, %if.then2413, %if.then2367, %if.then2166, %if.then2153, %if.then2137, %if.then2105, %if.then2061, %if.then2031, %if.then1997, %if.then1951, %if.then1912, %if.then1868, %if.then1838, %if.then1804, %if.then1758, %if.then1605, %if.then1548, %if.then1524, %if.then1483, %if.then1411, %if.then1373, %if.then1344, %if.then1312, %if.then1290, %if.then1255, %if.then1231, %if.then1182, %if.then1099, %if.then1074, %if.then1066, %if.then1028, %if.then972, %if.then916, %if.then865, %if.then809, %if.then753, %if.then697, %if.then641, %if.then611, %if.then578, %if.then555, %if.then522, %if.then499, %if.then466, %if.then443, %if.then410, %if.then387, %if.then354, %if.then331, %if.then293, %if.then269, %if.then256, %if.then230, %if.then194, %if.then172, %if.then139, %if.then116, %if.then83, %if.then60, %if.then37
  %2036 = load i32, ptr %i, align 4
  %2037 = load ptr, ptr %s.addr, align 8
  %save_i3434 = getelementptr inbounds %struct.DState, ptr %2037, i64 0, i32 40
  store i32 %2036, ptr %save_i3434, align 4
  %2038 = load i32, ptr %j, align 4
  %save_j3435 = getelementptr inbounds %struct.DState, ptr %2037, i64 0, i32 41
  store i32 %2038, ptr %save_j3435, align 8
  %2039 = load i32, ptr %t, align 4
  %2040 = load ptr, ptr %s.addr, align 8
  %save_t3436 = getelementptr inbounds %struct.DState, ptr %2040, i64 0, i32 42
  store i32 %2039, ptr %save_t3436, align 4
  %2041 = load i32, ptr %alphaSize, align 4
  %save_alphaSize3437 = getelementptr inbounds %struct.DState, ptr %2040, i64 0, i32 43
  store i32 %2041, ptr %save_alphaSize3437, align 8
  %2042 = load i32, ptr %nGroups, align 4
  %2043 = load ptr, ptr %s.addr, align 8
  %save_nGroups3438 = getelementptr inbounds %struct.DState, ptr %2043, i64 0, i32 44
  store i32 %2042, ptr %save_nGroups3438, align 4
  %2044 = load i32, ptr %nSelectors, align 4
  %save_nSelectors3439 = getelementptr inbounds %struct.DState, ptr %2043, i64 0, i32 45
  store i32 %2044, ptr %save_nSelectors3439, align 8
  %2045 = load i32, ptr %EOB, align 4
  %2046 = load ptr, ptr %s.addr, align 8
  %save_EOB3440 = getelementptr inbounds %struct.DState, ptr %2046, i64 0, i32 46
  store i32 %2045, ptr %save_EOB3440, align 4
  %2047 = load i32, ptr %groupNo, align 4
  %save_groupNo3441 = getelementptr inbounds %struct.DState, ptr %2046, i64 0, i32 47
  store i32 %2047, ptr %save_groupNo3441, align 8
  %2048 = load i32, ptr %groupPos, align 4
  %2049 = load ptr, ptr %s.addr, align 8
  %save_groupPos3442 = getelementptr inbounds %struct.DState, ptr %2049, i64 0, i32 48
  store i32 %2048, ptr %save_groupPos3442, align 4
  %2050 = load i32, ptr %nextSym, align 4
  %save_nextSym3443 = getelementptr inbounds %struct.DState, ptr %2049, i64 0, i32 49
  store i32 %2050, ptr %save_nextSym3443, align 8
  %2051 = load i32, ptr %nblockMAX, align 4
  %2052 = load ptr, ptr %s.addr, align 8
  %save_nblockMAX3444 = getelementptr inbounds %struct.DState, ptr %2052, i64 0, i32 50
  store i32 %2051, ptr %save_nblockMAX3444, align 4
  %2053 = load i32, ptr %nblock, align 4
  %save_nblock3445 = getelementptr inbounds %struct.DState, ptr %2052, i64 0, i32 51
  store i32 %2053, ptr %save_nblock3445, align 8
  %2054 = load i32, ptr %es, align 4
  %2055 = load ptr, ptr %s.addr, align 8
  %save_es3446 = getelementptr inbounds %struct.DState, ptr %2055, i64 0, i32 52
  store i32 %2054, ptr %save_es3446, align 4
  %2056 = load i32, ptr %N, align 4
  %save_N3447 = getelementptr inbounds %struct.DState, ptr %2055, i64 0, i32 53
  store i32 %2056, ptr %save_N3447, align 8
  %2057 = load i32, ptr %curr, align 4
  %2058 = load ptr, ptr %s.addr, align 8
  %save_curr3448 = getelementptr inbounds %struct.DState, ptr %2058, i64 0, i32 54
  store i32 %2057, ptr %save_curr3448, align 4
  %2059 = load i32, ptr %zt, align 4
  %save_zt3449 = getelementptr inbounds %struct.DState, ptr %2058, i64 0, i32 55
  store i32 %2059, ptr %save_zt3449, align 8
  %2060 = load i32, ptr %zn, align 4
  %2061 = load ptr, ptr %s.addr, align 8
  %save_zn3450 = getelementptr inbounds %struct.DState, ptr %2061, i64 0, i32 56
  store i32 %2060, ptr %save_zn3450, align 4
  %2062 = load i32, ptr %zvec, align 4
  %save_zvec3451 = getelementptr inbounds %struct.DState, ptr %2061, i64 0, i32 57
  store i32 %2062, ptr %save_zvec3451, align 8
  %2063 = load i32, ptr %zj, align 4
  %2064 = load ptr, ptr %s.addr, align 8
  %save_zj3452 = getelementptr inbounds %struct.DState, ptr %2064, i64 0, i32 58
  store i32 %2063, ptr %save_zj3452, align 4
  %2065 = load i32, ptr %gSel, align 4
  %save_gSel3453 = getelementptr inbounds %struct.DState, ptr %2064, i64 0, i32 59
  store i32 %2065, ptr %save_gSel3453, align 8
  %2066 = load i32, ptr %gMinlen, align 4
  %2067 = load ptr, ptr %s.addr, align 8
  %save_gMinlen3454 = getelementptr inbounds %struct.DState, ptr %2067, i64 0, i32 60
  store i32 %2066, ptr %save_gMinlen3454, align 4
  %2068 = load ptr, ptr %gLimit, align 8
  %save_gLimit3455 = getelementptr inbounds %struct.DState, ptr %2067, i64 0, i32 61
  store ptr %2068, ptr %save_gLimit3455, align 8
  %2069 = load ptr, ptr %gBase, align 8
  %2070 = load ptr, ptr %s.addr, align 8
  %save_gBase3456 = getelementptr inbounds %struct.DState, ptr %2070, i64 0, i32 62
  store ptr %2069, ptr %save_gBase3456, align 8
  %2071 = load ptr, ptr %gPerm, align 8
  %save_gPerm3457 = getelementptr inbounds %struct.DState, ptr %2070, i64 0, i32 63
  store ptr %2071, ptr %save_gPerm3457, align 8
  %2072 = load i32, ptr %retVal, align 4
  ret i32 %2072
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @makeMaps_d(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, ptr %s, i64 0, i32 27
  store i32 0, ptr %nInUse, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc5, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.DState, ptr %0, i64 0, i32 28, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %conv = trunc i32 %3 to i8
  %4 = load ptr, ptr %s.addr, align 8
  %nInUse1 = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 27
  %5 = load i32, ptr %nInUse1, align 8
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 30, i64 %idxprom2
  store i8 %conv, ptr %arrayidx3, align 1
  %nInUse4 = getelementptr inbounds %struct.DState, ptr %4, i64 0, i32 27
  %6 = load i32, ptr %nInUse4, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %nInUse4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %7, 1
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @BZ2_hbCreateDecodeTables(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @BZ2_indexIntoF(i32 noundef, ptr noundef) #1

declare void @BZ2_bz__AssertH__fail(i32 noundef) #1

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
