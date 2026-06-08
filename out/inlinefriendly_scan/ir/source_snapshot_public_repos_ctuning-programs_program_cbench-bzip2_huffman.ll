; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/huffman.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-bzip2/huffman.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BZ2_hbMakeCodeLengths(ptr noundef %len, ptr noundef %freq, i32 noundef %alphaSize, i32 noundef %maxLen) #0 {
entry:
  %len.addr = alloca ptr, align 8
  %freq.addr = alloca ptr, align 8
  %alphaSize.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %nNodes = alloca i32, align 4
  %nHeap = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tooLong = alloca i8, align 1
  %heap = alloca [260 x i32], align 4
  %weight = alloca [516 x i32], align 4
  %parent = alloca [516 x i32], align 4
  %zz = alloca i32, align 4
  %tmp = alloca i32, align 4
  %zz47 = alloca i32, align 4
  %yy = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %zz92 = alloca i32, align 4
  %yy93 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %zz170 = alloca i32, align 4
  %tmp171 = alloca i32, align 4
  store ptr %len, ptr %len.addr, align 8
  store ptr %freq, ptr %freq.addr, align 8
  store i32 %alphaSize, ptr %alphaSize.addr, align 4
  store i32 %maxLen, ptr %maxLen.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %alphaSize.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %freq.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load ptr, ptr %freq.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  %7 = load i32, ptr %arrayidx3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %7, %cond.false ]
  %shl = shl i32 %cond, 8
  %8 = load i32, ptr %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom4
  store i32 %shl, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %for.end, %for.end233
  %10 = load i32, ptr %alphaSize.addr, align 4
  store i32 %10, ptr %nNodes, align 4
  store i32 0, ptr %nHeap, align 4
  %arrayidx6 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 0
  store i32 0, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 0
  store i32 0, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 0
  store i32 -2, ptr %arrayidx8, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc36, %while.body
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %alphaSize.addr, align 4
  %cmp10 = icmp sle i32 %11, %12
  br i1 %cmp10, label %for.body11, label %for.end38

for.body11:                                       ; preds = %for.cond9
  %13 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 %idxprom12
  store i32 -1, ptr %arrayidx13, align 4
  %14 = load i32, ptr %nHeap, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %nHeap, align 4
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %nHeap, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom15
  store i32 %15, ptr %arrayidx16, align 4
  %17 = load i32, ptr %nHeap, align 4
  store i32 %17, ptr %zz, align 4
  %18 = load i32, ptr %zz, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom17
  %19 = load i32, ptr %arrayidx18, align 4
  store i32 %19, ptr %tmp, align 4
  br label %while.cond19

while.cond19:                                     ; preds = %while.body27, %for.body11
  %20 = load i32, ptr %tmp, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom20
  %21 = load i32, ptr %arrayidx21, align 4
  %22 = load i32, ptr %zz, align 4
  %shr = ashr i32 %22, 1
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom22
  %23 = load i32, ptr %arrayidx23, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom24
  %24 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp slt i32 %21, %24
  br i1 %cmp26, label %while.body27, label %while.end

while.body27:                                     ; preds = %while.cond19
  %25 = load i32, ptr %zz, align 4
  %shr28 = ashr i32 %25, 1
  %idxprom29 = sext i32 %shr28 to i64
  %arrayidx30 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom29
  %26 = load i32, ptr %arrayidx30, align 4
  %27 = load i32, ptr %zz, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom31
  store i32 %26, ptr %arrayidx32, align 4
  %28 = load i32, ptr %zz, align 4
  %shr33 = ashr i32 %28, 1
  store i32 %shr33, ptr %zz, align 4
  br label %while.cond19, !llvm.loop !8

while.end:                                        ; preds = %while.cond19
  %29 = load i32, ptr %tmp, align 4
  %30 = load i32, ptr %zz, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom34
  store i32 %29, ptr %arrayidx35, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %while.end
  %31 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end38:                                        ; preds = %for.cond9
  %32 = load i32, ptr %nHeap, align 4
  %cmp39 = icmp slt i32 %32, 260
  br i1 %cmp39, label %if.end, label %if.then

if.then:                                          ; preds = %for.end38
  call void @BZ2_bz__AssertH__fail(i32 noundef 2001)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end38
  br label %while.cond40

