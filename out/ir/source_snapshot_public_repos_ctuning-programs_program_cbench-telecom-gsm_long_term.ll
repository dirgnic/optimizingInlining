; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/long_term.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/long_term.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@__func__.Gsm_Long_Term_Predictor = private unnamed_addr constant [24 x i8] c"Gsm_Long_Term_Predictor\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"long_term.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Nc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@__func__.Gsm_Long_Term_Synthesis_Filtering = private unnamed_addr constant [34 x i8] c"Gsm_Long_Term_Synthesis_Filtering\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Nr >= 40 && Nr <= 120\00", align 1
@gsm_QLB = external global [4 x i16], align 2
@.str.8 = private unnamed_addr constant [16 x i8] c"brp != MIN_WORD\00", align 1
@__func__.Calculation_of_the_LTP_parameters = private unnamed_addr constant [34 x i8] c"Calculation_of_the_LTP_parameters\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dmax > 0\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"scal >= 0\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"scal <= 100 && scal >= -100\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Nc <= 120 && Nc >= 40\00", align 1
@gsm_DLB = external global [4 x i16], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Long_Term_Predictor(ptr noundef %S, ptr noundef %d, ptr noundef %dp, ptr noundef %e, ptr noundef %dpp, ptr noundef %Nc, ptr noundef %bc) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %dpp.addr = alloca ptr, align 8
  %Nc.addr = alloca ptr, align 8
  %bc.addr = alloca ptr, align 8
  store ptr %S, ptr %S.addr, align 8
  store ptr %d, ptr %d.addr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %dpp, ptr %dpp.addr, align 8
  store ptr %Nc, ptr %Nc.addr, align 8
  store ptr %bc, ptr %bc.addr, align 8
  %0 = load ptr, ptr %d.addr, align 8
  %tobool = icmp ne ptr %0, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Predictor, ptr noundef @.str, i32 noundef 545, ptr noundef @.str.1) #3
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %dp.addr, align 8
  %tobool2 = icmp ne ptr %2, null
  %lnot3 = xor i1 %tobool2, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  %conv5 = sext i32 %lnot.ext4 to i64
  %tobool6 = icmp ne i64 %conv5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Predictor, ptr noundef @.str, i32 noundef 545, ptr noundef @.str.2) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %3
  %4 = load ptr, ptr %e.addr, align 8
  %tobool10 = icmp ne ptr %4, null
  %lnot11 = xor i1 %tobool10, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %tobool14 = icmp ne i64 %conv13, 0
  br i1 %tobool14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.end9
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Predictor, ptr noundef @.str, i32 noundef 545, ptr noundef @.str.3) #3
  unreachable

5:                                                ; No predecessors!
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end9
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %5
  %6 = load ptr, ptr %dpp.addr, align 8
  %tobool18 = icmp ne ptr %6, null
  %lnot19 = xor i1 %tobool18, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end17
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Predictor, ptr noundef @.str, i32 noundef 546, ptr noundef @.str.4) #3
  unreachable

7:                                                ; No predecessors!
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end17
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %7
  %8 = load ptr, ptr %Nc.addr, align 8
  %tobool26 = icmp ne ptr %8, null
  %lnot27 = xor i1 %tobool26, true
  %lnot.ext28 = zext i1 %lnot27 to i32
  %conv29 = sext i32 %lnot.ext28 to i64
  %tobool30 = icmp ne i64 %conv29, 0
  br i1 %tobool30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.end25
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Predictor, ptr noundef @.str, i32 noundef 546, ptr noundef @.str.5) #3
  unreachable

9:                                                ; No predecessors!
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end25
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %9
  %10 = load ptr, ptr %bc.addr, align 8
  %tobool34 = icmp ne ptr %10, null
  %lnot35 = xor i1 %tobool34, true
  %lnot.ext36 = zext i1 %lnot35 to i32
  %conv37 = sext i32 %lnot.ext36 to i64
  %tobool38 = icmp ne i64 %conv37, 0
  br i1 %tobool38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.end33
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Predictor, ptr noundef @.str, i32 noundef 546, ptr noundef @.str.6) #3
  unreachable

11:                                               ; No predecessors!
  br label %cond.end41

