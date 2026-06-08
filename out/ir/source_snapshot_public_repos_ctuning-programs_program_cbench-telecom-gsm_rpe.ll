; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/rpe.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/rpe.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@__func__.APCM_quantization = private unnamed_addr constant [18 x i8] c"APCM_quantization\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"rpe.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"exp <= 5\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"exp <= 6 && exp >= 0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"temp <= 11 && temp >= 0\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"exp <= 4096 && exp >= -4096\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"mant >= 0 && mant <= 7\00", align 1
@gsm_NRFAC = external global [8 x i16], align 2
@.str.6 = private unnamed_addr constant [25 x i8] c"temp1 >= 0 && temp1 < 16\00", align 1
@__func__.APCM_inverse_quantization = private unnamed_addr constant [26 x i8] c"APCM_inverse_quantization\00", align 1
@gsm_FAC = external global [8 x i16], align 2
@.str.7 = private unnamed_addr constant [23 x i8] c"*xMc <= 7 && *xMc >= 0\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"temp <= 7 && temp >= -7\00", align 1
@__func__.RPE_grid_positioning = private unnamed_addr constant [21 x i8] c"RPE_grid_positioning\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"0 <= Mc && Mc <= 3\00", align 1
@__func__.APCM_quantization_xmaxc_to_exp_mant = private unnamed_addr constant [36 x i8] c"APCM_quantization_xmaxc_to_exp_mant\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"exp >= -4 && exp <= 6\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_RPE_Encoding(ptr noundef %S, ptr noundef %e, ptr noundef %xmaxc, ptr noundef %Mc, ptr noundef %xMc) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %xmaxc.addr = alloca ptr, align 8
  %Mc.addr = alloca ptr, align 8
  %xMc.addr = alloca ptr, align 8
  %x = alloca [40 x i16], align 2
  %xM = alloca [13 x i16], align 2
  %xMp = alloca [13 x i16], align 2
  %mant = alloca i16, align 2
  %exp = alloca i16, align 2
  store ptr %S, ptr %S.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %xmaxc, ptr %xmaxc.addr, align 8
  store ptr %Mc, ptr %Mc.addr, align 8
  store ptr %xMc, ptr %xMc.addr, align 8
  %0 = load ptr, ptr %e.addr, align 8
  %arraydecay = getelementptr inbounds [40 x i16], ptr %x, i64 0, i64 0
  call void @Weighting_filter(ptr noundef %0, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [40 x i16], ptr %x, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [13 x i16], ptr %xM, i64 0, i64 0
  %1 = load ptr, ptr %Mc.addr, align 8
  call void @RPE_grid_selection(ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %1)
  %arraydecay3 = getelementptr inbounds [13 x i16], ptr %xM, i64 0, i64 0
  %2 = load ptr, ptr %xMc.addr, align 8
  %3 = load ptr, ptr %xmaxc.addr, align 8
  call void @APCM_quantization(ptr noundef %arraydecay3, ptr noundef %2, ptr noundef %mant, ptr noundef %exp, ptr noundef %3)
  %4 = load ptr, ptr %xMc.addr, align 8
  %5 = load i16, ptr %mant, align 2
  %6 = load i16, ptr %exp, align 2
  %arraydecay4 = getelementptr inbounds [13 x i16], ptr %xMp, i64 0, i64 0
  call void @APCM_inverse_quantization(ptr noundef %4, i16 noundef signext %5, i16 noundef signext %6, ptr noundef %arraydecay4)
  %7 = load ptr, ptr %Mc.addr, align 8
  %8 = load i16, ptr %7, align 2
  %arraydecay5 = getelementptr inbounds [13 x i16], ptr %xMp, i64 0, i64 0
  %9 = load ptr, ptr %e.addr, align 8
  call void @RPE_grid_positioning(i16 noundef signext %8, ptr noundef %arraydecay5, ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Weighting_filter(ptr noundef %e, ptr noundef %x) #0 {
entry:
  %e.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %L_result = alloca i64, align 8
  %k = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %e.addr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 -5
  store ptr %add.ptr, ptr %e.addr, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %k, align 4
  %cmp = icmp sle i32 %1, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 4096, ptr %L_result, align 8
  %2 = load ptr, ptr %e.addr, align 8
  %3 = load i32, ptr %k, align 4
  %add = add nsw i32 %3, 0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %4 to i64
  %mul = mul nsw i64 %conv, -134
  %5 = load ptr, ptr %e.addr, align 8
  %6 = load i32, ptr %k, align 4
  %add1 = add nsw i32 %6, 1
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %5, i64 %idxprom2
  %7 = load i16, ptr %arrayidx3, align 2
  %conv4 = sext i16 %7 to i64
  %mul5 = mul nsw i64 %conv4, -374
  %add6 = add nsw i64 %mul, %mul5
  %8 = load ptr, ptr %e.addr, align 8
  %9 = load i32, ptr %k, align 4
  %add7 = add nsw i32 %9, 3
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i16, ptr %8, i64 %idxprom8
  %10 = load i16, ptr %arrayidx9, align 2
  %conv10 = sext i16 %10 to i64
  %mul11 = mul nsw i64 %conv10, 2054
  %add12 = add nsw i64 %add6, %mul11
  %11 = load ptr, ptr %e.addr, align 8
  %12 = load i32, ptr %k, align 4
  %add13 = add nsw i32 %12, 4
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %11, i64 %idxprom14
  %13 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %13 to i64
  %mul17 = mul nsw i64 %conv16, 5741
  %add18 = add nsw i64 %add12, %mul17
  %14 = load ptr, ptr %e.addr, align 8
  %15 = load i32, ptr %k, align 4
  %add19 = add nsw i32 %15, 5
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %14, i64 %idxprom20
  %16 = load i16, ptr %arrayidx21, align 2
  %conv22 = sext i16 %16 to i64
  %mul23 = mul nsw i64 %conv22, 8192
  %add24 = add nsw i64 %add18, %mul23
  %17 = load ptr, ptr %e.addr, align 8
  %18 = load i32, ptr %k, align 4
  %add25 = add nsw i32 %18, 6
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %17, i64 %idxprom26
  %19 = load i16, ptr %arrayidx27, align 2
  %conv28 = sext i16 %19 to i64
  %mul29 = mul nsw i64 %conv28, 5741
  %add30 = add nsw i64 %add24, %mul29
  %20 = load ptr, ptr %e.addr, align 8
  %21 = load i32, ptr %k, align 4
  %add31 = add nsw i32 %21, 7
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %20, i64 %idxprom32
  %22 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %22 to i64
  %mul35 = mul nsw i64 %conv34, 2054
  %add36 = add nsw i64 %add30, %mul35
  %23 = load ptr, ptr %e.addr, align 8
  %24 = load i32, ptr %k, align 4
  %add37 = add nsw i32 %24, 9
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i16, ptr %23, i64 %idxprom38
  %25 = load i16, ptr %arrayidx39, align 2
  %conv40 = sext i16 %25 to i64
  %mul41 = mul nsw i64 %conv40, -374
  %add42 = add nsw i64 %add36, %mul41
  %26 = load ptr, ptr %e.addr, align 8
  %27 = load i32, ptr %k, align 4
  %add43 = add nsw i32 %27, 10
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i16, ptr %26, i64 %idxprom44
  %28 = load i16, ptr %arrayidx45, align 2
  %conv46 = sext i16 %28 to i64
  %mul47 = mul nsw i64 %conv46, -134
  %add48 = add nsw i64 %add42, %mul47
  %29 = load i64, ptr %L_result, align 8
  %add49 = add nsw i64 %29, %add48
  store i64 %add49, ptr %L_result, align 8
  %30 = load i64, ptr %L_result, align 8
  %call = call i32 @SASR(i64 noundef %30, i32 noundef 13)
  %conv50 = sext i32 %call to i64
  store i64 %conv50, ptr %L_result, align 8
  %31 = load i64, ptr %L_result, align 8
  %cmp51 = icmp slt i64 %31, -32768
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end57

cond.false:                                       ; preds = %for.body
  %32 = load i64, ptr %L_result, align 8
  %cmp53 = icmp sgt i64 %32, 32767
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.false
  br label %cond.end

cond.false56:                                     ; preds = %cond.false
  %33 = load i64, ptr %L_result, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false56, %cond.true55
  %cond = phi i64 [ 32767, %cond.true55 ], [ %33, %cond.false56 ]
  br label %cond.end57

cond.end57:                                       ; preds = %cond.end, %cond.true
  %cond58 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv59 = trunc i64 %cond58 to i16
  %34 = load ptr, ptr %x.addr, align 8
  %35 = load i32, ptr %k, align 4
  %idxprom60 = sext i32 %35 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %34, i64 %idxprom60
  store i16 %conv59, ptr %arrayidx61, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end57
  %36 = load i32, ptr %k, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @RPE_grid_selection(ptr noundef %x, ptr noundef %xM, ptr noundef %Mc_out) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %xM.addr = alloca ptr, align 8
  %Mc_out.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %L_result = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %EM = alloca i64, align 8
  %Mc = alloca i16, align 2
  %L_common_0_3 = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %xM, ptr %xM.addr, align 8
  store ptr %Mc_out, ptr %Mc_out.addr, align 8
  store i64 0, ptr %EM, align 8
  store i16 0, ptr %Mc, align 2
  store i64 0, ptr %L_result, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 3
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %call = call i32 @SASR(i32 noundef %conv, i32 noundef 2)
  %conv1 = sext i32 %call to i64
  store i64 %conv1, ptr %L_temp, align 8
  %2 = load i64, ptr %L_temp, align 8
  %3 = load i64, ptr %L_temp, align 8
  %mul = mul nsw i64 %2, %3
  %4 = load i64, ptr %L_result, align 8
  %add = add nsw i64 %4, %mul
  store i64 %add, ptr %L_result, align 8
  %5 = load ptr, ptr %x.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, ptr %5, i64 6
  %6 = load i16, ptr %arrayidx2, align 2
  %conv3 = sext i16 %6 to i32
  %call4 = call i32 @SASR(i32 noundef %conv3, i32 noundef 2)
  %conv5 = sext i32 %call4 to i64
  store i64 %conv5, ptr %L_temp, align 8
  %7 = load i64, ptr %L_temp, align 8
  %8 = load i64, ptr %L_temp, align 8
  %mul6 = mul nsw i64 %7, %8
  %9 = load i64, ptr %L_result, align 8
  %add7 = add nsw i64 %9, %mul6
  store i64 %add7, ptr %L_result, align 8
  %10 = load ptr, ptr %x.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, ptr %10, i64 9
  %11 = load i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %11 to i32
  %call10 = call i32 @SASR(i32 noundef %conv9, i32 noundef 2)
  %conv11 = sext i32 %call10 to i64
  store i64 %conv11, ptr %L_temp, align 8
  %12 = load i64, ptr %L_temp, align 8
  %13 = load i64, ptr %L_temp, align 8
  %mul12 = mul nsw i64 %12, %13
  %14 = load i64, ptr %L_result, align 8
  %add13 = add nsw i64 %14, %mul12
  store i64 %add13, ptr %L_result, align 8
  %15 = load ptr, ptr %x.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, ptr %15, i64 12
  %16 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %16 to i32
  %call16 = call i32 @SASR(i32 noundef %conv15, i32 noundef 2)
  %conv17 = sext i32 %call16 to i64
  store i64 %conv17, ptr %L_temp, align 8
  %17 = load i64, ptr %L_temp, align 8
  %18 = load i64, ptr %L_temp, align 8
  %mul18 = mul nsw i64 %17, %18
  %19 = load i64, ptr %L_result, align 8
  %add19 = add nsw i64 %19, %mul18
  store i64 %add19, ptr %L_result, align 8
  %20 = load ptr, ptr %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, ptr %20, i64 15
  %21 = load i16, ptr %arrayidx20, align 2
  %conv21 = sext i16 %21 to i32
  %call22 = call i32 @SASR(i32 noundef %conv21, i32 noundef 2)
  %conv23 = sext i32 %call22 to i64
  store i64 %conv23, ptr %L_temp, align 8
  %22 = load i64, ptr %L_temp, align 8
  %23 = load i64, ptr %L_temp, align 8
  %mul24 = mul nsw i64 %22, %23
  %24 = load i64, ptr %L_result, align 8
  %add25 = add nsw i64 %24, %mul24
  store i64 %add25, ptr %L_result, align 8
  %25 = load ptr, ptr %x.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, ptr %25, i64 18
  %26 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %26 to i32
  %call28 = call i32 @SASR(i32 noundef %conv27, i32 noundef 2)
  %conv29 = sext i32 %call28 to i64
  store i64 %conv29, ptr %L_temp, align 8
  %27 = load i64, ptr %L_temp, align 8
  %28 = load i64, ptr %L_temp, align 8
  %mul30 = mul nsw i64 %27, %28
  %29 = load i64, ptr %L_result, align 8
  %add31 = add nsw i64 %29, %mul30
  store i64 %add31, ptr %L_result, align 8
  %30 = load ptr, ptr %x.addr, align 8
  %arrayidx32 = getelementptr inbounds i16, ptr %30, i64 21
  %31 = load i16, ptr %arrayidx32, align 2
  %conv33 = sext i16 %31 to i32
  %call34 = call i32 @SASR(i32 noundef %conv33, i32 noundef 2)
  %conv35 = sext i32 %call34 to i64
  store i64 %conv35, ptr %L_temp, align 8
  %32 = load i64, ptr %L_temp, align 8
  %33 = load i64, ptr %L_temp, align 8
  %mul36 = mul nsw i64 %32, %33
  %34 = load i64, ptr %L_result, align 8
  %add37 = add nsw i64 %34, %mul36
  store i64 %add37, ptr %L_result, align 8
  %35 = load ptr, ptr %x.addr, align 8
  %arrayidx38 = getelementptr inbounds i16, ptr %35, i64 24
  %36 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %36 to i32
  %call40 = call i32 @SASR(i32 noundef %conv39, i32 noundef 2)
  %conv41 = sext i32 %call40 to i64
  store i64 %conv41, ptr %L_temp, align 8
  %37 = load i64, ptr %L_temp, align 8
  %38 = load i64, ptr %L_temp, align 8
  %mul42 = mul nsw i64 %37, %38
  %39 = load i64, ptr %L_result, align 8
  %add43 = add nsw i64 %39, %mul42
  store i64 %add43, ptr %L_result, align 8
  %40 = load ptr, ptr %x.addr, align 8
  %arrayidx44 = getelementptr inbounds i16, ptr %40, i64 27
  %41 = load i16, ptr %arrayidx44, align 2
  %conv45 = sext i16 %41 to i32
  %call46 = call i32 @SASR(i32 noundef %conv45, i32 noundef 2)
  %conv47 = sext i32 %call46 to i64
  store i64 %conv47, ptr %L_temp, align 8
  %42 = load i64, ptr %L_temp, align 8
  %43 = load i64, ptr %L_temp, align 8
  %mul48 = mul nsw i64 %42, %43
  %44 = load i64, ptr %L_result, align 8
  %add49 = add nsw i64 %44, %mul48
  store i64 %add49, ptr %L_result, align 8
  %45 = load ptr, ptr %x.addr, align 8
  %arrayidx50 = getelementptr inbounds i16, ptr %45, i64 30
  %46 = load i16, ptr %arrayidx50, align 2
  %conv51 = sext i16 %46 to i32
  %call52 = call i32 @SASR(i32 noundef %conv51, i32 noundef 2)
  %conv53 = sext i32 %call52 to i64
  store i64 %conv53, ptr %L_temp, align 8
  %47 = load i64, ptr %L_temp, align 8
  %48 = load i64, ptr %L_temp, align 8
  %mul54 = mul nsw i64 %47, %48
  %49 = load i64, ptr %L_result, align 8
  %add55 = add nsw i64 %49, %mul54
  store i64 %add55, ptr %L_result, align 8
  %50 = load ptr, ptr %x.addr, align 8
  %arrayidx56 = getelementptr inbounds i16, ptr %50, i64 33
  %51 = load i16, ptr %arrayidx56, align 2
  %conv57 = sext i16 %51 to i32
  %call58 = call i32 @SASR(i32 noundef %conv57, i32 noundef 2)
  %conv59 = sext i32 %call58 to i64
  store i64 %conv59, ptr %L_temp, align 8
  %52 = load i64, ptr %L_temp, align 8
  %53 = load i64, ptr %L_temp, align 8
  %mul60 = mul nsw i64 %52, %53
  %54 = load i64, ptr %L_result, align 8
  %add61 = add nsw i64 %54, %mul60
  store i64 %add61, ptr %L_result, align 8
  %55 = load ptr, ptr %x.addr, align 8
  %arrayidx62 = getelementptr inbounds i16, ptr %55, i64 36
  %56 = load i16, ptr %arrayidx62, align 2
  %conv63 = sext i16 %56 to i32
  %call64 = call i32 @SASR(i32 noundef %conv63, i32 noundef 2)
  %conv65 = sext i32 %call64 to i64
  store i64 %conv65, ptr %L_temp, align 8
  %57 = load i64, ptr %L_temp, align 8
  %58 = load i64, ptr %L_temp, align 8
  %mul66 = mul nsw i64 %57, %58
  %59 = load i64, ptr %L_result, align 8
  %add67 = add nsw i64 %59, %mul66
  store i64 %add67, ptr %L_result, align 8
  %60 = load i64, ptr %L_result, align 8
  store i64 %60, ptr %L_common_0_3, align 8
  %61 = load ptr, ptr %x.addr, align 8
  %arrayidx68 = getelementptr inbounds i16, ptr %61, i64 0
  %62 = load i16, ptr %arrayidx68, align 2
  %conv69 = sext i16 %62 to i32
  %call70 = call i32 @SASR(i32 noundef %conv69, i32 noundef 2)
  %conv71 = sext i32 %call70 to i64
  store i64 %conv71, ptr %L_temp, align 8
  %63 = load i64, ptr %L_temp, align 8
  %64 = load i64, ptr %L_temp, align 8
  %mul72 = mul nsw i64 %63, %64
  %65 = load i64, ptr %L_result, align 8
  %add73 = add nsw i64 %65, %mul72
  store i64 %add73, ptr %L_result, align 8
  %66 = load i64, ptr %L_result, align 8
  %shl = shl i64 %66, 1
  store i64 %shl, ptr %L_result, align 8
  %67 = load i64, ptr %L_result, align 8
  store i64 %67, ptr %EM, align 8
  store i64 0, ptr %L_result, align 8
  %68 = load ptr, ptr %x.addr, align 8
  %arrayidx74 = getelementptr inbounds i16, ptr %68, i64 1
  %69 = load i16, ptr %arrayidx74, align 2
  %conv75 = sext i16 %69 to i32
  %call76 = call i32 @SASR(i32 noundef %conv75, i32 noundef 2)
  %conv77 = sext i32 %call76 to i64
  store i64 %conv77, ptr %L_temp, align 8
  %70 = load i64, ptr %L_temp, align 8
  %71 = load i64, ptr %L_temp, align 8
  %mul78 = mul nsw i64 %70, %71
  %72 = load i64, ptr %L_result, align 8
  %add79 = add nsw i64 %72, %mul78
  store i64 %add79, ptr %L_result, align 8
  %73 = load ptr, ptr %x.addr, align 8
  %arrayidx80 = getelementptr inbounds i16, ptr %73, i64 4
  %74 = load i16, ptr %arrayidx80, align 2
  %conv81 = sext i16 %74 to i32
  %call82 = call i32 @SASR(i32 noundef %conv81, i32 noundef 2)
  %conv83 = sext i32 %call82 to i64
  store i64 %conv83, ptr %L_temp, align 8
  %75 = load i64, ptr %L_temp, align 8
  %76 = load i64, ptr %L_temp, align 8
  %mul84 = mul nsw i64 %75, %76
  %77 = load i64, ptr %L_result, align 8
  %add85 = add nsw i64 %77, %mul84
  store i64 %add85, ptr %L_result, align 8
  %78 = load ptr, ptr %x.addr, align 8
  %arrayidx86 = getelementptr inbounds i16, ptr %78, i64 7
  %79 = load i16, ptr %arrayidx86, align 2
  %conv87 = sext i16 %79 to i32
  %call88 = call i32 @SASR(i32 noundef %conv87, i32 noundef 2)
  %conv89 = sext i32 %call88 to i64
  store i64 %conv89, ptr %L_temp, align 8
  %80 = load i64, ptr %L_temp, align 8
  %81 = load i64, ptr %L_temp, align 8
  %mul90 = mul nsw i64 %80, %81
  %82 = load i64, ptr %L_result, align 8
  %add91 = add nsw i64 %82, %mul90
  store i64 %add91, ptr %L_result, align 8
  %83 = load ptr, ptr %x.addr, align 8
  %arrayidx92 = getelementptr inbounds i16, ptr %83, i64 10
  %84 = load i16, ptr %arrayidx92, align 2
  %conv93 = sext i16 %84 to i32
  %call94 = call i32 @SASR(i32 noundef %conv93, i32 noundef 2)
  %conv95 = sext i32 %call94 to i64
  store i64 %conv95, ptr %L_temp, align 8
  %85 = load i64, ptr %L_temp, align 8
  %86 = load i64, ptr %L_temp, align 8
  %mul96 = mul nsw i64 %85, %86
  %87 = load i64, ptr %L_result, align 8
  %add97 = add nsw i64 %87, %mul96
  store i64 %add97, ptr %L_result, align 8
  %88 = load ptr, ptr %x.addr, align 8
  %arrayidx98 = getelementptr inbounds i16, ptr %88, i64 13
  %89 = load i16, ptr %arrayidx98, align 2
  %conv99 = sext i16 %89 to i32
  %call100 = call i32 @SASR(i32 noundef %conv99, i32 noundef 2)
  %conv101 = sext i32 %call100 to i64
  store i64 %conv101, ptr %L_temp, align 8
  %90 = load i64, ptr %L_temp, align 8
  %91 = load i64, ptr %L_temp, align 8
  %mul102 = mul nsw i64 %90, %91
  %92 = load i64, ptr %L_result, align 8
  %add103 = add nsw i64 %92, %mul102
  store i64 %add103, ptr %L_result, align 8
  %93 = load ptr, ptr %x.addr, align 8
  %arrayidx104 = getelementptr inbounds i16, ptr %93, i64 16
  %94 = load i16, ptr %arrayidx104, align 2
  %conv105 = sext i16 %94 to i32
  %call106 = call i32 @SASR(i32 noundef %conv105, i32 noundef 2)
  %conv107 = sext i32 %call106 to i64
  store i64 %conv107, ptr %L_temp, align 8
  %95 = load i64, ptr %L_temp, align 8
  %96 = load i64, ptr %L_temp, align 8
  %mul108 = mul nsw i64 %95, %96
  %97 = load i64, ptr %L_result, align 8
  %add109 = add nsw i64 %97, %mul108
  store i64 %add109, ptr %L_result, align 8
  %98 = load ptr, ptr %x.addr, align 8
  %arrayidx110 = getelementptr inbounds i16, ptr %98, i64 19
  %99 = load i16, ptr %arrayidx110, align 2
  %conv111 = sext i16 %99 to i32
  %call112 = call i32 @SASR(i32 noundef %conv111, i32 noundef 2)
  %conv113 = sext i32 %call112 to i64
  store i64 %conv113, ptr %L_temp, align 8
  %100 = load i64, ptr %L_temp, align 8
  %101 = load i64, ptr %L_temp, align 8
  %mul114 = mul nsw i64 %100, %101
  %102 = load i64, ptr %L_result, align 8
  %add115 = add nsw i64 %102, %mul114
  store i64 %add115, ptr %L_result, align 8
  %103 = load ptr, ptr %x.addr, align 8
  %arrayidx116 = getelementptr inbounds i16, ptr %103, i64 22
  %104 = load i16, ptr %arrayidx116, align 2
  %conv117 = sext i16 %104 to i32
  %call118 = call i32 @SASR(i32 noundef %conv117, i32 noundef 2)
  %conv119 = sext i32 %call118 to i64
  store i64 %conv119, ptr %L_temp, align 8
  %105 = load i64, ptr %L_temp, align 8
  %106 = load i64, ptr %L_temp, align 8
  %mul120 = mul nsw i64 %105, %106
  %107 = load i64, ptr %L_result, align 8
  %add121 = add nsw i64 %107, %mul120
  store i64 %add121, ptr %L_result, align 8
  %108 = load ptr, ptr %x.addr, align 8
  %arrayidx122 = getelementptr inbounds i16, ptr %108, i64 25
  %109 = load i16, ptr %arrayidx122, align 2
  %conv123 = sext i16 %109 to i32
  %call124 = call i32 @SASR(i32 noundef %conv123, i32 noundef 2)
  %conv125 = sext i32 %call124 to i64
  store i64 %conv125, ptr %L_temp, align 8
  %110 = load i64, ptr %L_temp, align 8
  %111 = load i64, ptr %L_temp, align 8
  %mul126 = mul nsw i64 %110, %111
  %112 = load i64, ptr %L_result, align 8
  %add127 = add nsw i64 %112, %mul126
  store i64 %add127, ptr %L_result, align 8
  %113 = load ptr, ptr %x.addr, align 8
  %arrayidx128 = getelementptr inbounds i16, ptr %113, i64 28
  %114 = load i16, ptr %arrayidx128, align 2
  %conv129 = sext i16 %114 to i32
  %call130 = call i32 @SASR(i32 noundef %conv129, i32 noundef 2)
  %conv131 = sext i32 %call130 to i64
  store i64 %conv131, ptr %L_temp, align 8
  %115 = load i64, ptr %L_temp, align 8
  %116 = load i64, ptr %L_temp, align 8
  %mul132 = mul nsw i64 %115, %116
  %117 = load i64, ptr %L_result, align 8
  %add133 = add nsw i64 %117, %mul132
  store i64 %add133, ptr %L_result, align 8
  %118 = load ptr, ptr %x.addr, align 8
  %arrayidx134 = getelementptr inbounds i16, ptr %118, i64 31
  %119 = load i16, ptr %arrayidx134, align 2
  %conv135 = sext i16 %119 to i32
  %call136 = call i32 @SASR(i32 noundef %conv135, i32 noundef 2)
  %conv137 = sext i32 %call136 to i64
  store i64 %conv137, ptr %L_temp, align 8
  %120 = load i64, ptr %L_temp, align 8
  %121 = load i64, ptr %L_temp, align 8
  %mul138 = mul nsw i64 %120, %121
  %122 = load i64, ptr %L_result, align 8
  %add139 = add nsw i64 %122, %mul138
  store i64 %add139, ptr %L_result, align 8
  %123 = load ptr, ptr %x.addr, align 8
  %arrayidx140 = getelementptr inbounds i16, ptr %123, i64 34
  %124 = load i16, ptr %arrayidx140, align 2
  %conv141 = sext i16 %124 to i32
  %call142 = call i32 @SASR(i32 noundef %conv141, i32 noundef 2)
  %conv143 = sext i32 %call142 to i64
  store i64 %conv143, ptr %L_temp, align 8
  %125 = load i64, ptr %L_temp, align 8
  %126 = load i64, ptr %L_temp, align 8
  %mul144 = mul nsw i64 %125, %126
  %127 = load i64, ptr %L_result, align 8
  %add145 = add nsw i64 %127, %mul144
  store i64 %add145, ptr %L_result, align 8
  %128 = load ptr, ptr %x.addr, align 8
  %arrayidx146 = getelementptr inbounds i16, ptr %128, i64 37
  %129 = load i16, ptr %arrayidx146, align 2
  %conv147 = sext i16 %129 to i32
  %call148 = call i32 @SASR(i32 noundef %conv147, i32 noundef 2)
  %conv149 = sext i32 %call148 to i64
  store i64 %conv149, ptr %L_temp, align 8
  %130 = load i64, ptr %L_temp, align 8
  %131 = load i64, ptr %L_temp, align 8
  %mul150 = mul nsw i64 %130, %131
  %132 = load i64, ptr %L_result, align 8
  %add151 = add nsw i64 %132, %mul150
  store i64 %add151, ptr %L_result, align 8
  %133 = load i64, ptr %L_result, align 8
  %shl152 = shl i64 %133, 1
  store i64 %shl152, ptr %L_result, align 8
  %134 = load i64, ptr %L_result, align 8
  %135 = load i64, ptr %EM, align 8
  %cmp = icmp sgt i64 %134, %135
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 1, ptr %Mc, align 2
  %136 = load i64, ptr %L_result, align 8
  store i64 %136, ptr %EM, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %L_result, align 8
  %137 = load ptr, ptr %x.addr, align 8
  %arrayidx154 = getelementptr inbounds i16, ptr %137, i64 2
  %138 = load i16, ptr %arrayidx154, align 2
  %conv155 = sext i16 %138 to i32
  %call156 = call i32 @SASR(i32 noundef %conv155, i32 noundef 2)
  %conv157 = sext i32 %call156 to i64
  store i64 %conv157, ptr %L_temp, align 8
  %139 = load i64, ptr %L_temp, align 8
  %140 = load i64, ptr %L_temp, align 8
  %mul158 = mul nsw i64 %139, %140
  %141 = load i64, ptr %L_result, align 8
  %add159 = add nsw i64 %141, %mul158
  store i64 %add159, ptr %L_result, align 8
  %142 = load ptr, ptr %x.addr, align 8
  %arrayidx160 = getelementptr inbounds i16, ptr %142, i64 5
  %143 = load i16, ptr %arrayidx160, align 2
  %conv161 = sext i16 %143 to i32
  %call162 = call i32 @SASR(i32 noundef %conv161, i32 noundef 2)
  %conv163 = sext i32 %call162 to i64
  store i64 %conv163, ptr %L_temp, align 8
  %144 = load i64, ptr %L_temp, align 8
  %145 = load i64, ptr %L_temp, align 8
  %mul164 = mul nsw i64 %144, %145
  %146 = load i64, ptr %L_result, align 8
  %add165 = add nsw i64 %146, %mul164
  store i64 %add165, ptr %L_result, align 8
  %147 = load ptr, ptr %x.addr, align 8
  %arrayidx166 = getelementptr inbounds i16, ptr %147, i64 8
  %148 = load i16, ptr %arrayidx166, align 2
  %conv167 = sext i16 %148 to i32
  %call168 = call i32 @SASR(i32 noundef %conv167, i32 noundef 2)
  %conv169 = sext i32 %call168 to i64
  store i64 %conv169, ptr %L_temp, align 8
  %149 = load i64, ptr %L_temp, align 8
  %150 = load i64, ptr %L_temp, align 8
  %mul170 = mul nsw i64 %149, %150
  %151 = load i64, ptr %L_result, align 8
  %add171 = add nsw i64 %151, %mul170
  store i64 %add171, ptr %L_result, align 8
  %152 = load ptr, ptr %x.addr, align 8
  %arrayidx172 = getelementptr inbounds i16, ptr %152, i64 11
  %153 = load i16, ptr %arrayidx172, align 2
  %conv173 = sext i16 %153 to i32
  %call174 = call i32 @SASR(i32 noundef %conv173, i32 noundef 2)
  %conv175 = sext i32 %call174 to i64
  store i64 %conv175, ptr %L_temp, align 8
  %154 = load i64, ptr %L_temp, align 8
  %155 = load i64, ptr %L_temp, align 8
  %mul176 = mul nsw i64 %154, %155
  %156 = load i64, ptr %L_result, align 8
  %add177 = add nsw i64 %156, %mul176
  store i64 %add177, ptr %L_result, align 8
  %157 = load ptr, ptr %x.addr, align 8
  %arrayidx178 = getelementptr inbounds i16, ptr %157, i64 14
  %158 = load i16, ptr %arrayidx178, align 2
  %conv179 = sext i16 %158 to i32
  %call180 = call i32 @SASR(i32 noundef %conv179, i32 noundef 2)
  %conv181 = sext i32 %call180 to i64
  store i64 %conv181, ptr %L_temp, align 8
  %159 = load i64, ptr %L_temp, align 8
  %160 = load i64, ptr %L_temp, align 8
  %mul182 = mul nsw i64 %159, %160
  %161 = load i64, ptr %L_result, align 8
  %add183 = add nsw i64 %161, %mul182
  store i64 %add183, ptr %L_result, align 8
  %162 = load ptr, ptr %x.addr, align 8
  %arrayidx184 = getelementptr inbounds i16, ptr %162, i64 17
  %163 = load i16, ptr %arrayidx184, align 2
  %conv185 = sext i16 %163 to i32
  %call186 = call i32 @SASR(i32 noundef %conv185, i32 noundef 2)
  %conv187 = sext i32 %call186 to i64
  store i64 %conv187, ptr %L_temp, align 8
  %164 = load i64, ptr %L_temp, align 8
  %165 = load i64, ptr %L_temp, align 8
  %mul188 = mul nsw i64 %164, %165
  %166 = load i64, ptr %L_result, align 8
  %add189 = add nsw i64 %166, %mul188
  store i64 %add189, ptr %L_result, align 8
  %167 = load ptr, ptr %x.addr, align 8
  %arrayidx190 = getelementptr inbounds i16, ptr %167, i64 20
  %168 = load i16, ptr %arrayidx190, align 2
  %conv191 = sext i16 %168 to i32
  %call192 = call i32 @SASR(i32 noundef %conv191, i32 noundef 2)
  %conv193 = sext i32 %call192 to i64
  store i64 %conv193, ptr %L_temp, align 8
  %169 = load i64, ptr %L_temp, align 8
  %170 = load i64, ptr %L_temp, align 8
  %mul194 = mul nsw i64 %169, %170
  %171 = load i64, ptr %L_result, align 8
  %add195 = add nsw i64 %171, %mul194
  store i64 %add195, ptr %L_result, align 8
  %172 = load ptr, ptr %x.addr, align 8
  %arrayidx196 = getelementptr inbounds i16, ptr %172, i64 23
  %173 = load i16, ptr %arrayidx196, align 2
  %conv197 = sext i16 %173 to i32
  %call198 = call i32 @SASR(i32 noundef %conv197, i32 noundef 2)
  %conv199 = sext i32 %call198 to i64
  store i64 %conv199, ptr %L_temp, align 8
  %174 = load i64, ptr %L_temp, align 8
  %175 = load i64, ptr %L_temp, align 8
  %mul200 = mul nsw i64 %174, %175
  %176 = load i64, ptr %L_result, align 8
  %add201 = add nsw i64 %176, %mul200
  store i64 %add201, ptr %L_result, align 8
  %177 = load ptr, ptr %x.addr, align 8
  %arrayidx202 = getelementptr inbounds i16, ptr %177, i64 26
  %178 = load i16, ptr %arrayidx202, align 2
  %conv203 = sext i16 %178 to i32
  %call204 = call i32 @SASR(i32 noundef %conv203, i32 noundef 2)
  %conv205 = sext i32 %call204 to i64
  store i64 %conv205, ptr %L_temp, align 8
  %179 = load i64, ptr %L_temp, align 8
  %180 = load i64, ptr %L_temp, align 8
  %mul206 = mul nsw i64 %179, %180
  %181 = load i64, ptr %L_result, align 8
  %add207 = add nsw i64 %181, %mul206
  store i64 %add207, ptr %L_result, align 8
  %182 = load ptr, ptr %x.addr, align 8
  %arrayidx208 = getelementptr inbounds i16, ptr %182, i64 29
  %183 = load i16, ptr %arrayidx208, align 2
  %conv209 = sext i16 %183 to i32
  %call210 = call i32 @SASR(i32 noundef %conv209, i32 noundef 2)
  %conv211 = sext i32 %call210 to i64
  store i64 %conv211, ptr %L_temp, align 8
  %184 = load i64, ptr %L_temp, align 8
  %185 = load i64, ptr %L_temp, align 8
  %mul212 = mul nsw i64 %184, %185
  %186 = load i64, ptr %L_result, align 8
  %add213 = add nsw i64 %186, %mul212
  store i64 %add213, ptr %L_result, align 8
  %187 = load ptr, ptr %x.addr, align 8
  %arrayidx214 = getelementptr inbounds i16, ptr %187, i64 32
  %188 = load i16, ptr %arrayidx214, align 2
  %conv215 = sext i16 %188 to i32
  %call216 = call i32 @SASR(i32 noundef %conv215, i32 noundef 2)
  %conv217 = sext i32 %call216 to i64
  store i64 %conv217, ptr %L_temp, align 8
  %189 = load i64, ptr %L_temp, align 8
  %190 = load i64, ptr %L_temp, align 8
  %mul218 = mul nsw i64 %189, %190
  %191 = load i64, ptr %L_result, align 8
  %add219 = add nsw i64 %191, %mul218
  store i64 %add219, ptr %L_result, align 8
  %192 = load ptr, ptr %x.addr, align 8
  %arrayidx220 = getelementptr inbounds i16, ptr %192, i64 35
  %193 = load i16, ptr %arrayidx220, align 2
  %conv221 = sext i16 %193 to i32
  %call222 = call i32 @SASR(i32 noundef %conv221, i32 noundef 2)
  %conv223 = sext i32 %call222 to i64
  store i64 %conv223, ptr %L_temp, align 8
  %194 = load i64, ptr %L_temp, align 8
  %195 = load i64, ptr %L_temp, align 8
  %mul224 = mul nsw i64 %194, %195
  %196 = load i64, ptr %L_result, align 8
  %add225 = add nsw i64 %196, %mul224
  store i64 %add225, ptr %L_result, align 8
  %197 = load ptr, ptr %x.addr, align 8
  %arrayidx226 = getelementptr inbounds i16, ptr %197, i64 38
  %198 = load i16, ptr %arrayidx226, align 2
  %conv227 = sext i16 %198 to i32
  %call228 = call i32 @SASR(i32 noundef %conv227, i32 noundef 2)
  %conv229 = sext i32 %call228 to i64
  store i64 %conv229, ptr %L_temp, align 8
  %199 = load i64, ptr %L_temp, align 8
  %200 = load i64, ptr %L_temp, align 8
  %mul230 = mul nsw i64 %199, %200
  %201 = load i64, ptr %L_result, align 8
  %add231 = add nsw i64 %201, %mul230
  store i64 %add231, ptr %L_result, align 8
  %202 = load i64, ptr %L_result, align 8
  %shl232 = shl i64 %202, 1
  store i64 %shl232, ptr %L_result, align 8
  %203 = load i64, ptr %L_result, align 8
  %204 = load i64, ptr %EM, align 8
  %cmp233 = icmp sgt i64 %203, %204
  br i1 %cmp233, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.end
  store i16 2, ptr %Mc, align 2
  %205 = load i64, ptr %L_result, align 8
  store i64 %205, ptr %EM, align 8
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.end
  %206 = load i64, ptr %L_common_0_3, align 8
  store i64 %206, ptr %L_result, align 8
  %207 = load ptr, ptr %x.addr, align 8
  %arrayidx237 = getelementptr inbounds i16, ptr %207, i64 39
  %208 = load i16, ptr %arrayidx237, align 2
  %conv238 = sext i16 %208 to i32
  %call239 = call i32 @SASR(i32 noundef %conv238, i32 noundef 2)
  %conv240 = sext i32 %call239 to i64
  store i64 %conv240, ptr %L_temp, align 8
  %209 = load i64, ptr %L_temp, align 8
  %210 = load i64, ptr %L_temp, align 8
  %mul241 = mul nsw i64 %209, %210
  %211 = load i64, ptr %L_result, align 8
  %add242 = add nsw i64 %211, %mul241
  store i64 %add242, ptr %L_result, align 8
  %212 = load i64, ptr %L_result, align 8
  %shl243 = shl i64 %212, 1
  store i64 %shl243, ptr %L_result, align 8
  %213 = load i64, ptr %L_result, align 8
  %214 = load i64, ptr %EM, align 8
  %cmp244 = icmp sgt i64 %213, %214
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end236
  store i16 3, ptr %Mc, align 2
  %215 = load i64, ptr %L_result, align 8
  store i64 %215, ptr %EM, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.end236
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end247
  %216 = load i32, ptr %i, align 4
  %cmp248 = icmp sle i32 %216, 12
  br i1 %cmp248, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %217 = load ptr, ptr %x.addr, align 8
  %218 = load i16, ptr %Mc, align 2
  %conv250 = sext i16 %218 to i32
  %219 = load i32, ptr %i, align 4
  %mul251 = mul nsw i32 3, %219
  %add252 = add nsw i32 %conv250, %mul251
  %idxprom = sext i32 %add252 to i64
  %arrayidx253 = getelementptr inbounds i16, ptr %217, i64 %idxprom
  %220 = load i16, ptr %arrayidx253, align 2
  %221 = load ptr, ptr %xM.addr, align 8
  %222 = load i32, ptr %i, align 4
  %idxprom254 = sext i32 %222 to i64
  %arrayidx255 = getelementptr inbounds i16, ptr %221, i64 %idxprom254
  store i16 %220, ptr %arrayidx255, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %223 = load i32, ptr %i, align 4
  %inc = add nsw i32 %223, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %224 = load i16, ptr %Mc, align 2
  %225 = load ptr, ptr %Mc_out.addr, align 8
  store i16 %224, ptr %225, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @APCM_quantization(ptr noundef %xM, ptr noundef %xMc, ptr noundef %mant_out, ptr noundef %exp_out, ptr noundef %xmaxc_out) #0 {
entry:
  %xM.addr = alloca ptr, align 8
  %xMc.addr = alloca ptr, align 8
  %mant_out.addr = alloca ptr, align 8
  %exp_out.addr = alloca ptr, align 8
  %xmaxc_out.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %itest = alloca i32, align 4
  %xmax = alloca i16, align 2
  %xmaxc = alloca i16, align 2
  %temp = alloca i16, align 2
  %temp1 = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  store ptr %xM, ptr %xM.addr, align 8
  store ptr %xMc, ptr %xMc.addr, align 8
  store ptr %mant_out, ptr %mant_out.addr, align 8
  store ptr %exp_out, ptr %exp_out.addr, align 8
  store ptr %xmaxc_out, ptr %xmaxc_out.addr, align 8
  store i16 0, ptr %xmax, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %xM.addr, align 8
  %2 = load i32, ptr %i, align 4
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
  %9 = load i16, ptr %xmax, align 2
  %conv14 = sext i16 %9 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  %10 = load i16, ptr %temp, align 2
  store i16 %10, ptr %xmax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i16 0, ptr %exp, align 2
  %12 = load i16, ptr %xmax, align 2
  %conv17 = sext i16 %12 to i32
  %call = call i32 @SASR(i32 noundef %conv17, i32 noundef 9)
  %conv18 = trunc i32 %call to i16
  store i16 %conv18, ptr %temp, align 2
  store i32 0, ptr %itest, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %for.end
  %13 = load i32, ptr %i, align 4
  %cmp20 = icmp sle i32 %13, 5
  br i1 %cmp20, label %for.body22, label %for.end43

for.body22:                                       ; preds = %for.cond19
  %14 = load i16, ptr %temp, align 2
  %conv23 = sext i16 %14 to i32
  %cmp24 = icmp sle i32 %conv23, 0
  %conv25 = zext i1 %cmp24 to i32
  %15 = load i32, ptr %itest, align 4
  %or = or i32 %15, %conv25
  store i32 %or, ptr %itest, align 4
  %16 = load i16, ptr %temp, align 2
  %conv26 = sext i16 %16 to i32
  %call27 = call i32 @SASR(i32 noundef %conv26, i32 noundef 1)
  %conv28 = trunc i32 %call27 to i16
  store i16 %conv28, ptr %temp, align 2
  %17 = load i16, ptr %exp, align 2
  %conv29 = sext i16 %17 to i32
  %cmp30 = icmp sle i32 %conv29, 5
  %lnot = xor i1 %cmp30, true
  %lnot.ext = zext i1 %lnot to i32
  %conv32 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv32, 0
  br i1 %tobool, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %for.body22
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization, ptr noundef @.str, i32 noundef 293, ptr noundef @.str.1) #3
  unreachable

18:                                               ; No predecessors!
  br label %cond.end35

cond.false34:                                     ; preds = %for.body22
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %18
  %19 = load i32, ptr %itest, align 4
  %cmp36 = icmp eq i32 %19, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %cond.end35
  %20 = load i16, ptr %exp, align 2
  %inc39 = add i16 %20, 1
  store i16 %inc39, ptr %exp, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %cond.end35
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %21 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %21, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond19, !llvm.loop !10

for.end43:                                        ; preds = %for.cond19
  %22 = load i16, ptr %exp, align 2
  %conv44 = sext i16 %22 to i32
  %cmp45 = icmp sle i32 %conv44, 6
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end43
  %23 = load i16, ptr %exp, align 2
  %conv47 = sext i16 %23 to i32
  %cmp48 = icmp sge i32 %conv47, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end43
  %24 = phi i1 [ false, %for.end43 ], [ %cmp48, %land.rhs ]
  %lnot50 = xor i1 %24, true
  %lnot.ext51 = zext i1 %lnot50 to i32
  %conv52 = sext i32 %lnot.ext51 to i64
  %tobool53 = icmp ne i64 %conv52, 0
  br i1 %tobool53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization, ptr noundef @.str, i32 noundef 297, ptr noundef @.str.2) #3
  unreachable

