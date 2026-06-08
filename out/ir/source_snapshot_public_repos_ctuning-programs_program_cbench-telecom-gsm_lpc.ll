; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/lpc.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/lpc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@__func__.Autocorrelation = private unnamed_addr constant [16 x i8] c"Autocorrelation\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"lpc.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"smax > 0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"scalauto <= 4\00", align 1
@__func__.Reflection_coefficients = private unnamed_addr constant [24 x i8] c"Reflection_coefficients\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"L_ACF[0] != 0\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"temp >= 0 && temp < 32\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"*r >= 0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"*r != MIN_WORD\00", align 1
@__func__.Transformation_to_Log_Area_Ratios = private unnamed_addr constant [34 x i8] c"Transformation_to_Log_Area_Ratios\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"temp >= 0\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"temp >= 11059\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"temp >= 26112\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_LPC_Analysis(ptr noundef %S, ptr noundef %s, ptr noundef %LARc) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %LARc.addr = alloca ptr, align 8
  %L_ACF = alloca [9 x i64], align 8
  store ptr %S, ptr %S.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %LARc, ptr %LARc.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i64], ptr %L_ACF, i64 0, i64 0
  call void @Autocorrelation(ptr noundef %0, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [9 x i64], ptr %L_ACF, i64 0, i64 0
  %1 = load ptr, ptr %LARc.addr, align 8
  call void @Reflection_coefficients(ptr noundef %arraydecay1, ptr noundef %1)
  %2 = load ptr, ptr %LARc.addr, align 8
  call void @Transformation_to_Log_Area_Ratios(ptr noundef %2)
  %3 = load ptr, ptr %LARc.addr, align 8
  call void @Quantization_and_coding(ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Autocorrelation(ptr noundef %s, ptr noundef %L_ACF) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %L_ACF.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %smax = alloca i16, align 2
  %scalauto = alloca i16, align 2
  %sp = alloca ptr, align 8
  %sl = alloca i16, align 2
  store ptr %s, ptr %s.addr, align 8
  store ptr %L_ACF, ptr %L_ACF.addr, align 8
  store i16 0, ptr %smax, align 2
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp sle i32 %0, 159
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i32, ptr %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %3 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false12

cond.true:                                        ; preds = %for.body
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds i16, ptr %4, i64 %idxprom3
  %6 = load i16, ptr %arrayidx4, align 2
  %conv5 = sext i16 %6 to i32
  %cmp6 = icmp eq i32 %conv5, -32768
  br i1 %cmp6, label %cond.true8, label %cond.false

cond.true8:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr %k, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %7, i64 %idxprom9
  %9 = load i16, ptr %arrayidx10, align 2
  %conv11 = sext i16 %9 to i32
  %sub = sub nsw i32 0, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true8
  %cond = phi i32 [ 32767, %cond.true8 ], [ %sub, %cond.false ]
  br label %cond.end16

cond.false12:                                     ; preds = %for.body
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load i32, ptr %k, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %10, i64 %idxprom13
  %12 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %12 to i32
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false12, %cond.end
  %cond17 = phi i32 [ %cond, %cond.end ], [ %conv15, %cond.false12 ]
  %conv18 = trunc i32 %cond17 to i16
  store i16 %conv18, ptr %temp, align 2
  %13 = load i16, ptr %temp, align 2
  %conv19 = sext i16 %13 to i32
  %14 = load i16, ptr %smax, align 2
  %conv20 = sext i16 %14 to i32
  %cmp21 = icmp sgt i32 %conv19, %conv20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end16
  %15 = load i16, ptr %temp, align 2
  store i16 %15, ptr %smax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load i16, ptr %smax, align 2
  %conv23 = sext i16 %17 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.end
  store i16 0, ptr %scalauto, align 2
  br label %if.end38

if.else:                                          ; preds = %for.end
  %18 = load i16, ptr %smax, align 2
  %conv27 = sext i16 %18 to i32
  %cmp28 = icmp sgt i32 %conv27, 0
  %lnot = xor i1 %cmp28, true
  %lnot.ext = zext i1 %lnot to i32
  %conv30 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv30, 0
  br i1 %tobool, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.Autocorrelation, ptr noundef @.str, i32 noundef 57, ptr noundef @.str.1) #3
  unreachable

19:                                               ; No predecessors!
  br label %cond.end33

cond.false32:                                     ; preds = %if.else
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %19
  %20 = load i16, ptr %smax, align 2
  %conv34 = sext i16 %20 to i64
  %shl = shl i64 %conv34, 16
  %call = call signext i16 @gsm_norm(i64 noundef %shl)
  %conv35 = sext i16 %call to i32
  %sub36 = sub nsw i32 4, %conv35
  %conv37 = trunc i32 %sub36 to i16
  store i16 %conv37, ptr %scalauto, align 2
  br label %if.end38

if.end38:                                         ; preds = %cond.end33, %if.then26
  %21 = load i16, ptr %scalauto, align 2
  %conv39 = sext i16 %21 to i32
  %cmp40 = icmp sgt i32 %conv39, 0
  br i1 %cmp40, label %if.then42, label %if.end109

if.then42:                                        ; preds = %if.end38
  %22 = load i16, ptr %scalauto, align 2
  %conv43 = sext i16 %22 to i32
  switch i32 %conv43, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb58
    i32 3, label %sw.bb75
    i32 4, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.then42
  store i32 0, ptr %k, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc55, %sw.bb
  %23 = load i32, ptr %k, align 4
  %cmp45 = icmp sle i32 %23, 159
  br i1 %cmp45, label %for.body47, label %for.end57

for.body47:                                       ; preds = %for.cond44
  %24 = load ptr, ptr %s.addr, align 8
  %25 = load i32, ptr %k, align 4
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %24, i64 %idxprom48
  %26 = load i16, ptr %arrayidx49, align 2
  %conv50 = sext i16 %26 to i64
  %mul = mul nsw i64 %conv50, 16384
  %add = add nsw i64 %mul, 16384
  %call51 = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv52 = trunc i32 %call51 to i16
  %27 = load ptr, ptr %s.addr, align 8
  %28 = load i32, ptr %k, align 4
  %idxprom53 = sext i32 %28 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %27, i64 %idxprom53
  store i16 %conv52, ptr %arrayidx54, align 2
  br label %for.inc55

for.inc55:                                        ; preds = %for.body47
  %29 = load i32, ptr %k, align 4
  %inc56 = add nsw i32 %29, 1
  store i32 %inc56, ptr %k, align 4
  br label %for.cond44, !llvm.loop !8

for.end57:                                        ; preds = %for.cond44
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.then42
  store i32 0, ptr %k, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc72, %sw.bb58
  %30 = load i32, ptr %k, align 4
  %cmp60 = icmp sle i32 %30, 159
  br i1 %cmp60, label %for.body62, label %for.end74

for.body62:                                       ; preds = %for.cond59
  %31 = load ptr, ptr %s.addr, align 8
  %32 = load i32, ptr %k, align 4
  %idxprom63 = sext i32 %32 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %31, i64 %idxprom63
  %33 = load i16, ptr %arrayidx64, align 2
  %conv65 = sext i16 %33 to i64
  %mul66 = mul nsw i64 %conv65, 8192
  %add67 = add nsw i64 %mul66, 16384
  %call68 = call i32 @SASR(i64 noundef %add67, i32 noundef 15)
  %conv69 = trunc i32 %call68 to i16
  %34 = load ptr, ptr %s.addr, align 8
  %35 = load i32, ptr %k, align 4
  %idxprom70 = sext i32 %35 to i64
  %arrayidx71 = getelementptr inbounds i16, ptr %34, i64 %idxprom70
  store i16 %conv69, ptr %arrayidx71, align 2
  br label %for.inc72

for.inc72:                                        ; preds = %for.body62
  %36 = load i32, ptr %k, align 4
  %inc73 = add nsw i32 %36, 1
  store i32 %inc73, ptr %k, align 4
  br label %for.cond59, !llvm.loop !9

for.end74:                                        ; preds = %for.cond59
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.then42
  store i32 0, ptr %k, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %sw.bb75
  %37 = load i32, ptr %k, align 4
  %cmp77 = icmp sle i32 %37, 159
  br i1 %cmp77, label %for.body79, label %for.end91

for.body79:                                       ; preds = %for.cond76
  %38 = load ptr, ptr %s.addr, align 8
  %39 = load i32, ptr %k, align 4
  %idxprom80 = sext i32 %39 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %38, i64 %idxprom80
  %40 = load i16, ptr %arrayidx81, align 2
  %conv82 = sext i16 %40 to i64
  %mul83 = mul nsw i64 %conv82, 4096
  %add84 = add nsw i64 %mul83, 16384
  %call85 = call i32 @SASR(i64 noundef %add84, i32 noundef 15)
  %conv86 = trunc i32 %call85 to i16
  %41 = load ptr, ptr %s.addr, align 8
  %42 = load i32, ptr %k, align 4
  %idxprom87 = sext i32 %42 to i64
  %arrayidx88 = getelementptr inbounds i16, ptr %41, i64 %idxprom87
  store i16 %conv86, ptr %arrayidx88, align 2
  br label %for.inc89

for.inc89:                                        ; preds = %for.body79
  %43 = load i32, ptr %k, align 4
  %inc90 = add nsw i32 %43, 1
  store i32 %inc90, ptr %k, align 4
  br label %for.cond76, !llvm.loop !10

for.end91:                                        ; preds = %for.cond76
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.then42
  store i32 0, ptr %k, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc106, %sw.bb92
  %44 = load i32, ptr %k, align 4
  %cmp94 = icmp sle i32 %44, 159
  br i1 %cmp94, label %for.body96, label %for.end108

for.body96:                                       ; preds = %for.cond93
  %45 = load ptr, ptr %s.addr, align 8
  %46 = load i32, ptr %k, align 4
  %idxprom97 = sext i32 %46 to i64
  %arrayidx98 = getelementptr inbounds i16, ptr %45, i64 %idxprom97
  %47 = load i16, ptr %arrayidx98, align 2
  %conv99 = sext i16 %47 to i64
  %mul100 = mul nsw i64 %conv99, 2048
  %add101 = add nsw i64 %mul100, 16384
  %call102 = call i32 @SASR(i64 noundef %add101, i32 noundef 15)
  %conv103 = trunc i32 %call102 to i16
  %48 = load ptr, ptr %s.addr, align 8
  %49 = load i32, ptr %k, align 4
  %idxprom104 = sext i32 %49 to i64
  %arrayidx105 = getelementptr inbounds i16, ptr %48, i64 %idxprom104
  store i16 %conv103, ptr %arrayidx105, align 2
  br label %for.inc106

for.inc106:                                       ; preds = %for.body96
  %50 = load i32, ptr %k, align 4
  %inc107 = add nsw i32 %50, 1
  store i32 %inc107, ptr %k, align 4
  br label %for.cond93, !llvm.loop !11

for.end108:                                       ; preds = %for.cond93
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then42, %for.end108, %for.end91, %for.end74, %for.end57
  br label %if.end109

if.end109:                                        ; preds = %sw.epilog, %if.end38
  %51 = load ptr, ptr %s.addr, align 8
  store ptr %51, ptr %sp, align 8
  %52 = load ptr, ptr %sp, align 8
  %53 = load i16, ptr %52, align 2
  store i16 %53, ptr %sl, align 2
  store i32 9, ptr %k, align 4
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc113, %if.end109
  %54 = load i32, ptr %k, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, ptr %k, align 4
  %tobool111 = icmp ne i32 %54, 0
  br i1 %tobool111, label %for.body112, label %for.end116

for.body112:                                      ; preds = %for.cond110
  br label %for.inc113

for.inc113:                                       ; preds = %for.body112
  %55 = load ptr, ptr %L_ACF.addr, align 8
  %56 = load i32, ptr %k, align 4
  %idxprom114 = sext i32 %56 to i64
  %arrayidx115 = getelementptr inbounds i64, ptr %55, i64 %idxprom114
  store i64 0, ptr %arrayidx115, align 8
  br label %for.cond110, !llvm.loop !12

for.end116:                                       ; preds = %for.cond110
  %57 = load i16, ptr %sl, align 2
  %conv117 = sext i16 %57 to i64
  %58 = load ptr, ptr %sp, align 8
  %arrayidx118 = getelementptr inbounds i16, ptr %58, i64 0
  %59 = load i16, ptr %arrayidx118, align 2
  %conv119 = sext i16 %59 to i64
  %mul120 = mul nsw i64 %conv117, %conv119
  %60 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx121 = getelementptr inbounds i64, ptr %60, i64 0
  %61 = load i64, ptr %arrayidx121, align 8
  %add122 = add nsw i64 %61, %mul120
  store i64 %add122, ptr %arrayidx121, align 8
  %62 = load ptr, ptr %sp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %62, i32 1
  store ptr %incdec.ptr, ptr %sp, align 8
  %63 = load i16, ptr %incdec.ptr, align 2
  store i16 %63, ptr %sl, align 2
  %64 = load i16, ptr %sl, align 2
  %conv123 = sext i16 %64 to i64
  %65 = load ptr, ptr %sp, align 8
  %arrayidx124 = getelementptr inbounds i16, ptr %65, i64 0
  %66 = load i16, ptr %arrayidx124, align 2
  %conv125 = sext i16 %66 to i64
  %mul126 = mul nsw i64 %conv123, %conv125
  %67 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx127 = getelementptr inbounds i64, ptr %67, i64 0
  %68 = load i64, ptr %arrayidx127, align 8
  %add128 = add nsw i64 %68, %mul126
  store i64 %add128, ptr %arrayidx127, align 8
  %69 = load i16, ptr %sl, align 2
  %conv129 = sext i16 %69 to i64
  %70 = load ptr, ptr %sp, align 8
  %arrayidx130 = getelementptr inbounds i16, ptr %70, i64 -1
  %71 = load i16, ptr %arrayidx130, align 2
  %conv131 = sext i16 %71 to i64
  %mul132 = mul nsw i64 %conv129, %conv131
  %72 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx133 = getelementptr inbounds i64, ptr %72, i64 1
  %73 = load i64, ptr %arrayidx133, align 8
  %add134 = add nsw i64 %73, %mul132
  store i64 %add134, ptr %arrayidx133, align 8
  %74 = load ptr, ptr %sp, align 8
  %incdec.ptr135 = getelementptr inbounds i16, ptr %74, i32 1
  store ptr %incdec.ptr135, ptr %sp, align 8
  %75 = load i16, ptr %incdec.ptr135, align 2
  store i16 %75, ptr %sl, align 2
  %76 = load i16, ptr %sl, align 2
  %conv136 = sext i16 %76 to i64
  %77 = load ptr, ptr %sp, align 8
  %arrayidx137 = getelementptr inbounds i16, ptr %77, i64 0
  %78 = load i16, ptr %arrayidx137, align 2
  %conv138 = sext i16 %78 to i64
  %mul139 = mul nsw i64 %conv136, %conv138
  %79 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx140 = getelementptr inbounds i64, ptr %79, i64 0
  %80 = load i64, ptr %arrayidx140, align 8
  %add141 = add nsw i64 %80, %mul139
  store i64 %add141, ptr %arrayidx140, align 8
  %81 = load i16, ptr %sl, align 2
  %conv142 = sext i16 %81 to i64
  %82 = load ptr, ptr %sp, align 8
  %arrayidx143 = getelementptr inbounds i16, ptr %82, i64 -1
  %83 = load i16, ptr %arrayidx143, align 2
  %conv144 = sext i16 %83 to i64
  %mul145 = mul nsw i64 %conv142, %conv144
  %84 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx146 = getelementptr inbounds i64, ptr %84, i64 1
  %85 = load i64, ptr %arrayidx146, align 8
  %add147 = add nsw i64 %85, %mul145
  store i64 %add147, ptr %arrayidx146, align 8
  %86 = load i16, ptr %sl, align 2
  %conv148 = sext i16 %86 to i64
  %87 = load ptr, ptr %sp, align 8
  %arrayidx149 = getelementptr inbounds i16, ptr %87, i64 -2
  %88 = load i16, ptr %arrayidx149, align 2
  %conv150 = sext i16 %88 to i64
  %mul151 = mul nsw i64 %conv148, %conv150
  %89 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx152 = getelementptr inbounds i64, ptr %89, i64 2
  %90 = load i64, ptr %arrayidx152, align 8
  %add153 = add nsw i64 %90, %mul151
  store i64 %add153, ptr %arrayidx152, align 8
  %91 = load ptr, ptr %sp, align 8
  %incdec.ptr154 = getelementptr inbounds i16, ptr %91, i32 1
  store ptr %incdec.ptr154, ptr %sp, align 8
  %92 = load i16, ptr %incdec.ptr154, align 2
  store i16 %92, ptr %sl, align 2
  %93 = load i16, ptr %sl, align 2
  %conv155 = sext i16 %93 to i64
  %94 = load ptr, ptr %sp, align 8
  %arrayidx156 = getelementptr inbounds i16, ptr %94, i64 0
  %95 = load i16, ptr %arrayidx156, align 2
  %conv157 = sext i16 %95 to i64
  %mul158 = mul nsw i64 %conv155, %conv157
  %96 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx159 = getelementptr inbounds i64, ptr %96, i64 0
  %97 = load i64, ptr %arrayidx159, align 8
  %add160 = add nsw i64 %97, %mul158
  store i64 %add160, ptr %arrayidx159, align 8
  %98 = load i16, ptr %sl, align 2
  %conv161 = sext i16 %98 to i64
  %99 = load ptr, ptr %sp, align 8
  %arrayidx162 = getelementptr inbounds i16, ptr %99, i64 -1
  %100 = load i16, ptr %arrayidx162, align 2
  %conv163 = sext i16 %100 to i64
  %mul164 = mul nsw i64 %conv161, %conv163
  %101 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx165 = getelementptr inbounds i64, ptr %101, i64 1
  %102 = load i64, ptr %arrayidx165, align 8
  %add166 = add nsw i64 %102, %mul164
  store i64 %add166, ptr %arrayidx165, align 8
  %103 = load i16, ptr %sl, align 2
  %conv167 = sext i16 %103 to i64
  %104 = load ptr, ptr %sp, align 8
  %arrayidx168 = getelementptr inbounds i16, ptr %104, i64 -2
  %105 = load i16, ptr %arrayidx168, align 2
  %conv169 = sext i16 %105 to i64
  %mul170 = mul nsw i64 %conv167, %conv169
  %106 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx171 = getelementptr inbounds i64, ptr %106, i64 2
  %107 = load i64, ptr %arrayidx171, align 8
  %add172 = add nsw i64 %107, %mul170
  store i64 %add172, ptr %arrayidx171, align 8
  %108 = load i16, ptr %sl, align 2
  %conv173 = sext i16 %108 to i64
  %109 = load ptr, ptr %sp, align 8
  %arrayidx174 = getelementptr inbounds i16, ptr %109, i64 -3
  %110 = load i16, ptr %arrayidx174, align 2
  %conv175 = sext i16 %110 to i64
  %mul176 = mul nsw i64 %conv173, %conv175
  %111 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx177 = getelementptr inbounds i64, ptr %111, i64 3
  %112 = load i64, ptr %arrayidx177, align 8
  %add178 = add nsw i64 %112, %mul176
  store i64 %add178, ptr %arrayidx177, align 8
  %113 = load ptr, ptr %sp, align 8
  %incdec.ptr179 = getelementptr inbounds i16, ptr %113, i32 1
  store ptr %incdec.ptr179, ptr %sp, align 8
  %114 = load i16, ptr %incdec.ptr179, align 2
  store i16 %114, ptr %sl, align 2
  %115 = load i16, ptr %sl, align 2
  %conv180 = sext i16 %115 to i64
  %116 = load ptr, ptr %sp, align 8
  %arrayidx181 = getelementptr inbounds i16, ptr %116, i64 0
  %117 = load i16, ptr %arrayidx181, align 2
  %conv182 = sext i16 %117 to i64
  %mul183 = mul nsw i64 %conv180, %conv182
  %118 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx184 = getelementptr inbounds i64, ptr %118, i64 0
  %119 = load i64, ptr %arrayidx184, align 8
  %add185 = add nsw i64 %119, %mul183
  store i64 %add185, ptr %arrayidx184, align 8
  %120 = load i16, ptr %sl, align 2
  %conv186 = sext i16 %120 to i64
  %121 = load ptr, ptr %sp, align 8
  %arrayidx187 = getelementptr inbounds i16, ptr %121, i64 -1
  %122 = load i16, ptr %arrayidx187, align 2
  %conv188 = sext i16 %122 to i64
  %mul189 = mul nsw i64 %conv186, %conv188
  %123 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx190 = getelementptr inbounds i64, ptr %123, i64 1
  %124 = load i64, ptr %arrayidx190, align 8
  %add191 = add nsw i64 %124, %mul189
  store i64 %add191, ptr %arrayidx190, align 8
  %125 = load i16, ptr %sl, align 2
  %conv192 = sext i16 %125 to i64
  %126 = load ptr, ptr %sp, align 8
  %arrayidx193 = getelementptr inbounds i16, ptr %126, i64 -2
  %127 = load i16, ptr %arrayidx193, align 2
  %conv194 = sext i16 %127 to i64
  %mul195 = mul nsw i64 %conv192, %conv194
  %128 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx196 = getelementptr inbounds i64, ptr %128, i64 2
  %129 = load i64, ptr %arrayidx196, align 8
  %add197 = add nsw i64 %129, %mul195
  store i64 %add197, ptr %arrayidx196, align 8
  %130 = load i16, ptr %sl, align 2
  %conv198 = sext i16 %130 to i64
  %131 = load ptr, ptr %sp, align 8
  %arrayidx199 = getelementptr inbounds i16, ptr %131, i64 -3
  %132 = load i16, ptr %arrayidx199, align 2
  %conv200 = sext i16 %132 to i64
  %mul201 = mul nsw i64 %conv198, %conv200
  %133 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx202 = getelementptr inbounds i64, ptr %133, i64 3
  %134 = load i64, ptr %arrayidx202, align 8
  %add203 = add nsw i64 %134, %mul201
  store i64 %add203, ptr %arrayidx202, align 8
  %135 = load i16, ptr %sl, align 2
  %conv204 = sext i16 %135 to i64
  %136 = load ptr, ptr %sp, align 8
  %arrayidx205 = getelementptr inbounds i16, ptr %136, i64 -4
  %137 = load i16, ptr %arrayidx205, align 2
  %conv206 = sext i16 %137 to i64
  %mul207 = mul nsw i64 %conv204, %conv206
  %138 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx208 = getelementptr inbounds i64, ptr %138, i64 4
  %139 = load i64, ptr %arrayidx208, align 8
  %add209 = add nsw i64 %139, %mul207
  store i64 %add209, ptr %arrayidx208, align 8
  %140 = load ptr, ptr %sp, align 8
  %incdec.ptr210 = getelementptr inbounds i16, ptr %140, i32 1
  store ptr %incdec.ptr210, ptr %sp, align 8
  %141 = load i16, ptr %incdec.ptr210, align 2
  store i16 %141, ptr %sl, align 2
  %142 = load i16, ptr %sl, align 2
  %conv211 = sext i16 %142 to i64
  %143 = load ptr, ptr %sp, align 8
  %arrayidx212 = getelementptr inbounds i16, ptr %143, i64 0
  %144 = load i16, ptr %arrayidx212, align 2
  %conv213 = sext i16 %144 to i64
  %mul214 = mul nsw i64 %conv211, %conv213
  %145 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx215 = getelementptr inbounds i64, ptr %145, i64 0
  %146 = load i64, ptr %arrayidx215, align 8
  %add216 = add nsw i64 %146, %mul214
  store i64 %add216, ptr %arrayidx215, align 8
  %147 = load i16, ptr %sl, align 2
  %conv217 = sext i16 %147 to i64
  %148 = load ptr, ptr %sp, align 8
  %arrayidx218 = getelementptr inbounds i16, ptr %148, i64 -1
  %149 = load i16, ptr %arrayidx218, align 2
  %conv219 = sext i16 %149 to i64
  %mul220 = mul nsw i64 %conv217, %conv219
  %150 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx221 = getelementptr inbounds i64, ptr %150, i64 1
  %151 = load i64, ptr %arrayidx221, align 8
  %add222 = add nsw i64 %151, %mul220
  store i64 %add222, ptr %arrayidx221, align 8
  %152 = load i16, ptr %sl, align 2
  %conv223 = sext i16 %152 to i64
  %153 = load ptr, ptr %sp, align 8
  %arrayidx224 = getelementptr inbounds i16, ptr %153, i64 -2
  %154 = load i16, ptr %arrayidx224, align 2
  %conv225 = sext i16 %154 to i64
  %mul226 = mul nsw i64 %conv223, %conv225
  %155 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx227 = getelementptr inbounds i64, ptr %155, i64 2
  %156 = load i64, ptr %arrayidx227, align 8
  %add228 = add nsw i64 %156, %mul226
  store i64 %add228, ptr %arrayidx227, align 8
  %157 = load i16, ptr %sl, align 2
  %conv229 = sext i16 %157 to i64
  %158 = load ptr, ptr %sp, align 8
  %arrayidx230 = getelementptr inbounds i16, ptr %158, i64 -3
  %159 = load i16, ptr %arrayidx230, align 2
  %conv231 = sext i16 %159 to i64
  %mul232 = mul nsw i64 %conv229, %conv231
  %160 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx233 = getelementptr inbounds i64, ptr %160, i64 3
  %161 = load i64, ptr %arrayidx233, align 8
  %add234 = add nsw i64 %161, %mul232
  store i64 %add234, ptr %arrayidx233, align 8
  %162 = load i16, ptr %sl, align 2
  %conv235 = sext i16 %162 to i64
  %163 = load ptr, ptr %sp, align 8
  %arrayidx236 = getelementptr inbounds i16, ptr %163, i64 -4
  %164 = load i16, ptr %arrayidx236, align 2
  %conv237 = sext i16 %164 to i64
  %mul238 = mul nsw i64 %conv235, %conv237
  %165 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx239 = getelementptr inbounds i64, ptr %165, i64 4
  %166 = load i64, ptr %arrayidx239, align 8
  %add240 = add nsw i64 %166, %mul238
  store i64 %add240, ptr %arrayidx239, align 8
  %167 = load i16, ptr %sl, align 2
  %conv241 = sext i16 %167 to i64
  %168 = load ptr, ptr %sp, align 8
  %arrayidx242 = getelementptr inbounds i16, ptr %168, i64 -5
  %169 = load i16, ptr %arrayidx242, align 2
  %conv243 = sext i16 %169 to i64
  %mul244 = mul nsw i64 %conv241, %conv243
  %170 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx245 = getelementptr inbounds i64, ptr %170, i64 5
  %171 = load i64, ptr %arrayidx245, align 8
  %add246 = add nsw i64 %171, %mul244
  store i64 %add246, ptr %arrayidx245, align 8
  %172 = load ptr, ptr %sp, align 8
  %incdec.ptr247 = getelementptr inbounds i16, ptr %172, i32 1
  store ptr %incdec.ptr247, ptr %sp, align 8
  %173 = load i16, ptr %incdec.ptr247, align 2
  store i16 %173, ptr %sl, align 2
  %174 = load i16, ptr %sl, align 2
  %conv248 = sext i16 %174 to i64
  %175 = load ptr, ptr %sp, align 8
  %arrayidx249 = getelementptr inbounds i16, ptr %175, i64 0
  %176 = load i16, ptr %arrayidx249, align 2
  %conv250 = sext i16 %176 to i64
  %mul251 = mul nsw i64 %conv248, %conv250
  %177 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx252 = getelementptr inbounds i64, ptr %177, i64 0
  %178 = load i64, ptr %arrayidx252, align 8
  %add253 = add nsw i64 %178, %mul251
  store i64 %add253, ptr %arrayidx252, align 8
  %179 = load i16, ptr %sl, align 2
  %conv254 = sext i16 %179 to i64
  %180 = load ptr, ptr %sp, align 8
  %arrayidx255 = getelementptr inbounds i16, ptr %180, i64 -1
  %181 = load i16, ptr %arrayidx255, align 2
  %conv256 = sext i16 %181 to i64
  %mul257 = mul nsw i64 %conv254, %conv256
  %182 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx258 = getelementptr inbounds i64, ptr %182, i64 1
  %183 = load i64, ptr %arrayidx258, align 8
  %add259 = add nsw i64 %183, %mul257
  store i64 %add259, ptr %arrayidx258, align 8
  %184 = load i16, ptr %sl, align 2
  %conv260 = sext i16 %184 to i64
  %185 = load ptr, ptr %sp, align 8
  %arrayidx261 = getelementptr inbounds i16, ptr %185, i64 -2
  %186 = load i16, ptr %arrayidx261, align 2
  %conv262 = sext i16 %186 to i64
  %mul263 = mul nsw i64 %conv260, %conv262
  %187 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx264 = getelementptr inbounds i64, ptr %187, i64 2
  %188 = load i64, ptr %arrayidx264, align 8
  %add265 = add nsw i64 %188, %mul263
  store i64 %add265, ptr %arrayidx264, align 8
  %189 = load i16, ptr %sl, align 2
  %conv266 = sext i16 %189 to i64
  %190 = load ptr, ptr %sp, align 8
  %arrayidx267 = getelementptr inbounds i16, ptr %190, i64 -3
  %191 = load i16, ptr %arrayidx267, align 2
  %conv268 = sext i16 %191 to i64
  %mul269 = mul nsw i64 %conv266, %conv268
  %192 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx270 = getelementptr inbounds i64, ptr %192, i64 3
  %193 = load i64, ptr %arrayidx270, align 8
  %add271 = add nsw i64 %193, %mul269
  store i64 %add271, ptr %arrayidx270, align 8
  %194 = load i16, ptr %sl, align 2
  %conv272 = sext i16 %194 to i64
  %195 = load ptr, ptr %sp, align 8
  %arrayidx273 = getelementptr inbounds i16, ptr %195, i64 -4
  %196 = load i16, ptr %arrayidx273, align 2
  %conv274 = sext i16 %196 to i64
  %mul275 = mul nsw i64 %conv272, %conv274
  %197 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx276 = getelementptr inbounds i64, ptr %197, i64 4
  %198 = load i64, ptr %arrayidx276, align 8
  %add277 = add nsw i64 %198, %mul275
  store i64 %add277, ptr %arrayidx276, align 8
  %199 = load i16, ptr %sl, align 2
  %conv278 = sext i16 %199 to i64
  %200 = load ptr, ptr %sp, align 8
  %arrayidx279 = getelementptr inbounds i16, ptr %200, i64 -5
  %201 = load i16, ptr %arrayidx279, align 2
  %conv280 = sext i16 %201 to i64
  %mul281 = mul nsw i64 %conv278, %conv280
  %202 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx282 = getelementptr inbounds i64, ptr %202, i64 5
  %203 = load i64, ptr %arrayidx282, align 8
  %add283 = add nsw i64 %203, %mul281
  store i64 %add283, ptr %arrayidx282, align 8
  %204 = load i16, ptr %sl, align 2
  %conv284 = sext i16 %204 to i64
  %205 = load ptr, ptr %sp, align 8
  %arrayidx285 = getelementptr inbounds i16, ptr %205, i64 -6
  %206 = load i16, ptr %arrayidx285, align 2
  %conv286 = sext i16 %206 to i64
  %mul287 = mul nsw i64 %conv284, %conv286
  %207 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx288 = getelementptr inbounds i64, ptr %207, i64 6
  %208 = load i64, ptr %arrayidx288, align 8
  %add289 = add nsw i64 %208, %mul287
  store i64 %add289, ptr %arrayidx288, align 8
  %209 = load ptr, ptr %sp, align 8
  %incdec.ptr290 = getelementptr inbounds i16, ptr %209, i32 1
  store ptr %incdec.ptr290, ptr %sp, align 8
  %210 = load i16, ptr %incdec.ptr290, align 2
  store i16 %210, ptr %sl, align 2
  %211 = load i16, ptr %sl, align 2
  %conv291 = sext i16 %211 to i64
  %212 = load ptr, ptr %sp, align 8
  %arrayidx292 = getelementptr inbounds i16, ptr %212, i64 0
  %213 = load i16, ptr %arrayidx292, align 2
  %conv293 = sext i16 %213 to i64
  %mul294 = mul nsw i64 %conv291, %conv293
  %214 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx295 = getelementptr inbounds i64, ptr %214, i64 0
  %215 = load i64, ptr %arrayidx295, align 8
  %add296 = add nsw i64 %215, %mul294
  store i64 %add296, ptr %arrayidx295, align 8
  %216 = load i16, ptr %sl, align 2
  %conv297 = sext i16 %216 to i64
  %217 = load ptr, ptr %sp, align 8
  %arrayidx298 = getelementptr inbounds i16, ptr %217, i64 -1
  %218 = load i16, ptr %arrayidx298, align 2
  %conv299 = sext i16 %218 to i64
  %mul300 = mul nsw i64 %conv297, %conv299
  %219 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx301 = getelementptr inbounds i64, ptr %219, i64 1
  %220 = load i64, ptr %arrayidx301, align 8
  %add302 = add nsw i64 %220, %mul300
  store i64 %add302, ptr %arrayidx301, align 8
  %221 = load i16, ptr %sl, align 2
  %conv303 = sext i16 %221 to i64
  %222 = load ptr, ptr %sp, align 8
  %arrayidx304 = getelementptr inbounds i16, ptr %222, i64 -2
  %223 = load i16, ptr %arrayidx304, align 2
  %conv305 = sext i16 %223 to i64
  %mul306 = mul nsw i64 %conv303, %conv305
  %224 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx307 = getelementptr inbounds i64, ptr %224, i64 2
  %225 = load i64, ptr %arrayidx307, align 8
  %add308 = add nsw i64 %225, %mul306
  store i64 %add308, ptr %arrayidx307, align 8
  %226 = load i16, ptr %sl, align 2
  %conv309 = sext i16 %226 to i64
  %227 = load ptr, ptr %sp, align 8
  %arrayidx310 = getelementptr inbounds i16, ptr %227, i64 -3
  %228 = load i16, ptr %arrayidx310, align 2
  %conv311 = sext i16 %228 to i64
  %mul312 = mul nsw i64 %conv309, %conv311
  %229 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx313 = getelementptr inbounds i64, ptr %229, i64 3
  %230 = load i64, ptr %arrayidx313, align 8
  %add314 = add nsw i64 %230, %mul312
  store i64 %add314, ptr %arrayidx313, align 8
  %231 = load i16, ptr %sl, align 2
  %conv315 = sext i16 %231 to i64
  %232 = load ptr, ptr %sp, align 8
  %arrayidx316 = getelementptr inbounds i16, ptr %232, i64 -4
  %233 = load i16, ptr %arrayidx316, align 2
  %conv317 = sext i16 %233 to i64
  %mul318 = mul nsw i64 %conv315, %conv317
  %234 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx319 = getelementptr inbounds i64, ptr %234, i64 4
  %235 = load i64, ptr %arrayidx319, align 8
  %add320 = add nsw i64 %235, %mul318
  store i64 %add320, ptr %arrayidx319, align 8
  %236 = load i16, ptr %sl, align 2
  %conv321 = sext i16 %236 to i64
  %237 = load ptr, ptr %sp, align 8
  %arrayidx322 = getelementptr inbounds i16, ptr %237, i64 -5
  %238 = load i16, ptr %arrayidx322, align 2
  %conv323 = sext i16 %238 to i64
  %mul324 = mul nsw i64 %conv321, %conv323
  %239 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx325 = getelementptr inbounds i64, ptr %239, i64 5
  %240 = load i64, ptr %arrayidx325, align 8
  %add326 = add nsw i64 %240, %mul324
  store i64 %add326, ptr %arrayidx325, align 8
  %241 = load i16, ptr %sl, align 2
  %conv327 = sext i16 %241 to i64
  %242 = load ptr, ptr %sp, align 8
  %arrayidx328 = getelementptr inbounds i16, ptr %242, i64 -6
  %243 = load i16, ptr %arrayidx328, align 2
  %conv329 = sext i16 %243 to i64
  %mul330 = mul nsw i64 %conv327, %conv329
  %244 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx331 = getelementptr inbounds i64, ptr %244, i64 6
  %245 = load i64, ptr %arrayidx331, align 8
  %add332 = add nsw i64 %245, %mul330
  store i64 %add332, ptr %arrayidx331, align 8
  %246 = load i16, ptr %sl, align 2
  %conv333 = sext i16 %246 to i64
  %247 = load ptr, ptr %sp, align 8
  %arrayidx334 = getelementptr inbounds i16, ptr %247, i64 -7
  %248 = load i16, ptr %arrayidx334, align 2
  %conv335 = sext i16 %248 to i64
  %mul336 = mul nsw i64 %conv333, %conv335
  %249 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx337 = getelementptr inbounds i64, ptr %249, i64 7
  %250 = load i64, ptr %arrayidx337, align 8
  %add338 = add nsw i64 %250, %mul336
  store i64 %add338, ptr %arrayidx337, align 8
  store i32 8, ptr %i, align 4
  br label %for.cond339

for.cond339:                                      ; preds = %for.inc398, %for.end116
  %251 = load i32, ptr %i, align 4
  %cmp340 = icmp sle i32 %251, 159
  br i1 %cmp340, label %for.body342, label %for.end400

for.body342:                                      ; preds = %for.cond339
  %252 = load ptr, ptr %sp, align 8
  %incdec.ptr343 = getelementptr inbounds i16, ptr %252, i32 1
  store ptr %incdec.ptr343, ptr %sp, align 8
  %253 = load i16, ptr %incdec.ptr343, align 2
  store i16 %253, ptr %sl, align 2
  %254 = load i16, ptr %sl, align 2
  %conv344 = sext i16 %254 to i64
  %255 = load ptr, ptr %sp, align 8
  %arrayidx345 = getelementptr inbounds i16, ptr %255, i64 0
  %256 = load i16, ptr %arrayidx345, align 2
  %conv346 = sext i16 %256 to i64
  %mul347 = mul nsw i64 %conv344, %conv346
  %257 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx348 = getelementptr inbounds i64, ptr %257, i64 0
  %258 = load i64, ptr %arrayidx348, align 8
  %add349 = add nsw i64 %258, %mul347
  store i64 %add349, ptr %arrayidx348, align 8
  %259 = load i16, ptr %sl, align 2
  %conv350 = sext i16 %259 to i64
  %260 = load ptr, ptr %sp, align 8
  %arrayidx351 = getelementptr inbounds i16, ptr %260, i64 -1
  %261 = load i16, ptr %arrayidx351, align 2
  %conv352 = sext i16 %261 to i64
  %mul353 = mul nsw i64 %conv350, %conv352
  %262 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx354 = getelementptr inbounds i64, ptr %262, i64 1
  %263 = load i64, ptr %arrayidx354, align 8
  %add355 = add nsw i64 %263, %mul353
  store i64 %add355, ptr %arrayidx354, align 8
  %264 = load i16, ptr %sl, align 2
  %conv356 = sext i16 %264 to i64
  %265 = load ptr, ptr %sp, align 8
  %arrayidx357 = getelementptr inbounds i16, ptr %265, i64 -2
  %266 = load i16, ptr %arrayidx357, align 2
  %conv358 = sext i16 %266 to i64
  %mul359 = mul nsw i64 %conv356, %conv358
  %267 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx360 = getelementptr inbounds i64, ptr %267, i64 2
  %268 = load i64, ptr %arrayidx360, align 8
  %add361 = add nsw i64 %268, %mul359
  store i64 %add361, ptr %arrayidx360, align 8
  %269 = load i16, ptr %sl, align 2
  %conv362 = sext i16 %269 to i64
  %270 = load ptr, ptr %sp, align 8
  %arrayidx363 = getelementptr inbounds i16, ptr %270, i64 -3
  %271 = load i16, ptr %arrayidx363, align 2
  %conv364 = sext i16 %271 to i64
  %mul365 = mul nsw i64 %conv362, %conv364
  %272 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx366 = getelementptr inbounds i64, ptr %272, i64 3
  %273 = load i64, ptr %arrayidx366, align 8
  %add367 = add nsw i64 %273, %mul365
  store i64 %add367, ptr %arrayidx366, align 8
  %274 = load i16, ptr %sl, align 2
  %conv368 = sext i16 %274 to i64
  %275 = load ptr, ptr %sp, align 8
  %arrayidx369 = getelementptr inbounds i16, ptr %275, i64 -4
  %276 = load i16, ptr %arrayidx369, align 2
  %conv370 = sext i16 %276 to i64
  %mul371 = mul nsw i64 %conv368, %conv370
  %277 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx372 = getelementptr inbounds i64, ptr %277, i64 4
  %278 = load i64, ptr %arrayidx372, align 8
  %add373 = add nsw i64 %278, %mul371
  store i64 %add373, ptr %arrayidx372, align 8
  %279 = load i16, ptr %sl, align 2
  %conv374 = sext i16 %279 to i64
  %280 = load ptr, ptr %sp, align 8
  %arrayidx375 = getelementptr inbounds i16, ptr %280, i64 -5
  %281 = load i16, ptr %arrayidx375, align 2
  %conv376 = sext i16 %281 to i64
  %mul377 = mul nsw i64 %conv374, %conv376
  %282 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx378 = getelementptr inbounds i64, ptr %282, i64 5
  %283 = load i64, ptr %arrayidx378, align 8
  %add379 = add nsw i64 %283, %mul377
  store i64 %add379, ptr %arrayidx378, align 8
  %284 = load i16, ptr %sl, align 2
  %conv380 = sext i16 %284 to i64
  %285 = load ptr, ptr %sp, align 8
  %arrayidx381 = getelementptr inbounds i16, ptr %285, i64 -6
  %286 = load i16, ptr %arrayidx381, align 2
  %conv382 = sext i16 %286 to i64
  %mul383 = mul nsw i64 %conv380, %conv382
  %287 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx384 = getelementptr inbounds i64, ptr %287, i64 6
  %288 = load i64, ptr %arrayidx384, align 8
  %add385 = add nsw i64 %288, %mul383
  store i64 %add385, ptr %arrayidx384, align 8
  %289 = load i16, ptr %sl, align 2
  %conv386 = sext i16 %289 to i64
  %290 = load ptr, ptr %sp, align 8
  %arrayidx387 = getelementptr inbounds i16, ptr %290, i64 -7
  %291 = load i16, ptr %arrayidx387, align 2
  %conv388 = sext i16 %291 to i64
  %mul389 = mul nsw i64 %conv386, %conv388
  %292 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx390 = getelementptr inbounds i64, ptr %292, i64 7
  %293 = load i64, ptr %arrayidx390, align 8
  %add391 = add nsw i64 %293, %mul389
  store i64 %add391, ptr %arrayidx390, align 8
  %294 = load i16, ptr %sl, align 2
  %conv392 = sext i16 %294 to i64
  %295 = load ptr, ptr %sp, align 8
  %arrayidx393 = getelementptr inbounds i16, ptr %295, i64 -8
  %296 = load i16, ptr %arrayidx393, align 2
  %conv394 = sext i16 %296 to i64
  %mul395 = mul nsw i64 %conv392, %conv394
  %297 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx396 = getelementptr inbounds i64, ptr %297, i64 8
  %298 = load i64, ptr %arrayidx396, align 8
  %add397 = add nsw i64 %298, %mul395
  store i64 %add397, ptr %arrayidx396, align 8
  br label %for.inc398

for.inc398:                                       ; preds = %for.body342
  %299 = load i32, ptr %i, align 4
  %inc399 = add nsw i32 %299, 1
  store i32 %inc399, ptr %i, align 4
  br label %for.cond339, !llvm.loop !13

for.end400:                                       ; preds = %for.cond339
  store i32 9, ptr %k, align 4
  br label %for.cond401

for.cond401:                                      ; preds = %for.inc405, %for.end400
  %300 = load i32, ptr %k, align 4
  %dec402 = add nsw i32 %300, -1
  store i32 %dec402, ptr %k, align 4
  %tobool403 = icmp ne i32 %300, 0
  br i1 %tobool403, label %for.body404, label %for.end409

for.body404:                                      ; preds = %for.cond401
  br label %for.inc405

for.inc405:                                       ; preds = %for.body404
  %301 = load ptr, ptr %L_ACF.addr, align 8
  %302 = load i32, ptr %k, align 4
  %idxprom406 = sext i32 %302 to i64
  %arrayidx407 = getelementptr inbounds i64, ptr %301, i64 %idxprom406
  %303 = load i64, ptr %arrayidx407, align 8
  %shl408 = shl i64 %303, 1
  store i64 %shl408, ptr %arrayidx407, align 8
  br label %for.cond401, !llvm.loop !14

for.end409:                                       ; preds = %for.cond401
  %304 = load i16, ptr %scalauto, align 2
  %conv410 = sext i16 %304 to i32
  %cmp411 = icmp sgt i32 %conv410, 0
  br i1 %cmp411, label %if.then413, label %if.end435

if.then413:                                       ; preds = %for.end409
  %305 = load i16, ptr %scalauto, align 2
  %conv414 = sext i16 %305 to i32
  %cmp415 = icmp sle i32 %conv414, 4
  %lnot417 = xor i1 %cmp415, true
  %lnot.ext418 = zext i1 %lnot417 to i32
  %conv419 = sext i32 %lnot.ext418 to i64
  %tobool420 = icmp ne i64 %conv419, 0
  br i1 %tobool420, label %cond.true421, label %cond.false422

cond.true421:                                     ; preds = %if.then413
  call void @__assert_rtn(ptr noundef @__func__.Autocorrelation, ptr noundef @.str, i32 noundef 142, ptr noundef @.str.2) #3
  unreachable

306:                                              ; No predecessors!
  br label %cond.end423

cond.false422:                                    ; preds = %if.then413
  br label %cond.end423

cond.end423:                                      ; preds = %cond.false422, %306
  store i32 160, ptr %k, align 4
  br label %for.cond424

for.cond424:                                      ; preds = %for.inc428, %cond.end423
  %307 = load i32, ptr %k, align 4
  %dec425 = add nsw i32 %307, -1
  store i32 %dec425, ptr %k, align 4
  %tobool426 = icmp ne i32 %307, 0
  br i1 %tobool426, label %for.body427, label %for.end434

for.body427:                                      ; preds = %for.cond424
  br label %for.inc428

for.inc428:                                       ; preds = %for.body427
  %308 = load i16, ptr %scalauto, align 2
  %conv429 = sext i16 %308 to i32
  %309 = load ptr, ptr %s.addr, align 8
  %incdec.ptr430 = getelementptr inbounds i16, ptr %309, i32 1
  store ptr %incdec.ptr430, ptr %s.addr, align 8
  %310 = load i16, ptr %309, align 2
  %conv431 = sext i16 %310 to i32
  %shl432 = shl i32 %conv431, %conv429
  %conv433 = trunc i32 %shl432 to i16
  store i16 %conv433, ptr %309, align 2
  br label %for.cond424, !llvm.loop !15

for.end434:                                       ; preds = %for.cond424
  br label %if.end435

if.end435:                                        ; preds = %for.end434, %for.end409
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Reflection_coefficients(ptr noundef %L_ACF, ptr noundef %r) #0 {
entry:
  %L_ACF.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %ACF = alloca [9 x i16], align 2
  %P = alloca [9 x i16], align 2
  %K = alloca [9 x i16], align 2
  store ptr %L_ACF, ptr %L_ACF.addr, align 8
  store ptr %r, ptr %r.addr, align 8
  %0 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  store i16 0, ptr %3, align 2
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %for.end212

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %4, i64 0
  %5 = load i64, ptr %arrayidx1, align 8
  %cmp2 = icmp ne i64 %5, 0
  %lnot = xor i1 %cmp2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.Reflection_coefficients, ptr noundef @.str, i32 noundef 197, ptr noundef @.str.3) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load ptr, ptr %L_ACF.addr, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %7, i64 0
  %8 = load i64, ptr %arrayidx4, align 8
  %call = call signext i16 @gsm_norm(i64 noundef %8)
  store i16 %call, ptr %temp, align 2
  %9 = load i16, ptr %temp, align 2
  %conv5 = sext i16 %9 to i32
  %cmp6 = icmp sge i32 %conv5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %10 = load i16, ptr %temp, align 2
  %conv8 = sext i16 %10 to i32
  %cmp9 = icmp slt i32 %conv8, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %11 = phi i1 [ false, %cond.end ], [ %cmp9, %land.rhs ]
  %lnot11 = xor i1 %11, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %tobool14 = icmp ne i64 %conv13, 0
  br i1 %tobool14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.Reflection_coefficients, ptr noundef @.str, i32 noundef 200, ptr noundef @.str.4) #3
  unreachable

