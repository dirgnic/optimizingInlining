; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/ieeefloat.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/ieeefloat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @ConvertFromIeeeSingle(ptr noundef %bytes) #0 {
entry:
  %retval = alloca double, align 8
  %bytes.addr = alloca ptr, align 8
  %f = alloca double, align 8
  %mantissa = alloca i64, align 8
  %expon = alloca i64, align 8
  %bits = alloca i64, align 8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load ptr, ptr %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = sext i32 %and to i64
  %shl = shl i64 %conv1, 24
  %2 = load ptr, ptr %bytes.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = sext i32 %and4 to i64
  %shl6 = shl i64 %conv5, 16
  %or = or i64 %shl, %shl6
  %4 = load ptr, ptr %bytes.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = sext i32 %and9 to i64
  %shl11 = shl i64 %conv10, 8
  %or12 = or i64 %or, %shl11
  %6 = load ptr, ptr %bytes.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %7 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = sext i32 %and15 to i64
  %or17 = or i64 %or12, %conv16
  store i64 %or17, ptr %bits, align 8
  %8 = load i64, ptr %bits, align 8
  %and18 = and i64 %8, 2147483647
  %cmp = icmp eq i64 %and18, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %f, align 8
  br label %if.end41

if.else:                                          ; preds = %entry
  %9 = load i64, ptr %bits, align 8
  %and20 = and i64 %9, 2139095040
  %shr = ashr i64 %and20, 23
  store i64 %shr, ptr %expon, align 8
  %10 = load i64, ptr %expon, align 8
  %cmp21 = icmp eq i64 %10, 255
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else
  store double 0x7FF0000000000000, ptr %f, align 8
  br label %if.end40

if.else24:                                        ; preds = %if.else
  %11 = load i64, ptr %expon, align 8
  %cmp25 = icmp eq i64 %11, 0
  br i1 %cmp25, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.else24
  %12 = load i64, ptr %bits, align 8
  %and28 = and i64 %12, 8388607
  store i64 %and28, ptr %mantissa, align 8
  %13 = load i64, ptr %mantissa, align 8
  %conv29 = sitofp i64 %13 to double
  %14 = load i64, ptr %expon, align 8
  %sub = sub nsw i64 %14, 127
  %sub30 = sub nsw i64 %sub, 23
  %add = add nsw i64 %sub30, 1
  %conv31 = trunc i64 %add to i32
  %call = call double @ldexp(double noundef %conv29, i32 noundef %conv31) #4
  store double %call, ptr %f, align 8
  br label %if.end

if.else32:                                        ; preds = %if.else24
  %15 = load i64, ptr %bits, align 8
  %and33 = and i64 %15, 8388607
  %add34 = add nsw i64 %and33, 8388608
  store i64 %add34, ptr %mantissa, align 8
  %16 = load i64, ptr %mantissa, align 8
  %conv35 = sitofp i64 %16 to double
  %17 = load i64, ptr %expon, align 8
  %sub36 = sub nsw i64 %17, 127
  %sub37 = sub nsw i64 %sub36, 23
  %conv38 = trunc i64 %sub37 to i32
  %call39 = call double @ldexp(double noundef %conv35, i32 noundef %conv38) #4
  store double %call39, ptr %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then27
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then23
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then
  %18 = load i64, ptr %bits, align 8
  %and42 = and i64 %18, -9223372036854775808
  %tobool = icmp ne i64 %and42, 0
  br i1 %tobool, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end41
  %19 = load double, ptr %f, align 8
  %fneg = fneg double %19
  store double %fneg, ptr %retval, align 8
  br label %return

if.else44:                                        ; preds = %if.end41
  %20 = load double, ptr %f, align 8
  store double %20, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else44, %if.then43
  %21 = load double, ptr %retval, align 8
  ret double %21
}