25:                                               ; No predecessors!
  br label %cond.end56

cond.false55:                                     ; preds = %land.end
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %25
  %26 = load i16, ptr %exp, align 2
  %conv57 = sext i16 %26 to i32
  %add = add nsw i32 %conv57, 5
  %conv58 = trunc i32 %add to i16
  store i16 %conv58, ptr %temp, align 2
  %27 = load i16, ptr %temp, align 2
  %conv59 = sext i16 %27 to i32
  %cmp60 = icmp sle i32 %conv59, 11
  br i1 %cmp60, label %land.rhs62, label %land.end66

land.rhs62:                                       ; preds = %cond.end56
  %28 = load i16, ptr %temp, align 2
  %conv63 = sext i16 %28 to i32
  %cmp64 = icmp sge i32 %conv63, 0
  br label %land.end66

land.end66:                                       ; preds = %land.rhs62, %cond.end56
  %29 = phi i1 [ false, %cond.end56 ], [ %cmp64, %land.rhs62 ]
  %lnot67 = xor i1 %29, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %land.end66
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization, ptr noundef @.str, i32 noundef 300, ptr noundef @.str.3) #3
  unreachable

30:                                               ; No predecessors!
  br label %cond.end73

cond.false72:                                     ; preds = %land.end66
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %30
  %31 = load i16, ptr %xmax, align 2
  %conv74 = sext i16 %31 to i32
  %32 = load i16, ptr %temp, align 2
  %conv75 = sext i16 %32 to i32
  %call76 = call i32 @SASR(i32 noundef %conv74, i32 noundef %conv75)
  %conv77 = trunc i32 %call76 to i16
  %33 = load i16, ptr %exp, align 2
  %conv78 = sext i16 %33 to i32
  %shl = shl i32 %conv78, 3
  %conv79 = trunc i32 %shl to i16
  %call80 = call signext i16 @gsm_add(i16 noundef signext %conv77, i16 noundef signext %conv79)
  store i16 %call80, ptr %xmaxc, align 2
  %34 = load i16, ptr %xmaxc, align 2
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %34, ptr noundef %exp, ptr noundef %mant)
  %35 = load i16, ptr %exp, align 2
  %conv81 = sext i16 %35 to i32
  %cmp82 = icmp sle i32 %conv81, 4096
  br i1 %cmp82, label %land.rhs84, label %land.end88