12:                                               ; No predecessors!
  br label %cond.end17

cond.false16:                                     ; preds = %land.end
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %12
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc28, %cond.end17
  %13 = load i32, ptr %i, align 4
  %cmp19 = icmp sle i32 %13, 8
  br i1 %cmp19, label %for.body21, label %for.end29

for.body21:                                       ; preds = %for.cond18
  %14 = load ptr, ptr %L_ACF.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %14, i64 %idxprom
  %16 = load i64, ptr %arrayidx22, align 8
  %17 = load i16, ptr %temp, align 2
  %conv23 = sext i16 %17 to i32
  %sh_prom = zext i32 %conv23 to i64
  %shl = shl i64 %16, %sh_prom
  %call24 = call i32 @SASR(i64 noundef %shl, i32 noundef 16)
  %conv25 = trunc i32 %call24 to i16
  %18 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [9 x i16], ptr %ACF, i64 0, i64 %idxprom26
  store i16 %conv25, ptr %arrayidx27, align 2
  br label %for.inc28

for.inc28:                                        ; preds = %for.body21
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond18, !llvm.loop !17

for.end29:                                        ; preds = %for.cond18
  store i32 1, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %for.end29
  %20 = load i32, ptr %i, align 4
  %cmp31 = icmp sle i32 %20, 7
  br i1 %cmp31, label %for.body33, label %for.end40