cond.false40:                                     ; preds = %cond.end33
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %11
  %12 = load ptr, ptr %d.addr, align 8
  %13 = load ptr, ptr %dp.addr, align 8
  %14 = load ptr, ptr %bc.addr, align 8
  %15 = load ptr, ptr %Nc.addr, align 8
  call void @Calculation_of_the_LTP_parameters(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %bc.addr, align 8
  %17 = load i16, ptr %16, align 2
  %18 = load ptr, ptr %Nc.addr, align 8
  %19 = load i16, ptr %18, align 2
  %20 = load ptr, ptr %dp.addr, align 8
  %21 = load ptr, ptr %d.addr, align 8
  %22 = load ptr, ptr %dpp.addr, align 8
  %23 = load ptr, ptr %e.addr, align 8
  call void @Long_term_analysis_filtering(i16 noundef signext %17, i16 noundef signext %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23)
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Calculation_of_the_LTP_parameters(ptr noundef %d, ptr noundef %dp, ptr noundef %bc_out, ptr noundef %Nc_out) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %bc_out.addr = alloca ptr, align 8
  %Nc_out.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %lambda = alloca i32, align 4
  %Nc = alloca i16, align 2
  %bc = alloca i16, align 2
  %wt = alloca [40 x i16], align 2
  %L_max = alloca i64, align 8
  %L_power = alloca i64, align 8
  %R = alloca i16, align 2
  %S = alloca i16, align 2
  %dmax = alloca i16, align 2
  %scal = alloca i16, align 2
  %temp = alloca i16, align 2
  %L_result = alloca i64, align 8
  %L_temp = alloca i64, align 8
  store ptr %d, ptr %d.addr, align 8
  store ptr %dp, ptr %dp.addr, align 8
  store ptr %bc_out, ptr %bc_out.addr, align 8
  store ptr %Nc_out, ptr %Nc_out.addr, align 8
  store i16 0, ptr %dmax, align 2
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp sle i32 %0, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %d.addr, align 8
  %2 = load i32, ptr %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  store i16 %3, ptr %temp, align 2
  %4 = load i16, ptr %temp, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false8

cond.true:                                        ; preds = %for.body
  %5 = load i16, ptr %temp, align 2
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true6, label %cond.false

cond.true6:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %6 = load i16, ptr %temp, align 2
  %conv7 = sext i16 %6 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i32 [ 32767, %cond.true6 ], [ %sub, %cond.false ]
  br label %cond.end10

cond.false8:                                      ; preds = %for.body
  %7 = load i16, ptr %temp, align 2
  %conv9 = sext i16 %7 to i32
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.end
  %cond11 = phi i32 [ %cond, %cond.end ], [ %conv9, %cond.false8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, ptr %temp, align 2
  %8 = load i16, ptr %temp, align 2
  %conv13 = sext i16 %8 to i32
  %9 = load i16, ptr %dmax, align 2
  %conv14 = sext i16 %9 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  %10 = load i16, ptr %temp, align 2
  store i16 %10, ptr %dmax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i16 0, ptr %temp, align 2
  %12 = load i16, ptr %dmax, align 2
  %conv17 = sext i16 %12 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.end
  store i16 0, ptr %scal, align 2
  br label %if.end29

if.else:                                          ; preds = %for.end
  %13 = load i16, ptr %dmax, align 2
  %conv21 = sext i16 %13 to i32
  %cmp22 = icmp sgt i32 %conv21, 0
  %lnot = xor i1 %cmp22, true
  %lnot.ext = zext i1 %lnot to i32
  %conv24 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv24, 0
  br i1 %tobool, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef @__func__.Calculation_of_the_LTP_parameters, ptr noundef @.str, i32 noundef 101, ptr noundef @.str.9) #3
  unreachable

14:                                               ; No predecessors!
  br label %cond.end27

cond.false26:                                     ; preds = %if.else
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %14
  %15 = load i16, ptr %dmax, align 2
  %conv28 = sext i16 %15 to i64
  %shl = shl i64 %conv28, 16
  %call = call signext i16 @gsm_norm(i64 noundef %shl)
  store i16 %call, ptr %temp, align 2
  br label %if.end29

if.end29:                                         ; preds = %cond.end27, %if.then20
  %16 = load i16, ptr %temp, align 2
  %conv30 = sext i16 %16 to i32
  %cmp31 = icmp sgt i32 %conv30, 6
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end29
  store i16 0, ptr %scal, align 2
  br label %if.end38

if.else34:                                        ; preds = %if.end29
  %17 = load i16, ptr %temp, align 2
  %conv35 = sext i16 %17 to i32
  %sub36 = sub nsw i32 6, %conv35
  %conv37 = trunc i32 %sub36 to i16
  store i16 %conv37, ptr %scal, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then33
  %18 = load i16, ptr %scal, align 2
  %conv39 = sext i16 %18 to i32
  %cmp40 = icmp sge i32 %conv39, 0
  %lnot42 = xor i1 %cmp40, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  %conv44 = sext i32 %lnot.ext43 to i64
  %tobool45 = icmp ne i64 %conv44, 0
  br i1 %tobool45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %if.end38
  call void @__assert_rtn(ptr noundef @__func__.Calculation_of_the_LTP_parameters, ptr noundef @.str, i32 noundef 108, ptr noundef @.str.10) #3
  unreachable

19:                                               ; No predecessors!
  br label %cond.end48

cond.false47:                                     ; preds = %if.end38
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %19
  store i32 0, ptr %k, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc61, %cond.end48
  %20 = load i32, ptr %k, align 4
  %cmp50 = icmp sle i32 %20, 39
  br i1 %cmp50, label %for.body52, label %for.end63

for.body52:                                       ; preds = %for.cond49
  %21 = load ptr, ptr %d.addr, align 8
  %22 = load i32, ptr %k, align 4
  %idxprom53 = sext i32 %22 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %21, i64 %idxprom53
  %23 = load i16, ptr %arrayidx54, align 2
  %conv55 = sext i16 %23 to i32
  %24 = load i16, ptr %scal, align 2
  %conv56 = sext i16 %24 to i32
  %call57 = call i32 @SASR(i32 noundef %conv55, i32 noundef %conv56)
  %conv58 = trunc i32 %call57 to i16
  %25 = load i32, ptr %k, align 4
  %idxprom59 = sext i32 %25 to i64
  %arrayidx60 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 %idxprom59
  store i16 %conv58, ptr %arrayidx60, align 2
  br label %for.inc61

for.inc61:                                        ; preds = %for.body52
  %26 = load i32, ptr %k, align 4
  %inc62 = add nsw i32 %26, 1
  store i32 %inc62, ptr %k, align 4
  br label %for.cond49, !llvm.loop !8

for.end63:                                        ; preds = %for.cond49
  store i64 0, ptr %L_max, align 8
  store i16 40, ptr %Nc, align 2
  store i32 40, ptr %lambda, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc430, %for.end63
  %27 = load i32, ptr %lambda, align 4
  %cmp65 = icmp sle i32 %27, 120
  br i1 %cmp65, label %for.body67, label %for.end432

for.body67:                                       ; preds = %for.cond64
  %arrayidx68 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 0
  %28 = load i16, ptr %arrayidx68, align 2
  %conv69 = sext i16 %28 to i32
  %29 = load ptr, ptr %dp.addr, align 8
  %30 = load i32, ptr %lambda, align 4
  %sub70 = sub nsw i32 0, %30
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %29, i64 %idxprom71
  %31 = load i16, ptr %arrayidx72, align 2
  %conv73 = sext i16 %31 to i32
  %mul = mul nsw i32 %conv69, %conv73
  %conv74 = sext i32 %mul to i64
  store i64 %conv74, ptr %L_result, align 8
  %arrayidx75 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 1
  %32 = load i16, ptr %arrayidx75, align 2
  %conv76 = sext i16 %32 to i32
  %33 = load ptr, ptr %dp.addr, align 8
  %34 = load i32, ptr %lambda, align 4
  %sub77 = sub nsw i32 1, %34
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds i16, ptr %33, i64 %idxprom78
  %35 = load i16, ptr %arrayidx79, align 2
  %conv80 = sext i16 %35 to i32
  %mul81 = mul nsw i32 %conv76, %conv80
  %conv82 = sext i32 %mul81 to i64
  %36 = load i64, ptr %L_result, align 8
  %add = add nsw i64 %36, %conv82
  store i64 %add, ptr %L_result, align 8
  %arrayidx83 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 2
  %37 = load i16, ptr %arrayidx83, align 2
  %conv84 = sext i16 %37 to i32
  %38 = load ptr, ptr %dp.addr, align 8
  %39 = load i32, ptr %lambda, align 4
  %sub85 = sub nsw i32 2, %39
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds i16, ptr %38, i64 %idxprom86
  %40 = load i16, ptr %arrayidx87, align 2
  %conv88 = sext i16 %40 to i32
  %mul89 = mul nsw i32 %conv84, %conv88
  %conv90 = sext i32 %mul89 to i64
  %41 = load i64, ptr %L_result, align 8
  %add91 = add nsw i64 %41, %conv90
  store i64 %add91, ptr %L_result, align 8
  %arrayidx92 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 3
  %42 = load i16, ptr %arrayidx92, align 2
  %conv93 = sext i16 %42 to i32
  %43 = load ptr, ptr %dp.addr, align 8
  %44 = load i32, ptr %lambda, align 4
  %sub94 = sub nsw i32 3, %44
  %idxprom95 = sext i32 %sub94 to i64
  %arrayidx96 = getelementptr inbounds i16, ptr %43, i64 %idxprom95
  %45 = load i16, ptr %arrayidx96, align 2
  %conv97 = sext i16 %45 to i32
  %mul98 = mul nsw i32 %conv93, %conv97
  %conv99 = sext i32 %mul98 to i64
  %46 = load i64, ptr %L_result, align 8
  %add100 = add nsw i64 %46, %conv99
  store i64 %add100, ptr %L_result, align 8
  %arrayidx101 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 4
  %47 = load i16, ptr %arrayidx101, align 2
  %conv102 = sext i16 %47 to i32
  %48 = load ptr, ptr %dp.addr, align 8
  %49 = load i32, ptr %lambda, align 4
  %sub103 = sub nsw i32 4, %49
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds i16, ptr %48, i64 %idxprom104
  %50 = load i16, ptr %arrayidx105, align 2
  %conv106 = sext i16 %50 to i32
  %mul107 = mul nsw i32 %conv102, %conv106
  %conv108 = sext i32 %mul107 to i64
  %51 = load i64, ptr %L_result, align 8
  %add109 = add nsw i64 %51, %conv108
  store i64 %add109, ptr %L_result, align 8
  %arrayidx110 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 5
  %52 = load i16, ptr %arrayidx110, align 2
  %conv111 = sext i16 %52 to i32
  %53 = load ptr, ptr %dp.addr, align 8
  %54 = load i32, ptr %lambda, align 4
  %sub112 = sub nsw i32 5, %54
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds i16, ptr %53, i64 %idxprom113
  %55 = load i16, ptr %arrayidx114, align 2
  %conv115 = sext i16 %55 to i32
  %mul116 = mul nsw i32 %conv111, %conv115
  %conv117 = sext i32 %mul116 to i64
  %56 = load i64, ptr %L_result, align 8
  %add118 = add nsw i64 %56, %conv117
  store i64 %add118, ptr %L_result, align 8
  %arrayidx119 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 6
  %57 = load i16, ptr %arrayidx119, align 2
  %conv120 = sext i16 %57 to i32
  %58 = load ptr, ptr %dp.addr, align 8
  %59 = load i32, ptr %lambda, align 4
  %sub121 = sub nsw i32 6, %59
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds i16, ptr %58, i64 %idxprom122
  %60 = load i16, ptr %arrayidx123, align 2
  %conv124 = sext i16 %60 to i32
  %mul125 = mul nsw i32 %conv120, %conv124
  %conv126 = sext i32 %mul125 to i64
  %61 = load i64, ptr %L_result, align 8
  %add127 = add nsw i64 %61, %conv126
  store i64 %add127, ptr %L_result, align 8
  %arrayidx128 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 7
  %62 = load i16, ptr %arrayidx128, align 2
  %conv129 = sext i16 %62 to i32
  %63 = load ptr, ptr %dp.addr, align 8
  %64 = load i32, ptr %lambda, align 4
  %sub130 = sub nsw i32 7, %64
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds i16, ptr %63, i64 %idxprom131
  %65 = load i16, ptr %arrayidx132, align 2
  %conv133 = sext i16 %65 to i32
  %mul134 = mul nsw i32 %conv129, %conv133
  %conv135 = sext i32 %mul134 to i64
  %66 = load i64, ptr %L_result, align 8
  %add136 = add nsw i64 %66, %conv135
  store i64 %add136, ptr %L_result, align 8
  %arrayidx137 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 8
  %67 = load i16, ptr %arrayidx137, align 2
  %conv138 = sext i16 %67 to i32
  %68 = load ptr, ptr %dp.addr, align 8
  %69 = load i32, ptr %lambda, align 4
  %sub139 = sub nsw i32 8, %69
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds i16, ptr %68, i64 %idxprom140
  %70 = load i16, ptr %arrayidx141, align 2
  %conv142 = sext i16 %70 to i32
  %mul143 = mul nsw i32 %conv138, %conv142
  %conv144 = sext i32 %mul143 to i64
  %71 = load i64, ptr %L_result, align 8
  %add145 = add nsw i64 %71, %conv144
  store i64 %add145, ptr %L_result, align 8
  %arrayidx146 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 9
  %72 = load i16, ptr %arrayidx146, align 2
  %conv147 = sext i16 %72 to i32
  %73 = load ptr, ptr %dp.addr, align 8
  %74 = load i32, ptr %lambda, align 4
  %sub148 = sub nsw i32 9, %74
  %idxprom149 = sext i32 %sub148 to i64
  %arrayidx150 = getelementptr inbounds i16, ptr %73, i64 %idxprom149
  %75 = load i16, ptr %arrayidx150, align 2
  %conv151 = sext i16 %75 to i32
  %mul152 = mul nsw i32 %conv147, %conv151
  %conv153 = sext i32 %mul152 to i64
  %76 = load i64, ptr %L_result, align 8
  %add154 = add nsw i64 %76, %conv153
  store i64 %add154, ptr %L_result, align 8
  %arrayidx155 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 10
  %77 = load i16, ptr %arrayidx155, align 2
  %conv156 = sext i16 %77 to i32
  %78 = load ptr, ptr %dp.addr, align 8
  %79 = load i32, ptr %lambda, align 4
  %sub157 = sub nsw i32 10, %79
  %idxprom158 = sext i32 %sub157 to i64
  %arrayidx159 = getelementptr inbounds i16, ptr %78, i64 %idxprom158
  %80 = load i16, ptr %arrayidx159, align 2
  %conv160 = sext i16 %80 to i32
  %mul161 = mul nsw i32 %conv156, %conv160
  %conv162 = sext i32 %mul161 to i64
  %81 = load i64, ptr %L_result, align 8
  %add163 = add nsw i64 %81, %conv162
  store i64 %add163, ptr %L_result, align 8
  %arrayidx164 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 11
  %82 = load i16, ptr %arrayidx164, align 2
  %conv165 = sext i16 %82 to i32
  %83 = load ptr, ptr %dp.addr, align 8
  %84 = load i32, ptr %lambda, align 4
  %sub166 = sub nsw i32 11, %84
  %idxprom167 = sext i32 %sub166 to i64
  %arrayidx168 = getelementptr inbounds i16, ptr %83, i64 %idxprom167
  %85 = load i16, ptr %arrayidx168, align 2
  %conv169 = sext i16 %85 to i32
  %mul170 = mul nsw i32 %conv165, %conv169
  %conv171 = sext i32 %mul170 to i64
  %86 = load i64, ptr %L_result, align 8
  %add172 = add nsw i64 %86, %conv171
  store i64 %add172, ptr %L_result, align 8
  %arrayidx173 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 12
  %87 = load i16, ptr %arrayidx173, align 2
  %conv174 = sext i16 %87 to i32
  %88 = load ptr, ptr %dp.addr, align 8
  %89 = load i32, ptr %lambda, align 4
  %sub175 = sub nsw i32 12, %89
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds i16, ptr %88, i64 %idxprom176
  %90 = load i16, ptr %arrayidx177, align 2
  %conv178 = sext i16 %90 to i32
  %mul179 = mul nsw i32 %conv174, %conv178
  %conv180 = sext i32 %mul179 to i64
  %91 = load i64, ptr %L_result, align 8
  %add181 = add nsw i64 %91, %conv180
  store i64 %add181, ptr %L_result, align 8
  %arrayidx182 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 13
  %92 = load i16, ptr %arrayidx182, align 2
  %conv183 = sext i16 %92 to i32
  %93 = load ptr, ptr %dp.addr, align 8
  %94 = load i32, ptr %lambda, align 4
  %sub184 = sub nsw i32 13, %94
  %idxprom185 = sext i32 %sub184 to i64
  %arrayidx186 = getelementptr inbounds i16, ptr %93, i64 %idxprom185
  %95 = load i16, ptr %arrayidx186, align 2
  %conv187 = sext i16 %95 to i32
  %mul188 = mul nsw i32 %conv183, %conv187
  %conv189 = sext i32 %mul188 to i64
  %96 = load i64, ptr %L_result, align 8
  %add190 = add nsw i64 %96, %conv189
  store i64 %add190, ptr %L_result, align 8
  %arrayidx191 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 14
  %97 = load i16, ptr %arrayidx191, align 2
  %conv192 = sext i16 %97 to i32
  %98 = load ptr, ptr %dp.addr, align 8
  %99 = load i32, ptr %lambda, align 4
  %sub193 = sub nsw i32 14, %99
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds i16, ptr %98, i64 %idxprom194
  %100 = load i16, ptr %arrayidx195, align 2
  %conv196 = sext i16 %100 to i32
  %mul197 = mul nsw i32 %conv192, %conv196
  %conv198 = sext i32 %mul197 to i64
  %101 = load i64, ptr %L_result, align 8
  %add199 = add nsw i64 %101, %conv198
  store i64 %add199, ptr %L_result, align 8
  %arrayidx200 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 15
  %102 = load i16, ptr %arrayidx200, align 2
  %conv201 = sext i16 %102 to i32
  %103 = load ptr, ptr %dp.addr, align 8
  %104 = load i32, ptr %lambda, align 4
  %sub202 = sub nsw i32 15, %104
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds i16, ptr %103, i64 %idxprom203
  %105 = load i16, ptr %arrayidx204, align 2
  %conv205 = sext i16 %105 to i32
  %mul206 = mul nsw i32 %conv201, %conv205
  %conv207 = sext i32 %mul206 to i64
  %106 = load i64, ptr %L_result, align 8
  %add208 = add nsw i64 %106, %conv207
  store i64 %add208, ptr %L_result, align 8
  %arrayidx209 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 16
  %107 = load i16, ptr %arrayidx209, align 2
  %conv210 = sext i16 %107 to i32
  %108 = load ptr, ptr %dp.addr, align 8
  %109 = load i32, ptr %lambda, align 4
  %sub211 = sub nsw i32 16, %109
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds i16, ptr %108, i64 %idxprom212
  %110 = load i16, ptr %arrayidx213, align 2
  %conv214 = sext i16 %110 to i32
  %mul215 = mul nsw i32 %conv210, %conv214
  %conv216 = sext i32 %mul215 to i64
  %111 = load i64, ptr %L_result, align 8
  %add217 = add nsw i64 %111, %conv216
  store i64 %add217, ptr %L_result, align 8
  %arrayidx218 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 17
  %112 = load i16, ptr %arrayidx218, align 2
  %conv219 = sext i16 %112 to i32
  %113 = load ptr, ptr %dp.addr, align 8
  %114 = load i32, ptr %lambda, align 4
  %sub220 = sub nsw i32 17, %114
  %idxprom221 = sext i32 %sub220 to i64
  %arrayidx222 = getelementptr inbounds i16, ptr %113, i64 %idxprom221
  %115 = load i16, ptr %arrayidx222, align 2
  %conv223 = sext i16 %115 to i32
  %mul224 = mul nsw i32 %conv219, %conv223
  %conv225 = sext i32 %mul224 to i64
  %116 = load i64, ptr %L_result, align 8
  %add226 = add nsw i64 %116, %conv225
  store i64 %add226, ptr %L_result, align 8
  %arrayidx227 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 18
  %117 = load i16, ptr %arrayidx227, align 2
  %conv228 = sext i16 %117 to i32
  %118 = load ptr, ptr %dp.addr, align 8
  %119 = load i32, ptr %lambda, align 4
  %sub229 = sub nsw i32 18, %119
  %idxprom230 = sext i32 %sub229 to i64
  %arrayidx231 = getelementptr inbounds i16, ptr %118, i64 %idxprom230
  %120 = load i16, ptr %arrayidx231, align 2
  %conv232 = sext i16 %120 to i32
  %mul233 = mul nsw i32 %conv228, %conv232
  %conv234 = sext i32 %mul233 to i64
  %121 = load i64, ptr %L_result, align 8
  %add235 = add nsw i64 %121, %conv234
  store i64 %add235, ptr %L_result, align 8
  %arrayidx236 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 19
  %122 = load i16, ptr %arrayidx236, align 2
  %conv237 = sext i16 %122 to i32
  %123 = load ptr, ptr %dp.addr, align 8
  %124 = load i32, ptr %lambda, align 4
  %sub238 = sub nsw i32 19, %124
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds i16, ptr %123, i64 %idxprom239
  %125 = load i16, ptr %arrayidx240, align 2
  %conv241 = sext i16 %125 to i32
  %mul242 = mul nsw i32 %conv237, %conv241
  %conv243 = sext i32 %mul242 to i64
  %126 = load i64, ptr %L_result, align 8
  %add244 = add nsw i64 %126, %conv243
  store i64 %add244, ptr %L_result, align 8
  %arrayidx245 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 20
  %127 = load i16, ptr %arrayidx245, align 2
  %conv246 = sext i16 %127 to i32
  %128 = load ptr, ptr %dp.addr, align 8
  %129 = load i32, ptr %lambda, align 4
  %sub247 = sub nsw i32 20, %129
  %idxprom248 = sext i32 %sub247 to i64
  %arrayidx249 = getelementptr inbounds i16, ptr %128, i64 %idxprom248
  %130 = load i16, ptr %arrayidx249, align 2
  %conv250 = sext i16 %130 to i32
  %mul251 = mul nsw i32 %conv246, %conv250
  %conv252 = sext i32 %mul251 to i64
  %131 = load i64, ptr %L_result, align 8
  %add253 = add nsw i64 %131, %conv252
  store i64 %add253, ptr %L_result, align 8
  %arrayidx254 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 21
  %132 = load i16, ptr %arrayidx254, align 2
  %conv255 = sext i16 %132 to i32
  %133 = load ptr, ptr %dp.addr, align 8
  %134 = load i32, ptr %lambda, align 4
  %sub256 = sub nsw i32 21, %134
  %idxprom257 = sext i32 %sub256 to i64
  %arrayidx258 = getelementptr inbounds i16, ptr %133, i64 %idxprom257
  %135 = load i16, ptr %arrayidx258, align 2
  %conv259 = sext i16 %135 to i32
  %mul260 = mul nsw i32 %conv255, %conv259
  %conv261 = sext i32 %mul260 to i64
  %136 = load i64, ptr %L_result, align 8
  %add262 = add nsw i64 %136, %conv261
  store i64 %add262, ptr %L_result, align 8
  %arrayidx263 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 22
  %137 = load i16, ptr %arrayidx263, align 2
  %conv264 = sext i16 %137 to i32
  %138 = load ptr, ptr %dp.addr, align 8
  %139 = load i32, ptr %lambda, align 4
  %sub265 = sub nsw i32 22, %139
  %idxprom266 = sext i32 %sub265 to i64
  %arrayidx267 = getelementptr inbounds i16, ptr %138, i64 %idxprom266
  %140 = load i16, ptr %arrayidx267, align 2
  %conv268 = sext i16 %140 to i32
  %mul269 = mul nsw i32 %conv264, %conv268
  %conv270 = sext i32 %mul269 to i64
  %141 = load i64, ptr %L_result, align 8
  %add271 = add nsw i64 %141, %conv270
  store i64 %add271, ptr %L_result, align 8
  %arrayidx272 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 23
  %142 = load i16, ptr %arrayidx272, align 2
  %conv273 = sext i16 %142 to i32
  %143 = load ptr, ptr %dp.addr, align 8
  %144 = load i32, ptr %lambda, align 4
  %sub274 = sub nsw i32 23, %144
  %idxprom275 = sext i32 %sub274 to i64
  %arrayidx276 = getelementptr inbounds i16, ptr %143, i64 %idxprom275
  %145 = load i16, ptr %arrayidx276, align 2
  %conv277 = sext i16 %145 to i32
  %mul278 = mul nsw i32 %conv273, %conv277
  %conv279 = sext i32 %mul278 to i64
  %146 = load i64, ptr %L_result, align 8
  %add280 = add nsw i64 %146, %conv279
  store i64 %add280, ptr %L_result, align 8
  %arrayidx281 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 24
  %147 = load i16, ptr %arrayidx281, align 2
  %conv282 = sext i16 %147 to i32
  %148 = load ptr, ptr %dp.addr, align 8
  %149 = load i32, ptr %lambda, align 4
  %sub283 = sub nsw i32 24, %149
  %idxprom284 = sext i32 %sub283 to i64
  %arrayidx285 = getelementptr inbounds i16, ptr %148, i64 %idxprom284
  %150 = load i16, ptr %arrayidx285, align 2
  %conv286 = sext i16 %150 to i32
  %mul287 = mul nsw i32 %conv282, %conv286
  %conv288 = sext i32 %mul287 to i64
  %151 = load i64, ptr %L_result, align 8
  %add289 = add nsw i64 %151, %conv288
  store i64 %add289, ptr %L_result, align 8
  %arrayidx290 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 25
  %152 = load i16, ptr %arrayidx290, align 2
  %conv291 = sext i16 %152 to i32
  %153 = load ptr, ptr %dp.addr, align 8
  %154 = load i32, ptr %lambda, align 4
  %sub292 = sub nsw i32 25, %154
  %idxprom293 = sext i32 %sub292 to i64
  %arrayidx294 = getelementptr inbounds i16, ptr %153, i64 %idxprom293
  %155 = load i16, ptr %arrayidx294, align 2
  %conv295 = sext i16 %155 to i32
  %mul296 = mul nsw i32 %conv291, %conv295
  %conv297 = sext i32 %mul296 to i64
  %156 = load i64, ptr %L_result, align 8
  %add298 = add nsw i64 %156, %conv297
  store i64 %add298, ptr %L_result, align 8
  %arrayidx299 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 26
  %157 = load i16, ptr %arrayidx299, align 2
  %conv300 = sext i16 %157 to i32
  %158 = load ptr, ptr %dp.addr, align 8
  %159 = load i32, ptr %lambda, align 4
  %sub301 = sub nsw i32 26, %159
  %idxprom302 = sext i32 %sub301 to i64
  %arrayidx303 = getelementptr inbounds i16, ptr %158, i64 %idxprom302
  %160 = load i16, ptr %arrayidx303, align 2
  %conv304 = sext i16 %160 to i32
  %mul305 = mul nsw i32 %conv300, %conv304
  %conv306 = sext i32 %mul305 to i64
  %161 = load i64, ptr %L_result, align 8
  %add307 = add nsw i64 %161, %conv306
  store i64 %add307, ptr %L_result, align 8
  %arrayidx308 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 27
  %162 = load i16, ptr %arrayidx308, align 2
  %conv309 = sext i16 %162 to i32
  %163 = load ptr, ptr %dp.addr, align 8
  %164 = load i32, ptr %lambda, align 4
  %sub310 = sub nsw i32 27, %164
  %idxprom311 = sext i32 %sub310 to i64
  %arrayidx312 = getelementptr inbounds i16, ptr %163, i64 %idxprom311
  %165 = load i16, ptr %arrayidx312, align 2
  %conv313 = sext i16 %165 to i32
  %mul314 = mul nsw i32 %conv309, %conv313
  %conv315 = sext i32 %mul314 to i64
  %166 = load i64, ptr %L_result, align 8
  %add316 = add nsw i64 %166, %conv315
  store i64 %add316, ptr %L_result, align 8
  %arrayidx317 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 28
  %167 = load i16, ptr %arrayidx317, align 2
  %conv318 = sext i16 %167 to i32
  %168 = load ptr, ptr %dp.addr, align 8
  %169 = load i32, ptr %lambda, align 4
  %sub319 = sub nsw i32 28, %169
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds i16, ptr %168, i64 %idxprom320
  %170 = load i16, ptr %arrayidx321, align 2
  %conv322 = sext i16 %170 to i32
  %mul323 = mul nsw i32 %conv318, %conv322
  %conv324 = sext i32 %mul323 to i64
  %171 = load i64, ptr %L_result, align 8
  %add325 = add nsw i64 %171, %conv324
  store i64 %add325, ptr %L_result, align 8
  %arrayidx326 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 29
  %172 = load i16, ptr %arrayidx326, align 2
  %conv327 = sext i16 %172 to i32
  %173 = load ptr, ptr %dp.addr, align 8
  %174 = load i32, ptr %lambda, align 4
  %sub328 = sub nsw i32 29, %174
  %idxprom329 = sext i32 %sub328 to i64
  %arrayidx330 = getelementptr inbounds i16, ptr %173, i64 %idxprom329
  %175 = load i16, ptr %arrayidx330, align 2
  %conv331 = sext i16 %175 to i32
  %mul332 = mul nsw i32 %conv327, %conv331
  %conv333 = sext i32 %mul332 to i64
  %176 = load i64, ptr %L_result, align 8
  %add334 = add nsw i64 %176, %conv333
  store i64 %add334, ptr %L_result, align 8
  %arrayidx335 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 30
  %177 = load i16, ptr %arrayidx335, align 2
  %conv336 = sext i16 %177 to i32
  %178 = load ptr, ptr %dp.addr, align 8
  %179 = load i32, ptr %lambda, align 4
  %sub337 = sub nsw i32 30, %179
  %idxprom338 = sext i32 %sub337 to i64
  %arrayidx339 = getelementptr inbounds i16, ptr %178, i64 %idxprom338
  %180 = load i16, ptr %arrayidx339, align 2
  %conv340 = sext i16 %180 to i32
  %mul341 = mul nsw i32 %conv336, %conv340
  %conv342 = sext i32 %mul341 to i64
  %181 = load i64, ptr %L_result, align 8
  %add343 = add nsw i64 %181, %conv342
  store i64 %add343, ptr %L_result, align 8
  %arrayidx344 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 31
  %182 = load i16, ptr %arrayidx344, align 2
  %conv345 = sext i16 %182 to i32
  %183 = load ptr, ptr %dp.addr, align 8
  %184 = load i32, ptr %lambda, align 4
  %sub346 = sub nsw i32 31, %184
  %idxprom347 = sext i32 %sub346 to i64
  %arrayidx348 = getelementptr inbounds i16, ptr %183, i64 %idxprom347
  %185 = load i16, ptr %arrayidx348, align 2
  %conv349 = sext i16 %185 to i32
  %mul350 = mul nsw i32 %conv345, %conv349
  %conv351 = sext i32 %mul350 to i64
  %186 = load i64, ptr %L_result, align 8
  %add352 = add nsw i64 %186, %conv351
  store i64 %add352, ptr %L_result, align 8
  %arrayidx353 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 32
  %187 = load i16, ptr %arrayidx353, align 2
  %conv354 = sext i16 %187 to i32
  %188 = load ptr, ptr %dp.addr, align 8
  %189 = load i32, ptr %lambda, align 4
  %sub355 = sub nsw i32 32, %189
  %idxprom356 = sext i32 %sub355 to i64
  %arrayidx357 = getelementptr inbounds i16, ptr %188, i64 %idxprom356
  %190 = load i16, ptr %arrayidx357, align 2
  %conv358 = sext i16 %190 to i32
  %mul359 = mul nsw i32 %conv354, %conv358
  %conv360 = sext i32 %mul359 to i64
  %191 = load i64, ptr %L_result, align 8
  %add361 = add nsw i64 %191, %conv360
  store i64 %add361, ptr %L_result, align 8
  %arrayidx362 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 33
  %192 = load i16, ptr %arrayidx362, align 2
  %conv363 = sext i16 %192 to i32
  %193 = load ptr, ptr %dp.addr, align 8
  %194 = load i32, ptr %lambda, align 4
  %sub364 = sub nsw i32 33, %194
  %idxprom365 = sext i32 %sub364 to i64
  %arrayidx366 = getelementptr inbounds i16, ptr %193, i64 %idxprom365
  %195 = load i16, ptr %arrayidx366, align 2
  %conv367 = sext i16 %195 to i32
  %mul368 = mul nsw i32 %conv363, %conv367
  %conv369 = sext i32 %mul368 to i64
  %196 = load i64, ptr %L_result, align 8
  %add370 = add nsw i64 %196, %conv369
  store i64 %add370, ptr %L_result, align 8
  %arrayidx371 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 34
  %197 = load i16, ptr %arrayidx371, align 2
  %conv372 = sext i16 %197 to i32
  %198 = load ptr, ptr %dp.addr, align 8
  %199 = load i32, ptr %lambda, align 4
  %sub373 = sub nsw i32 34, %199
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds i16, ptr %198, i64 %idxprom374
  %200 = load i16, ptr %arrayidx375, align 2
  %conv376 = sext i16 %200 to i32
  %mul377 = mul nsw i32 %conv372, %conv376
  %conv378 = sext i32 %mul377 to i64
  %201 = load i64, ptr %L_result, align 8
  %add379 = add nsw i64 %201, %conv378
  store i64 %add379, ptr %L_result, align 8
  %arrayidx380 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 35
  %202 = load i16, ptr %arrayidx380, align 2
  %conv381 = sext i16 %202 to i32
  %203 = load ptr, ptr %dp.addr, align 8
  %204 = load i32, ptr %lambda, align 4
  %sub382 = sub nsw i32 35, %204
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds i16, ptr %203, i64 %idxprom383
  %205 = load i16, ptr %arrayidx384, align 2
  %conv385 = sext i16 %205 to i32
  %mul386 = mul nsw i32 %conv381, %conv385
  %conv387 = sext i32 %mul386 to i64
  %206 = load i64, ptr %L_result, align 8
  %add388 = add nsw i64 %206, %conv387
  store i64 %add388, ptr %L_result, align 8
  %arrayidx389 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 36
  %207 = load i16, ptr %arrayidx389, align 2
  %conv390 = sext i16 %207 to i32
  %208 = load ptr, ptr %dp.addr, align 8
  %209 = load i32, ptr %lambda, align 4
  %sub391 = sub nsw i32 36, %209
  %idxprom392 = sext i32 %sub391 to i64
  %arrayidx393 = getelementptr inbounds i16, ptr %208, i64 %idxprom392
  %210 = load i16, ptr %arrayidx393, align 2
  %conv394 = sext i16 %210 to i32
  %mul395 = mul nsw i32 %conv390, %conv394
  %conv396 = sext i32 %mul395 to i64
  %211 = load i64, ptr %L_result, align 8
  %add397 = add nsw i64 %211, %conv396
  store i64 %add397, ptr %L_result, align 8
  %arrayidx398 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 37
  %212 = load i16, ptr %arrayidx398, align 2
  %conv399 = sext i16 %212 to i32
  %213 = load ptr, ptr %dp.addr, align 8
  %214 = load i32, ptr %lambda, align 4
  %sub400 = sub nsw i32 37, %214
  %idxprom401 = sext i32 %sub400 to i64
  %arrayidx402 = getelementptr inbounds i16, ptr %213, i64 %idxprom401
  %215 = load i16, ptr %arrayidx402, align 2
  %conv403 = sext i16 %215 to i32
  %mul404 = mul nsw i32 %conv399, %conv403
  %conv405 = sext i32 %mul404 to i64
  %216 = load i64, ptr %L_result, align 8
  %add406 = add nsw i64 %216, %conv405
  store i64 %add406, ptr %L_result, align 8
  %arrayidx407 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 38
  %217 = load i16, ptr %arrayidx407, align 2
  %conv408 = sext i16 %217 to i32
  %218 = load ptr, ptr %dp.addr, align 8
  %219 = load i32, ptr %lambda, align 4
  %sub409 = sub nsw i32 38, %219
  %idxprom410 = sext i32 %sub409 to i64
  %arrayidx411 = getelementptr inbounds i16, ptr %218, i64 %idxprom410
  %220 = load i16, ptr %arrayidx411, align 2
  %conv412 = sext i16 %220 to i32
  %mul413 = mul nsw i32 %conv408, %conv412
  %conv414 = sext i32 %mul413 to i64
  %221 = load i64, ptr %L_result, align 8
  %add415 = add nsw i64 %221, %conv414
  store i64 %add415, ptr %L_result, align 8
  %arrayidx416 = getelementptr inbounds [40 x i16], ptr %wt, i64 0, i64 39
  %222 = load i16, ptr %arrayidx416, align 2
  %conv417 = sext i16 %222 to i32
  %223 = load ptr, ptr %dp.addr, align 8
  %224 = load i32, ptr %lambda, align 4
  %sub418 = sub nsw i32 39, %224
  %idxprom419 = sext i32 %sub418 to i64
  %arrayidx420 = getelementptr inbounds i16, ptr %223, i64 %idxprom419
  %225 = load i16, ptr %arrayidx420, align 2
  %conv421 = sext i16 %225 to i32
  %mul422 = mul nsw i32 %conv417, %conv421
  %conv423 = sext i32 %mul422 to i64
  %226 = load i64, ptr %L_result, align 8
  %add424 = add nsw i64 %226, %conv423
  store i64 %add424, ptr %L_result, align 8
  %227 = load i64, ptr %L_result, align 8
  %228 = load i64, ptr %L_max, align 8
  %cmp425 = icmp sgt i64 %227, %228
  br i1 %cmp425, label %if.then427, label %if.end429

if.then427:                                       ; preds = %for.body67
  %229 = load i32, ptr %lambda, align 4
  %conv428 = trunc i32 %229 to i16
  store i16 %conv428, ptr %Nc, align 2
  %230 = load i64, ptr %L_result, align 8
  store i64 %230, ptr %L_max, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.then427, %for.body67
  br label %for.inc430

for.inc430:                                       ; preds = %if.end429
  %231 = load i32, ptr %lambda, align 4
  %inc431 = add nsw i32 %231, 1
  store i32 %inc431, ptr %lambda, align 4
  br label %for.cond64, !llvm.loop !9

for.end432:                                       ; preds = %for.cond64
  %232 = load i16, ptr %Nc, align 2
  %233 = load ptr, ptr %Nc_out.addr, align 8
  store i16 %232, ptr %233, align 2
  %234 = load i64, ptr %L_max, align 8
  %shl433 = shl i64 %234, 1
  store i64 %shl433, ptr %L_max, align 8
  %235 = load i16, ptr %scal, align 2
  %conv434 = sext i16 %235 to i32
  %cmp435 = icmp sle i32 %conv434, 100
  br i1 %cmp435, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end432
  %236 = load i16, ptr %scal, align 2
  %conv437 = sext i16 %236 to i32
  %cmp438 = icmp sge i32 %conv437, -100
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end432
  %237 = phi i1 [ false, %for.end432 ], [ %cmp438, %land.rhs ]
  %lnot440 = xor i1 %237, true
  %lnot.ext441 = zext i1 %lnot440 to i32
  %conv442 = sext i32 %lnot.ext441 to i64
  %tobool443 = icmp ne i64 %conv442, 0
  br i1 %tobool443, label %cond.true444, label %cond.false445

cond.true444:                                     ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.Calculation_of_the_LTP_parameters, ptr noundef @.str, i32 noundef 165, ptr noundef @.str.11) #3
  unreachable