while.cond40:                                     ; preds = %while.end190, %if.end
  %33 = load i32, ptr %nHeap, align 4
  %cmp41 = icmp sgt i32 %33, 1
  br i1 %cmp41, label %while.body42, label %while.end193

while.body42:                                     ; preds = %while.cond40
  %arrayidx43 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 1
  %34 = load i32, ptr %arrayidx43, align 4
  store i32 %34, ptr %n1, align 4
  %35 = load i32, ptr %nHeap, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom44
  %36 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 1
  store i32 %36, ptr %arrayidx46, align 4
  %37 = load i32, ptr %nHeap, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, ptr %nHeap, align 4
  store i32 1, ptr %zz47, align 4
  %38 = load i32, ptr %zz47, align 4
  %idxprom49 = sext i32 %38 to i64
  %arrayidx50 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom49
  %39 = load i32, ptr %arrayidx50, align 4
  store i32 %39, ptr %tmp48, align 4
  br label %while.body52

while.body52:                                     ; preds = %while.body42, %if.end79
  %40 = load i32, ptr %zz47, align 4
  %shl53 = shl i32 %40, 1
  store i32 %shl53, ptr %yy, align 4
  %41 = load i32, ptr %yy, align 4
  %42 = load i32, ptr %nHeap, align 4
  %cmp54 = icmp sgt i32 %41, %42
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %while.body52
  br label %while.end84

if.end56:                                         ; preds = %while.body52
  %43 = load i32, ptr %yy, align 4
  %44 = load i32, ptr %nHeap, align 4
  %cmp57 = icmp slt i32 %43, %44
  br i1 %cmp57, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.end56
  %45 = load i32, ptr %yy, align 4
  %add58 = add nsw i32 %45, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom59
  %46 = load i32, ptr %arrayidx60, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom61
  %47 = load i32, ptr %arrayidx62, align 4
  %48 = load i32, ptr %yy, align 4
  %idxprom63 = sext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom63
  %49 = load i32, ptr %arrayidx64, align 4
  %idxprom65 = sext i32 %49 to i64
  %arrayidx66 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom65
  %50 = load i32, ptr %arrayidx66, align 4
  %cmp67 = icmp slt i32 %47, %50
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %land.lhs.true
  %51 = load i32, ptr %yy, align 4
  %inc69 = add nsw i32 %51, 1
  store i32 %inc69, ptr %yy, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %land.lhs.true, %if.end56
  %52 = load i32, ptr %tmp48, align 4
  %idxprom71 = sext i32 %52 to i64
  %arrayidx72 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom71
  %53 = load i32, ptr %arrayidx72, align 4
  %54 = load i32, ptr %yy, align 4
  %idxprom73 = sext i32 %54 to i64
  %arrayidx74 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom73
  %55 = load i32, ptr %arrayidx74, align 4
  %idxprom75 = sext i32 %55 to i64
  %arrayidx76 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom75
  %56 = load i32, ptr %arrayidx76, align 4
  %cmp77 = icmp slt i32 %53, %56
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  br label %while.end84

if.end79:                                         ; preds = %if.end70
  %57 = load i32, ptr %yy, align 4
  %idxprom80 = sext i32 %57 to i64
  %arrayidx81 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom80
  %58 = load i32, ptr %arrayidx81, align 4
  %59 = load i32, ptr %zz47, align 4
  %idxprom82 = sext i32 %59 to i64
  %arrayidx83 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom82
  store i32 %58, ptr %arrayidx83, align 4
  %60 = load i32, ptr %yy, align 4
  store i32 %60, ptr %zz47, align 4
  br label %while.body52

while.end84:                                      ; preds = %if.then78, %if.then55
  %61 = load i32, ptr %tmp48, align 4
  %62 = load i32, ptr %zz47, align 4
  %idxprom85 = sext i32 %62 to i64
  %arrayidx86 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom85
  store i32 %61, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 1
  %63 = load i32, ptr %arrayidx87, align 4
  store i32 %63, ptr %n2, align 4
  %64 = load i32, ptr %nHeap, align 4
  %idxprom88 = sext i32 %64 to i64
  %arrayidx89 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom88
  %65 = load i32, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 1
  store i32 %65, ptr %arrayidx90, align 4
  %66 = load i32, ptr %nHeap, align 4
  %dec91 = add nsw i32 %66, -1
  store i32 %dec91, ptr %nHeap, align 4
  store i32 1, ptr %zz92, align 4
  %67 = load i32, ptr %zz92, align 4
  %idxprom95 = sext i32 %67 to i64
  %arrayidx96 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom95
  %68 = load i32, ptr %arrayidx96, align 4
  store i32 %68, ptr %tmp94, align 4
  br label %while.body98