for.body33:                                       ; preds = %for.cond30
  %21 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %21 to i64
  %arrayidx35 = getelementptr inbounds [9 x i16], ptr %ACF, i64 0, i64 %idxprom34
  %22 = load i16, ptr %arrayidx35, align 2
  %23 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [9 x i16], ptr %K, i64 0, i64 %idxprom36
  store i16 %22, ptr %arrayidx37, align 2
  br label %for.inc38

for.inc38:                                        ; preds = %for.body33
  %24 = load i32, ptr %i, align 4
  %inc39 = add nsw i32 %24, 1
  store i32 %inc39, ptr %i, align 4
  br label %for.cond30, !llvm.loop !18

for.end40:                                        ; preds = %for.cond30
  store i32 0, ptr %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %for.end40
  %25 = load i32, ptr %i, align 4
  %cmp42 = icmp sle i32 %25, 8
  br i1 %cmp42, label %for.body44, label %for.end51

for.body44:                                       ; preds = %for.cond41
  %26 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [9 x i16], ptr %ACF, i64 0, i64 %idxprom45
  %27 = load i16, ptr %arrayidx46, align 2
  %28 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 %idxprom47
  store i16 %27, ptr %arrayidx48, align 2
  br label %for.inc49

for.inc49:                                        ; preds = %for.body44
  %29 = load i32, ptr %i, align 4
  %inc50 = add nsw i32 %29, 1
  store i32 %inc50, ptr %i, align 4
  br label %for.cond41, !llvm.loop !19