; Function Attrs: nounwind readnone willreturn
declare double @ldexp(double noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ConvertToIeeeSingle(double noundef %num, ptr noundef %bytes) #0 {
entry:
  %num.addr = alloca double, align 8
  %bytes.addr = alloca ptr, align 8
  %sign = alloca i64, align 8
  %bits = alloca i64, align 8
  %fMant = alloca double, align 8
  %expon = alloca i32, align 4
  %mantissa = alloca i64, align 8
  %shift = alloca i32, align 4
  store double %num, ptr %num.addr, align 8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -9223372036854775808, ptr %sign, align 8
  %1 = load double, ptr %num.addr, align 8
  %mul = fmul double %1, -1.000000e+00
  store double %mul, ptr %num.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, ptr %sign, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load double, ptr %num.addr, align 8
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %bits, align 8
  br label %if.end28

if.else3:                                         ; preds = %if.end
  %3 = load double, ptr %num.addr, align 8
  %call = call double @frexp(double noundef %3, ptr noundef %expon) #5
  store double %call, ptr %fMant, align 8
  %4 = load i32, ptr %expon, align 4
  %cmp4 = icmp sgt i32 %4, 129
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else3
  %5 = load double, ptr %fMant, align 8
  %cmp5 = fcmp olt double %5, 1.000000e+00
  br i1 %cmp5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.else3
  %6 = load i64, ptr %sign, align 8
  %or = or i64 %6, 2139095040
  store i64 %or, ptr %bits, align 8
  br label %if.end27

if.else7:                                         ; preds = %lor.lhs.false
  %7 = load i32, ptr %expon, align 4
  %cmp8 = icmp slt i32 %7, -125
  br i1 %cmp8, label %if.then9, label %if.else17

if.then9:                                         ; preds = %if.else7
  %8 = load i32, ptr %expon, align 4
  %add = add nsw i32 149, %8
  store i32 %add, ptr %shift, align 4
  %9 = load i32, ptr %shift, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.then9
  %10 = load i64, ptr %sign, align 8
  store i64 %10, ptr %bits, align 8
  br label %if.end16

if.else12:                                        ; preds = %if.then9
  %11 = load double, ptr %fMant, align 8
  %12 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 1, %sh_prom
  %conv = sitofp i64 %shl to double
  %mul13 = fmul double %11, %conv
  %conv14 = fptosi double %mul13 to i64
  store i64 %conv14, ptr %mantissa, align 8
  %13 = load i64, ptr %sign, align 8
  %14 = load i64, ptr %mantissa, align 8
  %or15 = or i64 %13, %14
  store i64 %or15, ptr %bits, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then11
  br label %if.end26

if.else17:                                        ; preds = %if.else7
  %15 = load double, ptr %fMant, align 8
  %mul18 = fmul double %15, 0x4170000000000000
  %16 = call double @llvm.floor.f64(double %mul18)
  %conv19 = fptosi double %16 to i64
  store i64 %conv19, ptr %mantissa, align 8
  %17 = load i64, ptr %mantissa, align 8
  %sub = sub nsw i64 %17, 8388608
  store i64 %sub, ptr %mantissa, align 8
  %18 = load i64, ptr %sign, align 8
  %19 = load i32, ptr %expon, align 4
  %add20 = add nsw i32 %19, 127
  %sub21 = sub nsw i32 %add20, 1
  %conv22 = sext i32 %sub21 to i64
  %shl23 = shl i64 %conv22, 23
  %or24 = or i64 %18, %shl23
  %20 = load i64, ptr %mantissa, align 8
  %or25 = or i64 %or24, %20
  store i64 %or25, ptr %bits, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else17, %if.end16
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then6
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then2
  %21 = load i64, ptr %bits, align 8
  %shr = ashr i64 %21, 24
  %conv29 = trunc i64 %shr to i8
  %22 = load ptr, ptr %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 0
  store i8 %conv29, ptr %arrayidx, align 1
  %23 = load i64, ptr %bits, align 8
  %shr30 = ashr i64 %23, 16
  %conv31 = trunc i64 %shr30 to i8
  %24 = load ptr, ptr %bytes.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %conv31, ptr %arrayidx32, align 1
  %25 = load i64, ptr %bits, align 8
  %shr33 = ashr i64 %25, 8
  %conv34 = trunc i64 %shr33 to i8
  %26 = load ptr, ptr %bytes.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 2
  store i8 %conv34, ptr %arrayidx35, align 1
  %27 = load i64, ptr %bits, align 8
  %conv36 = trunc i64 %27 to i8
  %28 = load ptr, ptr %bytes.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %conv36, ptr %arrayidx37, align 1
  ret void
}