238:                                              ; No predecessors!
  br label %cond.end446

cond.false445:                                    ; preds = %land.end
  br label %cond.end446

cond.end446:                                      ; preds = %cond.false445, %238
  %239 = load i64, ptr %L_max, align 8
  %240 = load i16, ptr %scal, align 2
  %conv447 = sext i16 %240 to i32
  %sub448 = sub nsw i32 6, %conv447
  %sh_prom = zext i32 %sub448 to i64
  %shr = ashr i64 %239, %sh_prom
  store i64 %shr, ptr %L_max, align 8
  %241 = load i16, ptr %Nc, align 2
  %conv449 = sext i16 %241 to i32
  %cmp450 = icmp sle i32 %conv449, 120
  br i1 %cmp450, label %land.rhs452, label %land.end456

land.rhs452:                                      ; preds = %cond.end446
  %242 = load i16, ptr %Nc, align 2
  %conv453 = sext i16 %242 to i32
  %cmp454 = icmp sge i32 %conv453, 40
  br label %land.end456

land.end456:                                      ; preds = %land.rhs452, %cond.end446
  %243 = phi i1 [ false, %cond.end446 ], [ %cmp454, %land.rhs452 ]
  %lnot457 = xor i1 %243, true
  %lnot.ext458 = zext i1 %lnot457 to i32
  %conv459 = sext i32 %lnot.ext458 to i64
  %tobool460 = icmp ne i64 %conv459, 0
  br i1 %tobool460, label %cond.true461, label %cond.false462