for.end51:                                        ; preds = %for.cond41
  store i32 1, ptr %n, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc209, %for.end51
  %30 = load i32, ptr %n, align 4
  %cmp53 = icmp sle i32 %30, 8
  br i1 %cmp53, label %for.body55, label %for.end212

for.body55:                                       ; preds = %for.cond52
  %arrayidx56 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 1
  %31 = load i16, ptr %arrayidx56, align 2
  store i16 %31, ptr %temp, align 2
  %32 = load i16, ptr %temp, align 2
  %conv57 = sext i16 %32 to i32
  %cmp58 = icmp slt i32 %conv57, 0
  br i1 %cmp58, label %cond.true60, label %cond.false68

cond.true60:                                      ; preds = %for.body55
  %33 = load i16, ptr %temp, align 2
  %conv61 = sext i16 %33 to i32
  %cmp62 = icmp eq i32 %conv61, -32768
  br i1 %cmp62, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.true60
  br label %cond.end67

cond.false65:                                     ; preds = %cond.true60
  %34 = load i16, ptr %temp, align 2
  %conv66 = sext i16 %34 to i32
  %sub = sub nsw i32 0, %conv66
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false65, %cond.true64
  %cond = phi i32 [ 32767, %cond.true64 ], [ %sub, %cond.false65 ]
  br label %cond.end70