land.rhs84:                                       ; preds = %cond.end73
  %36 = load i16, ptr %exp, align 2
  %conv85 = sext i16 %36 to i32
  %cmp86 = icmp sge i32 %conv85, -4096
  br label %land.end88

land.end88:                                       ; preds = %land.rhs84, %cond.end73
  %37 = phi i1 [ false, %cond.end73 ], [ %cmp86, %land.rhs84 ]
  %lnot89 = xor i1 %37, true
  %lnot.ext90 = zext i1 %lnot89 to i32
  %conv91 = sext i32 %lnot.ext90 to i64
  %tobool92 = icmp ne i64 %conv91, 0
  br i1 %tobool92, label %cond.true93, label %cond.false94

cond.true93:                                      ; preds = %land.end88
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization, ptr noundef @.str, i32 noundef 323, ptr noundef @.str.4) #3
  unreachable

38:                                               ; No predecessors!
  br label %cond.end95

cond.false94:                                     ; preds = %land.end88
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %38
  %39 = load i16, ptr %mant, align 2
  %conv96 = sext i16 %39 to i32
  %cmp97 = icmp sge i32 %conv96, 0
  br i1 %cmp97, label %land.rhs99, label %land.end103

land.rhs99:                                       ; preds = %cond.end95
  %40 = load i16, ptr %mant, align 2
  %conv100 = sext i16 %40 to i32
  %cmp101 = icmp sle i32 %conv100, 7
  br label %land.end103