while.body98:                                     ; preds = %while.end84, %if.end126
  %69 = load i32, ptr %zz92, align 4
  %shl99 = shl i32 %69, 1
  store i32 %shl99, ptr %yy93, align 4
  %70 = load i32, ptr %yy93, align 4
  %71 = load i32, ptr %nHeap, align 4
  %cmp100 = icmp sgt i32 %70, %71
  br i1 %cmp100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %while.body98
  br label %while.end131

if.end102:                                        ; preds = %while.body98
  %72 = load i32, ptr %yy93, align 4
  %73 = load i32, ptr %nHeap, align 4
  %cmp103 = icmp slt i32 %72, %73
  br i1 %cmp103, label %land.lhs.true104, label %if.end117

land.lhs.true104:                                 ; preds = %if.end102
  %74 = load i32, ptr %yy93, align 4
  %add105 = add nsw i32 %74, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom106
  %75 = load i32, ptr %arrayidx107, align 4
  %idxprom108 = sext i32 %75 to i64
  %arrayidx109 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom108
  %76 = load i32, ptr %arrayidx109, align 4
  %77 = load i32, ptr %yy93, align 4
  %idxprom110 = sext i32 %77 to i64
  %arrayidx111 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom110
  %78 = load i32, ptr %arrayidx111, align 4
  %idxprom112 = sext i32 %78 to i64
  %arrayidx113 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom112
  %79 = load i32, ptr %arrayidx113, align 4
  %cmp114 = icmp slt i32 %76, %79
  br i1 %cmp114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %land.lhs.true104
  %80 = load i32, ptr %yy93, align 4
  %inc116 = add nsw i32 %80, 1
  store i32 %inc116, ptr %yy93, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %land.lhs.true104, %if.end102
  %81 = load i32, ptr %tmp94, align 4
  %idxprom118 = sext i32 %81 to i64
  %arrayidx119 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom118
  %82 = load i32, ptr %arrayidx119, align 4
  %83 = load i32, ptr %yy93, align 4
  %idxprom120 = sext i32 %83 to i64
  %arrayidx121 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom120
  %84 = load i32, ptr %arrayidx121, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom122
  %85 = load i32, ptr %arrayidx123, align 4
  %cmp124 = icmp slt i32 %82, %85
  br i1 %cmp124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end117
  br label %while.end131

if.end126:                                        ; preds = %if.end117
  %86 = load i32, ptr %yy93, align 4
  %idxprom127 = sext i32 %86 to i64
  %arrayidx128 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom127
  %87 = load i32, ptr %arrayidx128, align 4
  %88 = load i32, ptr %zz92, align 4
  %idxprom129 = sext i32 %88 to i64
  %arrayidx130 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom129
  store i32 %87, ptr %arrayidx130, align 4
  %89 = load i32, ptr %yy93, align 4
  store i32 %89, ptr %zz92, align 4
  br label %while.body98