cond.false68:                                     ; preds = %for.body55
  %35 = load i16, ptr %temp, align 2
  %conv69 = sext i16 %35 to i32
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false68, %cond.end67
  %cond71 = phi i32 [ %cond, %cond.end67 ], [ %conv69, %cond.false68 ]
  %conv72 = trunc i32 %cond71 to i16
  store i16 %conv72, ptr %temp, align 2
  %arrayidx73 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 0
  %36 = load i16, ptr %arrayidx73, align 2
  %conv74 = sext i16 %36 to i32
  %37 = load i16, ptr %temp, align 2
  %conv75 = sext i16 %37 to i32
  %cmp76 = icmp slt i32 %conv74, %conv75
  br i1 %cmp76, label %if.then78, label %if.end87

if.then78:                                        ; preds = %cond.end70
  %38 = load i32, ptr %n, align 4
  store i32 %38, ptr %i, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc84, %if.then78
  %39 = load i32, ptr %i, align 4
  %cmp80 = icmp sle i32 %39, 8
  br i1 %cmp80, label %for.body82, label %for.end86

for.body82:                                       ; preds = %for.cond79
  %40 = load ptr, ptr %r.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i16, ptr %40, i32 1
  store ptr %incdec.ptr83, ptr %r.addr, align 8
  store i16 0, ptr %40, align 2
  br label %for.inc84

for.inc84:                                        ; preds = %for.body82
  %41 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %41, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond79, !llvm.loop !20

for.end86:                                        ; preds = %for.cond79
  br label %for.end212

if.end87:                                         ; preds = %cond.end70
  %42 = load i16, ptr %temp, align 2
  %arrayidx88 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 0
  %43 = load i16, ptr %arrayidx88, align 2
  %call89 = call signext i16 @gsm_div(i16 noundef signext %42, i16 noundef signext %43)
  %44 = load ptr, ptr %r.addr, align 8
  store i16 %call89, ptr %44, align 2
  %45 = load ptr, ptr %r.addr, align 8
  %46 = load i16, ptr %45, align 2
  %conv90 = sext i16 %46 to i32
  %cmp91 = icmp sge i32 %conv90, 0
  %lnot93 = xor i1 %cmp91, true
  %lnot.ext94 = zext i1 %lnot93 to i32
  %conv95 = sext i32 %lnot.ext94 to i64
  %tobool96 = icmp ne i64 %conv95, 0
  br i1 %tobool96, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %if.end87
  call void @__assert_rtn(ptr noundef @__func__.Reflection_coefficients, ptr noundef @.str, i32 noundef 224, ptr noundef @.str.5) #3
  unreachable

47:                                               ; No predecessors!
  br label %cond.end99

cond.false98:                                     ; preds = %if.end87
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false98, %47
  %arrayidx100 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 1
  %48 = load i16, ptr %arrayidx100, align 2
  %conv101 = sext i16 %48 to i32
  %cmp102 = icmp sgt i32 %conv101, 0
  br i1 %cmp102, label %if.then104, label %if.end108

if.then104:                                       ; preds = %cond.end99
  %49 = load ptr, ptr %r.addr, align 8
  %50 = load i16, ptr %49, align 2
  %conv105 = sext i16 %50 to i32
  %sub106 = sub nsw i32 0, %conv105
  %conv107 = trunc i32 %sub106 to i16
  %51 = load ptr, ptr %r.addr, align 8
  store i16 %conv107, ptr %51, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %cond.end99
  %52 = load ptr, ptr %r.addr, align 8
  %53 = load i16, ptr %52, align 2
  %conv109 = sext i16 %53 to i32
  %cmp110 = icmp ne i32 %conv109, -32768
  %lnot112 = xor i1 %cmp110, true
  %lnot.ext113 = zext i1 %lnot112 to i32
  %conv114 = sext i32 %lnot.ext113 to i64
  %tobool115 = icmp ne i64 %conv114, 0
  br i1 %tobool115, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %if.end108
  call void @__assert_rtn(ptr noundef @__func__.Reflection_coefficients, ptr noundef @.str, i32 noundef 226, ptr noundef @.str.6) #3
  unreachable

54:                                               ; No predecessors!
  br label %cond.end118

cond.false117:                                    ; preds = %if.end108
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %54
  %55 = load i32, ptr %n, align 4
  %cmp119 = icmp eq i32 %55, 8
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %cond.end118
  br label %for.end212

if.end122:                                        ; preds = %cond.end118
  %arrayidx123 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 1
  %56 = load i16, ptr %arrayidx123, align 2
  %conv124 = sext i16 %56 to i64
  %57 = load ptr, ptr %r.addr, align 8
  %58 = load i16, ptr %57, align 2
  %conv125 = sext i16 %58 to i64
  %mul = mul nsw i64 %conv124, %conv125
  %add = add nsw i64 %mul, 16384
  %call126 = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv127 = trunc i32 %call126 to i16
  store i16 %conv127, ptr %temp, align 2
  %arrayidx128 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 0
  %59 = load i16, ptr %arrayidx128, align 2
  %conv129 = sext i16 %59 to i64
  %60 = load i16, ptr %temp, align 2
  %conv130 = sext i16 %60 to i64
  %add131 = add nsw i64 %conv129, %conv130
  store i64 %add131, ptr %ltmp, align 8
  %sub132 = sub nsw i64 %add131, -32768
  %cmp133 = icmp ugt i64 %sub132, 65535
  br i1 %cmp133, label %cond.true135, label %cond.false140

cond.true135:                                     ; preds = %if.end122
  %61 = load i64, ptr %ltmp, align 8
  %cmp136 = icmp sgt i64 %61, 0
  %62 = zext i1 %cmp136 to i64
  %cond138 = select i1 %cmp136, i32 32767, i32 -32768
  %conv139 = sext i32 %cond138 to i64
  br label %cond.end141

cond.false140:                                    ; preds = %if.end122
  %63 = load i64, ptr %ltmp, align 8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true135
  %cond142 = phi i64 [ %conv139, %cond.true135 ], [ %63, %cond.false140 ]
  %conv143 = trunc i64 %cond142 to i16
  %arrayidx144 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 0
  store i16 %conv143, ptr %arrayidx144, align 2
  store i32 1, ptr %m, align 4
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc206, %cond.end141
  %64 = load i32, ptr %m, align 4
  %65 = load i32, ptr %n, align 4
  %sub146 = sub nsw i32 8, %65
  %cmp147 = icmp sle i32 %64, %sub146
  br i1 %cmp147, label %for.body149, label %for.end208

for.body149:                                      ; preds = %for.cond145
  %66 = load i32, ptr %m, align 4
  %idxprom150 = sext i32 %66 to i64
  %arrayidx151 = getelementptr inbounds [9 x i16], ptr %K, i64 0, i64 %idxprom150
  %67 = load i16, ptr %arrayidx151, align 2
  %conv152 = sext i16 %67 to i64
  %68 = load ptr, ptr %r.addr, align 8
  %69 = load i16, ptr %68, align 2
  %conv153 = sext i16 %69 to i64
  %mul154 = mul nsw i64 %conv152, %conv153
  %add155 = add nsw i64 %mul154, 16384
  %call156 = call i32 @SASR(i64 noundef %add155, i32 noundef 15)
  %conv157 = trunc i32 %call156 to i16
  store i16 %conv157, ptr %temp, align 2
  %70 = load i32, ptr %m, align 4
  %add158 = add nsw i32 %70, 1
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 %idxprom159
  %71 = load i16, ptr %arrayidx160, align 2
  %conv161 = sext i16 %71 to i64
  %72 = load i16, ptr %temp, align 2
  %conv162 = sext i16 %72 to i64
  %add163 = add nsw i64 %conv161, %conv162
  store i64 %add163, ptr %ltmp, align 8
  %sub164 = sub nsw i64 %add163, -32768
  %cmp165 = icmp ugt i64 %sub164, 65535
  br i1 %cmp165, label %cond.true167, label %cond.false172

cond.true167:                                     ; preds = %for.body149
  %73 = load i64, ptr %ltmp, align 8
  %cmp168 = icmp sgt i64 %73, 0
  %74 = zext i1 %cmp168 to i64
  %cond170 = select i1 %cmp168, i32 32767, i32 -32768
  %conv171 = sext i32 %cond170 to i64
  br label %cond.end173

cond.false172:                                    ; preds = %for.body149
  %75 = load i64, ptr %ltmp, align 8
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false172, %cond.true167
  %cond174 = phi i64 [ %conv171, %cond.true167 ], [ %75, %cond.false172 ]
  %conv175 = trunc i64 %cond174 to i16
  %76 = load i32, ptr %m, align 4
  %idxprom176 = sext i32 %76 to i64
  %arrayidx177 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 %idxprom176
  store i16 %conv175, ptr %arrayidx177, align 2
  %77 = load i32, ptr %m, align 4
  %add178 = add nsw i32 %77, 1
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [9 x i16], ptr %P, i64 0, i64 %idxprom179
  %78 = load i16, ptr %arrayidx180, align 2
  %conv181 = sext i16 %78 to i64
  %79 = load ptr, ptr %r.addr, align 8
  %80 = load i16, ptr %79, align 2
  %conv182 = sext i16 %80 to i64
  %mul183 = mul nsw i64 %conv181, %conv182
  %add184 = add nsw i64 %mul183, 16384
  %call185 = call i32 @SASR(i64 noundef %add184, i32 noundef 15)
  %conv186 = trunc i32 %call185 to i16
  store i16 %conv186, ptr %temp, align 2
  %81 = load i32, ptr %m, align 4
  %idxprom187 = sext i32 %81 to i64
  %arrayidx188 = getelementptr inbounds [9 x i16], ptr %K, i64 0, i64 %idxprom187
  %82 = load i16, ptr %arrayidx188, align 2
  %conv189 = sext i16 %82 to i64
  %83 = load i16, ptr %temp, align 2
  %conv190 = sext i16 %83 to i64
  %add191 = add nsw i64 %conv189, %conv190
  store i64 %add191, ptr %ltmp, align 8
  %sub192 = sub nsw i64 %add191, -32768
  %cmp193 = icmp ugt i64 %sub192, 65535
  br i1 %cmp193, label %cond.true195, label %cond.false200

cond.true195:                                     ; preds = %cond.end173
  %84 = load i64, ptr %ltmp, align 8
  %cmp196 = icmp sgt i64 %84, 0
  %85 = zext i1 %cmp196 to i64
  %cond198 = select i1 %cmp196, i32 32767, i32 -32768
  %conv199 = sext i32 %cond198 to i64
  br label %cond.end201

cond.false200:                                    ; preds = %cond.end173
  %86 = load i64, ptr %ltmp, align 8
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false200, %cond.true195
  %cond202 = phi i64 [ %conv199, %cond.true195 ], [ %86, %cond.false200 ]
  %conv203 = trunc i64 %cond202 to i16
  %87 = load i32, ptr %m, align 4
  %idxprom204 = sext i32 %87 to i64
  %arrayidx205 = getelementptr inbounds [9 x i16], ptr %K, i64 0, i64 %idxprom204
  store i16 %conv203, ptr %arrayidx205, align 2
  br label %for.inc206

for.inc206:                                       ; preds = %cond.end201
  %88 = load i32, ptr %m, align 4
  %inc207 = add nsw i32 %88, 1
  store i32 %inc207, ptr %m, align 4
  br label %for.cond145, !llvm.loop !21

for.end208:                                       ; preds = %for.cond145
  br label %for.inc209

for.inc209:                                       ; preds = %for.end208
  %89 = load i32, ptr %n, align 4
  %inc210 = add nsw i32 %89, 1
  store i32 %inc210, ptr %n, align 4
  %90 = load ptr, ptr %r.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i16, ptr %90, i32 1
  store ptr %incdec.ptr211, ptr %r.addr, align 8
  br label %for.cond52, !llvm.loop !22

for.end212:                                       ; preds = %for.end, %for.end86, %if.then121, %for.cond52
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Transformation_to_Log_Area_Ratios(ptr noundef %r) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %temp = alloca i16, align 2
  %i = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %r.addr, align 8
  %2 = load i16, ptr %1, align 2
  store i16 %2, ptr %temp, align 2
  %3 = load i16, ptr %temp, align 2
  %conv = sext i16 %3 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false8

cond.true:                                        ; preds = %for.body
  %4 = load i16, ptr %temp, align 2
  %conv3 = sext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true6, label %cond.false

cond.true6:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %5 = load i16, ptr %temp, align 2
  %conv7 = sext i16 %5 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 32767, %cond.true6 ], [ %sub, %cond.false ]
  br label %cond.end10