land.end103:                                      ; preds = %land.rhs99, %cond.end95
  %41 = phi i1 [ false, %cond.end95 ], [ %cmp101, %land.rhs99 ]
  %lnot104 = xor i1 %41, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %conv106 = sext i32 %lnot.ext105 to i64
  %tobool107 = icmp ne i64 %conv106, 0
  br i1 %tobool107, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %land.end103
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization, ptr noundef @.str, i32 noundef 324, ptr noundef @.str.5) #3
  unreachable

42:                                               ; No predecessors!
  br label %cond.end110

cond.false109:                                    ; preds = %land.end103
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %42
  %43 = load i16, ptr %exp, align 2
  %conv111 = sext i16 %43 to i32
  %sub112 = sub nsw i32 6, %conv111
  %conv113 = trunc i32 %sub112 to i16
  store i16 %conv113, ptr %temp1, align 2
  %44 = load i16, ptr %mant, align 2
  %idxprom114 = sext i16 %44 to i64
  %arrayidx115 = getelementptr inbounds [8 x i16], ptr @gsm_NRFAC, i64 0, i64 %idxprom114
  %45 = load i16, ptr %arrayidx115, align 2
  store i16 %45, ptr %temp2, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc153, %cond.end110
  %46 = load i32, ptr %i, align 4
  %cmp117 = icmp sle i32 %46, 12
  br i1 %cmp117, label %for.body119, label %for.end155