while.end131:                                     ; preds = %if.then125, %if.then101
  %90 = load i32, ptr %tmp94, align 4
  %91 = load i32, ptr %zz92, align 4
  %idxprom132 = sext i32 %91 to i64
  %arrayidx133 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom132
  store i32 %90, ptr %arrayidx133, align 4
  %92 = load i32, ptr %nNodes, align 4
  %inc134 = add nsw i32 %92, 1
  store i32 %inc134, ptr %nNodes, align 4
  %93 = load i32, ptr %nNodes, align 4
  %94 = load i32, ptr %n2, align 4
  %idxprom135 = sext i32 %94 to i64
  %arrayidx136 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 %idxprom135
  store i32 %93, ptr %arrayidx136, align 4
  %95 = load i32, ptr %n1, align 4
  %idxprom137 = sext i32 %95 to i64
  %arrayidx138 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 %idxprom137
  store i32 %93, ptr %arrayidx138, align 4
  %96 = load i32, ptr %n1, align 4
  %idxprom139 = sext i32 %96 to i64
  %arrayidx140 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom139
  %97 = load i32, ptr %arrayidx140, align 4
  %and = and i32 %97, -256
  %98 = load i32, ptr %n2, align 4
  %idxprom141 = sext i32 %98 to i64
  %arrayidx142 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom141
  %99 = load i32, ptr %arrayidx142, align 4
  %and143 = and i32 %99, -256
  %add144 = add i32 %and, %and143
  %100 = load i32, ptr %n1, align 4
  %idxprom145 = sext i32 %100 to i64
  %arrayidx146 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom145
  %101 = load i32, ptr %arrayidx146, align 4
  %and147 = and i32 %101, 255
  %102 = load i32, ptr %n2, align 4
  %idxprom148 = sext i32 %102 to i64
  %arrayidx149 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom148
  %103 = load i32, ptr %arrayidx149, align 4
  %and150 = and i32 %103, 255
  %cmp151 = icmp sgt i32 %and147, %and150
  br i1 %cmp151, label %cond.true152, label %cond.false156

cond.true152:                                     ; preds = %while.end131
  %104 = load i32, ptr %n1, align 4
  %idxprom153 = sext i32 %104 to i64
  %arrayidx154 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom153
  %105 = load i32, ptr %arrayidx154, align 4
  %and155 = and i32 %105, 255
  br label %cond.end160

cond.false156:                                    ; preds = %while.end131
  %106 = load i32, ptr %n2, align 4
  %idxprom157 = sext i32 %106 to i64
  %arrayidx158 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom157
  %107 = load i32, ptr %arrayidx158, align 4
  %and159 = and i32 %107, 255
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false156, %cond.true152
  %cond161 = phi i32 [ %and155, %cond.true152 ], [ %and159, %cond.false156 ]
  %add162 = add nsw i32 1, %cond161
  %or = or i32 %add144, %add162
  %108 = load i32, ptr %nNodes, align 4
  %idxprom163 = sext i32 %108 to i64
  %arrayidx164 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom163
  store i32 %or, ptr %arrayidx164, align 4
  %109 = load i32, ptr %nNodes, align 4
  %idxprom165 = sext i32 %109 to i64
  %arrayidx166 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 %idxprom165
  store i32 -1, ptr %arrayidx166, align 4
  %110 = load i32, ptr %nHeap, align 4
  %inc167 = add nsw i32 %110, 1
  store i32 %inc167, ptr %nHeap, align 4
  %111 = load i32, ptr %nNodes, align 4
  %112 = load i32, ptr %nHeap, align 4
  %idxprom168 = sext i32 %112 to i64
  %arrayidx169 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom168
  store i32 %111, ptr %arrayidx169, align 4
  %113 = load i32, ptr %nHeap, align 4
  store i32 %113, ptr %zz170, align 4
  %114 = load i32, ptr %zz170, align 4
  %idxprom172 = sext i32 %114 to i64
  %arrayidx173 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom172
  %115 = load i32, ptr %arrayidx173, align 4
  store i32 %115, ptr %tmp171, align 4
  br label %while.cond174

while.cond174:                                    ; preds = %while.body183, %cond.end160
  %116 = load i32, ptr %tmp171, align 4
  %idxprom175 = sext i32 %116 to i64
  %arrayidx176 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom175
  %117 = load i32, ptr %arrayidx176, align 4
  %118 = load i32, ptr %zz170, align 4
  %shr177 = ashr i32 %118, 1
  %idxprom178 = sext i32 %shr177 to i64
  %arrayidx179 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom178
  %119 = load i32, ptr %arrayidx179, align 4
  %idxprom180 = sext i32 %119 to i64
  %arrayidx181 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom180
  %120 = load i32, ptr %arrayidx181, align 4
  %cmp182 = icmp slt i32 %117, %120
  br i1 %cmp182, label %while.body183, label %while.end190

while.body183:                                    ; preds = %while.cond174
  %121 = load i32, ptr %zz170, align 4
  %shr184 = ashr i32 %121, 1
  %idxprom185 = sext i32 %shr184 to i64
  %arrayidx186 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom185
  %122 = load i32, ptr %arrayidx186, align 4
  %123 = load i32, ptr %zz170, align 4
  %idxprom187 = sext i32 %123 to i64
  %arrayidx188 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom187
  store i32 %122, ptr %arrayidx188, align 4
  %124 = load i32, ptr %zz170, align 4
  %shr189 = ashr i32 %124, 1
  store i32 %shr189, ptr %zz170, align 4
  br label %while.cond174, !llvm.loop !10