cond.true461:                                     ; preds = %land.end456
  call void @__assert_rtn(ptr noundef @__func__.Calculation_of_the_LTP_parameters, ptr noundef @.str, i32 noundef 168, ptr noundef @.str.12) #3
  unreachable

244:                                              ; No predecessors!
  br label %cond.end463

cond.false462:                                    ; preds = %land.end456
  br label %cond.end463

cond.end463:                                      ; preds = %cond.false462, %244
  store i64 0, ptr %L_power, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond464

for.cond464:                                      ; preds = %for.inc477, %cond.end463
  %245 = load i32, ptr %k, align 4
  %cmp465 = icmp sle i32 %245, 39
  br i1 %cmp465, label %for.body467, label %for.end479

for.body467:                                      ; preds = %for.cond464
  %246 = load ptr, ptr %dp.addr, align 8
  %247 = load i32, ptr %k, align 4
  %248 = load i16, ptr %Nc, align 2
  %conv468 = sext i16 %248 to i32
  %sub469 = sub nsw i32 %247, %conv468
  %idxprom470 = sext i32 %sub469 to i64
  %arrayidx471 = getelementptr inbounds i16, ptr %246, i64 %idxprom470
  %249 = load i16, ptr %arrayidx471, align 2
  %conv472 = sext i16 %249 to i32
  %call473 = call i32 @SASR(i32 noundef %conv472, i32 noundef 3)
  %conv474 = sext i32 %call473 to i64
  store i64 %conv474, ptr %L_temp, align 8
  %250 = load i64, ptr %L_temp, align 8
  %251 = load i64, ptr %L_temp, align 8
  %mul475 = mul nsw i64 %250, %251
  %252 = load i64, ptr %L_power, align 8
  %add476 = add nsw i64 %252, %mul475
  store i64 %add476, ptr %L_power, align 8
  br label %for.inc477