cond.false8:                                      ; preds = %for.body
  %6 = load i16, ptr %temp, align 2
  %conv9 = sext i16 %6 to i32
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.end
  %cond11 = phi i32 [ %cond, %cond.end ], [ %conv9, %cond.false8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, ptr %temp, align 2
  %7 = load i16, ptr %temp, align 2
  %conv13 = sext i16 %7 to i32
  %cmp14 = icmp sge i32 %conv13, 0
  %lnot = xor i1 %cmp14, true
  %lnot.ext = zext i1 %lnot to i32
  %conv16 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv16, 0
  br i1 %tobool, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.Transformation_to_Log_Area_Ratios, ptr noundef @.str, i32 noundef 267, ptr noundef @.str.7) #3
  unreachable

8:                                                ; No predecessors!
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end10
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %8
  %9 = load i16, ptr %temp, align 2
  %conv20 = sext i16 %9 to i32
  %cmp21 = icmp slt i32 %conv20, 22118
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end19
  %10 = load i16, ptr %temp, align 2
  %conv23 = sext i16 %10 to i32
  %shr = ashr i32 %conv23, 1
  %conv24 = trunc i32 %shr to i16
  store i16 %conv24, ptr %temp, align 2
  br label %if.end58

if.else:                                          ; preds = %cond.end19
  %11 = load i16, ptr %temp, align 2
  %conv25 = sext i16 %11 to i32
  %cmp26 = icmp slt i32 %conv25, 31130
  br i1 %cmp26, label %if.then28, label %if.else42

if.then28:                                        ; preds = %if.else
  %12 = load i16, ptr %temp, align 2
  %conv29 = sext i16 %12 to i32
  %cmp30 = icmp sge i32 %conv29, 11059
  %lnot32 = xor i1 %cmp30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %if.then28
  call void @__assert_rtn(ptr noundef @__func__.Transformation_to_Log_Area_Ratios, ptr noundef @.str, i32 noundef 272, ptr noundef @.str.8) #3
  unreachable

13:                                               ; No predecessors!
  br label %cond.end38

cond.false37:                                     ; preds = %if.then28
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %13
  %14 = load i16, ptr %temp, align 2
  %conv39 = sext i16 %14 to i32
  %sub40 = sub nsw i32 %conv39, 11059
  %conv41 = trunc i32 %sub40 to i16
  store i16 %conv41, ptr %temp, align 2
  br label %if.end

if.else42:                                        ; preds = %if.else
  %15 = load i16, ptr %temp, align 2
  %conv43 = sext i16 %15 to i32
  %cmp44 = icmp sge i32 %conv43, 26112
  %lnot46 = xor i1 %cmp44, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %conv48 = sext i32 %lnot.ext47 to i64
  %tobool49 = icmp ne i64 %conv48, 0
  br i1 %tobool49, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %if.else42
  call void @__assert_rtn(ptr noundef @__func__.Transformation_to_Log_Area_Ratios, ptr noundef @.str, i32 noundef 275, ptr noundef @.str.9) #3
  unreachable

16:                                               ; No predecessors!
  br label %cond.end52

cond.false51:                                     ; preds = %if.else42
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %16
  %17 = load i16, ptr %temp, align 2
  %conv53 = sext i16 %17 to i32
  %sub54 = sub nsw i32 %conv53, 26112
  %conv55 = trunc i32 %sub54 to i16
  store i16 %conv55, ptr %temp, align 2
  %18 = load i16, ptr %temp, align 2
  %conv56 = sext i16 %18 to i32
  %shl = shl i32 %conv56, 2
  %conv57 = trunc i32 %shl to i16
  store i16 %conv57, ptr %temp, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end52, %cond.end38
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then
  %19 = load ptr, ptr %r.addr, align 8
  %20 = load i16, ptr %19, align 2
  %conv59 = sext i16 %20 to i32
  %cmp60 = icmp slt i32 %conv59, 0
  br i1 %cmp60, label %cond.true62, label %cond.false65

cond.true62:                                      ; preds = %if.end58
  %21 = load i16, ptr %temp, align 2
  %conv63 = sext i16 %21 to i32
  %sub64 = sub nsw i32 0, %conv63
  br label %cond.end67

cond.false65:                                     ; preds = %if.end58
  %22 = load i16, ptr %temp, align 2
  %conv66 = sext i16 %22 to i32
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false65, %cond.true62
  %cond68 = phi i32 [ %sub64, %cond.true62 ], [ %conv66, %cond.false65 ]
  %conv69 = trunc i32 %cond68 to i16
  %23 = load ptr, ptr %r.addr, align 8
  store i16 %conv69, ptr %23, align 2
  %24 = load ptr, ptr %r.addr, align 8
  %25 = load i16, ptr %24, align 2
  %conv70 = sext i16 %25 to i32
  %cmp71 = icmp ne i32 %conv70, -32768
  %lnot73 = xor i1 %cmp71, true
  %lnot.ext74 = zext i1 %lnot73 to i32
  %conv75 = sext i32 %lnot.ext74 to i64
  %tobool76 = icmp ne i64 %conv75, 0
  br i1 %tobool76, label %cond.true77, label %cond.false78

cond.true77:                                      ; preds = %cond.end67
  call void @__assert_rtn(ptr noundef @__func__.Transformation_to_Log_Area_Ratios, ptr noundef @.str, i32 noundef 281, ptr noundef @.str.6) #3
  unreachable

26:                                               ; No predecessors!
  br label %cond.end79

cond.false78:                                     ; preds = %cond.end67
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %26
  br label %for.inc

for.inc:                                          ; preds = %cond.end79
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  %28 = load ptr, ptr %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %r.addr, align 8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Quantization_and_coding(ptr noundef %LAR) #0 {
entry:
  %LAR.addr = alloca ptr, align 8
  %temp = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store ptr %LAR, ptr %LAR.addr, align 8
  %0 = load ptr, ptr %LAR.addr, align 8
  %1 = load i16, ptr %0, align 2
  %conv = sext i16 %1 to i64
  %mul = mul nsw i64 20480, %conv
  %call = call i32 @SASR(i64 noundef %mul, i32 noundef 15)
  %conv1 = trunc i32 %call to i16
  store i16 %conv1, ptr %temp, align 2
  %2 = load i16, ptr %temp, align 2
  %conv2 = sext i16 %2 to i64
  %add = add nsw i64 %conv2, 0
  store i64 %add, ptr %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %ltmp, align 8
  %cmp4 = icmp sgt i64 %3, 0
  %4 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 32767, i32 -32768
  %conv6 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i64 [ %conv6, %cond.true ], [ %5, %cond.false ]
  %conv8 = trunc i64 %cond7 to i16
  store i16 %conv8, ptr %temp, align 2
  %6 = load i16, ptr %temp, align 2
  %conv9 = sext i16 %6 to i64
  %add10 = add nsw i64 %conv9, 256
  store i64 %add10, ptr %ltmp, align 8
  %sub11 = sub nsw i64 %add10, -32768
  %cmp12 = icmp ugt i64 %sub11, 65535
  br i1 %cmp12, label %cond.true14, label %cond.false19

cond.true14:                                      ; preds = %cond.end
  %7 = load i64, ptr %ltmp, align 8
  %cmp15 = icmp sgt i64 %7, 0
  %8 = zext i1 %cmp15 to i64
  %cond17 = select i1 %cmp15, i32 32767, i32 -32768
  %conv18 = sext i32 %cond17 to i64
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end
  %9 = load i64, ptr %ltmp, align 8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true14
  %cond21 = phi i64 [ %conv18, %cond.true14 ], [ %9, %cond.false19 ]
  %conv22 = trunc i64 %cond21 to i16
  store i16 %conv22, ptr %temp, align 2
  %10 = load i16, ptr %temp, align 2
  %conv23 = sext i16 %10 to i32
  %call24 = call i32 @SASR(i32 noundef %conv23, i32 noundef 9)
  %conv25 = trunc i32 %call24 to i16
  store i16 %conv25, ptr %temp, align 2
  %11 = load i16, ptr %temp, align 2
  %conv26 = sext i16 %11 to i32
  %cmp27 = icmp sgt i32 %conv26, 31
  br i1 %cmp27, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.end20
  br label %cond.end40

cond.false30:                                     ; preds = %cond.end20
  %12 = load i16, ptr %temp, align 2
  %conv31 = sext i16 %12 to i32
  %cmp32 = icmp slt i32 %conv31, -32
  br i1 %cmp32, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.false30
  br label %cond.end38

cond.false35:                                     ; preds = %cond.false30
  %13 = load i16, ptr %temp, align 2
  %conv36 = sext i16 %13 to i32
  %sub37 = sub nsw i32 %conv36, -32
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false35, %cond.true34
  %cond39 = phi i32 [ 0, %cond.true34 ], [ %sub37, %cond.false35 ]
  br label %cond.end40

cond.end40:                                       ; preds = %cond.end38, %cond.true29
  %cond41 = phi i32 [ 63, %cond.true29 ], [ %cond39, %cond.end38 ]
  %conv42 = trunc i32 %cond41 to i16
  %14 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv42, ptr %14, align 2
  %15 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %LAR.addr, align 8
  %16 = load ptr, ptr %LAR.addr, align 8
  %17 = load i16, ptr %16, align 2
  %conv43 = sext i16 %17 to i64
  %mul44 = mul nsw i64 20480, %conv43
  %call45 = call i32 @SASR(i64 noundef %mul44, i32 noundef 15)
  %conv46 = trunc i32 %call45 to i16
  store i16 %conv46, ptr %temp, align 2
  %18 = load i16, ptr %temp, align 2
  %conv47 = sext i16 %18 to i64
  %add48 = add nsw i64 %conv47, 0
  store i64 %add48, ptr %ltmp, align 8
  %sub49 = sub nsw i64 %add48, -32768
  %cmp50 = icmp ugt i64 %sub49, 65535
  br i1 %cmp50, label %cond.true52, label %cond.false57

cond.true52:                                      ; preds = %cond.end40
  %19 = load i64, ptr %ltmp, align 8
  %cmp53 = icmp sgt i64 %19, 0
  %20 = zext i1 %cmp53 to i64
  %cond55 = select i1 %cmp53, i32 32767, i32 -32768
  %conv56 = sext i32 %cond55 to i64
  br label %cond.end58

cond.false57:                                     ; preds = %cond.end40
  %21 = load i64, ptr %ltmp, align 8
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true52
  %cond59 = phi i64 [ %conv56, %cond.true52 ], [ %21, %cond.false57 ]
  %conv60 = trunc i64 %cond59 to i16
  store i16 %conv60, ptr %temp, align 2
  %22 = load i16, ptr %temp, align 2
  %conv61 = sext i16 %22 to i64
  %add62 = add nsw i64 %conv61, 256
  store i64 %add62, ptr %ltmp, align 8
  %sub63 = sub nsw i64 %add62, -32768
  %cmp64 = icmp ugt i64 %sub63, 65535
  br i1 %cmp64, label %cond.true66, label %cond.false71

cond.true66:                                      ; preds = %cond.end58
  %23 = load i64, ptr %ltmp, align 8
  %cmp67 = icmp sgt i64 %23, 0
  %24 = zext i1 %cmp67 to i64
  %cond69 = select i1 %cmp67, i32 32767, i32 -32768
  %conv70 = sext i32 %cond69 to i64
  br label %cond.end72

cond.false71:                                     ; preds = %cond.end58
  %25 = load i64, ptr %ltmp, align 8
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %cond.true66
  %cond73 = phi i64 [ %conv70, %cond.true66 ], [ %25, %cond.false71 ]
  %conv74 = trunc i64 %cond73 to i16
  store i16 %conv74, ptr %temp, align 2
  %26 = load i16, ptr %temp, align 2
  %conv75 = sext i16 %26 to i32
  %call76 = call i32 @SASR(i32 noundef %conv75, i32 noundef 9)
  %conv77 = trunc i32 %call76 to i16
  store i16 %conv77, ptr %temp, align 2
  %27 = load i16, ptr %temp, align 2
  %conv78 = sext i16 %27 to i32
  %cmp79 = icmp sgt i32 %conv78, 31
  br i1 %cmp79, label %cond.true81, label %cond.false82

cond.true81:                                      ; preds = %cond.end72
  br label %cond.end92

cond.false82:                                     ; preds = %cond.end72
  %28 = load i16, ptr %temp, align 2
  %conv83 = sext i16 %28 to i32
  %cmp84 = icmp slt i32 %conv83, -32
  br i1 %cmp84, label %cond.true86, label %cond.false87

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end90

cond.false87:                                     ; preds = %cond.false82
  %29 = load i16, ptr %temp, align 2
  %conv88 = sext i16 %29 to i32
  %sub89 = sub nsw i32 %conv88, -32
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false87, %cond.true86
  %cond91 = phi i32 [ 0, %cond.true86 ], [ %sub89, %cond.false87 ]
  br label %cond.end92

cond.end92:                                       ; preds = %cond.end90, %cond.true81
  %cond93 = phi i32 [ 63, %cond.true81 ], [ %cond91, %cond.end90 ]
  %conv94 = trunc i32 %cond93 to i16
  %30 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv94, ptr %30, align 2
  %31 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i16, ptr %31, i32 1
  store ptr %incdec.ptr95, ptr %LAR.addr, align 8
  %32 = load ptr, ptr %LAR.addr, align 8
  %33 = load i16, ptr %32, align 2
  %conv96 = sext i16 %33 to i64
  %mul97 = mul nsw i64 20480, %conv96
  %call98 = call i32 @SASR(i64 noundef %mul97, i32 noundef 15)
  %conv99 = trunc i32 %call98 to i16
  store i16 %conv99, ptr %temp, align 2
  %34 = load i16, ptr %temp, align 2
  %conv100 = sext i16 %34 to i64
  %add101 = add nsw i64 %conv100, 2048
  store i64 %add101, ptr %ltmp, align 8
  %sub102 = sub nsw i64 %add101, -32768
  %cmp103 = icmp ugt i64 %sub102, 65535
  br i1 %cmp103, label %cond.true105, label %cond.false110