for.body119:                                      ; preds = %for.cond116
  %47 = load i16, ptr %temp1, align 2
  %conv120 = sext i16 %47 to i32
  %cmp121 = icmp sge i32 %conv120, 0
  br i1 %cmp121, label %land.rhs123, label %land.end127

land.rhs123:                                      ; preds = %for.body119
  %48 = load i16, ptr %temp1, align 2
  %conv124 = sext i16 %48 to i32
  %cmp125 = icmp slt i32 %conv124, 16
  br label %land.end127

land.end127:                                      ; preds = %land.rhs123, %for.body119
  %49 = phi i1 [ false, %for.body119 ], [ %cmp125, %land.rhs123 ]
  %lnot128 = xor i1 %49, true
  %lnot.ext129 = zext i1 %lnot128 to i32
  %conv130 = sext i32 %lnot.ext129 to i64
  %tobool131 = icmp ne i64 %conv130, 0
  br i1 %tobool131, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %land.end127
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization, ptr noundef @.str, i32 noundef 331, ptr noundef @.str.6) #3
  unreachable

50:                                               ; No predecessors!
  br label %cond.end134

cond.false133:                                    ; preds = %land.end127
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false133, %50
  %51 = load ptr, ptr %xM.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom135 = sext i32 %52 to i64
  %arrayidx136 = getelementptr inbounds i16, ptr %51, i64 %idxprom135
  %53 = load i16, ptr %arrayidx136, align 2
  %conv137 = sext i16 %53 to i32
  %54 = load i16, ptr %temp1, align 2
  %conv138 = sext i16 %54 to i32
  %shl139 = shl i32 %conv137, %conv138
  %conv140 = trunc i32 %shl139 to i16
  store i16 %conv140, ptr %temp, align 2
  %55 = load i16, ptr %temp, align 2
  %conv141 = sext i16 %55 to i64
  %56 = load i16, ptr %temp2, align 2
  %conv142 = sext i16 %56 to i64
  %mul = mul nsw i64 %conv141, %conv142
  %call143 = call i32 @SASR(i64 noundef %mul, i32 noundef 15)
  %conv144 = trunc i32 %call143 to i16
  store i16 %conv144, ptr %temp, align 2
  %57 = load i16, ptr %temp, align 2
  %conv145 = sext i16 %57 to i32
  %call146 = call i32 @SASR(i32 noundef %conv145, i32 noundef 12)
  %conv147 = trunc i32 %call146 to i16
  store i16 %conv147, ptr %temp, align 2
  %58 = load i16, ptr %temp, align 2
  %conv148 = sext i16 %58 to i32
  %add149 = add nsw i32 %conv148, 4
  %conv150 = trunc i32 %add149 to i16
  %59 = load ptr, ptr %xMc.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %60 to i64
  %arrayidx152 = getelementptr inbounds i16, ptr %59, i64 %idxprom151
  store i16 %conv150, ptr %arrayidx152, align 2
  br label %for.inc153