for.inc477:                                       ; preds = %for.body467
  %253 = load i32, ptr %k, align 4
  %inc478 = add nsw i32 %253, 1
  store i32 %inc478, ptr %k, align 4
  br label %for.cond464, !llvm.loop !10

for.end479:                                       ; preds = %for.cond464
  %254 = load i64, ptr %L_power, align 8
  %shl480 = shl i64 %254, 1
  store i64 %shl480, ptr %L_power, align 8
  %255 = load i64, ptr %L_max, align 8
  %cmp481 = icmp sle i64 %255, 0
  br i1 %cmp481, label %if.then483, label %if.end484

if.then483:                                       ; preds = %for.end479
  %256 = load ptr, ptr %bc_out.addr, align 8
  store i16 0, ptr %256, align 2
  br label %return

if.end484:                                        ; preds = %for.end479
  %257 = load i64, ptr %L_max, align 8
  %258 = load i64, ptr %L_power, align 8
  %cmp485 = icmp sge i64 %257, %258
  br i1 %cmp485, label %if.then487, label %if.end488

if.then487:                                       ; preds = %if.end484
  %259 = load ptr, ptr %bc_out.addr, align 8
  store i16 3, ptr %259, align 2
  br label %return

if.end488:                                        ; preds = %if.end484
  %260 = load i64, ptr %L_power, align 8
  %call489 = call signext i16 @gsm_norm(i64 noundef %260)
  store i16 %call489, ptr %temp, align 2
  %261 = load i64, ptr %L_max, align 8
  %262 = load i16, ptr %temp, align 2
  %conv490 = sext i16 %262 to i32
  %sh_prom491 = zext i32 %conv490 to i64
  %shl492 = shl i64 %261, %sh_prom491
  %call493 = call i32 @SASR(i64 noundef %shl492, i32 noundef 16)
  %conv494 = trunc i32 %call493 to i16
  store i16 %conv494, ptr %R, align 2
  %263 = load i64, ptr %L_power, align 8
  %264 = load i16, ptr %temp, align 2
  %conv495 = sext i16 %264 to i32
  %sh_prom496 = zext i32 %conv495 to i64
  %shl497 = shl i64 %263, %sh_prom496
  %call498 = call i32 @SASR(i64 noundef %shl497, i32 noundef 16)
  %conv499 = trunc i32 %call498 to i16
  store i16 %conv499, ptr %S, align 2
  store i16 0, ptr %bc, align 2
  br label %for.cond500