; Function Attrs: nounwind
declare double @frexp(double noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @ConvertFromIeeeDouble(ptr noundef %bytes) #0 {
entry:
  %retval = alloca double, align 8
  %bytes.addr = alloca ptr, align 8
  %f = alloca double, align 8
  %mantissa = alloca i64, align 8
  %expon = alloca i64, align 8
  %first = alloca i64, align 8
  %second = alloca i64, align 8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load ptr, ptr %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 255
  %conv1 = sext i32 %and to i64
  %shl = shl i64 %conv1, 24
  %2 = load ptr, ptr %bytes.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 %conv3, 255
  %conv5 = sext i32 %and4 to i64
  %shl6 = shl i64 %conv5, 16
  %or = or i64 %shl, %shl6
  %4 = load ptr, ptr %bytes.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = sext i32 %and9 to i64
  %shl11 = shl i64 %conv10, 8
  %or12 = or i64 %or, %shl11
  %6 = load ptr, ptr %bytes.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %7 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = sext i32 %and15 to i64
  %or17 = or i64 %or12, %conv16
  store i64 %or17, ptr %first, align 8
  %8 = load ptr, ptr %bytes.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %9 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = sext i32 %and20 to i64
  %shl22 = shl i64 %conv21, 24
  %10 = load ptr, ptr %bytes.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %11 to i32
  %and25 = and i32 %conv24, 255
  %conv26 = sext i32 %and25 to i64
  %shl27 = shl i64 %conv26, 16
  %or28 = or i64 %shl22, %shl27
  %12 = load ptr, ptr %bytes.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %13 to i32
  %and31 = and i32 %conv30, 255
  %conv32 = sext i32 %and31 to i64
  %shl33 = shl i64 %conv32, 8
  %or34 = or i64 %or28, %shl33
  %14 = load ptr, ptr %bytes.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %14, i64 7
  %15 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %15 to i32
  %and37 = and i32 %conv36, 255
  %conv38 = sext i32 %and37 to i64
  %or39 = or i64 %or34, %conv38
  store i64 %or39, ptr %second, align 8
  %16 = load i64, ptr %first, align 8
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %17 = load i64, ptr %second, align 8
  %cmp41 = icmp eq i64 %17, 0
  br i1 %cmp41, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store double 0.000000e+00, ptr %f, align 8
  br label %if.end85

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load i64, ptr %first, align 8
  %and43 = and i64 %18, 2146435072
  %shr = lshr i64 %and43, 20
  store i64 %shr, ptr %expon, align 8
  %19 = load i64, ptr %expon, align 8
  %cmp44 = icmp eq i64 %19, 2047
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else
  store double 0x7FF0000000000000, ptr %f, align 8
  br label %if.end84

if.else47:                                        ; preds = %if.else
  %20 = load i64, ptr %expon, align 8
  %cmp48 = icmp eq i64 %20, 0
  br i1 %cmp48, label %if.then50, label %if.else66

if.then50:                                        ; preds = %if.else47
  %21 = load i64, ptr %first, align 8
  %and51 = and i64 %21, 1048575
  store i64 %and51, ptr %mantissa, align 8
  %22 = load i64, ptr %mantissa, align 8
  %conv52 = sitofp i64 %22 to double
  %23 = load i64, ptr %expon, align 8
  %sub = sub nsw i64 %23, 1023
  %sub53 = sub nsw i64 %sub, 20
  %add = add nsw i64 %sub53, 1
  %conv54 = trunc i64 %add to i32
  %call = call double @ldexp(double noundef %conv52, i32 noundef %conv54) #4
  store double %call, ptr %f, align 8
  %24 = load i64, ptr %second, align 8
  %sub55 = sub i64 %24, 2147483647
  %sub56 = sub i64 %sub55, 1
  %conv57 = sitofp i64 %sub56 to double
  %add58 = fadd double %conv57, 0x41E0000000000000
  %25 = load i64, ptr %expon, align 8
  %sub59 = sub nsw i64 %25, 1023
  %sub60 = sub nsw i64 %sub59, 20
  %add61 = add nsw i64 %sub60, 1
  %sub62 = sub nsw i64 %add61, 32
  %conv63 = trunc i64 %sub62 to i32
  %call64 = call double @ldexp(double noundef %add58, i32 noundef %conv63) #4
  %26 = load double, ptr %f, align 8
  %add65 = fadd double %26, %call64
  store double %add65, ptr %f, align 8
  br label %if.end

if.else66:                                        ; preds = %if.else47
  %27 = load i64, ptr %first, align 8
  %and67 = and i64 %27, 1048575
  %add68 = add i64 %and67, 1048576
  store i64 %add68, ptr %mantissa, align 8
  %28 = load i64, ptr %mantissa, align 8
  %conv69 = sitofp i64 %28 to double
  %29 = load i64, ptr %expon, align 8
  %sub70 = sub nsw i64 %29, 1023
  %sub71 = sub nsw i64 %sub70, 20
  %conv72 = trunc i64 %sub71 to i32
  %call73 = call double @ldexp(double noundef %conv69, i32 noundef %conv72) #4
  store double %call73, ptr %f, align 8
  %30 = load i64, ptr %second, align 8
  %sub74 = sub i64 %30, 2147483647
  %sub75 = sub i64 %sub74, 1
  %conv76 = sitofp i64 %sub75 to double
  %add77 = fadd double %conv76, 0x41E0000000000000
  %31 = load i64, ptr %expon, align 8
  %sub78 = sub nsw i64 %31, 1023
  %sub79 = sub nsw i64 %sub78, 20
  %sub80 = sub nsw i64 %sub79, 32
  %conv81 = trunc i64 %sub80 to i32
  %call82 = call double @ldexp(double noundef %add77, i32 noundef %conv81) #4
  %32 = load double, ptr %f, align 8
  %add83 = fadd double %32, %call82
  store double %add83, ptr %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.else66, %if.then50
  br label %if.end84

if.end84:                                         ; preds = %if.end, %if.then46
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then
  %33 = load i64, ptr %first, align 8
  %and86 = and i64 %33, 2147483648
  %tobool = icmp ne i64 %and86, 0
  br i1 %tobool, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.end85
  %34 = load double, ptr %f, align 8
  %fneg = fneg double %34
  store double %fneg, ptr %retval, align 8
  br label %return

if.else88:                                        ; preds = %if.end85
  %35 = load double, ptr %f, align 8
  store double %35, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else88, %if.then87
  %36 = load double, ptr %retval, align 8
  ret double %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ConvertToIeeeDouble(double noundef %num, ptr noundef %bytes) #0 {
entry:
  %num.addr = alloca double, align 8
  %bytes.addr = alloca ptr, align 8
  %sign = alloca i64, align 8
  %first = alloca i64, align 8
  %second = alloca i64, align 8
  %fMant = alloca double, align 8
  %fsMant = alloca double, align 8
  %expon = alloca i32, align 4
  %mantissa = alloca i64, align 8
  %shift = alloca i32, align 4
  store double %num, ptr %num.addr, align 8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -9223372036854775808, ptr %sign, align 8
  %1 = load double, ptr %num.addr, align 8
  %mul = fmul double %1, -1.000000e+00
  store double %mul, ptr %num.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, ptr %sign, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load double, ptr %num.addr, align 8
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %first, align 8
  store i64 0, ptr %second, align 8
  br label %if.end51

if.else3:                                         ; preds = %if.end
  %3 = load double, ptr %num.addr, align 8
  %call = call double @frexp(double noundef %3, ptr noundef %expon) #5
  store double %call, ptr %fMant, align 8
  %4 = load i32, ptr %expon, align 4
  %cmp4 = icmp sgt i32 %4, 1025
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else3
  %5 = load double, ptr %fMant, align 8
  %cmp5 = fcmp olt double %5, 1.000000e+00
  br i1 %cmp5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.else3
  %6 = load i64, ptr %sign, align 8
  %or = or i64 %6, 2146435072
  store i64 %or, ptr %first, align 8
  store i64 0, ptr %second, align 8
  br label %if.end50

if.else7:                                         ; preds = %lor.lhs.false
  %7 = load i32, ptr %expon, align 4
  %cmp8 = icmp slt i32 %7, -1021
  br i1 %cmp8, label %if.then9, label %if.else32

if.then9:                                         ; preds = %if.else7
  %8 = load i32, ptr %expon, align 4
  %add = add nsw i32 1042, %8
  store i32 %add, ptr %shift, align 4
  %9 = load i32, ptr %shift, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then9
  %10 = load i64, ptr %sign, align 8
  store i64 %10, ptr %first, align 8
  %11 = load i32, ptr %shift, align 4
  %add12 = add nsw i32 %11, 32
  store i32 %add12, ptr %shift, align 4
  %12 = load i32, ptr %shift, align 4
  %cmp13 = icmp slt i32 %12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.then11
  store i64 0, ptr %second, align 8
  br label %if.end19

if.else15:                                        ; preds = %if.then11
  %13 = load double, ptr %fMant, align 8
  %14 = load i32, ptr %shift, align 4
  %call16 = call double @ldexp(double noundef %13, i32 noundef %14) #4
  %15 = call double @llvm.floor.f64(double %call16)
  %sub = fsub double %15, 0x41E0000000000000
  %conv = fptosi double %sub to i64
  %add17 = add nsw i64 %conv, 2147483647
  %add18 = add nsw i64 %add17, 1
  store i64 %add18, ptr %second, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then14
  br label %if.end31

if.else20:                                        ; preds = %if.then9
  %16 = load double, ptr %fMant, align 8
  %17 = load i32, ptr %shift, align 4
  %call21 = call double @ldexp(double noundef %16, i32 noundef %17) #4
  store double %call21, ptr %fsMant, align 8
  %18 = load double, ptr %fsMant, align 8
  %19 = call double @llvm.floor.f64(double %18)
  %conv22 = fptosi double %19 to i64
  store i64 %conv22, ptr %mantissa, align 8
  %20 = load i64, ptr %sign, align 8
  %21 = load i64, ptr %mantissa, align 8
  %or23 = or i64 %20, %21
  store i64 %or23, ptr %first, align 8
  %22 = load double, ptr %fsMant, align 8
  %23 = load i64, ptr %mantissa, align 8
  %conv24 = sitofp i64 %23 to double
  %sub25 = fsub double %22, %conv24
  %call26 = call double @ldexp(double noundef %sub25, i32 noundef 32) #4
  %24 = call double @llvm.floor.f64(double %call26)
  %sub27 = fsub double %24, 0x41E0000000000000
  %conv28 = fptosi double %sub27 to i64
  %add29 = add nsw i64 %conv28, 2147483647
  %add30 = add nsw i64 %add29, 1
  store i64 %add30, ptr %second, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else20, %if.end19
  br label %if.end49

if.else32:                                        ; preds = %if.else7
  %25 = load double, ptr %fMant, align 8
  %call33 = call double @ldexp(double noundef %25, i32 noundef 21) #4
  store double %call33, ptr %fsMant, align 8
  %26 = load double, ptr %fsMant, align 8
  %27 = call double @llvm.floor.f64(double %26)
  %conv34 = fptosi double %27 to i64
  store i64 %conv34, ptr %mantissa, align 8
  %28 = load i64, ptr %mantissa, align 8
  %sub35 = sub nsw i64 %28, 1048576
  store i64 %sub35, ptr %mantissa, align 8
  %29 = load double, ptr %fsMant, align 8
  %sub36 = fsub double %29, 0x4130000000000000
  store double %sub36, ptr %fsMant, align 8
  %30 = load i64, ptr %sign, align 8
  %31 = load i32, ptr %expon, align 4
  %add37 = add nsw i32 %31, 1023
  %sub38 = sub nsw i32 %add37, 1
  %conv39 = sext i32 %sub38 to i64
  %shl = shl i64 %conv39, 20
  %or40 = or i64 %30, %shl
  %32 = load i64, ptr %mantissa, align 8
  %or41 = or i64 %or40, %32
  store i64 %or41, ptr %first, align 8
  %33 = load double, ptr %fsMant, align 8
  %34 = load i64, ptr %mantissa, align 8
  %conv42 = sitofp i64 %34 to double
  %sub43 = fsub double %33, %conv42
  %call44 = call double @ldexp(double noundef %sub43, i32 noundef 32) #4
  %35 = call double @llvm.floor.f64(double %call44)
  %sub45 = fsub double %35, 0x41E0000000000000
  %conv46 = fptosi double %sub45 to i64
  %add47 = add nsw i64 %conv46, 2147483647
  %add48 = add nsw i64 %add47, 1
  store i64 %add48, ptr %second, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else32, %if.end31
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then6
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then2
  %36 = load i64, ptr %first, align 8
  %shr = ashr i64 %36, 24
  %conv52 = trunc i64 %shr to i8
  %37 = load ptr, ptr %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %37, i64 0
  store i8 %conv52, ptr %arrayidx, align 1
  %38 = load i64, ptr %first, align 8
  %shr53 = ashr i64 %38, 16
  %conv54 = trunc i64 %shr53 to i8
  %39 = load ptr, ptr %bytes.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %conv54, ptr %arrayidx55, align 1
  %40 = load i64, ptr %first, align 8
  %shr56 = ashr i64 %40, 8
  %conv57 = trunc i64 %shr56 to i8
  %41 = load ptr, ptr %bytes.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 %conv57, ptr %arrayidx58, align 1
  %42 = load i64, ptr %first, align 8
  %conv59 = trunc i64 %42 to i8
  %43 = load ptr, ptr %bytes.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %43, i64 3
  store i8 %conv59, ptr %arrayidx60, align 1
  %44 = load i64, ptr %second, align 8
  %shr61 = ashr i64 %44, 24
  %conv62 = trunc i64 %shr61 to i8
  %45 = load ptr, ptr %bytes.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %45, i64 4
  store i8 %conv62, ptr %arrayidx63, align 1
  %46 = load i64, ptr %second, align 8
  %shr64 = ashr i64 %46, 16
  %conv65 = trunc i64 %shr64 to i8
  %47 = load ptr, ptr %bytes.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %47, i64 5
  store i8 %conv65, ptr %arrayidx66, align 1
  %48 = load i64, ptr %second, align 8
  %shr67 = ashr i64 %48, 8
  %conv68 = trunc i64 %shr67 to i8
  %49 = load ptr, ptr %bytes.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %49, i64 6
  store i8 %conv68, ptr %arrayidx69, align 1
  %50 = load i64, ptr %second, align 8
  %conv70 = trunc i64 %50 to i8
  %51 = load ptr, ptr %bytes.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %51, i64 7
  store i8 %conv70, ptr %arrayidx71, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @ConvertFromIeeeExtended(ptr noundef %bytes) #0 {
entry:
  %retval = alloca double, align 8
  %bytes.addr = alloca ptr, align 8
  %f = alloca double, align 8
  %expon = alloca i64, align 8
  %hiMant = alloca i64, align 8
  %loMant = alloca i64, align 8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load ptr, ptr %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 127
  %shl = shl i32 %and, 8
  %2 = load ptr, ptr %bytes.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %and3 = and i32 %conv2, 255
  %or = or i32 %shl, %and3
  %conv4 = sext i32 %or to i64
  store i64 %conv4, ptr %expon, align 8
  %4 = load ptr, ptr %bytes.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %and7 = and i32 %conv6, 255
  %conv8 = sext i32 %and7 to i64
  %shl9 = shl i64 %conv8, 24
  %6 = load ptr, ptr %bytes.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %7 to i32
  %and12 = and i32 %conv11, 255
  %conv13 = sext i32 %and12 to i64
  %shl14 = shl i64 %conv13, 16
  %or15 = or i64 %shl9, %shl14
  %8 = load ptr, ptr %bytes.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %9 to i32
  %and18 = and i32 %conv17, 255
  %conv19 = sext i32 %and18 to i64
  %shl20 = shl i64 %conv19, 8
  %or21 = or i64 %or15, %shl20
  %10 = load ptr, ptr %bytes.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %11 to i32
  %and24 = and i32 %conv23, 255
  %conv25 = sext i32 %and24 to i64
  %or26 = or i64 %or21, %conv25
  store i64 %or26, ptr %hiMant, align 8
  %12 = load ptr, ptr %bytes.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %13 to i32
  %and29 = and i32 %conv28, 255
  %conv30 = sext i32 %and29 to i64
  %shl31 = shl i64 %conv30, 24
  %14 = load ptr, ptr %bytes.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %14, i64 7
  %15 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %15 to i32
  %and34 = and i32 %conv33, 255
  %conv35 = sext i32 %and34 to i64
  %shl36 = shl i64 %conv35, 16
  %or37 = or i64 %shl31, %shl36
  %16 = load ptr, ptr %bytes.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %17 to i32
  %and40 = and i32 %conv39, 255
  %conv41 = sext i32 %and40 to i64
  %shl42 = shl i64 %conv41, 8
  %or43 = or i64 %or37, %shl42
  %18 = load ptr, ptr %bytes.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %18, i64 9
  %19 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %19 to i32
  %and46 = and i32 %conv45, 255
  %conv47 = sext i32 %and46 to i64
  %or48 = or i64 %or43, %conv47
  store i64 %or48, ptr %loMant, align 8
  %20 = load i64, ptr %expon, align 8
  %cmp = icmp eq i64 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %21 = load i64, ptr %hiMant, align 8
  %cmp50 = icmp eq i64 %21, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.else

land.lhs.true52:                                  ; preds = %land.lhs.true
  %22 = load i64, ptr %loMant, align 8
  %cmp53 = icmp eq i64 %22, 0
  br i1 %cmp53, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true52
  store double 0.000000e+00, ptr %f, align 8
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true52, %land.lhs.true, %entry
  %23 = load i64, ptr %expon, align 8
  %cmp55 = icmp eq i64 %23, 32767
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else
  store double 0x7FF0000000000000, ptr %f, align 8
  br label %if.end

if.else58:                                        ; preds = %if.else
  %24 = load i64, ptr %expon, align 8
  %sub = sub nsw i64 %24, 16383
  store i64 %sub, ptr %expon, align 8
  %25 = load i64, ptr %hiMant, align 8
  %sub59 = sub i64 %25, 2147483647
  %sub60 = sub i64 %sub59, 1
  %conv61 = sitofp i64 %sub60 to double
  %add = fadd double %conv61, 0x41E0000000000000
  %26 = load i64, ptr %expon, align 8
  %sub62 = sub nsw i64 %26, 31
  store i64 %sub62, ptr %expon, align 8
  %conv63 = trunc i64 %sub62 to i32
  %call = call double @ldexp(double noundef %add, i32 noundef %conv63) #4
  store double %call, ptr %f, align 8
  %27 = load i64, ptr %loMant, align 8
  %sub64 = sub i64 %27, 2147483647
  %sub65 = sub i64 %sub64, 1
  %conv66 = sitofp i64 %sub65 to double
  %add67 = fadd double %conv66, 0x41E0000000000000
  %28 = load i64, ptr %expon, align 8
  %sub68 = sub nsw i64 %28, 32
  store i64 %sub68, ptr %expon, align 8
  %conv69 = trunc i64 %sub68 to i32
  %call70 = call double @ldexp(double noundef %add67, i32 noundef %conv69) #4
  %29 = load double, ptr %f, align 8
  %add71 = fadd double %29, %call70
  store double %add71, ptr %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.else58, %if.then57
  br label %if.end72

if.end72:                                         ; preds = %if.end, %if.then
  %30 = load ptr, ptr %bytes.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx73, align 1
  %conv74 = sext i8 %31 to i32
  %and75 = and i32 %conv74, 128
  %tobool = icmp ne i32 %and75, 0
  br i1 %tobool, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.end72
  %32 = load double, ptr %f, align 8
  %fneg = fneg double %32
  store double %fneg, ptr %retval, align 8
  br label %return

if.else77:                                        ; preds = %if.end72
  %33 = load double, ptr %f, align 8
  store double %33, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else77, %if.then76
  %34 = load double, ptr %retval, align 8
  ret double %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ConvertToIeeeExtended(double noundef %num, ptr noundef %bytes) #0 {
entry:
  %num.addr = alloca double, align 8
  %bytes.addr = alloca ptr, align 8
  %sign = alloca i32, align 4
  %expon = alloca i32, align 4
  %fMant = alloca double, align 8
  %fsMant = alloca double, align 8
  %hiMant = alloca i64, align 8
  %loMant = alloca i64, align 8
  store double %num, ptr %num.addr, align 8
  store ptr %bytes, ptr %bytes.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 32768, ptr %sign, align 4
  %1 = load double, ptr %num.addr, align 8
  %mul = fmul double %1, -1.000000e+00
  store double %mul, ptr %num.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load double, ptr %num.addr, align 8
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %expon, align 4
  store i64 0, ptr %hiMant, align 8
  store i64 0, ptr %loMant, align 8
  br label %if.end23

if.else3:                                         ; preds = %if.end
  %3 = load double, ptr %num.addr, align 8
  %call = call double @frexp(double noundef %3, ptr noundef %expon) #5
  store double %call, ptr %fMant, align 8
  %4 = load i32, ptr %expon, align 4
  %cmp4 = icmp sgt i32 %4, 16384
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else3
  %5 = load double, ptr %fMant, align 8
  %cmp5 = fcmp olt double %5, 1.000000e+00
  br i1 %cmp5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.else3
  %6 = load i32, ptr %sign, align 4
  %or = or i32 %6, 32767
  store i32 %or, ptr %expon, align 4
  store i64 0, ptr %hiMant, align 8
  store i64 0, ptr %loMant, align 8
  br label %if.end22

if.else7:                                         ; preds = %lor.lhs.false
  %7 = load i32, ptr %expon, align 4
  %add = add nsw i32 %7, 16382
  store i32 %add, ptr %expon, align 4
  %8 = load i32, ptr %expon, align 4
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else7
  %9 = load double, ptr %fMant, align 8
  %10 = load i32, ptr %expon, align 4
  %call10 = call double @ldexp(double noundef %9, i32 noundef %10) #4
  store double %call10, ptr %fMant, align 8
  store i32 0, ptr %expon, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else7
  %11 = load i32, ptr %sign, align 4
  %12 = load i32, ptr %expon, align 4
  %or12 = or i32 %12, %11
  store i32 %or12, ptr %expon, align 4
  %13 = load double, ptr %fMant, align 8
  %call13 = call double @ldexp(double noundef %13, i32 noundef 32) #4
  store double %call13, ptr %fMant, align 8
  %14 = load double, ptr %fMant, align 8
  %15 = call double @llvm.floor.f64(double %14)
  store double %15, ptr %fsMant, align 8
  %16 = load double, ptr %fsMant, align 8
  %sub = fsub double %16, 0x41E0000000000000
  %conv = fptosi double %sub to i64
  %add14 = add nsw i64 %conv, 2147483647
  %add15 = add nsw i64 %add14, 1
  store i64 %add15, ptr %hiMant, align 8
  %17 = load double, ptr %fMant, align 8
  %18 = load double, ptr %fsMant, align 8
  %sub16 = fsub double %17, %18
  %call17 = call double @ldexp(double noundef %sub16, i32 noundef 32) #4
  store double %call17, ptr %fMant, align 8
  %19 = load double, ptr %fMant, align 8
  %20 = call double @llvm.floor.f64(double %19)
  store double %20, ptr %fsMant, align 8
  %21 = load double, ptr %fsMant, align 8
  %sub18 = fsub double %21, 0x41E0000000000000
  %conv19 = fptosi double %sub18 to i64
  %add20 = add nsw i64 %conv19, 2147483647
  %add21 = add nsw i64 %add20, 1
  store i64 %add21, ptr %loMant, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end11, %if.then6
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then2
  %22 = load i32, ptr %expon, align 4
  %shr = ashr i32 %22, 8
  %conv24 = trunc i32 %shr to i8
  %23 = load ptr, ptr %bytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 0
  store i8 %conv24, ptr %arrayidx, align 1
  %24 = load i32, ptr %expon, align 4
  %conv25 = trunc i32 %24 to i8
  %25 = load ptr, ptr %bytes.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %conv25, ptr %arrayidx26, align 1
  %26 = load i64, ptr %hiMant, align 8
  %shr27 = lshr i64 %26, 24
  %conv28 = trunc i64 %shr27 to i8
  %27 = load ptr, ptr %bytes.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %conv28, ptr %arrayidx29, align 1
  %28 = load i64, ptr %hiMant, align 8
  %shr30 = lshr i64 %28, 16
  %conv31 = trunc i64 %shr30 to i8
  %29 = load ptr, ptr %bytes.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %conv31, ptr %arrayidx32, align 1
  %30 = load i64, ptr %hiMant, align 8
  %shr33 = lshr i64 %30, 8
  %conv34 = trunc i64 %shr33 to i8
  %31 = load ptr, ptr %bytes.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %31, i64 4
  store i8 %conv34, ptr %arrayidx35, align 1
  %32 = load i64, ptr %hiMant, align 8
  %conv36 = trunc i64 %32 to i8
  %33 = load ptr, ptr %bytes.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %33, i64 5
  store i8 %conv36, ptr %arrayidx37, align 1
  %34 = load i64, ptr %loMant, align 8
  %shr38 = lshr i64 %34, 24
  %conv39 = trunc i64 %shr38 to i8
  %35 = load ptr, ptr %bytes.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 6
  store i8 %conv39, ptr %arrayidx40, align 1
  %36 = load i64, ptr %loMant, align 8
  %shr41 = lshr i64 %36, 16
  %conv42 = trunc i64 %shr41 to i8
  %37 = load ptr, ptr %bytes.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %37, i64 7
  store i8 %conv42, ptr %arrayidx43, align 1
  %38 = load i64, ptr %loMant, align 8
  %shr44 = lshr i64 %38, 8
  %conv45 = trunc i64 %shr44 to i8
  %39 = load ptr, ptr %bytes.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %39, i64 8
  store i8 %conv45, ptr %arrayidx46, align 1
  %40 = load i64, ptr %loMant, align 8
  %conv47 = trunc i64 %40 to i8
  %41 = load ptr, ptr %bytes.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %41, i64 9
  store i8 %conv47, ptr %arrayidx48, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