for.inc153:                                       ; preds = %cond.end134
  %61 = load i32, ptr %i, align 4
  %inc154 = add nsw i32 %61, 1
  store i32 %inc154, ptr %i, align 4
  br label %for.cond116, !llvm.loop !11

for.end155:                                       ; preds = %for.cond116
  %62 = load i16, ptr %mant, align 2
  %63 = load ptr, ptr %mant_out.addr, align 8
  store i16 %62, ptr %63, align 2
  %64 = load i16, ptr %exp, align 2
  %65 = load ptr, ptr %exp_out.addr, align 8
  store i16 %64, ptr %65, align 2
  %66 = load i16, ptr %xmaxc, align 2
  %67 = load ptr, ptr %xmaxc_out.addr, align 8
  store i16 %66, ptr %67, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @APCM_inverse_quantization(ptr noundef %xMc, i16 noundef signext %mant, i16 noundef signext %exp, ptr noundef %xMp) #0 {
entry:
  %xMc.addr = alloca ptr, align 8
  %mant.addr = alloca i16, align 2
  %exp.addr = alloca i16, align 2
  %xMp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %temp1 = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %temp3 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store ptr %xMc, ptr %xMc.addr, align 8
  store i16 %mant, ptr %mant.addr, align 2
  store i16 %exp, ptr %exp.addr, align 2
  store ptr %xMp, ptr %xMp.addr, align 8
  %0 = load i16, ptr %mant.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16, ptr %mant.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv5 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.APCM_inverse_quantization, ptr noundef @.str, i32 noundef 364, ptr noundef @.str.5) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load i16, ptr %mant.addr, align 2
  %idxprom = sext i16 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i16], ptr @gsm_FAC, i64 0, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2
  store i16 %5, ptr %temp1, align 2
  %6 = load i16, ptr %exp.addr, align 2
  %call = call signext i16 @gsm_sub(i16 noundef signext 6, i16 noundef signext %6)
  store i16 %call, ptr %temp2, align 2
  %7 = load i16, ptr %temp2, align 2
  %call6 = call signext i16 @gsm_sub(i16 noundef signext %7, i16 noundef signext 1)
  %conv7 = sext i16 %call6 to i32
  %call8 = call signext i16 @gsm_asl(i16 noundef signext 1, i32 noundef %conv7)
  store i16 %call8, ptr %temp3, align 2
  store i32 13, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end60, %cond.end
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %xMc.addr, align 8
  %10 = load i16, ptr %9, align 2
  %conv10 = sext i16 %10 to i32
  %cmp11 = icmp sle i32 %conv10, 7
  br i1 %cmp11, label %land.rhs13, label %land.end17