while.end190:                                     ; preds = %while.cond174
  %125 = load i32, ptr %tmp171, align 4
  %126 = load i32, ptr %zz170, align 4
  %idxprom191 = sext i32 %126 to i64
  %arrayidx192 = getelementptr inbounds [260 x i32], ptr %heap, i64 0, i64 %idxprom191
  store i32 %125, ptr %arrayidx192, align 4
  br label %while.cond40, !llvm.loop !11

while.end193:                                     ; preds = %while.cond40
  %127 = load i32, ptr %nNodes, align 4
  %cmp194 = icmp slt i32 %127, 516
  br i1 %cmp194, label %if.end196, label %if.then195

if.then195:                                       ; preds = %while.end193
  call void @BZ2_bz__AssertH__fail(i32 noundef 2002)
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %while.end193
  store i8 0, ptr %tooLong, align 1
  store i32 1, ptr %i, align 4
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc215, %if.end196
  %128 = load i32, ptr %i, align 4
  %129 = load i32, ptr %alphaSize.addr, align 4
  %cmp198 = icmp sle i32 %128, %129
  br i1 %cmp198, label %for.body199, label %for.end217

for.body199:                                      ; preds = %for.cond197
  store i32 0, ptr %j, align 4
  %130 = load i32, ptr %i, align 4
  store i32 %130, ptr %k, align 4
  br label %while.cond200

while.cond200:                                    ; preds = %while.body204, %for.body199
  %131 = load i32, ptr %k, align 4
  %idxprom201 = sext i32 %131 to i64
  %arrayidx202 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 %idxprom201
  %132 = load i32, ptr %arrayidx202, align 4
  %cmp203 = icmp sge i32 %132, 0
  br i1 %cmp203, label %while.body204, label %while.end208

while.body204:                                    ; preds = %while.cond200
  %133 = load i32, ptr %k, align 4
  %idxprom205 = sext i32 %133 to i64
  %arrayidx206 = getelementptr inbounds [516 x i32], ptr %parent, i64 0, i64 %idxprom205
  %134 = load i32, ptr %arrayidx206, align 4
  store i32 %134, ptr %k, align 4
  %135 = load i32, ptr %j, align 4
  %inc207 = add nsw i32 %135, 1
  store i32 %inc207, ptr %j, align 4
  br label %while.cond200, !llvm.loop !12

while.end208:                                     ; preds = %while.cond200
  %136 = load i32, ptr %j, align 4
  %conv = trunc i32 %136 to i8
  %137 = load ptr, ptr %len.addr, align 8
  %138 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %138, 1
  %idxprom209 = sext i32 %sub to i64
  %arrayidx210 = getelementptr inbounds i8, ptr %137, i64 %idxprom209
  store i8 %conv, ptr %arrayidx210, align 1
  %139 = load i32, ptr %j, align 4
  %140 = load i32, ptr %maxLen.addr, align 4
  %cmp211 = icmp sgt i32 %139, %140
  br i1 %cmp211, label %if.then213, label %if.end214

if.then213:                                       ; preds = %while.end208
  store i8 1, ptr %tooLong, align 1
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %while.end208
  br label %for.inc215

for.inc215:                                       ; preds = %if.end214
  %141 = load i32, ptr %i, align 4
  %inc216 = add nsw i32 %141, 1
  store i32 %inc216, ptr %i, align 4
  br label %for.cond197, !llvm.loop !13

for.end217:                                       ; preds = %for.cond197
  %142 = load i8, ptr %tooLong, align 1
  %tobool = icmp ne i8 %142, 0
  br i1 %tobool, label %if.end219, label %if.then218

if.then218:                                       ; preds = %for.end217
  br label %while.end234

if.end219:                                        ; preds = %for.end217
  store i32 1, ptr %i, align 4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc231, %if.end219
  %143 = load i32, ptr %i, align 4
  %144 = load i32, ptr %alphaSize.addr, align 4
  %cmp221 = icmp sle i32 %143, %144
  br i1 %cmp221, label %for.body223, label %for.end233