cond.true105:                                     ; preds = %cond.end92
  %35 = load i64, ptr %ltmp, align 8
  %cmp106 = icmp sgt i64 %35, 0
  %36 = zext i1 %cmp106 to i64
  %cond108 = select i1 %cmp106, i32 32767, i32 -32768
  %conv109 = sext i32 %cond108 to i64
  br label %cond.end111

cond.false110:                                    ; preds = %cond.end92
  %37 = load i64, ptr %ltmp, align 8
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false110, %cond.true105
  %cond112 = phi i64 [ %conv109, %cond.true105 ], [ %37, %cond.false110 ]
  %conv113 = trunc i64 %cond112 to i16
  store i16 %conv113, ptr %temp, align 2
  %38 = load i16, ptr %temp, align 2
  %conv114 = sext i16 %38 to i64
  %add115 = add nsw i64 %conv114, 256
  store i64 %add115, ptr %ltmp, align 8
  %sub116 = sub nsw i64 %add115, -32768
  %cmp117 = icmp ugt i64 %sub116, 65535
  br i1 %cmp117, label %cond.true119, label %cond.false124

cond.true119:                                     ; preds = %cond.end111
  %39 = load i64, ptr %ltmp, align 8
  %cmp120 = icmp sgt i64 %39, 0
  %40 = zext i1 %cmp120 to i64
  %cond122 = select i1 %cmp120, i32 32767, i32 -32768
  %conv123 = sext i32 %cond122 to i64
  br label %cond.end125

cond.false124:                                    ; preds = %cond.end111
  %41 = load i64, ptr %ltmp, align 8
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true119
  %cond126 = phi i64 [ %conv123, %cond.true119 ], [ %41, %cond.false124 ]
  %conv127 = trunc i64 %cond126 to i16
  store i16 %conv127, ptr %temp, align 2
  %42 = load i16, ptr %temp, align 2
  %conv128 = sext i16 %42 to i32
  %call129 = call i32 @SASR(i32 noundef %conv128, i32 noundef 9)
  %conv130 = trunc i32 %call129 to i16
  store i16 %conv130, ptr %temp, align 2
  %43 = load i16, ptr %temp, align 2
  %conv131 = sext i16 %43 to i32
  %cmp132 = icmp sgt i32 %conv131, 15
  br i1 %cmp132, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %cond.end125
  br label %cond.end145

cond.false135:                                    ; preds = %cond.end125
  %44 = load i16, ptr %temp, align 2
  %conv136 = sext i16 %44 to i32
  %cmp137 = icmp slt i32 %conv136, -16
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.false135
  br label %cond.end143

cond.false140:                                    ; preds = %cond.false135
  %45 = load i16, ptr %temp, align 2
  %conv141 = sext i16 %45 to i32
  %sub142 = sub nsw i32 %conv141, -16
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false140, %cond.true139
  %cond144 = phi i32 [ 0, %cond.true139 ], [ %sub142, %cond.false140 ]
  br label %cond.end145

cond.end145:                                      ; preds = %cond.end143, %cond.true134
  %cond146 = phi i32 [ 31, %cond.true134 ], [ %cond144, %cond.end143 ]
  %conv147 = trunc i32 %cond146 to i16
  %46 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv147, ptr %46, align 2
  %47 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i16, ptr %47, i32 1
  store ptr %incdec.ptr148, ptr %LAR.addr, align 8
  %48 = load ptr, ptr %LAR.addr, align 8
  %49 = load i16, ptr %48, align 2
  %conv149 = sext i16 %49 to i64
  %mul150 = mul nsw i64 20480, %conv149
  %call151 = call i32 @SASR(i64 noundef %mul150, i32 noundef 15)
  %conv152 = trunc i32 %call151 to i16
  store i16 %conv152, ptr %temp, align 2
  %50 = load i16, ptr %temp, align 2
  %conv153 = sext i16 %50 to i64
  %add154 = add nsw i64 %conv153, -2560
  store i64 %add154, ptr %ltmp, align 8
  %sub155 = sub nsw i64 %add154, -32768
  %cmp156 = icmp ugt i64 %sub155, 65535
  br i1 %cmp156, label %cond.true158, label %cond.false163

cond.true158:                                     ; preds = %cond.end145
  %51 = load i64, ptr %ltmp, align 8
  %cmp159 = icmp sgt i64 %51, 0
  %52 = zext i1 %cmp159 to i64
  %cond161 = select i1 %cmp159, i32 32767, i32 -32768
  %conv162 = sext i32 %cond161 to i64
  br label %cond.end164

cond.false163:                                    ; preds = %cond.end145
  %53 = load i64, ptr %ltmp, align 8
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false163, %cond.true158
  %cond165 = phi i64 [ %conv162, %cond.true158 ], [ %53, %cond.false163 ]
  %conv166 = trunc i64 %cond165 to i16
  store i16 %conv166, ptr %temp, align 2
  %54 = load i16, ptr %temp, align 2
  %conv167 = sext i16 %54 to i64
  %add168 = add nsw i64 %conv167, 256
  store i64 %add168, ptr %ltmp, align 8
  %sub169 = sub nsw i64 %add168, -32768
  %cmp170 = icmp ugt i64 %sub169, 65535
  br i1 %cmp170, label %cond.true172, label %cond.false177

cond.true172:                                     ; preds = %cond.end164
  %55 = load i64, ptr %ltmp, align 8
  %cmp173 = icmp sgt i64 %55, 0
  %56 = zext i1 %cmp173 to i64
  %cond175 = select i1 %cmp173, i32 32767, i32 -32768
  %conv176 = sext i32 %cond175 to i64
  br label %cond.end178

cond.false177:                                    ; preds = %cond.end164
  %57 = load i64, ptr %ltmp, align 8
  br label %cond.end178

cond.end178:                                      ; preds = %cond.false177, %cond.true172
  %cond179 = phi i64 [ %conv176, %cond.true172 ], [ %57, %cond.false177 ]
  %conv180 = trunc i64 %cond179 to i16
  store i16 %conv180, ptr %temp, align 2
  %58 = load i16, ptr %temp, align 2
  %conv181 = sext i16 %58 to i32
  %call182 = call i32 @SASR(i32 noundef %conv181, i32 noundef 9)
  %conv183 = trunc i32 %call182 to i16
  store i16 %conv183, ptr %temp, align 2
  %59 = load i16, ptr %temp, align 2
  %conv184 = sext i16 %59 to i32
  %cmp185 = icmp sgt i32 %conv184, 15
  br i1 %cmp185, label %cond.true187, label %cond.false188

cond.true187:                                     ; preds = %cond.end178
  br label %cond.end198

cond.false188:                                    ; preds = %cond.end178
  %60 = load i16, ptr %temp, align 2
  %conv189 = sext i16 %60 to i32
  %cmp190 = icmp slt i32 %conv189, -16
  br i1 %cmp190, label %cond.true192, label %cond.false193

cond.true192:                                     ; preds = %cond.false188
  br label %cond.end196

cond.false193:                                    ; preds = %cond.false188
  %61 = load i16, ptr %temp, align 2
  %conv194 = sext i16 %61 to i32
  %sub195 = sub nsw i32 %conv194, -16
  br label %cond.end196

cond.end196:                                      ; preds = %cond.false193, %cond.true192
  %cond197 = phi i32 [ 0, %cond.true192 ], [ %sub195, %cond.false193 ]
  br label %cond.end198

cond.end198:                                      ; preds = %cond.end196, %cond.true187
  %cond199 = phi i32 [ 31, %cond.true187 ], [ %cond197, %cond.end196 ]
  %conv200 = trunc i32 %cond199 to i16
  %62 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv200, ptr %62, align 2
  %63 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr201 = getelementptr inbounds i16, ptr %63, i32 1
  store ptr %incdec.ptr201, ptr %LAR.addr, align 8
  %64 = load ptr, ptr %LAR.addr, align 8
  %65 = load i16, ptr %64, align 2
  %conv202 = sext i16 %65 to i64
  %mul203 = mul nsw i64 13964, %conv202
  %call204 = call i32 @SASR(i64 noundef %mul203, i32 noundef 15)
  %conv205 = trunc i32 %call204 to i16
  store i16 %conv205, ptr %temp, align 2
  %66 = load i16, ptr %temp, align 2
  %conv206 = sext i16 %66 to i64
  %add207 = add nsw i64 %conv206, 94
  store i64 %add207, ptr %ltmp, align 8
  %sub208 = sub nsw i64 %add207, -32768
  %cmp209 = icmp ugt i64 %sub208, 65535
  br i1 %cmp209, label %cond.true211, label %cond.false216

cond.true211:                                     ; preds = %cond.end198
  %67 = load i64, ptr %ltmp, align 8
  %cmp212 = icmp sgt i64 %67, 0
  %68 = zext i1 %cmp212 to i64
  %cond214 = select i1 %cmp212, i32 32767, i32 -32768
  %conv215 = sext i32 %cond214 to i64
  br label %cond.end217

cond.false216:                                    ; preds = %cond.end198
  %69 = load i64, ptr %ltmp, align 8
  br label %cond.end217

cond.end217:                                      ; preds = %cond.false216, %cond.true211
  %cond218 = phi i64 [ %conv215, %cond.true211 ], [ %69, %cond.false216 ]
  %conv219 = trunc i64 %cond218 to i16
  store i16 %conv219, ptr %temp, align 2
  %70 = load i16, ptr %temp, align 2
  %conv220 = sext i16 %70 to i64
  %add221 = add nsw i64 %conv220, 256
  store i64 %add221, ptr %ltmp, align 8
  %sub222 = sub nsw i64 %add221, -32768
  %cmp223 = icmp ugt i64 %sub222, 65535
  br i1 %cmp223, label %cond.true225, label %cond.false230

cond.true225:                                     ; preds = %cond.end217
  %71 = load i64, ptr %ltmp, align 8
  %cmp226 = icmp sgt i64 %71, 0
  %72 = zext i1 %cmp226 to i64
  %cond228 = select i1 %cmp226, i32 32767, i32 -32768
  %conv229 = sext i32 %cond228 to i64
  br label %cond.end231

cond.false230:                                    ; preds = %cond.end217
  %73 = load i64, ptr %ltmp, align 8
  br label %cond.end231

cond.end231:                                      ; preds = %cond.false230, %cond.true225
  %cond232 = phi i64 [ %conv229, %cond.true225 ], [ %73, %cond.false230 ]
  %conv233 = trunc i64 %cond232 to i16
  store i16 %conv233, ptr %temp, align 2
  %74 = load i16, ptr %temp, align 2
  %conv234 = sext i16 %74 to i32
  %call235 = call i32 @SASR(i32 noundef %conv234, i32 noundef 9)
  %conv236 = trunc i32 %call235 to i16
  store i16 %conv236, ptr %temp, align 2
  %75 = load i16, ptr %temp, align 2
  %conv237 = sext i16 %75 to i32
  %cmp238 = icmp sgt i32 %conv237, 7
  br i1 %cmp238, label %cond.true240, label %cond.false241

cond.true240:                                     ; preds = %cond.end231
  br label %cond.end251

cond.false241:                                    ; preds = %cond.end231
  %76 = load i16, ptr %temp, align 2
  %conv242 = sext i16 %76 to i32
  %cmp243 = icmp slt i32 %conv242, -8
  br i1 %cmp243, label %cond.true245, label %cond.false246

cond.true245:                                     ; preds = %cond.false241
  br label %cond.end249

cond.false246:                                    ; preds = %cond.false241
  %77 = load i16, ptr %temp, align 2
  %conv247 = sext i16 %77 to i32
  %sub248 = sub nsw i32 %conv247, -8
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false246, %cond.true245
  %cond250 = phi i32 [ 0, %cond.true245 ], [ %sub248, %cond.false246 ]
  br label %cond.end251

cond.end251:                                      ; preds = %cond.end249, %cond.true240
  %cond252 = phi i32 [ 15, %cond.true240 ], [ %cond250, %cond.end249 ]
  %conv253 = trunc i32 %cond252 to i16
  %78 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv253, ptr %78, align 2
  %79 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr254 = getelementptr inbounds i16, ptr %79, i32 1
  store ptr %incdec.ptr254, ptr %LAR.addr, align 8
  %80 = load ptr, ptr %LAR.addr, align 8
  %81 = load i16, ptr %80, align 2
  %conv255 = sext i16 %81 to i64
  %mul256 = mul nsw i64 15360, %conv255
  %call257 = call i32 @SASR(i64 noundef %mul256, i32 noundef 15)
  %conv258 = trunc i32 %call257 to i16
  store i16 %conv258, ptr %temp, align 2
  %82 = load i16, ptr %temp, align 2
  %conv259 = sext i16 %82 to i64
  %add260 = add nsw i64 %conv259, -1792
  store i64 %add260, ptr %ltmp, align 8
  %sub261 = sub nsw i64 %add260, -32768
  %cmp262 = icmp ugt i64 %sub261, 65535
  br i1 %cmp262, label %cond.true264, label %cond.false269