land.rhs13:                                       ; preds = %for.body
  %11 = load ptr, ptr %xMc.addr, align 8
  %12 = load i16, ptr %11, align 2
  %conv14 = sext i16 %12 to i32
  %cmp15 = icmp sge i32 %conv14, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs13, %for.body
  %13 = phi i1 [ false, %for.body ], [ %cmp15, %land.rhs13 ]
  %lnot18 = xor i1 %13, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %land.end17
  call void @__assert_rtn(ptr noundef @__func__.APCM_inverse_quantization, ptr noundef @.str, i32 noundef 372, ptr noundef @.str.7) #3
  unreachable

14:                                               ; No predecessors!
  br label %cond.end24

cond.false23:                                     ; preds = %land.end17
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %14
  %15 = load ptr, ptr %xMc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %xMc.addr, align 8
  %16 = load i16, ptr %15, align 2
  %conv25 = sext i16 %16 to i32
  %shl = shl i32 %conv25, 1
  %sub = sub nsw i32 %shl, 7
  %conv26 = trunc i32 %sub to i16
  store i16 %conv26, ptr %temp, align 2
  %17 = load i16, ptr %temp, align 2
  %conv27 = sext i16 %17 to i32
  %cmp28 = icmp sle i32 %conv27, 7
  br i1 %cmp28, label %land.rhs30, label %land.end34

land.rhs30:                                       ; preds = %cond.end24
  %18 = load i16, ptr %temp, align 2
  %conv31 = sext i16 %18 to i32
  %cmp32 = icmp sge i32 %conv31, -7
  br label %land.end34

land.end34:                                       ; preds = %land.rhs30, %cond.end24
  %19 = phi i1 [ false, %cond.end24 ], [ %cmp32, %land.rhs30 ]
  %lnot35 = xor i1 %19, true
  %lnot.ext36 = zext i1 %lnot35 to i32
  %conv37 = sext i32 %lnot.ext36 to i64
  %tobool38 = icmp ne i64 %conv37, 0
  br i1 %tobool38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %land.end34
  call void @__assert_rtn(ptr noundef @__func__.APCM_inverse_quantization, ptr noundef @.str, i32 noundef 376, ptr noundef @.str.8) #3
  unreachable

20:                                               ; No predecessors!
  br label %cond.end41

cond.false40:                                     ; preds = %land.end34
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %20
  %21 = load i16, ptr %temp, align 2
  %conv42 = sext i16 %21 to i32
  %shl43 = shl i32 %conv42, 12
  %conv44 = trunc i32 %shl43 to i16
  store i16 %conv44, ptr %temp, align 2
  %22 = load i16, ptr %temp1, align 2
  %conv45 = sext i16 %22 to i64
  %23 = load i16, ptr %temp, align 2
  %conv46 = sext i16 %23 to i64
  %mul = mul nsw i64 %conv45, %conv46
  %add = add nsw i64 %mul, 16384
  %call47 = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv48 = trunc i32 %call47 to i16
  store i16 %conv48, ptr %temp, align 2
  %24 = load i16, ptr %temp, align 2
  %conv49 = sext i16 %24 to i64
  %25 = load i16, ptr %temp3, align 2
  %conv50 = sext i16 %25 to i64
  %add51 = add nsw i64 %conv49, %conv50
  store i64 %add51, ptr %ltmp, align 8
  %sub52 = sub nsw i64 %add51, -32768
  %cmp53 = icmp ugt i64 %sub52, 65535
  br i1 %cmp53, label %cond.true55, label %cond.false59

cond.true55:                                      ; preds = %cond.end41
  %26 = load i64, ptr %ltmp, align 8
  %cmp56 = icmp sgt i64 %26, 0
  %27 = zext i1 %cmp56 to i64
  %cond = select i1 %cmp56, i32 32767, i32 -32768
  %conv58 = sext i32 %cond to i64
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end41
  %28 = load i64, ptr %ltmp, align 8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.true55
  %cond61 = phi i64 [ %conv58, %cond.true55 ], [ %28, %cond.false59 ]
  %conv62 = trunc i64 %cond61 to i16
  store i16 %conv62, ptr %temp, align 2
  %29 = load i16, ptr %temp, align 2
  %30 = load i16, ptr %temp2, align 2
  %conv63 = sext i16 %30 to i32
  %call64 = call signext i16 @gsm_asr(i16 noundef signext %29, i32 noundef %conv63)
  %31 = load ptr, ptr %xMp.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i16, ptr %31, i32 1
  store ptr %incdec.ptr65, ptr %xMp.addr, align 8
  store i16 %call64, ptr %31, align 2
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @RPE_grid_positioning(i16 noundef signext %Mc, ptr noundef %xMp, ptr noundef %ep) #0 {
entry:
  %Mc.addr = alloca i16, align 2
  %xMp.addr = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i16 %Mc, ptr %Mc.addr, align 2
  store ptr %xMp, ptr %xMp.addr, align 8
  store ptr %ep, ptr %ep.addr, align 8
  store i32 13, ptr %i, align 4
  %0 = load i16, ptr %Mc.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 0, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16, ptr %Mc.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv5 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.RPE_grid_positioning, ptr noundef @.str, i32 noundef 402, ptr noundef @.str.9) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load i16, ptr %Mc.addr, align 2
  %conv6 = sext i16 %4 to i32
  switch i32 %conv6, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb7
    i32 1, label %sw.bb9
    i32 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %cond.end
  %5 = load ptr, ptr %ep.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %ep.addr, align 8
  store i16 0, ptr %5, align 2
  br label %sw.bb7