for.body223:                                      ; preds = %for.cond220
  %145 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %145 to i64
  %arrayidx225 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom224
  %146 = load i32, ptr %arrayidx225, align 4
  %shr226 = ashr i32 %146, 8
  store i32 %shr226, ptr %j, align 4
  %147 = load i32, ptr %j, align 4
  %div = sdiv i32 %147, 2
  %add227 = add nsw i32 1, %div
  store i32 %add227, ptr %j, align 4
  %148 = load i32, ptr %j, align 4
  %shl228 = shl i32 %148, 8
  %149 = load i32, ptr %i, align 4
  %idxprom229 = sext i32 %149 to i64
  %arrayidx230 = getelementptr inbounds [516 x i32], ptr %weight, i64 0, i64 %idxprom229
  store i32 %shl228, ptr %arrayidx230, align 4
  br label %for.inc231

for.inc231:                                       ; preds = %for.body223
  %150 = load i32, ptr %i, align 4
  %inc232 = add nsw i32 %150, 1
  store i32 %inc232, ptr %i, align 4
  br label %for.cond220, !llvm.loop !14

for.end233:                                       ; preds = %for.cond220
  br label %while.body

while.end234:                                     ; preds = %if.then218
  ret void
}

declare void @BZ2_bz__AssertH__fail(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BZ2_hbAssignCodes(ptr noundef %code, ptr noundef %length, i32 noundef %minLen, i32 noundef %maxLen, i32 noundef %alphaSize) #0 {
entry:
  %code.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %vec = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %code, ptr %code.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  store i32 %minLen, ptr %minLen.addr, align 4
  store i32 %maxLen, ptr %maxLen.addr, align 4
  store i32 %alphaSize, ptr %alphaSize.addr, align 4
  store i32 0, ptr %vec, align 4
  %0 = load i32, ptr %minLen.addr, align 4
  store i32 %0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, ptr %n, align 4
  %2 = load i32, ptr %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %length.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %n, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %vec, align 4
  %10 = load ptr, ptr %code.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  store i32 %9, ptr %arrayidx7, align 4
  %12 = load i32, ptr %vec, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %vec, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond1, !llvm.loop !15

for.end:                                          ; preds = %for.cond1
  %14 = load i32, ptr %vec, align 4
  %shl = shl i32 %14, 1
  store i32 %shl, ptr %vec, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %15 = load i32, ptr %n, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, ptr %n, align 4
  br label %for.cond, !llvm.loop !16

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BZ2_hbCreateDecodeTables(ptr noundef %limit, ptr noundef %base, ptr noundef %perm, ptr noundef %length, i32 noundef %minLen, i32 noundef %maxLen, i32 noundef %alphaSize) #0 {
entry:
  %limit.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %pp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vec = alloca i32, align 4
  store ptr %limit, ptr %limit.addr, align 8
  store ptr %base, ptr %base.addr, align 8
  store ptr %perm, ptr %perm.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  store i32 %minLen, ptr %minLen.addr, align 4
  store i32 %maxLen, ptr %maxLen.addr, align 4
  store i32 %alphaSize, ptr %alphaSize.addr, align 4
  store i32 0, ptr %pp, align 4
  %0 = load i32, ptr %minLen.addr, align 4
  store i32 %0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %length.addr, align 8
  %6 = load i32, ptr %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %i, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4
  %10 = load ptr, ptr %perm.addr, align 8
  %11 = load i32, ptr %pp, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  store i32 %9, ptr %arrayidx7, align 4
  %12 = load i32, ptr %pp, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %pp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, ptr %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end11:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end11
  %15 = load i32, ptr %i, align 4
  %cmp13 = icmp slt i32 %15, 23
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %16 = load ptr, ptr %base.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %16, i64 %idxprom16
  store i32 0, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %18 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond12, !llvm.loop !19

for.end20:                                        ; preds = %for.cond12
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc31, %for.end20
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %alphaSize.addr, align 4
  %cmp22 = icmp slt i32 %19, %20
  br i1 %cmp22, label %for.body24, label %for.end33

for.body24:                                       ; preds = %for.cond21
  %21 = load ptr, ptr %base.addr, align 8
  %22 = load ptr, ptr %length.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %22, i64 %idxprom25
  %24 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %24 to i32
  %add = add nsw i32 %conv27, 1
  %idxprom28 = sext i32 %add to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %21, i64 %idxprom28
  %25 = load i32, ptr %arrayidx29, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %arrayidx29, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body24
  %26 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond21, !llvm.loop !20

for.end33:                                        ; preds = %for.cond21
  store i32 1, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.end33
  %27 = load i32, ptr %i, align 4
  %cmp35 = icmp slt i32 %27, 23
  br i1 %cmp35, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond34
  %28 = load ptr, ptr %base.addr, align 8
  %29 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom38 = sext i32 %sub to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %28, i64 %idxprom38
  %30 = load i32, ptr %arrayidx39, align 4
  %31 = load ptr, ptr %base.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %31, i64 %idxprom40
  %33 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %33, %30
  store i32 %add42, ptr %arrayidx41, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %34 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond34, !llvm.loop !21

for.end45:                                        ; preds = %for.cond34
  store i32 0, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc52, %for.end45
  %35 = load i32, ptr %i, align 4
  %cmp47 = icmp slt i32 %35, 23
  br i1 %cmp47, label %for.body49, label %for.end54

for.body49:                                       ; preds = %for.cond46
  %36 = load ptr, ptr %limit.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %36, i64 %idxprom50
  store i32 0, ptr %arrayidx51, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body49
  %38 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond46, !llvm.loop !22

for.end54:                                        ; preds = %for.cond46
  store i32 0, ptr %vec, align 4
  %39 = load i32, ptr %minLen.addr, align 4
  store i32 %39, ptr %i, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc69, %for.end54
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %maxLen.addr, align 4
  %cmp56 = icmp sle i32 %40, %41
  br i1 %cmp56, label %for.body58, label %for.end71

for.body58:                                       ; preds = %for.cond55
  %42 = load ptr, ptr %base.addr, align 8
  %43 = load i32, ptr %i, align 4
  %add59 = add nsw i32 %43, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %42, i64 %idxprom60
  %44 = load i32, ptr %arrayidx61, align 4
  %45 = load ptr, ptr %base.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %46 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %45, i64 %idxprom62
  %47 = load i32, ptr %arrayidx63, align 4
  %sub64 = sub nsw i32 %44, %47
  %48 = load i32, ptr %vec, align 4
  %add65 = add nsw i32 %48, %sub64
  store i32 %add65, ptr %vec, align 4
  %49 = load i32, ptr %vec, align 4
  %sub66 = sub nsw i32 %49, 1
  %50 = load ptr, ptr %limit.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %51 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %50, i64 %idxprom67
  store i32 %sub66, ptr %arrayidx68, align 4
  %52 = load i32, ptr %vec, align 4
  %shl = shl i32 %52, 1
  store i32 %shl, ptr %vec, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body58
  %53 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %53, 1
  store i32 %inc70, ptr %i, align 4
  br label %for.cond55, !llvm.loop !23

for.end71:                                        ; preds = %for.cond55
  %54 = load i32, ptr %minLen.addr, align 4
  %add72 = add nsw i32 %54, 1
  store i32 %add72, ptr %i, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc87, %for.end71
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %maxLen.addr, align 4
  %cmp74 = icmp sle i32 %55, %56
  br i1 %cmp74, label %for.body76, label %for.end89

for.body76:                                       ; preds = %for.cond73
  %57 = load ptr, ptr %limit.addr, align 8
  %58 = load i32, ptr %i, align 4
  %sub77 = sub nsw i32 %58, 1
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %57, i64 %idxprom78
  %59 = load i32, ptr %arrayidx79, align 4
  %add80 = add nsw i32 %59, 1
  %shl81 = shl i32 %add80, 1
  %60 = load ptr, ptr %base.addr, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %61 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %60, i64 %idxprom82
  %62 = load i32, ptr %arrayidx83, align 4
  %sub84 = sub nsw i32 %shl81, %62
  %63 = load ptr, ptr %base.addr, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %64 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %63, i64 %idxprom85
  store i32 %sub84, ptr %arrayidx86, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body76
  %65 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %65, 1
  store i32 %inc88, ptr %i, align 4
  br label %for.cond73, !llvm.loop !24

for.end89:                                        ; preds = %for.cond73
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