cond.true264:                                     ; preds = %cond.end251
  %83 = load i64, ptr %ltmp, align 8
  %cmp265 = icmp sgt i64 %83, 0
  %84 = zext i1 %cmp265 to i64
  %cond267 = select i1 %cmp265, i32 32767, i32 -32768
  %conv268 = sext i32 %cond267 to i64
  br label %cond.end270

cond.false269:                                    ; preds = %cond.end251
  %85 = load i64, ptr %ltmp, align 8
  br label %cond.end270

cond.end270:                                      ; preds = %cond.false269, %cond.true264
  %cond271 = phi i64 [ %conv268, %cond.true264 ], [ %85, %cond.false269 ]
  %conv272 = trunc i64 %cond271 to i16
  store i16 %conv272, ptr %temp, align 2
  %86 = load i16, ptr %temp, align 2
  %conv273 = sext i16 %86 to i64
  %add274 = add nsw i64 %conv273, 256
  store i64 %add274, ptr %ltmp, align 8
  %sub275 = sub nsw i64 %add274, -32768
  %cmp276 = icmp ugt i64 %sub275, 65535
  br i1 %cmp276, label %cond.true278, label %cond.false283

cond.true278:                                     ; preds = %cond.end270
  %87 = load i64, ptr %ltmp, align 8
  %cmp279 = icmp sgt i64 %87, 0
  %88 = zext i1 %cmp279 to i64
  %cond281 = select i1 %cmp279, i32 32767, i32 -32768
  %conv282 = sext i32 %cond281 to i64
  br label %cond.end284

cond.false283:                                    ; preds = %cond.end270
  %89 = load i64, ptr %ltmp, align 8
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false283, %cond.true278
  %cond285 = phi i64 [ %conv282, %cond.true278 ], [ %89, %cond.false283 ]
  %conv286 = trunc i64 %cond285 to i16
  store i16 %conv286, ptr %temp, align 2
  %90 = load i16, ptr %temp, align 2
  %conv287 = sext i16 %90 to i32
  %call288 = call i32 @SASR(i32 noundef %conv287, i32 noundef 9)
  %conv289 = trunc i32 %call288 to i16
  store i16 %conv289, ptr %temp, align 2
  %91 = load i16, ptr %temp, align 2
  %conv290 = sext i16 %91 to i32
  %cmp291 = icmp sgt i32 %conv290, 7
  br i1 %cmp291, label %cond.true293, label %cond.false294

cond.true293:                                     ; preds = %cond.end284
  br label %cond.end304

cond.false294:                                    ; preds = %cond.end284
  %92 = load i16, ptr %temp, align 2
  %conv295 = sext i16 %92 to i32
  %cmp296 = icmp slt i32 %conv295, -8
  br i1 %cmp296, label %cond.true298, label %cond.false299

cond.true298:                                     ; preds = %cond.false294
  br label %cond.end302

cond.false299:                                    ; preds = %cond.false294
  %93 = load i16, ptr %temp, align 2
  %conv300 = sext i16 %93 to i32
  %sub301 = sub nsw i32 %conv300, -8
  br label %cond.end302

cond.end302:                                      ; preds = %cond.false299, %cond.true298
  %cond303 = phi i32 [ 0, %cond.true298 ], [ %sub301, %cond.false299 ]
  br label %cond.end304

cond.end304:                                      ; preds = %cond.end302, %cond.true293
  %cond305 = phi i32 [ 15, %cond.true293 ], [ %cond303, %cond.end302 ]
  %conv306 = trunc i32 %cond305 to i16
  %94 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv306, ptr %94, align 2
  %95 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr307 = getelementptr inbounds i16, ptr %95, i32 1
  store ptr %incdec.ptr307, ptr %LAR.addr, align 8
  %96 = load ptr, ptr %LAR.addr, align 8
  %97 = load i16, ptr %96, align 2
  %conv308 = sext i16 %97 to i64
  %mul309 = mul nsw i64 8534, %conv308
  %call310 = call i32 @SASR(i64 noundef %mul309, i32 noundef 15)
  %conv311 = trunc i32 %call310 to i16
  store i16 %conv311, ptr %temp, align 2
  %98 = load i16, ptr %temp, align 2
  %conv312 = sext i16 %98 to i64
  %add313 = add nsw i64 %conv312, -341
  store i64 %add313, ptr %ltmp, align 8
  %sub314 = sub nsw i64 %add313, -32768
  %cmp315 = icmp ugt i64 %sub314, 65535
  br i1 %cmp315, label %cond.true317, label %cond.false322

cond.true317:                                     ; preds = %cond.end304
  %99 = load i64, ptr %ltmp, align 8
  %cmp318 = icmp sgt i64 %99, 0
  %100 = zext i1 %cmp318 to i64
  %cond320 = select i1 %cmp318, i32 32767, i32 -32768
  %conv321 = sext i32 %cond320 to i64
  br label %cond.end323

cond.false322:                                    ; preds = %cond.end304
  %101 = load i64, ptr %ltmp, align 8
  br label %cond.end323

cond.end323:                                      ; preds = %cond.false322, %cond.true317
  %cond324 = phi i64 [ %conv321, %cond.true317 ], [ %101, %cond.false322 ]
  %conv325 = trunc i64 %cond324 to i16
  store i16 %conv325, ptr %temp, align 2
  %102 = load i16, ptr %temp, align 2
  %conv326 = sext i16 %102 to i64
  %add327 = add nsw i64 %conv326, 256
  store i64 %add327, ptr %ltmp, align 8
  %sub328 = sub nsw i64 %add327, -32768
  %cmp329 = icmp ugt i64 %sub328, 65535
  br i1 %cmp329, label %cond.true331, label %cond.false336

cond.true331:                                     ; preds = %cond.end323
  %103 = load i64, ptr %ltmp, align 8
  %cmp332 = icmp sgt i64 %103, 0
  %104 = zext i1 %cmp332 to i64
  %cond334 = select i1 %cmp332, i32 32767, i32 -32768
  %conv335 = sext i32 %cond334 to i64
  br label %cond.end337

cond.false336:                                    ; preds = %cond.end323
  %105 = load i64, ptr %ltmp, align 8
  br label %cond.end337

cond.end337:                                      ; preds = %cond.false336, %cond.true331
  %cond338 = phi i64 [ %conv335, %cond.true331 ], [ %105, %cond.false336 ]
  %conv339 = trunc i64 %cond338 to i16
  store i16 %conv339, ptr %temp, align 2
  %106 = load i16, ptr %temp, align 2
  %conv340 = sext i16 %106 to i32
  %call341 = call i32 @SASR(i32 noundef %conv340, i32 noundef 9)
  %conv342 = trunc i32 %call341 to i16
  store i16 %conv342, ptr %temp, align 2
  %107 = load i16, ptr %temp, align 2
  %conv343 = sext i16 %107 to i32
  %cmp344 = icmp sgt i32 %conv343, 3
  br i1 %cmp344, label %cond.true346, label %cond.false347

cond.true346:                                     ; preds = %cond.end337
  br label %cond.end357

cond.false347:                                    ; preds = %cond.end337
  %108 = load i16, ptr %temp, align 2
  %conv348 = sext i16 %108 to i32
  %cmp349 = icmp slt i32 %conv348, -4
  br i1 %cmp349, label %cond.true351, label %cond.false352

cond.true351:                                     ; preds = %cond.false347
  br label %cond.end355

cond.false352:                                    ; preds = %cond.false347
  %109 = load i16, ptr %temp, align 2
  %conv353 = sext i16 %109 to i32
  %sub354 = sub nsw i32 %conv353, -4
  br label %cond.end355

cond.end355:                                      ; preds = %cond.false352, %cond.true351
  %cond356 = phi i32 [ 0, %cond.true351 ], [ %sub354, %cond.false352 ]
  br label %cond.end357

cond.end357:                                      ; preds = %cond.end355, %cond.true346
  %cond358 = phi i32 [ 7, %cond.true346 ], [ %cond356, %cond.end355 ]
  %conv359 = trunc i32 %cond358 to i16
  %110 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv359, ptr %110, align 2
  %111 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr360 = getelementptr inbounds i16, ptr %111, i32 1
  store ptr %incdec.ptr360, ptr %LAR.addr, align 8
  %112 = load ptr, ptr %LAR.addr, align 8
  %113 = load i16, ptr %112, align 2
  %conv361 = sext i16 %113 to i64
  %mul362 = mul nsw i64 9036, %conv361
  %call363 = call i32 @SASR(i64 noundef %mul362, i32 noundef 15)
  %conv364 = trunc i32 %call363 to i16
  store i16 %conv364, ptr %temp, align 2
  %114 = load i16, ptr %temp, align 2
  %conv365 = sext i16 %114 to i64
  %add366 = add nsw i64 %conv365, -1144
  store i64 %add366, ptr %ltmp, align 8
  %sub367 = sub nsw i64 %add366, -32768
  %cmp368 = icmp ugt i64 %sub367, 65535
  br i1 %cmp368, label %cond.true370, label %cond.false375

cond.true370:                                     ; preds = %cond.end357
  %115 = load i64, ptr %ltmp, align 8
  %cmp371 = icmp sgt i64 %115, 0
  %116 = zext i1 %cmp371 to i64
  %cond373 = select i1 %cmp371, i32 32767, i32 -32768
  %conv374 = sext i32 %cond373 to i64
  br label %cond.end376

cond.false375:                                    ; preds = %cond.end357
  %117 = load i64, ptr %ltmp, align 8
  br label %cond.end376

cond.end376:                                      ; preds = %cond.false375, %cond.true370
  %cond377 = phi i64 [ %conv374, %cond.true370 ], [ %117, %cond.false375 ]
  %conv378 = trunc i64 %cond377 to i16
  store i16 %conv378, ptr %temp, align 2
  %118 = load i16, ptr %temp, align 2
  %conv379 = sext i16 %118 to i64
  %add380 = add nsw i64 %conv379, 256
  store i64 %add380, ptr %ltmp, align 8
  %sub381 = sub nsw i64 %add380, -32768
  %cmp382 = icmp ugt i64 %sub381, 65535
  br i1 %cmp382, label %cond.true384, label %cond.false389

cond.true384:                                     ; preds = %cond.end376
  %119 = load i64, ptr %ltmp, align 8
  %cmp385 = icmp sgt i64 %119, 0
  %120 = zext i1 %cmp385 to i64
  %cond387 = select i1 %cmp385, i32 32767, i32 -32768
  %conv388 = sext i32 %cond387 to i64
  br label %cond.end390

cond.false389:                                    ; preds = %cond.end376
  %121 = load i64, ptr %ltmp, align 8
  br label %cond.end390

cond.end390:                                      ; preds = %cond.false389, %cond.true384
  %cond391 = phi i64 [ %conv388, %cond.true384 ], [ %121, %cond.false389 ]
  %conv392 = trunc i64 %cond391 to i16
  store i16 %conv392, ptr %temp, align 2
  %122 = load i16, ptr %temp, align 2
  %conv393 = sext i16 %122 to i32
  %call394 = call i32 @SASR(i32 noundef %conv393, i32 noundef 9)
  %conv395 = trunc i32 %call394 to i16
  store i16 %conv395, ptr %temp, align 2
  %123 = load i16, ptr %temp, align 2
  %conv396 = sext i16 %123 to i32
  %cmp397 = icmp sgt i32 %conv396, 3
  br i1 %cmp397, label %cond.true399, label %cond.false400

cond.true399:                                     ; preds = %cond.end390
  br label %cond.end410

cond.false400:                                    ; preds = %cond.end390
  %124 = load i16, ptr %temp, align 2
  %conv401 = sext i16 %124 to i32
  %cmp402 = icmp slt i32 %conv401, -4
  br i1 %cmp402, label %cond.true404, label %cond.false405

cond.true404:                                     ; preds = %cond.false400
  br label %cond.end408

cond.false405:                                    ; preds = %cond.false400
  %125 = load i16, ptr %temp, align 2
  %conv406 = sext i16 %125 to i32
  %sub407 = sub nsw i32 %conv406, -4
  br label %cond.end408

cond.end408:                                      ; preds = %cond.false405, %cond.true404
  %cond409 = phi i32 [ 0, %cond.true404 ], [ %sub407, %cond.false405 ]
  br label %cond.end410

cond.end410:                                      ; preds = %cond.end408, %cond.true399
  %cond411 = phi i32 [ 7, %cond.true399 ], [ %cond409, %cond.end408 ]
  %conv412 = trunc i32 %cond411 to i16
  %126 = load ptr, ptr %LAR.addr, align 8
  store i16 %conv412, ptr %126, align 2
  %127 = load ptr, ptr %LAR.addr, align 8
  %incdec.ptr413 = getelementptr inbounds i16, ptr %127, i32 1
  store ptr %incdec.ptr413, ptr %LAR.addr, align 8
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare signext i16 @gsm_norm(i64 noundef) #2

declare i32 @SASR(...) #2

declare signext i16 @gsm_div(i16 noundef signext, i16 noundef signext) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

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