for.cond500:                                      ; preds = %for.inc514, %if.end488
  %265 = load i16, ptr %bc, align 2
  %conv501 = sext i16 %265 to i32
  %cmp502 = icmp sle i32 %conv501, 2
  br i1 %cmp502, label %for.body504, label %for.end516

for.body504:                                      ; preds = %for.cond500
  %266 = load i16, ptr %R, align 2
  %conv505 = sext i16 %266 to i32
  %267 = load i16, ptr %S, align 2
  %268 = load i16, ptr %bc, align 2
  %idxprom506 = sext i16 %268 to i64
  %arrayidx507 = getelementptr inbounds [4 x i16], ptr @gsm_DLB, i64 0, i64 %idxprom506
  %269 = load i16, ptr %arrayidx507, align 2
  %call508 = call signext i16 @gsm_mult(i16 noundef signext %267, i16 noundef signext %269)
  %conv509 = sext i16 %call508 to i32
  %cmp510 = icmp sle i32 %conv505, %conv509
  br i1 %cmp510, label %if.then512, label %if.end513

if.then512:                                       ; preds = %for.body504
  br label %for.end516

if.end513:                                        ; preds = %for.body504
  br label %for.inc514

for.inc514:                                       ; preds = %if.end513
  %270 = load i16, ptr %bc, align 2
  %inc515 = add i16 %270, 1
  store i16 %inc515, ptr %bc, align 2
  br label %for.cond500, !llvm.loop !11

for.end516:                                       ; preds = %if.then512, %for.cond500
  %271 = load i16, ptr %bc, align 2
  %272 = load ptr, ptr %bc_out.addr, align 8
  store i16 %271, ptr %272, align 2
  br label %return

return:                                           ; preds = %for.end516, %if.then487, %if.then483
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Long_term_analysis_filtering(i16 noundef signext %bc, i16 noundef signext %Nc, ptr noundef %dp, ptr noundef %d, ptr noundef %dpp, ptr noundef %e) #0 {
entry:
  %bc.addr = alloca i16, align 2
  %Nc.addr = alloca i16, align 2
  %dp.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %dpp.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store i16 %bc, ptr %bc.addr, align 2
  store i16 %Nc, ptr %Nc.addr, align 2
  store ptr %dp, ptr %dp.addr, align 8
  store ptr %d, ptr %d.addr, align 8
  store ptr %dpp, ptr %dpp.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  %0 = load i16, ptr %bc.addr, align 2
  %conv = sext i16 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb66
    i32 3, label %sw.bb107
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, ptr %k, align 4
  %cmp = icmp sle i32 %1, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dp.addr, align 8
  %3 = load i32, ptr %k, align 4
  %4 = load i16, ptr %Nc.addr, align 2
  %conv2 = sext i16 %4 to i32
  %sub = sub nsw i32 %3, %conv2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2
  %conv3 = sext i16 %5 to i64
  %mul = mul nsw i64 3277, %conv3
  %add = add nsw i64 %mul, 16384
  %call = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv4 = trunc i32 %call to i16
  %6 = load ptr, ptr %dpp.addr, align 8
  %7 = load i32, ptr %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %6, i64 %idxprom5
  store i16 %conv4, ptr %arrayidx6, align 2
  %8 = load ptr, ptr %d.addr, align 8
  %9 = load i32, ptr %k, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %8, i64 %idxprom7
  %10 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %10 to i64
  %11 = load ptr, ptr %dpp.addr, align 8
  %12 = load i32, ptr %k, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i16, ptr %11, i64 %idxprom10
  %13 = load i16, ptr %arrayidx11, align 2
  %conv12 = sext i16 %13 to i64
  %sub13 = sub nsw i64 %conv9, %conv12
  store i64 %sub13, ptr %ltmp, align 8
  %cmp14 = icmp sge i64 %sub13, 32767
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end20