sw.bb7:                                           ; preds = %cond.end, %sw.bb
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb7
  %6 = load ptr, ptr %ep.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %6, i32 1
  store ptr %incdec.ptr8, ptr %ep.addr, align 8
  store i16 0, ptr %6, align 2
  br label %sw.bb9

sw.bb9:                                           ; preds = %cond.end, %do.body
  %7 = load ptr, ptr %ep.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i16, ptr %7, i32 1
  store ptr %incdec.ptr10, ptr %ep.addr, align 8
  store i16 0, ptr %7, align 2
  br label %sw.bb11

sw.bb11:                                          ; preds = %cond.end, %sw.bb9
  %8 = load ptr, ptr %xMp.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i16, ptr %8, i32 1
  store ptr %incdec.ptr12, ptr %xMp.addr, align 8
  %9 = load i16, ptr %8, align 2
  %10 = load ptr, ptr %ep.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i16, ptr %10, i32 1
  store ptr %incdec.ptr13, ptr %ep.addr, align 8
  store i16 %9, ptr %10, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb11
  %11 = load i32, ptr %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %i, align 4
  %tobool14 = icmp ne i32 %dec, 0
  br i1 %tobool14, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %12 = load i16, ptr %Mc.addr, align 2
  %inc = add i16 %12, 1
  store i16 %inc, ptr %Mc.addr, align 2
  %conv15 = sext i16 %inc to i32
  %cmp16 = icmp slt i32 %conv15, 4
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %ep.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr18, ptr %ep.addr, align 8
  store i16 0, ptr %13, align 2
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_RPE_Decoding(ptr noundef %S, i16 noundef signext %xmaxcr, i16 noundef signext %Mcr, ptr noundef %xMcr, ptr noundef %erp) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %xmaxcr.addr = alloca i16, align 2
  %Mcr.addr = alloca i16, align 2
  %xMcr.addr = alloca ptr, align 8
  %erp.addr = alloca ptr, align 8
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  %xMp = alloca [13 x i16], align 2
  store ptr %S, ptr %S.addr, align 8
  store i16 %xmaxcr, ptr %xmaxcr.addr, align 2
  store i16 %Mcr, ptr %Mcr.addr, align 2
  store ptr %xMcr, ptr %xMcr.addr, align 8
  store ptr %erp, ptr %erp.addr, align 8
  %0 = load i16, ptr %xmaxcr.addr, align 2
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %0, ptr noundef %exp, ptr noundef %mant)
  %1 = load ptr, ptr %xMcr.addr, align 8
  %2 = load i16, ptr %mant, align 2
  %3 = load i16, ptr %exp, align 2
  %arraydecay = getelementptr inbounds [13 x i16], ptr %xMp, i64 0, i64 0
  call void @APCM_inverse_quantization(ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, ptr noundef %arraydecay)
  %4 = load i16, ptr %Mcr.addr, align 2
  %arraydecay1 = getelementptr inbounds [13 x i16], ptr %xMp, i64 0, i64 0
  %5 = load ptr, ptr %erp.addr, align 8
  call void @RPE_grid_positioning(i16 noundef signext %4, ptr noundef %arraydecay1, ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %xmaxc, ptr noundef %exp_out, ptr noundef %mant_out) #0 {
entry:
  %xmaxc.addr = alloca i16, align 2
  %exp_out.addr = alloca ptr, align 8
  %mant_out.addr = alloca ptr, align 8
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  store i16 %xmaxc, ptr %xmaxc.addr, align 2
  store ptr %exp_out, ptr %exp_out.addr, align 8
  store ptr %mant_out, ptr %mant_out.addr, align 8
  store i16 0, ptr %exp, align 2
  %0 = load i16, ptr %xmaxc.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %xmaxc.addr, align 2
  %conv2 = sext i16 %1 to i32
  %call = call i32 @SASR(i32 noundef %conv2, i32 noundef 3)
  %sub = sub nsw i32 %call, 1
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %exp, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, ptr %xmaxc.addr, align 2
  %conv4 = sext i16 %2 to i32
  %3 = load i16, ptr %exp, align 2
  %conv5 = sext i16 %3 to i32
  %shl = shl i32 %conv5, 3
  %sub6 = sub nsw i32 %conv4, %shl
  %conv7 = trunc i32 %sub6 to i16
  store i16 %conv7, ptr %mant, align 2
  %4 = load i16, ptr %mant, align 2
  %conv8 = sext i16 %4 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  store i16 -4, ptr %exp, align 2
  store i16 7, ptr %mant, align 2
  br label %if.end21

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load i16, ptr %mant, align 2
  %conv12 = sext i16 %5 to i32
  %cmp13 = icmp sle i32 %conv12, 7
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i16, ptr %mant, align 2
  %conv15 = sext i16 %6 to i32
  %shl16 = shl i32 %conv15, 1
  %or = or i32 %shl16, 1
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, ptr %mant, align 2
  %7 = load i16, ptr %exp, align 2
  %dec = add i16 %7, -1
  store i16 %dec, ptr %exp, align 2
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %8 = load i16, ptr %mant, align 2
  %conv18 = sext i16 %8 to i32
  %sub19 = sub nsw i32 %conv18, 8
  %conv20 = trunc i32 %sub19 to i16
  store i16 %conv20, ptr %mant, align 2
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.then11
  %9 = load i16, ptr %exp, align 2
  %conv22 = sext i16 %9 to i32
  %cmp23 = icmp sge i32 %conv22, -4
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end21
  %10 = load i16, ptr %exp, align 2
  %conv25 = sext i16 %10 to i32
  %cmp26 = icmp sle i32 %conv25, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end21
  %11 = phi i1 [ false, %if.end21 ], [ %cmp26, %land.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  %conv28 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization_xmaxc_to_exp_mant, ptr noundef @.str, i32 noundef 249, ptr noundef @.str.10) #3
  unreachable

12:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %12
  %13 = load i16, ptr %mant, align 2
  %conv29 = sext i16 %13 to i32
  %cmp30 = icmp sge i32 %conv29, 0
  br i1 %cmp30, label %land.rhs32, label %land.end36

land.rhs32:                                       ; preds = %cond.end
  %14 = load i16, ptr %mant, align 2
  %conv33 = sext i16 %14 to i32
  %cmp34 = icmp sle i32 %conv33, 7
  br label %land.end36

land.end36:                                       ; preds = %land.rhs32, %cond.end
  %15 = phi i1 [ false, %cond.end ], [ %cmp34, %land.rhs32 ]
  %lnot37 = xor i1 %15, true
  %lnot.ext38 = zext i1 %lnot37 to i32
  %conv39 = sext i32 %lnot.ext38 to i64
  %tobool40 = icmp ne i64 %conv39, 0
  br i1 %tobool40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %land.end36
  call void @__assert_rtn(ptr noundef @__func__.APCM_quantization_xmaxc_to_exp_mant, ptr noundef @.str, i32 noundef 250, ptr noundef @.str.5) #3
  unreachable

16:                                               ; No predecessors!
  br label %cond.end43

cond.false42:                                     ; preds = %land.end36
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %16
  %17 = load i16, ptr %exp, align 2
  %18 = load ptr, ptr %exp_out.addr, align 8
  store i16 %17, ptr %18, align 2
  %19 = load i16, ptr %mant, align 2
  %20 = load ptr, ptr %mant_out.addr, align 8
  store i16 %19, ptr %20, align 2
  ret void
}

declare i32 @SASR(...) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare signext i16 @gsm_add(i16 noundef signext, i16 noundef signext) #1

declare signext i16 @gsm_sub(i16 noundef signext, i16 noundef signext) #1

declare signext i16 @gsm_asl(i16 noundef signext, i32 noundef) #1

declare signext i16 @gsm_asr(i16 noundef signext, i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