cond.false:                                       ; preds = %for.body
  %14 = load i64, ptr %ltmp, align 8
  %cmp16 = icmp sle i64 %14, -32768
  br i1 %cmp16, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.false
  br label %cond.end

cond.false19:                                     ; preds = %cond.false
  %15 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false19, %cond.true18
  %cond = phi i64 [ -32768, %cond.true18 ], [ %15, %cond.false19 ]
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end, %cond.true
  %cond21 = phi i64 [ 32767, %cond.true ], [ %cond, %cond.end ]
  %conv22 = trunc i64 %cond21 to i16
  %16 = load ptr, ptr %e.addr, align 8
  %17 = load i32, ptr %k, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %16, i64 %idxprom23
  store i16 %conv22, ptr %arrayidx24, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end20
  %18 = load i32, ptr %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc63, %sw.bb25
  %19 = load i32, ptr %k, align 4
  %cmp27 = icmp sle i32 %19, 39
  br i1 %cmp27, label %for.body29, label %for.end65

for.body29:                                       ; preds = %for.cond26
  %20 = load ptr, ptr %dp.addr, align 8
  %21 = load i32, ptr %k, align 4
  %22 = load i16, ptr %Nc.addr, align 2
  %conv30 = sext i16 %22 to i32
  %sub31 = sub nsw i32 %21, %conv30
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %20, i64 %idxprom32
  %23 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %23 to i64
  %mul35 = mul nsw i64 11469, %conv34
  %add36 = add nsw i64 %mul35, 16384
  %call37 = call i32 @SASR(i64 noundef %add36, i32 noundef 15)
  %conv38 = trunc i32 %call37 to i16
  %24 = load ptr, ptr %dpp.addr, align 8
  %25 = load i32, ptr %k, align 4
  %idxprom39 = sext i32 %25 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %24, i64 %idxprom39
  store i16 %conv38, ptr %arrayidx40, align 2
  %26 = load ptr, ptr %d.addr, align 8
  %27 = load i32, ptr %k, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds i16, ptr %26, i64 %idxprom41
  %28 = load i16, ptr %arrayidx42, align 2
  %conv43 = sext i16 %28 to i64
  %29 = load ptr, ptr %dpp.addr, align 8
  %30 = load i32, ptr %k, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds i16, ptr %29, i64 %idxprom44
  %31 = load i16, ptr %arrayidx45, align 2
  %conv46 = sext i16 %31 to i64
  %sub47 = sub nsw i64 %conv43, %conv46
  store i64 %sub47, ptr %ltmp, align 8
  %cmp48 = icmp sge i64 %sub47, 32767
  br i1 %cmp48, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %for.body29
  br label %cond.end58

cond.false51:                                     ; preds = %for.body29
  %32 = load i64, ptr %ltmp, align 8
  %cmp52 = icmp sle i64 %32, -32768
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false51
  br label %cond.end56

cond.false55:                                     ; preds = %cond.false51
  %33 = load i64, ptr %ltmp, align 8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i64 [ -32768, %cond.true54 ], [ %33, %cond.false55 ]
  br label %cond.end58

cond.end58:                                       ; preds = %cond.end56, %cond.true50
  %cond59 = phi i64 [ 32767, %cond.true50 ], [ %cond57, %cond.end56 ]
  %conv60 = trunc i64 %cond59 to i16
  %34 = load ptr, ptr %e.addr, align 8
  %35 = load i32, ptr %k, align 4
  %idxprom61 = sext i32 %35 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %34, i64 %idxprom61
  store i16 %conv60, ptr %arrayidx62, align 2
  br label %for.inc63

for.inc63:                                        ; preds = %cond.end58
  %36 = load i32, ptr %k, align 4
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, ptr %k, align 4
  br label %for.cond26, !llvm.loop !13

for.end65:                                        ; preds = %for.cond26
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc104, %sw.bb66
  %37 = load i32, ptr %k, align 4
  %cmp68 = icmp sle i32 %37, 39
  br i1 %cmp68, label %for.body70, label %for.end106

for.body70:                                       ; preds = %for.cond67
  %38 = load ptr, ptr %dp.addr, align 8
  %39 = load i32, ptr %k, align 4
  %40 = load i16, ptr %Nc.addr, align 2
  %conv71 = sext i16 %40 to i32
  %sub72 = sub nsw i32 %39, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %38, i64 %idxprom73
  %41 = load i16, ptr %arrayidx74, align 2
  %conv75 = sext i16 %41 to i64
  %mul76 = mul nsw i64 21299, %conv75
  %add77 = add nsw i64 %mul76, 16384
  %call78 = call i32 @SASR(i64 noundef %add77, i32 noundef 15)
  %conv79 = trunc i32 %call78 to i16
  %42 = load ptr, ptr %dpp.addr, align 8
  %43 = load i32, ptr %k, align 4
  %idxprom80 = sext i32 %43 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %42, i64 %idxprom80
  store i16 %conv79, ptr %arrayidx81, align 2
  %44 = load ptr, ptr %d.addr, align 8
  %45 = load i32, ptr %k, align 4
  %idxprom82 = sext i32 %45 to i64
  %arrayidx83 = getelementptr inbounds i16, ptr %44, i64 %idxprom82
  %46 = load i16, ptr %arrayidx83, align 2
  %conv84 = sext i16 %46 to i64
  %47 = load ptr, ptr %dpp.addr, align 8
  %48 = load i32, ptr %k, align 4
  %idxprom85 = sext i32 %48 to i64
  %arrayidx86 = getelementptr inbounds i16, ptr %47, i64 %idxprom85
  %49 = load i16, ptr %arrayidx86, align 2
  %conv87 = sext i16 %49 to i64
  %sub88 = sub nsw i64 %conv84, %conv87
  store i64 %sub88, ptr %ltmp, align 8
  %cmp89 = icmp sge i64 %sub88, 32767
  br i1 %cmp89, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %for.body70
  br label %cond.end99

cond.false92:                                     ; preds = %for.body70
  %50 = load i64, ptr %ltmp, align 8
  %cmp93 = icmp sle i64 %50, -32768
  br i1 %cmp93, label %cond.true95, label %cond.false96

cond.true95:                                      ; preds = %cond.false92
  br label %cond.end97

cond.false96:                                     ; preds = %cond.false92
  %51 = load i64, ptr %ltmp, align 8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i64 [ -32768, %cond.true95 ], [ %51, %cond.false96 ]
  br label %cond.end99

cond.end99:                                       ; preds = %cond.end97, %cond.true91
  %cond100 = phi i64 [ 32767, %cond.true91 ], [ %cond98, %cond.end97 ]
  %conv101 = trunc i64 %cond100 to i16
  %52 = load ptr, ptr %e.addr, align 8
  %53 = load i32, ptr %k, align 4
  %idxprom102 = sext i32 %53 to i64
  %arrayidx103 = getelementptr inbounds i16, ptr %52, i64 %idxprom102
  store i16 %conv101, ptr %arrayidx103, align 2
  br label %for.inc104

for.inc104:                                       ; preds = %cond.end99
  %54 = load i32, ptr %k, align 4
  %inc105 = add nsw i32 %54, 1
  store i32 %inc105, ptr %k, align 4
  br label %for.cond67, !llvm.loop !14

for.end106:                                       ; preds = %for.cond67
  br label %sw.epilog

sw.bb107:                                         ; preds = %entry
  store i32 0, ptr %k, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc145, %sw.bb107
  %55 = load i32, ptr %k, align 4
  %cmp109 = icmp sle i32 %55, 39
  br i1 %cmp109, label %for.body111, label %for.end147

for.body111:                                      ; preds = %for.cond108
  %56 = load ptr, ptr %dp.addr, align 8
  %57 = load i32, ptr %k, align 4
  %58 = load i16, ptr %Nc.addr, align 2
  %conv112 = sext i16 %58 to i32
  %sub113 = sub nsw i32 %57, %conv112
  %idxprom114 = sext i32 %sub113 to i64
  %arrayidx115 = getelementptr inbounds i16, ptr %56, i64 %idxprom114
  %59 = load i16, ptr %arrayidx115, align 2
  %conv116 = sext i16 %59 to i64
  %mul117 = mul nsw i64 32767, %conv116
  %add118 = add nsw i64 %mul117, 16384
  %call119 = call i32 @SASR(i64 noundef %add118, i32 noundef 15)
  %conv120 = trunc i32 %call119 to i16
  %60 = load ptr, ptr %dpp.addr, align 8
  %61 = load i32, ptr %k, align 4
  %idxprom121 = sext i32 %61 to i64
  %arrayidx122 = getelementptr inbounds i16, ptr %60, i64 %idxprom121
  store i16 %conv120, ptr %arrayidx122, align 2
  %62 = load ptr, ptr %d.addr, align 8
  %63 = load i32, ptr %k, align 4
  %idxprom123 = sext i32 %63 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %62, i64 %idxprom123
  %64 = load i16, ptr %arrayidx124, align 2
  %conv125 = sext i16 %64 to i64
  %65 = load ptr, ptr %dpp.addr, align 8
  %66 = load i32, ptr %k, align 4
  %idxprom126 = sext i32 %66 to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %65, i64 %idxprom126
  %67 = load i16, ptr %arrayidx127, align 2
  %conv128 = sext i16 %67 to i64
  %sub129 = sub nsw i64 %conv125, %conv128
  store i64 %sub129, ptr %ltmp, align 8
  %cmp130 = icmp sge i64 %sub129, 32767
  br i1 %cmp130, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %for.body111
  br label %cond.end140

cond.false133:                                    ; preds = %for.body111
  %68 = load i64, ptr %ltmp, align 8
  %cmp134 = icmp sle i64 %68, -32768
  br i1 %cmp134, label %cond.true136, label %cond.false137

cond.true136:                                     ; preds = %cond.false133
  br label %cond.end138

cond.false137:                                    ; preds = %cond.false133
  %69 = load i64, ptr %ltmp, align 8
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false137, %cond.true136
  %cond139 = phi i64 [ -32768, %cond.true136 ], [ %69, %cond.false137 ]
  br label %cond.end140

cond.end140:                                      ; preds = %cond.end138, %cond.true132
  %cond141 = phi i64 [ 32767, %cond.true132 ], [ %cond139, %cond.end138 ]
  %conv142 = trunc i64 %cond141 to i16
  %70 = load ptr, ptr %e.addr, align 8
  %71 = load i32, ptr %k, align 4
  %idxprom143 = sext i32 %71 to i64
  %arrayidx144 = getelementptr inbounds i16, ptr %70, i64 %idxprom143
  store i16 %conv142, ptr %arrayidx144, align 2
  br label %for.inc145

for.inc145:                                       ; preds = %cond.end140
  %72 = load i32, ptr %k, align 4
  %inc146 = add nsw i32 %72, 1
  store i32 %inc146, ptr %k, align 4
  br label %for.cond108, !llvm.loop !15

for.end147:                                       ; preds = %for.cond108
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end147, %for.end106, %for.end65, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Long_Term_Synthesis_Filtering(ptr noundef %S, i16 noundef signext %Ncr, i16 noundef signext %bcr, ptr noundef %erp, ptr noundef %drp) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %Ncr.addr = alloca i16, align 2
  %bcr.addr = alloca i16, align 2
  %erp.addr = alloca ptr, align 8
  %drp.addr = alloca ptr, align 8
  %ltmp = alloca i64, align 8
  %k = alloca i32, align 4
  %brp = alloca i16, align 2
  %drpp = alloca i16, align 2
  %Nr = alloca i16, align 2
  store ptr %S, ptr %S.addr, align 8
  store i16 %Ncr, ptr %Ncr.addr, align 2
  store i16 %bcr, ptr %bcr.addr, align 2
  store ptr %erp, ptr %erp.addr, align 8
  store ptr %drp, ptr %drp.addr, align 8
  %0 = load i16, ptr %Ncr.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 40
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, ptr %Ncr.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp sgt i32 %conv2, 120
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %S.addr, align 8
  %nrp = getelementptr inbounds %struct.gsm_state, ptr %2, i32 0, i32 7
  %3 = load i16, ptr %nrp, align 2
  %conv5 = sext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i16, ptr %Ncr.addr, align 2
  %conv6 = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  store i16 %conv7, ptr %Nr, align 2
  %5 = load i16, ptr %Nr, align 2
  %6 = load ptr, ptr %S.addr, align 8
  %nrp8 = getelementptr inbounds %struct.gsm_state, ptr %6, i32 0, i32 7
  store i16 %5, ptr %nrp8, align 2
  %7 = load i16, ptr %Nr, align 2
  %conv9 = sext i16 %7 to i32
  %cmp10 = icmp sge i32 %conv9, 40
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %8 = load i16, ptr %Nr, align 2
  %conv12 = sext i16 %8 to i32
  %cmp13 = icmp sle i32 %conv12, 120
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %9 = phi i1 [ false, %cond.end ], [ %cmp13, %land.rhs ]
  %lnot = xor i1 %9, true
  %lnot.ext = zext i1 %lnot to i32
  %conv15 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv15, 0
  br i1 %tobool, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Synthesis_Filtering, ptr noundef @.str, i32 noundef 581, ptr noundef @.str.7) #3
  unreachable

10:                                               ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %land.end
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %10
  %11 = load i16, ptr %bcr.addr, align 2
  %idxprom = sext i16 %11 to i64
  %arrayidx = getelementptr inbounds [4 x i16], ptr @gsm_QLB, i64 0, i64 %idxprom
  %12 = load i16, ptr %arrayidx, align 2
  store i16 %12, ptr %brp, align 2
  %13 = load i16, ptr %brp, align 2
  %conv19 = sext i16 %13 to i32
  %cmp20 = icmp ne i32 %conv19, -32768
  %lnot22 = xor i1 %cmp20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.end18
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Long_Term_Synthesis_Filtering, ptr noundef @.str, i32 noundef 590, ptr noundef @.str.8) #3
  unreachable

14:                                               ; No predecessors!
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end18
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %14
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end28
  %15 = load i32, ptr %k, align 4
  %cmp29 = icmp sle i32 %15, 39
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16, ptr %brp, align 2
  %conv31 = sext i16 %16 to i64
  %17 = load ptr, ptr %drp.addr, align 8
  %18 = load i32, ptr %k, align 4
  %19 = load i16, ptr %Nr, align 2
  %conv32 = sext i16 %19 to i32
  %sub = sub nsw i32 %18, %conv32
  %idxprom33 = sext i32 %sub to i64
  %arrayidx34 = getelementptr inbounds i16, ptr %17, i64 %idxprom33
  %20 = load i16, ptr %arrayidx34, align 2
  %conv35 = sext i16 %20 to i64
  %mul = mul nsw i64 %conv31, %conv35
  %add = add nsw i64 %mul, 16384
  %call = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv36 = trunc i32 %call to i16
  store i16 %conv36, ptr %drpp, align 2
  %21 = load ptr, ptr %erp.addr, align 8
  %22 = load i32, ptr %k, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %21, i64 %idxprom37
  %23 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %23 to i64
  %24 = load i16, ptr %drpp, align 2
  %conv40 = sext i16 %24 to i64
  %add41 = add nsw i64 %conv39, %conv40
  store i64 %add41, ptr %ltmp, align 8
  %sub42 = sub nsw i64 %add41, -32768
  %cmp43 = icmp ugt i64 %sub42, 65535
  br i1 %cmp43, label %cond.true45, label %cond.false50

cond.true45:                                      ; preds = %for.body
  %25 = load i64, ptr %ltmp, align 8
  %cmp46 = icmp sgt i64 %25, 0
  %26 = zext i1 %cmp46 to i64
  %cond48 = select i1 %cmp46, i32 32767, i32 -32768
  %conv49 = sext i32 %cond48 to i64
  br label %cond.end51

cond.false50:                                     ; preds = %for.body
  %27 = load i64, ptr %ltmp, align 8
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true45
  %cond52 = phi i64 [ %conv49, %cond.true45 ], [ %27, %cond.false50 ]
  %conv53 = trunc i64 %cond52 to i16
  %28 = load ptr, ptr %drp.addr, align 8
  %29 = load i32, ptr %k, align 4
  %idxprom54 = sext i32 %29 to i64
  %arrayidx55 = getelementptr inbounds i16, ptr %28, i64 %idxprom54
  store i16 %conv53, ptr %arrayidx55, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end51
  %30 = load i32, ptr %k, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc66, %for.end
  %31 = load i32, ptr %k, align 4
  %cmp57 = icmp sle i32 %31, 119
  br i1 %cmp57, label %for.body59, label %for.end68

for.body59:                                       ; preds = %for.cond56
  %32 = load ptr, ptr %drp.addr, align 8
  %33 = load i32, ptr %k, align 4
  %add60 = add nsw i32 -80, %33
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %32, i64 %idxprom61
  %34 = load i16, ptr %arrayidx62, align 2
  %35 = load ptr, ptr %drp.addr, align 8
  %36 = load i32, ptr %k, align 4
  %add63 = add nsw i32 -120, %36
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %35, i64 %idxprom64
  store i16 %34, ptr %arrayidx65, align 2
  br label %for.inc66

for.inc66:                                        ; preds = %for.body59
  %37 = load i32, ptr %k, align 4
  %inc67 = add nsw i32 %37, 1
  store i32 %inc67, ptr %k, align 4
  br label %for.cond56, !llvm.loop !17

for.end68:                                        ; preds = %for.cond56
  ret void
}

declare i32 @SASR(...) #2

declare signext i16 @gsm_norm(i64 noundef) #2

declare signext i16 @gsm_mult(i16 noundef signext, i16 noundef signext) #2

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
