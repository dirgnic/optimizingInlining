; ModuleID = './out/rewritten_ir/student_decision_tree/source_snapshot_public_repos_cJSON_tests_unity_src_unity.prepared.ll'
source_filename = "./source_snapshot/public_repos/cJSON/tests/unity/src/unity.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.UNITY_STORAGE_T = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, [48 x i32] }
%union.anon = type { i64 }

@UnityStrErrFloat = constant [30 x i8] c"Unity Floating Point Disabled\00", align 1
@UnityStrErrDouble = constant [32 x i8] c"Unity Double Precision Disabled\00", align 1
@UnityStrErr64 = constant [30 x i8] c"Unity 64-bit Support Disabled\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@Unity = global %struct.UNITY_STORAGE_T zeroinitializer, align 8
@UnityStrPass = internal constant [5 x i8] c"PASS\00", align 1
@UnityStrExpected = internal constant [11 x i8] c" Expected \00", align 1
@UnityStrWas = internal constant [6 x i8] c" Was \00", align 1
@UnityStrGt = internal constant [21 x i8] c" to be greater than \00", align 1
@UnityStrLt = internal constant [18 x i8] c" to be less than \00", align 1
@UnityStrOrEqual = internal constant [13 x i8] c"or equal to \00", align 1
@UnityStrPointless = internal constant [55 x i8] c" You Asked Me To Compare Nothing, Which Was Pointless.\00", align 1
@UnityStrElement = internal constant [10 x i8] c" Element \00", align 1
@UnityStrInf = internal constant [9 x i8] c"Infinity\00", align 1
@UnityStrNegInf = internal constant [18 x i8] c"Negative Infinity\00", align 1
@UnityStrNaN = internal constant [4 x i8] c"NaN\00", align 1
@UnityStrDet = internal constant [12 x i8] c"Determinate\00", align 1
@__const.UnityAssertFloatSpecial.trait_names = private unnamed_addr constant [4 x ptr] [ptr @UnityStrInf, ptr @UnityStrNegInf, ptr @UnityStrNaN, ptr @UnityStrDet], align 8
@UnityStrInvalidFloatTrait = internal constant [20 x i8] c"Invalid Float Trait\00", align 1
@UnityStrNot = internal constant [5 x i8] c"Not \00", align 1
@__const.UnityAssertDoubleSpecial.trait_names = private unnamed_addr constant [4 x ptr] [ptr @UnityStrInf, ptr @UnityStrNegInf, ptr @UnityStrNaN, ptr @UnityStrDet], align 8
@UnityStrDelta = internal constant [26 x i8] c" Values Not Within Delta \00", align 1
@UnityStrMemory = internal constant [18 x i8] c" Memory Mismatch.\00", align 1
@UnityStrByte = internal constant [7 x i8] c" Byte \00", align 1
@UnityQuickCompare = internal global %union.anon zeroinitializer, align 8
@UnityStrFail = internal constant [5 x i8] c"FAIL\00", align 1
@UnityStrDetail1Name = internal constant [10 x i8] c"Function \00", align 1
@UnityStrDetail2Name = internal constant [11 x i8] c" Argument \00", align 1
@UnityStrSpacer = internal constant [3 x i8] c". \00", align 1
@UnityStrIgnore = internal constant [7 x i8] c"IGNORE\00", align 1
@UnityStrBreaker = internal constant [24 x i8] c"-----------------------\00", align 1
@UnityStrResultsTests = internal constant [8 x i8] c" Tests \00", align 1
@UnityStrResultsFailures = internal constant [11 x i8] c" Failures \00", align 1
@UnityStrResultsIgnored = internal constant [10 x i8] c" Ignored \00", align 1
@UnityStrOk = internal constant [3 x i8] c"OK\00", align 1
@UnityStrNullPointerForExpected = internal constant [29 x i8] c" Expected pointer to be NULL\00", align 1
@UnityStrNullPointerForActual = internal constant [25 x i8] c" Actual pointer was NULL\00", align 1
@UnityStrNull = internal constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nounwind ssp uwtable
define weak void @setUp() #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define weak void @tearDown() #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define weak void @suiteSetUp() #0 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define weak i32 @suiteTearDown(i32 noundef %num_failures) #0 {
entry:
  ret i32 %num_failures
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrint(ptr noundef %string) #0 {
entry:
  %pch = alloca ptr, align 8
  store ptr %string, ptr %pch, align 8
  %cmp.not = icmp eq ptr %string, null
  br i1 %cmp.not, label %if.end27, label %while.cond

while.cond:                                       ; preds = %entry, %if.end26
  %0 = load ptr, ptr %pch, align 8
  %1 = load i8, ptr %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end27, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pch, align 8
  %3 = load i8, ptr %2, align 1
  %cmp1.not = icmp eq i8 %3, 127
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %4 = load ptr, ptr %pch, align 8
  %5 = load i8, ptr %4, align 1
  %cmp4 = icmp sgt i8 %5, 31
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pch, align 8
  %7 = load i8, ptr %6, align 1
  %conv7 = sext i8 %7 to i32
  %call = call i32 @putchar(i32 noundef %conv7) #7
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %while.body
  %8 = load ptr, ptr %pch, align 8
  %9 = load i8, ptr %8, align 1
  %cmp9 = icmp eq i8 %9, 13
  br i1 %cmp9, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @putchar(i32 noundef 92) #7
  %call13 = call i32 @putchar(i32 noundef 114) #7
  br label %if.end26

if.else14:                                        ; preds = %if.else
  %10 = load ptr, ptr %pch, align 8
  %11 = load i8, ptr %10, align 1
  %cmp16 = icmp eq i8 %11, 10
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else14
  %call19 = call i32 @putchar(i32 noundef 92) #7
  %call20 = call i32 @putchar(i32 noundef 110) #7
  br label %if.end26

if.else21:                                        ; preds = %if.else14
  %call22 = call i32 @putchar(i32 noundef 92) #7
  %call23 = call i32 @putchar(i32 noundef 120) #7
  %12 = load ptr, ptr %pch, align 8
  %13 = load i8, ptr %12, align 1
  %conv24 = sext i8 %13 to i64
  call void @UnityPrintNumberHex(i64 noundef %conv24, i8 noundef signext 2)
  br label %if.end26

if.end26:                                         ; preds = %if.then11, %if.else21, %if.then18, %if.then6
  %14 = load ptr, ptr %pch, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %pch, align 8
  br label %while.cond, !llvm.loop !6

if.end27:                                         ; preds = %while.cond, %entry
  ret void
}

declare i32 @putchar(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumberHex(i64 noundef %number, i8 noundef signext %nibbles_to_print) #0 {
entry:
  %number.addr = alloca i64, align 8
  %nibble = alloca i32, align 4
  %nibbles = alloca i8, align 1
  store i64 %number, ptr %number.addr, align 8
  %conv = sext i8 %nibbles_to_print to i64
  %conv1 = and i64 %conv, 4294967295
  %cmp = icmp ugt i64 %conv1, 16
  %spec.select = select i1 %cmp, i8 16, i8 %nibbles_to_print
  store i8 %spec.select, ptr %nibbles, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %0 = load i8, ptr %nibbles, align 1
  %cmp4 = icmp sgt i8 %0, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8, ptr %nibbles, align 1
  %dec = add i8 %1, -1
  store i8 %dec, ptr %nibbles, align 1
  %2 = load i64, ptr %number.addr, align 8
  %conv6 = sext i8 %dec to i64
  %mul = shl nsw i64 %conv6, 2
  %sh_prom = and i64 %mul, 4294967292
  %shr = lshr i64 %2, %sh_prom
  %conv7 = trunc i64 %shr to i32
  %and = and i32 %conv7, 15
  store i32 %and, ptr %nibble, align 4
  %cmp8 = icmp ult i32 %and, 10
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %3 = load i32, ptr %nibble, align 4
  %conv11 = shl i32 %3, 24
  %sext1 = add i32 %conv11, 805306368
  %conv12 = ashr exact i32 %sext1, 24
  %call = call i32 @putchar(i32 noundef %conv12) #7
  br label %if.end17

if.else:                                          ; preds = %while.body
  %4 = load i32, ptr %nibble, align 4
  %conv14 = shl i32 %4, 24
  %sext = add i32 %conv14, 922746880
  %conv15 = ashr exact i32 %sext, 24
  %call16 = call i32 @putchar(i32 noundef %conv15) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintLen(ptr noundef %string, i32 noundef %length) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %pch = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store ptr %string, ptr %pch, align 8
  %cmp.not = icmp eq ptr %string, null
  br i1 %cmp.not, label %if.end31, label %while.cond

while.cond:                                       ; preds = %entry, %if.end30
  %0 = load ptr, ptr %pch, align 8
  %1 = load i8, ptr %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end31, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %pch, align 8
  %3 = load ptr, ptr %string.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv1 = trunc i64 %sub.ptr.sub to i32
  %4 = load i32, ptr %length.addr, align 4
  %cmp2 = icmp ugt i32 %4, %conv1
  br i1 %cmp2, label %while.body, label %if.end31

while.body:                                       ; preds = %land.rhs
  %5 = load ptr, ptr %pch, align 8
  %6 = load i8, ptr %5, align 1
  %cmp5.not = icmp eq i8 %6, 127
  br i1 %cmp5.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %7 = load ptr, ptr %pch, align 8
  %8 = load i8, ptr %7, align 1
  %cmp8 = icmp sgt i8 %8, 31
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %9 = load ptr, ptr %pch, align 8
  %10 = load i8, ptr %9, align 1
  %conv11 = sext i8 %10 to i32
  %call = call i32 @putchar(i32 noundef %conv11) #7
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %while.body
  %11 = load ptr, ptr %pch, align 8
  %12 = load i8, ptr %11, align 1
  %cmp13 = icmp eq i8 %12, 13
  br i1 %cmp13, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else
  %call16 = call i32 @putchar(i32 noundef 92) #7
  %call17 = call i32 @putchar(i32 noundef 114) #7
  br label %if.end30

if.else18:                                        ; preds = %if.else
  %13 = load ptr, ptr %pch, align 8
  %14 = load i8, ptr %13, align 1
  %cmp20 = icmp eq i8 %14, 10
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else18
  %call23 = call i32 @putchar(i32 noundef 92) #7
  %call24 = call i32 @putchar(i32 noundef 110) #7
  br label %if.end30

if.else25:                                        ; preds = %if.else18
  %call26 = call i32 @putchar(i32 noundef 92) #7
  %call27 = call i32 @putchar(i32 noundef 120) #7
  %15 = load ptr, ptr %pch, align 8
  %16 = load i8, ptr %15, align 1
  %conv28 = sext i8 %16 to i64
  call void @UnityPrintNumberHex(i64 noundef %conv28, i8 noundef signext 2)
  br label %if.end30

if.end30:                                         ; preds = %if.then15, %if.else25, %if.then22, %if.then10
  %17 = load ptr, ptr %pch, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %pch, align 8
  br label %while.cond, !llvm.loop !9

if.end31:                                         ; preds = %land.rhs, %while.cond, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumberByStyle(i64 noundef %number, i32 noundef %style) #0 {
entry:
  %number.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  store i64 %number, ptr %number.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  %and = and i32 %style, 16
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %number.addr, align 8
  call void @UnityPrintNumber(i64 noundef %0)
  br label %if.end7

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %style.addr, align 4
  %and1 = and i32 %1, 32
  %cmp2.not = icmp eq i32 %and1, 0
  br i1 %cmp2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  %2 = load i64, ptr %number.addr, align 8
  call void @UnityPrintNumberUnsigned(i64 noundef %2)
  br label %if.end7

if.else4:                                         ; preds = %if.else
  %call = call i32 @putchar(i32 noundef 48) #7
  %call5 = call i32 @putchar(i32 noundef 120) #7
  %3 = load i64, ptr %number.addr, align 8
  %4 = load i32, ptr %style.addr, align 4
  %.tr = trunc i32 %4 to i8
  %5 = shl i8 %.tr, 1
  %conv = and i8 %5, 30
  call void @UnityPrintNumberHex(i64 noundef %3, i8 noundef signext %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else4, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumber(i64 noundef %number_to_print) #0 {
entry:
  %number_to_print.addr = alloca i64, align 8
  %number = alloca i64, align 8
  store i64 %number_to_print, ptr %number_to_print.addr, align 8
  store i64 %number_to_print, ptr %number, align 8
  %cmp = icmp slt i64 %number_to_print, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 45) #7
  %0 = load i64, ptr %number_to_print.addr, align 8
  %sub = sub nsw i64 0, %0
  store i64 %sub, ptr %number, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %number, align 8
  call void @UnityPrintNumberUnsigned(i64 noundef %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumberUnsigned(i64 noundef %number) #0 {
entry:
  %number.addr = alloca i64, align 8
  %divisor = alloca i64, align 8
  store i64 %number, ptr %number.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi i64 [ 1, %entry ], [ %mul, %while.body ]
  store i64 %storemerge, ptr %divisor, align 8
  %0 = load i64, ptr %number.addr, align 8
  %div = udiv i64 %0, %storemerge
  %cmp = icmp ugt i64 %div, 9
  br i1 %cmp, label %while.body, label %do.body

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %divisor, align 8
  %mul = mul i64 %1, 10
  br label %while.cond, !llvm.loop !10

do.body:                                          ; preds = %while.cond, %do.body
  %2 = load i64, ptr %number.addr, align 8
  %3 = load i64, ptr %divisor, align 8
  %div1 = udiv i64 %2, %3
  %rem = urem i64 %div1, 10
  %4 = trunc i64 %rem to i32
  %conv = or i32 %4, 48
  %call = call i32 @putchar(i32 noundef %conv) #7
  %div3 = udiv i64 %3, 10
  store i64 %div3, ptr %divisor, align 8
  %5 = load i64, ptr %divisor, align 8
  %cmp4.not = icmp eq i64 %5, 0
  br i1 %cmp4.not, label %do.end, label %do.body, !llvm.loop !11

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintMask(i64 noundef %mask, i64 noundef %number) #0 {
entry:
  %mask.addr = alloca i64, align 8
  %number.addr = alloca i64, align 8
  %current_bit = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %mask, ptr %mask.addr, align 8
  store i64 %number, ptr %number.addr, align 8
  store i64 2147483648, ptr %current_bit, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end7, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end7 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i64, ptr %current_bit, align 8
  %1 = load i64, ptr %mask.addr, align 8
  %and = and i64 %0, %1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load i64, ptr %current_bit, align 8
  %3 = load i64, ptr %number.addr, align 8
  %and1 = and i64 %2, %3
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call = call i32 @putchar(i32 noundef 49) #7
  br label %if.end7

if.else:                                          ; preds = %if.then
  %call4 = call i32 @putchar(i32 noundef 48) #7
  br label %if.end7

if.else5:                                         ; preds = %for.body
  %call6 = call i32 @putchar(i32 noundef 88) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else, %if.else5
  %4 = load i64, ptr %current_bit, align 8
  %shr = lshr i64 %4, 1
  store i64 %shr, ptr %current_bit, align 8
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintFloat(double noundef %input_number) #0 {
entry:
  %number = alloca double, align 8
  %exponent = alloca i32, align 4
  %decimals = alloca i32, align 4
  %digits = alloca i32, align 4
  %n = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  store double %input_number, ptr %number, align 8
  %cmp = fcmp olt double %input_number, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load double, ptr %number, align 8
  %cmp1 = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = load double, ptr %number, align 8
  %div = fdiv double 1.000000e+00, %1
  %cmp2 = fcmp olt double %div, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 @putchar(i32 noundef 45) #7
  %2 = load double, ptr %number, align 8
  %fneg = fneg double %2
  store double %fneg, ptr %number, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %3 = load double, ptr %number, align 8
  %cmp3 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %cond.true6

if.then4:                                         ; preds = %if.end
  call void @UnityPrint(ptr noundef nonnull @.str)
  br label %if.end143

cond.true6:                                       ; preds = %if.end
  %4 = load double, ptr %number, align 8
  %cmp.i145 = fcmp uno double %4, 0.000000e+00
  br i1 %cmp.i145, label %if.then12, label %cond.true19

if.then12:                                        ; preds = %cond.true6
  call void @UnityPrint(ptr noundef nonnull @.str.1)
  br label %if.end143

cond.true19:                                      ; preds = %cond.true6
  %5 = load double, ptr %number, align 8
  %6 = call double @llvm.fabs.f64(double %5)
  %cmp.i154 = fcmp oeq double %6, 0x7FF0000000000000
  br i1 %cmp.i154, label %if.then25, label %while.cond

if.then25:                                        ; preds = %cond.true19
  call void @UnityPrint(ptr noundef nonnull @.str.2)
  br label %if.end143

while.cond:                                       ; preds = %cond.true19, %while.body
  %storemerge = phi i32 [ %sub, %while.body ], [ 0, %cond.true19 ]
  store i32 %storemerge, ptr %exponent, align 4
  %7 = load double, ptr %number, align 8
  %cmp27 = fcmp olt double %7, 0x3FB99999A0000000
  br i1 %cmp27, label %while.body, label %while.cond29

while.body:                                       ; preds = %while.cond
  %8 = load double, ptr %number, align 8
  %mul = fmul double %8, 1.000000e+06
  store double %mul, ptr %number, align 8
  %9 = load i32, ptr %exponent, align 4
  %sub = add nsw i32 %9, -6
  br label %while.cond, !llvm.loop !13

while.cond29:                                     ; preds = %while.cond, %while.body32
  %10 = load double, ptr %number, align 8
  %cmp30 = fcmp olt double %10, 1.000000e+05
  br i1 %cmp30, label %while.body32, label %while.cond35

while.body32:                                     ; preds = %while.cond29
  %11 = load double, ptr %number, align 8
  %mul33 = fmul double %11, 1.000000e+01
  store double %mul33, ptr %number, align 8
  %12 = load i32, ptr %exponent, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %exponent, align 4
  br label %while.cond29, !llvm.loop !14

while.cond35:                                     ; preds = %while.cond29, %while.body38
  %13 = load double, ptr %number, align 8
  %cmp36 = fcmp ogt double %13, 0x426D1A94A0000000
  br i1 %cmp36, label %while.body38, label %while.cond41

while.body38:                                     ; preds = %while.cond35
  %14 = load double, ptr %number, align 8
  %div39 = fdiv double %14, 1.000000e+06
  store double %div39, ptr %number, align 8
  %15 = load i32, ptr %exponent, align 4
  %add = add nsw i32 %15, 6
  store i32 %add, ptr %exponent, align 4
  br label %while.cond35, !llvm.loop !15

while.cond41:                                     ; preds = %while.cond35, %while.body44
  %16 = load double, ptr %number, align 8
  %cmp42 = fcmp ogt double %16, 1.000000e+06
  br i1 %cmp42, label %while.body44, label %while.end46

while.body44:                                     ; preds = %while.cond41
  %17 = load double, ptr %number, align 8
  %div45 = fdiv double %17, 1.000000e+01
  store double %div45, ptr %number, align 8
  %18 = load i32, ptr %exponent, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %exponent, align 4
  br label %while.cond41, !llvm.loop !16

while.end46:                                      ; preds = %while.cond41
  %19 = load double, ptr %number, align 8
  %add47 = fadd double %19, %19
  %conv48 = fptosi double %add47 to i32
  %add49 = add nsw i32 %conv48, 1
  %div50 = sdiv i32 %add49, 2
  store i32 %div50, ptr %n, align 4
  %cmp51 = icmp sgt i32 %conv48, 1999998
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %while.end46
  store i32 100000, ptr %n, align 4
  %20 = load i32, ptr %exponent, align 4
  %inc54 = add nsw i32 %20, 1
  store i32 %inc54, ptr %exponent, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %while.end46
  %21 = load i32, ptr %exponent, align 4
  %cmp56 = icmp slt i32 %21, 1
  %22 = load i32, ptr %exponent, align 4
  %cmp59 = icmp sgt i32 %22, -10
  %or.cond = select i1 %cmp56, i1 %cmp59, i1 false
  %23 = load i32, ptr %exponent, align 4
  %sub62 = sub nsw i32 0, %23
  %cond = select i1 %or.cond, i32 %sub62, i32 5
  store i32 %cond, ptr %decimals, align 4
  %24 = load i32, ptr %exponent, align 4
  %add64 = add nsw i32 %24, %cond
  store i32 %add64, ptr %exponent, align 4
  br label %while.cond65

while.cond65:                                     ; preds = %while.body70, %if.end55
  %25 = load i32, ptr %decimals, align 4
  %cmp66 = icmp sgt i32 %25, 0
  br i1 %cmp66, label %land.rhs, label %while.end73

land.rhs:                                         ; preds = %while.cond65
  %26 = load i32, ptr %n, align 4
  %rem = srem i32 %26, 10
  %cmp68 = icmp eq i32 %rem, 0
  br i1 %cmp68, label %while.body70, label %while.end73

while.body70:                                     ; preds = %land.rhs
  %27 = load i32, ptr %n, align 4
  %div71 = sdiv i32 %27, 10
  store i32 %div71, ptr %n, align 4
  %28 = load i32, ptr %decimals, align 4
  %dec72 = add nsw i32 %28, -1
  store i32 %dec72, ptr %decimals, align 4
  br label %while.cond65, !llvm.loop !17

while.end73:                                      ; preds = %while.cond65, %land.rhs
  store i32 0, ptr %digits, align 4
  br label %while.cond74

while.cond74:                                     ; preds = %while.body80, %while.end73
  %29 = load i32, ptr %n, align 4
  %cmp75.not = icmp eq i32 %29, 0
  %30 = load i32, ptr %digits, align 4
  %31 = load i32, ptr %decimals, align 4
  %cmp78 = icmp sle i32 %30, %31
  %32 = select i1 %cmp75.not, i1 %cmp78, i1 true
  br i1 %32, label %while.body80, label %while.cond87

while.body80:                                     ; preds = %while.cond74
  %33 = load i32, ptr %n, align 4
  %rem81 = srem i32 %33, 10
  %34 = trunc i32 %rem81 to i8
  %conv83 = add i8 %34, 48
  %35 = load i32, ptr %digits, align 4
  %inc84 = add nsw i32 %35, 1
  store i32 %inc84, ptr %digits, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv83, ptr %arrayidx, align 1
  %36 = load i32, ptr %n, align 4
  %div85 = sdiv i32 %36, 10
  store i32 %div85, ptr %n, align 4
  br label %while.cond74, !llvm.loop !18

while.cond87:                                     ; preds = %while.cond74, %if.end95
  %37 = load i32, ptr %digits, align 4
  %cmp88 = icmp sgt i32 %37, 0
  br i1 %cmp88, label %while.body90, label %while.end101

while.body90:                                     ; preds = %while.cond87
  %38 = load i32, ptr %digits, align 4
  %39 = load i32, ptr %decimals, align 4
  %cmp91 = icmp eq i32 %38, %39
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %while.body90
  %call94 = call i32 @putchar(i32 noundef 46) #7
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %while.body90
  %40 = load i32, ptr %digits, align 4
  %dec96 = add nsw i32 %40, -1
  store i32 %dec96, ptr %digits, align 4
  %idxprom97 = sext i32 %dec96 to i64
  %arrayidx98 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom97
  %41 = load i8, ptr %arrayidx98, align 1
  %conv99 = sext i8 %41 to i32
  %call100 = call i32 @putchar(i32 noundef %conv99) #7
  br label %while.cond87, !llvm.loop !19

while.end101:                                     ; preds = %while.cond87
  %42 = load i32, ptr %exponent, align 4
  %cmp102.not = icmp eq i32 %42, 0
  br i1 %cmp102.not, label %if.end143, label %if.then104

if.then104:                                       ; preds = %while.end101
  %call105 = call i32 @putchar(i32 noundef 101) #7
  %43 = load i32, ptr %exponent, align 4
  %cmp106 = icmp slt i32 %43, 0
  br i1 %cmp106, label %if.then108, label %if.else111

if.then108:                                       ; preds = %if.then104
  %call109 = call i32 @putchar(i32 noundef 45) #7
  %44 = load i32, ptr %exponent, align 4
  %sub110 = sub nsw i32 0, %44
  store i32 %sub110, ptr %exponent, align 4
  br label %if.end113

if.else111:                                       ; preds = %if.then104
  %call112 = call i32 @putchar(i32 noundef 43) #7
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then108
  store i32 0, ptr %digits, align 4
  br label %while.cond114

while.cond114:                                    ; preds = %while.body121, %if.end113
  %45 = load i32, ptr %exponent, align 4
  %cmp115.not = icmp eq i32 %45, 0
  %46 = load i32, ptr %digits, align 4
  %cmp118 = icmp slt i32 %46, 2
  %47 = select i1 %cmp115.not, i1 %cmp118, i1 true
  br i1 %47, label %while.body121, label %while.cond130

while.body121:                                    ; preds = %while.cond114
  %48 = load i32, ptr %exponent, align 4
  %rem122 = srem i32 %48, 10
  %49 = trunc i32 %rem122 to i8
  %conv124 = add i8 %49, 48
  %50 = load i32, ptr %digits, align 4
  %inc125 = add nsw i32 %50, 1
  store i32 %inc125, ptr %digits, align 4
  %idxprom126 = sext i32 %50 to i64
  %arrayidx127 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom126
  store i8 %conv124, ptr %arrayidx127, align 1
  %51 = load i32, ptr %exponent, align 4
  %div128 = sdiv i32 %51, 10
  store i32 %div128, ptr %exponent, align 4
  br label %while.cond114, !llvm.loop !20

while.cond130:                                    ; preds = %while.cond114, %while.body133
  %52 = load i32, ptr %digits, align 4
  %cmp131 = icmp sgt i32 %52, 0
  br i1 %cmp131, label %while.body133, label %if.end143

while.body133:                                    ; preds = %while.cond130
  %53 = load i32, ptr %digits, align 4
  %dec134 = add nsw i32 %53, -1
  store i32 %dec134, ptr %digits, align 4
  %idxprom135 = sext i32 %dec134 to i64
  %arrayidx136 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom135
  %54 = load i8, ptr %arrayidx136, align 1
  %conv137 = sext i8 %54 to i32
  %call138 = call i32 @putchar(i32 noundef %conv137) #7
  br label %while.cond130, !llvm.loop !21

if.end143:                                        ; preds = %if.then12, %while.end101, %while.cond130, %if.then25, %if.then4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityConcludeTest() #0 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 7), align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 7), align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr @Unity, align 8
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 4), align 8
  call void @UnityTestResultsBegin(ptr noundef %3, i64 noundef %4)
  call void @UnityPrint(ptr noundef nonnull @UnityStrPass)
  br label %if.end5

if.else3:                                         ; preds = %if.else
  %5 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 6), align 8
  %inc4 = add i64 %5, 1
  store i64 %inc4, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 6), align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.else3, %if.then
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %call = call i32 @putchar(i32 noundef 10) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityTestResultsBegin(ptr noundef %file, i64 noundef %line) #0 {
entry:
  call void @UnityPrint(ptr noundef %file)
  %call = call i32 @putchar(i32 noundef 58) #7
  call void @UnityPrintNumber(i64 noundef %line)
  %call1 = call i32 @putchar(i32 noundef 58) #7
  %0 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 1), align 8
  call void @UnityPrint(ptr noundef %0)
  %call2 = call i32 @putchar(i32 noundef 58) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertBits(i64 noundef %mask, i64 noundef %expected, i64 noundef %actual, ptr noundef %msg, i64 noundef %lineNumber) #0 {
entry:
  %mask.addr = alloca i64, align 8
  %expected.addr = alloca i64, align 8
  %actual.addr = alloca i64, align 8
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  store i64 %expected, ptr %expected.addr, align 8
  store i64 %actual, ptr %actual.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end4

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %mask.addr, align 8
  %3 = load i64, ptr %expected.addr, align 8
  %4 = load i64, ptr %actual.addr, align 8
  %5 = xor i64 %3, %4
  %6 = and i64 %5, %2
  %cmp.not = icmp eq i64 %6, 0
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %7 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %7)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %8 = load i64, ptr %mask.addr, align 8
  %9 = load i64, ptr %expected.addr, align 8
  call void @UnityPrintMask(i64 noundef %8, i64 noundef %9)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %10 = load i64, ptr %actual.addr, align 8
  call void @UnityPrintMask(i64 noundef %8, i64 noundef %10)
  %11 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %11)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end4:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityTestResultsFailBegin(i64 noundef %line) #0 {
entry:
  %0 = load ptr, ptr @Unity, align 8
  call void @UnityTestResultsBegin(ptr noundef %0, i64 noundef %line)
  call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %call = call i32 @putchar(i32 noundef 58) #7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityAddMsgIfSpecified(ptr noundef %msg) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  %0 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 2), align 8
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @UnityPrint(ptr noundef nonnull @UnityStrDetail1Name)
  %1 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 2), align 8
  call void @UnityPrint(ptr noundef %1)
  %2 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 3), align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @UnityPrint(ptr noundef nonnull @UnityStrDetail2Name)
  %3 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 3), align 8
  call void @UnityPrint(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %4 = load ptr, ptr %msg.addr, align 8
  call void @UnityPrint(ptr noundef %4)
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry
  ret void
}

; Function Attrs: noreturn
declare void @longjmp(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualNumber(i64 noundef %expected, i64 noundef %actual, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %expected.addr = alloca i64, align 8
  %actual.addr = alloca i64, align 8
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  store i64 %expected, ptr %expected.addr, align 8
  store i64 %actual, ptr %actual.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %expected.addr, align 8
  %3 = load i64, ptr %actual.addr, align 8
  %cmp.not = icmp eq i64 %2, %3
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %4)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %5 = load i64, ptr %expected.addr, align 8
  %6 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %5, i32 noundef %6)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %7 = load i64, ptr %actual.addr, align 8
  call void @UnityPrintNumberByStyle(i64 noundef %7, i32 noundef %6)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end3:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertGreaterOrLessOrEqualNumber(i64 noundef %threshold, i64 noundef %actual, i32 noundef %compare, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %threshold.addr = alloca i64, align 8
  %actual.addr = alloca i64, align 8
  %compare.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  %failed = alloca i32, align 4
  store i64 %threshold, ptr %threshold.addr, align 8
  store i64 %actual, ptr %actual.addr, align 8
  store i32 %compare, ptr %compare.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  store i32 0, ptr %failed, align 4
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end50

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %threshold.addr, align 8
  %3 = load i64, ptr %actual.addr, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %compare.addr, align 4
  %and = and i32 %4, 1
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end50

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i64, ptr %threshold.addr, align 8
  %6 = load i64, ptr %actual.addr, align 8
  %cmp5 = icmp eq i64 %5, %6
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 1, ptr %failed, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %7 = load i32, ptr %style.addr, align 4
  %and8 = and i32 %7, 16
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %8 = load i64, ptr %actual.addr, align 8
  %9 = load i64, ptr %threshold.addr, align 8
  %cmp11 = icmp sgt i64 %8, %9
  br i1 %cmp11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.then10
  %10 = load i32, ptr %compare.addr, align 4
  %and13 = and i32 %10, 4
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  store i32 1, ptr %failed, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12, %if.then10
  %11 = load i64, ptr %actual.addr, align 8
  %12 = load i64, ptr %threshold.addr, align 8
  %cmp17 = icmp slt i64 %11, %12
  br i1 %cmp17, label %land.lhs.true18, label %if.end35

land.lhs.true18:                                  ; preds = %if.end16
  %13 = load i32, ptr %compare.addr, align 4
  %and19 = and i32 %13, 2
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end35, label %if.then21

if.then21:                                        ; preds = %land.lhs.true18
  store i32 1, ptr %failed, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end7
  %14 = load i64, ptr %actual.addr, align 8
  %15 = load i64, ptr %threshold.addr, align 8
  %cmp23 = icmp ugt i64 %14, %15
  br i1 %cmp23, label %land.lhs.true24, label %if.end28

land.lhs.true24:                                  ; preds = %if.else
  %16 = load i32, ptr %compare.addr, align 4
  %and25 = and i32 %16, 4
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %land.lhs.true24
  store i32 1, ptr %failed, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true24, %if.else
  %17 = load i64, ptr %actual.addr, align 8
  %18 = load i64, ptr %threshold.addr, align 8
  %cmp29 = icmp ult i64 %17, %18
  br i1 %cmp29, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %if.end28
  %19 = load i32, ptr %compare.addr, align 4
  %and31 = and i32 %19, 2
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %land.lhs.true30
  store i32 1, ptr %failed, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %land.lhs.true30, %if.then33, %if.end16, %land.lhs.true18, %if.then21
  %20 = load i32, ptr %failed, align 4
  %tobool36.not = icmp eq i32 %20, 0
  br i1 %tobool36.not, label %if.end50, label %if.then37

if.then37:                                        ; preds = %if.end35
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %22 = load i64, ptr %actual.addr, align 8
  %23 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %22, i32 noundef %23)
  %24 = load i32, ptr %compare.addr, align 4
  %and38 = and i32 %24, 2
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @UnityPrint(ptr noundef nonnull @UnityStrGt)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then37
  %25 = load i32, ptr %compare.addr, align 4
  %and42 = and i32 %25, 4
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @UnityPrint(ptr noundef nonnull @UnityStrLt)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %26 = load i32, ptr %compare.addr, align 4
  %and46 = and i32 %26, 1
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @UnityPrint(ptr noundef nonnull @UnityStrOrEqual)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %27 = load i64, ptr %threshold.addr, align 8
  %28 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %29)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end50:                                         ; preds = %land.lhs.true, %entry, %if.end35
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualIntArray(ptr noundef %expected, ptr noundef %actual, i32 noundef %num_elements, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style, i32 noundef %flags) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %num_elements.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %elements = alloca i32, align 4
  %length = alloca i32, align 4
  %expect_val = alloca i64, align 8
  %actual_val = alloca i64, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %num_elements, ptr %num_elements.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %num_elements, ptr %elements, align 4
  %and = and i32 %style, 15
  store i32 %and, ptr %length, align 4
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %while.end

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %num_elements.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %3)
  call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  %4 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %expected.addr, align 8
  %6 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %5, %6
  br i1 %cmp4, label %while.end, label %if.end6

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load ptr, ptr %actual.addr, align 8
  %9 = load i64, ptr %lineNumber.addr, align 8
  %10 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %while.cond, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

while.cond:                                       ; preds = %if.end6, %if.end37
  %11 = load i32, ptr %elements, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %elements, align 4
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %12 = load i32, ptr %length, align 4
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 8, label %sw.bb15
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load ptr, ptr %expected.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv = sext i8 %14 to i64
  store i64 %conv, ptr %expect_val, align 8
  %15 = load ptr, ptr %actual.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv11 = sext i8 %16 to i64
  store i64 %conv11, ptr %actual_val, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %17 = load ptr, ptr %expected.addr, align 8
  %18 = load i16, ptr %17, align 2
  %conv13 = sext i16 %18 to i64
  store i64 %conv13, ptr %expect_val, align 8
  %19 = load ptr, ptr %actual.addr, align 8
  %20 = load i16, ptr %19, align 2
  %conv14 = sext i16 %20 to i64
  store i64 %conv14, ptr %actual_val, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  %21 = load ptr, ptr %expected.addr, align 8
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %expect_val, align 8
  %23 = load ptr, ptr %actual.addr, align 8
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %actual_val, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %25 = load ptr, ptr %expected.addr, align 8
  %26 = load i32, ptr %25, align 4
  %conv16 = sext i32 %26 to i64
  store i64 %conv16, ptr %expect_val, align 8
  %27 = load ptr, ptr %actual.addr, align 8
  %28 = load i32, ptr %27, align 4
  %conv17 = sext i32 %28 to i64
  store i64 %conv17, ptr %actual_val, align 8
  store i32 4, ptr %length, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb
  %29 = load i64, ptr %expect_val, align 8
  %30 = load i64, ptr %actual_val, align 8
  %cmp18.not = icmp eq i64 %29, %30
  br i1 %cmp18.not, label %if.end33, label %if.then20

if.then20:                                        ; preds = %sw.epilog
  %31 = load i32, ptr %style.addr, align 4
  %and21 = and i32 %31, 32
  %tobool22.not = icmp ne i32 %and21, 0
  %32 = load i32, ptr %length, align 4
  %cmp24 = icmp ult i32 %32, 8
  %or.cond1 = select i1 %tobool22.not, i1 %cmp24, i1 false
  br i1 %or.cond1, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then20
  %33 = load i32, ptr %length, align 4
  %mul = shl i32 %33, 3
  %sh_prom = zext i32 %mul to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %34 = load i64, ptr %expect_val, align 8
  %and27 = and i64 %34, %sub
  store i64 %and27, ptr %expect_val, align 8
  %35 = load i64, ptr %actual_val, align 8
  %and28 = and i64 %35, %sub
  store i64 %and28, ptr %actual_val, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then20
  %36 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %36)
  call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %37 = load i32, ptr %num_elements.addr, align 4
  %38 = load i32, ptr %elements, align 4
  %39 = xor i32 %38, -1
  %sub31 = add i32 %37, %39
  %conv32 = zext i32 %sub31 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv32)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %40 = load i64, ptr %expect_val, align 8
  %41 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %40, i32 noundef %41)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %42 = load i64, ptr %actual_val, align 8
  call void @UnityPrintNumberByStyle(i64 noundef %42, i32 noundef %41)
  %43 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %43)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end33:                                         ; preds = %sw.epilog
  %44 = load i32, ptr %flags.addr, align 4
  %cmp34 = icmp eq i32 %44, 1
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  %45 = load i32, ptr %length, align 4
  %46 = load ptr, ptr %expected.addr, align 8
  %idx.ext = zext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, ptr %46, i64 %idx.ext
  store ptr %add.ptr, ptr %expected.addr, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %47 = load i32, ptr %length, align 4
  %48 = load ptr, ptr %actual.addr, align 8
  %idx.ext38 = zext i32 %47 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %48, i64 %idx.ext38
  store ptr %add.ptr39, ptr %actual.addr, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %if.end3, %entry, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @UnityIsOneArrayNull(ptr noundef %expected, ptr noundef %actual, i64 noundef %lineNumber, ptr noundef %msg) #0 {
entry:
  %retval = alloca i32, align 4
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %msg.addr = alloca ptr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  %cmp = icmp eq ptr %expected, %actual
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %expected.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %1 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %1)
  call void @UnityPrint(ptr noundef nonnull @UnityStrNullPointerForExpected)
  %2 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %2)
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %4)
  call void @UnityPrint(ptr noundef nonnull @UnityStrNullPointerForActual)
  %5 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %5)
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualFloatArray(ptr noundef %expected, ptr noundef %actual, i32 noundef %num_elements, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %flags) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %num_elements.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %elements = alloca i32, align 4
  %ptr_expected = alloca ptr, align 8
  %ptr_actual = alloca ptr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %num_elements, ptr %num_elements.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %num_elements, ptr %elements, align 4
  %0 = load ptr, ptr %expected.addr, align 8
  store ptr %0, ptr %ptr_expected, align 8
  %1 = load ptr, ptr %actual.addr, align 8
  store ptr %1, ptr %ptr_actual, align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %2, 0
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %while.end

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %elements, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  %6 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %6)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %7, %8
  br i1 %cmp4, label %while.end, label %if.end6

if.end6:                                          ; preds = %if.end3
  %9 = load ptr, ptr %expected.addr, align 8
  %10 = load ptr, ptr %actual.addr, align 8
  %11 = load i64, ptr %lineNumber.addr, align 8
  %12 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %while.cond, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

while.cond:                                       ; preds = %if.end6, %if.end21
  %13 = load i32, ptr %elements, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %elements, align 4
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %ptr_expected, align 8
  %15 = load float, ptr %14, align 4
  %mul = fmul float %15, 0x3EE4F8B580000000
  %16 = load ptr, ptr %ptr_actual, align 8
  %17 = load float, ptr %16, align 4
  %call11 = call i32 @UnityFloatsWithin(float noundef %mul, float noundef %15, float noundef %17)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end17

if.then13:                                        ; preds = %while.body
  %18 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %18)
  call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %19 = load i32, ptr %num_elements.addr, align 4
  %20 = load i32, ptr %elements, align 4
  %21 = xor i32 %20, -1
  %sub14 = add i32 %19, %21
  %conv = zext i32 %sub14 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %22 = load ptr, ptr %ptr_expected, align 8
  %23 = load float, ptr %22, align 4
  %conv15 = fpext float %23 to double
  call void @UnityPrintFloat(double noundef %conv15)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %24 = load ptr, ptr %ptr_actual, align 8
  %25 = load float, ptr %24, align 4
  %conv16 = fpext float %25 to double
  call void @UnityPrintFloat(double noundef %conv16)
  %26 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %26)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end17:                                         ; preds = %while.body
  %27 = load i32, ptr %flags.addr, align 4
  %cmp18 = icmp eq i32 %27, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %28 = load ptr, ptr %ptr_expected, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %28, i64 1
  store ptr %incdec.ptr, ptr %ptr_expected, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %29 = load ptr, ptr %ptr_actual, align 8
  %incdec.ptr22 = getelementptr inbounds float, ptr %29, i64 1
  store ptr %incdec.ptr22, ptr %ptr_actual, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %if.end3, %entry, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @UnityFloatsWithin(float noundef %delta, float noundef %expected, float noundef %actual) #0 {
entry:
  %retval = alloca i32, align 4
  %delta.addr = alloca float, align 4
  %expected.addr = alloca float, align 4
  %actual.addr = alloca float, align 4
  %diff = alloca float, align 4
  store float %delta, ptr %delta.addr, align 4
  store float %expected, ptr %expected.addr, align 4
  store float %actual, ptr %actual.addr, align 4
  %0 = load float, ptr %expected.addr, align 4
  %1 = call float @llvm.fabs.f32(float %0)
  %cmp.i119 = fcmp oeq float %1, 0x7FF0000000000000
  br i1 %cmp.i119, label %cond.true8, label %cond.true26

cond.true8:                                       ; preds = %entry
  %2 = load float, ptr %actual.addr, align 4
  %3 = call float @llvm.fabs.f32(float %2)
  %cmp.i116 = fcmp oeq float %3, 0x7FF0000000000000
  br i1 %cmp.i116, label %land.lhs.true20, label %cond.true26

land.lhs.true20:                                  ; preds = %cond.true8
  %4 = load float, ptr %expected.addr, align 4
  %cmp = fcmp uge float %4, 0.000000e+00
  %5 = load float, ptr %actual.addr, align 4
  %cmp22 = fcmp olt float %5, 0.000000e+00
  %cmp24 = xor i1 %cmp, %cmp22
  br i1 %cmp24, label %if.then, label %cond.true26

if.then:                                          ; preds = %land.lhs.true20
  store i32 1, ptr %retval, align 4
  br label %return

cond.true26:                                      ; preds = %entry, %cond.true8, %land.lhs.true20
  %6 = load float, ptr %expected.addr, align 4
  %cmp.i92 = fcmp uno float %6, 0.000000e+00
  %7 = load float, ptr %actual.addr, align 4
  %cmp.i89 = fcmp uno float %7, 0.000000e+00
  %or.cond = select i1 %cmp.i92, i1 %cmp.i89, i1 false
  br i1 %or.cond, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cond.true26
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %cond.true26
  %8 = load float, ptr %actual.addr, align 4
  %9 = load float, ptr %expected.addr, align 4
  %sub = fsub float %8, %9
  store float %sub, ptr %diff, align 4
  %cmp53 = fcmp olt float %sub, 0.000000e+00
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %10 = load float, ptr %diff, align 4
  %fneg = fneg float %10
  store float %fneg, ptr %diff, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  %11 = load float, ptr %delta.addr, align 4
  %cmp57 = fcmp olt float %11, 0.000000e+00
  br i1 %cmp57, label %if.then59, label %cond.true62

if.then59:                                        ; preds = %if.end56
  %12 = load float, ptr %delta.addr, align 4
  %fneg60 = fneg float %12
  store float %fneg60, ptr %delta.addr, align 4
  br label %cond.true62

cond.true62:                                      ; preds = %if.end56, %if.then59
  %13 = load float, ptr %diff, align 4
  %cmp.i = fcmp uno float %13, 0.000000e+00
  br i1 %cmp.i, label %lor.end, label %cond.true74

cond.true74:                                      ; preds = %cond.true62
  %14 = load float, ptr %diff, align 4
  %15 = call float @llvm.fabs.f32(float %14)
  %cmp.i113 = fcmp oeq float %15, 0x7FF0000000000000
  br i1 %cmp.i113, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true74
  %16 = load float, ptr %diff, align 4
  %17 = load float, ptr %delta.addr, align 4
  %cmp86 = fcmp ule float %16, %17
  %phi.cast = zext i1 %cmp86 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true74, %cond.true62
  %18 = phi i32 [ 0, %cond.true74 ], [ 0, %cond.true62 ], [ %phi.cast, %lor.rhs ]
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then51, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertFloatsWithin(float noundef %delta, float noundef %expected, float noundef %actual, ptr noundef %msg, i64 noundef %lineNumber) #0 {
entry:
  %delta.addr = alloca float, align 4
  %expected.addr = alloca float, align 4
  %actual.addr = alloca float, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  store float %delta, ptr %delta.addr, align 4
  store float %expected, ptr %expected.addr, align 4
  store float %actual, ptr %actual.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %2 = load float, ptr %delta.addr, align 4
  %3 = load float, ptr %expected.addr, align 4
  %4 = load float, ptr %actual.addr, align 4
  %call = call i32 @UnityFloatsWithin(float noundef %2, float noundef %3, float noundef %4)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %6 = load float, ptr %expected.addr, align 4
  %conv = fpext float %6 to double
  call void @UnityPrintFloat(double noundef %conv)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %7 = load float, ptr %actual.addr, align 4
  %conv4 = fpext float %7 to double
  call void @UnityPrintFloat(double noundef %conv4)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end5:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertFloatSpecial(float noundef %actual, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %actual.addr = alloca float, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  %trait_names = alloca [4 x ptr], align 8
  %should_be_trait = alloca i64, align 8
  %is_trait = alloca i64, align 8
  %trait_index = alloca i64, align 8
  store float %actual, ptr %actual.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %trait_names, ptr noundef nonnull align 8 dereferenceable(32) @__const.UnityAssertFloatSpecial.trait_names, i64 32, i1 false)
  %0 = and i32 %style, 1
  %and = zext i32 %0 to i64
  store i64 %and, ptr %should_be_trait, align 8
  %1 = xor i32 %0, 1
  %conv1 = zext i32 %1 to i64
  store i64 %conv1, ptr %is_trait, align 8
  %2 = load i32, ptr %style.addr, align 4
  %shr = lshr i32 %2, 1
  %conv2 = zext i32 %shr to i64
  store i64 %conv2, ptr %trait_index, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool3.not = icmp eq i64 %3, 0
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool4.not = icmp eq i64 %4, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end68

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %style.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %cond.true
    i32 0, label %cond.true
    i32 3, label %cond.true17
    i32 2, label %cond.true17
    i32 5, label %sw.bb35
    i32 4, label %sw.bb35
    i32 7, label %cond.true40
    i32 6, label %cond.true40
  ]

cond.true:                                        ; preds = %if.end, %if.end
  %6 = load float, ptr %actual.addr, align 4
  %7 = call float @llvm.fabs.f32(float %6)
  %cmp.i79 = fcmp oeq float %7, 0x7FF0000000000000
  %8 = load float, ptr %actual.addr, align 4
  %cmp = fcmp ogt float %8, 0.000000e+00
  %phi.cast3 = zext i1 %cmp to i64
  %9 = select i1 %cmp.i79, i64 %phi.cast3, i64 0
  store i64 %9, ptr %is_trait, align 8
  br label %sw.epilog

cond.true17:                                      ; preds = %if.end, %if.end
  %10 = load float, ptr %actual.addr, align 4
  %11 = call float @llvm.fabs.f32(float %10)
  %cmp.i76 = fcmp oeq float %11, 0x7FF0000000000000
  %12 = load float, ptr %actual.addr, align 4
  %cmp30 = fcmp olt float %12, 0.000000e+00
  %phi.cast2 = zext i1 %cmp30 to i64
  %13 = select i1 %cmp.i76, i64 %phi.cast2, i64 0
  store i64 %13, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end, %if.end
  %14 = load float, ptr %actual.addr, align 4
  %cmp.i70 = fcmp uno float %14, 0.000000e+00
  %conv38 = zext i1 %cmp.i70 to i64
  store i64 %conv38, ptr %is_trait, align 8
  br label %sw.epilog

cond.true40:                                      ; preds = %if.end, %if.end
  %15 = load float, ptr %actual.addr, align 4
  %16 = call float @llvm.fabs.f32(float %15)
  %cmp.i73 = fcmp oeq float %16, 0x7FF0000000000000
  %17 = load float, ptr %actual.addr, align 4
  %cmp.i = fcmp ord float %17, 0.000000e+00
  %phi.cast1 = zext i1 %cmp.i to i64
  %18 = select i1 %cmp.i73, i64 0, i64 %phi.cast1
  store i64 %18, ptr %is_trait, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i64 0, ptr %trait_index, align 8
  store ptr @UnityStrInvalidFloatTrait, ptr %trait_names, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.true40, %sw.bb35, %cond.true17, %cond.true
  %19 = load i64, ptr %is_trait, align 8
  %20 = load i64, ptr %should_be_trait, align 8
  %cmp60.not = icmp eq i64 %19, %20
  br i1 %cmp60.not, label %if.end68, label %if.then62

if.then62:                                        ; preds = %sw.epilog
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %22 = load i64, ptr %should_be_trait, align 8
  %tobool63.not = icmp eq i64 %22, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then62
  call void @UnityPrint(ptr noundef nonnull @UnityStrNot)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then62
  %23 = load i64, ptr %trait_index, align 8
  %arrayidx66 = getelementptr inbounds [4 x ptr], ptr %trait_names, i64 0, i64 %23
  %24 = load ptr, ptr %arrayidx66, align 8
  call void @UnityPrint(ptr noundef %24)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %25 = load float, ptr %actual.addr, align 4
  %conv67 = fpext float %25 to double
  call void @UnityPrintFloat(double noundef %conv67)
  %26 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %26)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end68:                                         ; preds = %entry, %sw.epilog
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualDoubleArray(ptr noundef %expected, ptr noundef %actual, i32 noundef %num_elements, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %flags) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %num_elements.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %elements = alloca i32, align 4
  %ptr_expected = alloca ptr, align 8
  %ptr_actual = alloca ptr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %num_elements, ptr %num_elements.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %num_elements, ptr %elements, align 4
  %0 = load ptr, ptr %expected.addr, align 8
  store ptr %0, ptr %ptr_expected, align 8
  %1 = load ptr, ptr %actual.addr, align 8
  store ptr %1, ptr %ptr_actual, align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %2, 0
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %while.end

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %elements, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  %6 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %6)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %7, %8
  br i1 %cmp4, label %while.end, label %if.end6

if.end6:                                          ; preds = %if.end3
  %9 = load ptr, ptr %expected.addr, align 8
  %10 = load ptr, ptr %actual.addr, align 8
  %11 = load i64, ptr %lineNumber.addr, align 8
  %12 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %while.cond, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

while.cond:                                       ; preds = %if.end6, %if.end19
  %13 = load i32, ptr %elements, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %elements, align 4
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %ptr_expected, align 8
  %15 = load double, ptr %14, align 8
  %mul = fmul double %15, 0x3D719799812DEA11
  %16 = load ptr, ptr %ptr_actual, align 8
  %17 = load double, ptr %16, align 8
  %call11 = call i32 @UnityDoublesWithin(double noundef %mul, double noundef %15, double noundef %17)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.body
  %18 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %18)
  call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %19 = load i32, ptr %num_elements.addr, align 4
  %20 = load i32, ptr %elements, align 4
  %21 = xor i32 %20, -1
  %sub14 = add i32 %19, %21
  %conv = zext i32 %sub14 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %22 = load ptr, ptr %ptr_expected, align 8
  %23 = load double, ptr %22, align 8
  call void @UnityPrintFloat(double noundef %23)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %24 = load ptr, ptr %ptr_actual, align 8
  %25 = load double, ptr %24, align 8
  call void @UnityPrintFloat(double noundef %25)
  %26 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %26)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end15:                                         ; preds = %while.body
  %27 = load i32, ptr %flags.addr, align 4
  %cmp16 = icmp eq i32 %27, 1
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %28 = load ptr, ptr %ptr_expected, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %28, i64 1
  store ptr %incdec.ptr, ptr %ptr_expected, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %29 = load ptr, ptr %ptr_actual, align 8
  %incdec.ptr20 = getelementptr inbounds double, ptr %29, i64 1
  store ptr %incdec.ptr20, ptr %ptr_actual, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %if.end3, %entry, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @UnityDoublesWithin(double noundef %delta, double noundef %expected, double noundef %actual) #0 {
entry:
  %retval = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %expected.addr = alloca double, align 8
  %actual.addr = alloca double, align 8
  %diff = alloca double, align 8
  store double %delta, ptr %delta.addr, align 8
  store double %expected, ptr %expected.addr, align 8
  store double %actual, ptr %actual.addr, align 8
  %0 = load double, ptr %expected.addr, align 8
  %1 = call double @llvm.fabs.f64(double %0)
  %cmp.i122 = fcmp oeq double %1, 0x7FF0000000000000
  br i1 %cmp.i122, label %cond.true12, label %cond.true29

cond.true12:                                      ; preds = %entry
  %2 = load double, ptr %actual.addr, align 8
  %3 = call double @llvm.fabs.f64(double %2)
  %cmp.i119 = fcmp oeq double %3, 0x7FF0000000000000
  br i1 %cmp.i119, label %land.lhs.true18, label %cond.true29

land.lhs.true18:                                  ; preds = %cond.true12
  %4 = load double, ptr %expected.addr, align 8
  %cmp = fcmp uge double %4, 0.000000e+00
  %5 = load double, ptr %actual.addr, align 8
  %cmp20 = fcmp olt double %5, 0.000000e+00
  %cmp22 = xor i1 %cmp, %cmp20
  br i1 %cmp22, label %if.then, label %cond.true29

if.then:                                          ; preds = %land.lhs.true18
  store i32 1, ptr %retval, align 4
  br label %return

cond.true29:                                      ; preds = %land.lhs.true18, %cond.true12, %entry
  %6 = load double, ptr %expected.addr, align 8
  %cmp.i95 = fcmp uno double %6, 0.000000e+00
  %7 = load double, ptr %actual.addr, align 8
  %cmp.i92 = fcmp uno double %7, 0.000000e+00
  %or.cond = select i1 %cmp.i95, i1 %cmp.i92, i1 false
  br i1 %or.cond, label %if.then47, label %if.end48

if.then47:                                        ; preds = %cond.true29
  store i32 1, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %cond.true29
  %8 = load double, ptr %actual.addr, align 8
  %9 = load double, ptr %expected.addr, align 8
  %sub = fsub double %8, %9
  store double %sub, ptr %diff, align 8
  %cmp49 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  %10 = load double, ptr %diff, align 8
  %fneg = fneg double %10
  store double %fneg, ptr %diff, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %11 = load double, ptr %delta.addr, align 8
  %cmp53 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp53, label %if.then55, label %cond.true63

if.then55:                                        ; preds = %if.end52
  %12 = load double, ptr %delta.addr, align 8
  %fneg56 = fneg double %12
  store double %fneg56, ptr %delta.addr, align 8
  br label %cond.true63

cond.true63:                                      ; preds = %if.then55, %if.end52
  %13 = load double, ptr %diff, align 8
  %cmp.i89 = fcmp uno double %13, 0.000000e+00
  br i1 %cmp.i89, label %lor.end, label %cond.true74

cond.true74:                                      ; preds = %cond.true63
  %14 = load double, ptr %diff, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %cmp.i116 = fcmp oeq double %15, 0x7FF0000000000000
  br i1 %cmp.i116, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true74
  %16 = load double, ptr %diff, align 8
  %17 = load double, ptr %delta.addr, align 8
  %cmp80 = fcmp ule double %16, %17
  %phi.cast = zext i1 %cmp80 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true74, %cond.true63
  %18 = phi i32 [ 0, %cond.true74 ], [ 0, %cond.true63 ], [ %phi.cast, %lor.rhs ]
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then47, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertDoublesWithin(double noundef %delta, double noundef %expected, double noundef %actual, ptr noundef %msg, i64 noundef %lineNumber) #0 {
entry:
  %delta.addr = alloca double, align 8
  %expected.addr = alloca double, align 8
  %actual.addr = alloca double, align 8
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  store double %delta, ptr %delta.addr, align 8
  store double %expected, ptr %expected.addr, align 8
  store double %actual, ptr %actual.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end4

if.end:                                           ; preds = %entry
  %2 = load double, ptr %delta.addr, align 8
  %3 = load double, ptr %expected.addr, align 8
  %4 = load double, ptr %actual.addr, align 8
  %call = call i32 @UnityDoublesWithin(double noundef %2, double noundef %3, double noundef %4)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %6 = load double, ptr %expected.addr, align 8
  call void @UnityPrintFloat(double noundef %6)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %7 = load double, ptr %actual.addr, align 8
  call void @UnityPrintFloat(double noundef %7)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end4:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertDoubleSpecial(double noundef %actual, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %actual.addr = alloca double, align 8
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  %trait_names = alloca [4 x ptr], align 8
  %should_be_trait = alloca i64, align 8
  %is_trait = alloca i64, align 8
  %trait_index = alloca i64, align 8
  store double %actual, ptr %actual.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %trait_names, ptr noundef nonnull align 8 dereferenceable(32) @__const.UnityAssertDoubleSpecial.trait_names, i64 32, i1 false)
  %0 = and i32 %style, 1
  %and = zext i32 %0 to i64
  store i64 %and, ptr %should_be_trait, align 8
  %1 = xor i32 %0, 1
  %conv1 = zext i32 %1 to i64
  store i64 %conv1, ptr %is_trait, align 8
  %2 = load i32, ptr %style.addr, align 4
  %shr = lshr i32 %2, 1
  %conv2 = zext i32 %shr to i64
  store i64 %conv2, ptr %trait_index, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool3.not = icmp eq i64 %3, 0
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool4.not = icmp eq i64 %4, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end64

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %style.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %cond.true7
    i32 0, label %cond.true7
    i32 3, label %cond.true21
    i32 2, label %cond.true21
    i32 5, label %sw.bb33
    i32 4, label %sw.bb33
    i32 7, label %cond.true43
    i32 6, label %cond.true43
  ]

cond.true7:                                       ; preds = %if.end, %if.end
  %6 = load double, ptr %actual.addr, align 8
  %7 = call double @llvm.fabs.f64(double %6)
  %cmp.i84 = fcmp oeq double %7, 0x7FF0000000000000
  %8 = load double, ptr %actual.addr, align 8
  %cmp = fcmp ogt double %8, 0.000000e+00
  %phi.cast3 = zext i1 %cmp to i64
  %9 = select i1 %cmp.i84, i64 %phi.cast3, i64 0
  store i64 %9, ptr %is_trait, align 8
  br label %sw.epilog

cond.true21:                                      ; preds = %if.end, %if.end
  %10 = load double, ptr %actual.addr, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  %cmp.i81 = fcmp oeq double %11, 0x7FF0000000000000
  %12 = load double, ptr %actual.addr, align 8
  %cmp28 = fcmp olt double %12, 0.000000e+00
  %phi.cast2 = zext i1 %cmp28 to i64
  %13 = select i1 %cmp.i81, i64 %phi.cast2, i64 0
  store i64 %13, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end, %if.end
  %14 = load double, ptr %actual.addr, align 8
  %cmp.i66 = fcmp uno double %14, 0.000000e+00
  %conv36 = zext i1 %cmp.i66 to i64
  store i64 %conv36, ptr %is_trait, align 8
  br label %sw.epilog

cond.true43:                                      ; preds = %if.end, %if.end
  %15 = load double, ptr %actual.addr, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %cmp.i78 = fcmp oeq double %16, 0x7FF0000000000000
  %17 = load double, ptr %actual.addr, align 8
  %cmp.i = fcmp ord double %17, 0.000000e+00
  %phi.cast1 = zext i1 %cmp.i to i64
  %18 = select i1 %cmp.i78, i64 0, i64 %phi.cast1
  store i64 %18, ptr %is_trait, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i64 0, ptr %trait_index, align 8
  store ptr @UnityStrInvalidFloatTrait, ptr %trait_names, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.true43, %sw.bb33, %cond.true21, %cond.true7
  %19 = load i64, ptr %is_trait, align 8
  %20 = load i64, ptr %should_be_trait, align 8
  %cmp57.not = icmp eq i64 %19, %20
  br i1 %cmp57.not, label %if.end64, label %if.then59

if.then59:                                        ; preds = %sw.epilog
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %22 = load i64, ptr %should_be_trait, align 8
  %tobool60.not = icmp eq i64 %22, 0
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then59
  call void @UnityPrint(ptr noundef nonnull @UnityStrNot)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59
  %23 = load i64, ptr %trait_index, align 8
  %arrayidx63 = getelementptr inbounds [4 x ptr], ptr %trait_names, i64 0, i64 %23
  %24 = load ptr, ptr %arrayidx63, align 8
  call void @UnityPrint(ptr noundef %24)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %25 = load double, ptr %actual.addr, align 8
  call void @UnityPrintFloat(double noundef %25)
  %26 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %26)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end64:                                         ; preds = %entry, %sw.epilog
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertNumbersWithin(i64 noundef %delta, i64 noundef %expected, i64 noundef %actual, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %delta.addr = alloca i64, align 8
  %expected.addr = alloca i64, align 8
  %actual.addr = alloca i64, align 8
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  store i64 %delta, ptr %delta.addr, align 8
  store i64 %expected, ptr %expected.addr, align 8
  store i64 %actual, ptr %actual.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end29

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %style.addr, align 4
  %and = and i32 %2, 16
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else12, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %actual.addr, align 8
  %4 = load i64, ptr %expected.addr, align 8
  %cmp3 = icmp sgt i64 %3, %4
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %5 = load i64, ptr %actual.addr, align 8
  %6 = load i64, ptr %expected.addr, align 8
  %sub = sub nsw i64 %5, %6
  %7 = load i64, ptr %delta.addr, align 8
  %cmp5 = icmp ugt i64 %sub, %7
  br label %if.end26

if.else:                                          ; preds = %if.then2
  %8 = load i64, ptr %expected.addr, align 8
  %9 = load i64, ptr %actual.addr, align 8
  %sub7 = sub nsw i64 %8, %9
  %10 = load i64, ptr %delta.addr, align 8
  %cmp8 = icmp ugt i64 %sub7, %10
  br label %if.end26

if.else12:                                        ; preds = %if.end
  %11 = load i64, ptr %actual.addr, align 8
  %12 = load i64, ptr %expected.addr, align 8
  %cmp13 = icmp ugt i64 %11, %12
  br i1 %cmp13, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else12
  %13 = load i64, ptr %actual.addr, align 8
  %14 = load i64, ptr %expected.addr, align 8
  %sub16 = sub nsw i64 %13, %14
  %15 = load i64, ptr %delta.addr, align 8
  %cmp17 = icmp ugt i64 %sub16, %15
  br label %if.end26

if.else20:                                        ; preds = %if.else12
  %16 = load i64, ptr %expected.addr, align 8
  %17 = load i64, ptr %actual.addr, align 8
  %sub21 = sub nsw i64 %16, %17
  %18 = load i64, ptr %delta.addr, align 8
  %cmp22 = icmp ugt i64 %sub21, %18
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %if.else20, %if.then4, %if.else
  %storemerge2.in = phi i1 [ %cmp8, %if.else ], [ %cmp5, %if.then4 ], [ %cmp22, %if.else20 ], [ %cmp17, %if.then15 ]
  %storemerge2 = zext i1 %storemerge2.in to i64
  store i64 %storemerge2, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br i1 %storemerge2.in, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %19 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %19)
  call void @UnityPrint(ptr noundef nonnull @UnityStrDelta)
  %20 = load i64, ptr %delta.addr, align 8
  %21 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %20, i32 noundef %21)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %22 = load i64, ptr %expected.addr, align 8
  call void @UnityPrintNumberByStyle(i64 noundef %22, i32 noundef %21)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %23 = load i64, ptr %actual.addr, align 8
  %24 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %23, i32 noundef %24)
  %25 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %25)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end29:                                         ; preds = %entry, %if.end26
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualString(ptr noundef %expected, ptr noundef %actual, ptr noundef %msg, i64 noundef %lineNumber) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end26

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %expected.addr, align 8
  %tobool2.not = icmp eq ptr %2, null
  %3 = load ptr, ptr %actual.addr, align 8
  %tobool3.not = icmp eq ptr %3, null
  %or.cond1 = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond1, label %if.else, label %for.cond

for.cond:                                         ; preds = %if.end, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load ptr, ptr %expected.addr, align 8
  %idxprom = zext i32 %storemerge to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %6 = load ptr, ptr %actual.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 %idxprom6
  %8 = load i8, ptr %arrayidx7, align 1
  %tobool9 = icmp ne i8 %8, 0
  br i1 %tobool9, label %for.body, label %if.end23

for.body:                                         ; preds = %for.cond, %lor.rhs
  %9 = load ptr, ptr %expected.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom10 = zext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 %idxprom10
  %11 = load i8, ptr %arrayidx11, align 1
  %12 = load ptr, ptr %actual.addr, align 8
  %idxprom13 = zext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 %idxprom13
  %13 = load i8, ptr %arrayidx14, align 1
  %cmp.not = icmp eq i8 %11, %13
  br i1 %cmp.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %for.body
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br label %if.end23

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add i32 %14, 1
  br label %for.cond, !llvm.loop !25

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %expected.addr, align 8
  %16 = load ptr, ptr %actual.addr, align 8
  %cmp19.not = icmp eq ptr %15, %16
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.else
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21, %lor.rhs, %if.then17
  %17 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool24.not = icmp eq i64 %17, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %18 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %18)
  %19 = load ptr, ptr %expected.addr, align 8
  %20 = load ptr, ptr %actual.addr, align 8
  call void @UnityPrintExpectedAndActualStrings(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %21)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end26:                                         ; preds = %entry, %if.end23
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityPrintExpectedAndActualStrings(ptr noundef %expected, ptr noundef %actual) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %cmp.not = icmp eq ptr %expected, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 39) #7
  %0 = load ptr, ptr %expected.addr, align 8
  call void @UnityPrint(ptr noundef %0)
  %call1 = call i32 @putchar(i32 noundef 39) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %1 = load ptr, ptr %actual.addr, align 8
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %if.else6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @putchar(i32 noundef 39) #7
  %2 = load ptr, ptr %actual.addr, align 8
  call void @UnityPrint(ptr noundef %2)
  %call5 = call i32 @putchar(i32 noundef 39) #7
  br label %if.end7

if.else6:                                         ; preds = %if.end
  call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualStringLen(ptr noundef %expected, ptr noundef %actual, i32 noundef %length, ptr noundef %msg, i64 noundef %lineNumber) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end27

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %expected.addr, align 8
  %tobool2.not = icmp eq ptr %2, null
  %3 = load ptr, ptr %actual.addr, align 8
  %tobool3.not = icmp eq ptr %3, null
  %or.cond1 = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond1, label %if.else, label %for.cond

for.cond:                                         ; preds = %if.end, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  store i32 %storemerge, ptr %i, align 4
  %4 = load i32, ptr %length.addr, align 4
  %cmp = icmp ult i32 %storemerge, %4
  br i1 %cmp, label %land.rhs, label %if.end24

land.rhs:                                         ; preds = %for.cond
  %5 = load ptr, ptr %expected.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %land.rhs
  %8 = load ptr, ptr %actual.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1
  %tobool9 = icmp ne i8 %10, 0
  br i1 %tobool9, label %for.body, label %if.end24

for.body:                                         ; preds = %land.rhs, %lor.rhs
  %11 = load ptr, ptr %expected.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = zext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom10
  %13 = load i8, ptr %arrayidx11, align 1
  %14 = load ptr, ptr %actual.addr, align 8
  %idxprom13 = zext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %idxprom13
  %15 = load i8, ptr %arrayidx14, align 1
  %cmp16.not = icmp eq i8 %13, %15
  br i1 %cmp16.not, label %for.inc, label %if.then18

if.then18:                                        ; preds = %for.body
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br label %if.end24

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add i32 %16, 1
  br label %for.cond, !llvm.loop !26

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %expected.addr, align 8
  %18 = load ptr, ptr %actual.addr, align 8
  %cmp20.not = icmp eq ptr %17, %18
  br i1 %cmp20.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.else
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22, %lor.rhs, %if.then18, %for.cond
  %19 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool25.not = icmp eq i64 %19, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  %20 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %20)
  %21 = load ptr, ptr %expected.addr, align 8
  %22 = load ptr, ptr %actual.addr, align 8
  %23 = load i32, ptr %length.addr, align 4
  call void @UnityPrintExpectedAndActualStringsLen(ptr noundef %21, ptr noundef %22, i32 noundef %23)
  %24 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %24)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end27:                                         ; preds = %entry, %if.end24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityPrintExpectedAndActualStringsLen(ptr noundef %expected, ptr noundef %actual, i32 noundef %length) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %cmp.not = icmp eq ptr %expected, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 39) #7
  %0 = load ptr, ptr %expected.addr, align 8
  %1 = load i32, ptr %length.addr, align 4
  call void @UnityPrintLen(ptr noundef %0, i32 noundef %1)
  %call1 = call i32 @putchar(i32 noundef 39) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %2 = load ptr, ptr %actual.addr, align 8
  %cmp2.not = icmp eq ptr %2, null
  br i1 %cmp2.not, label %if.else6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @putchar(i32 noundef 39) #7
  %3 = load ptr, ptr %actual.addr, align 8
  %4 = load i32, ptr %length.addr, align 4
  call void @UnityPrintLen(ptr noundef %3, i32 noundef %4)
  %call5 = call i32 @putchar(i32 noundef 39) #7
  br label %if.end7

if.else6:                                         ; preds = %if.end
  call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualStringArray(ptr noundef %expected, ptr noundef %actual, i32 noundef %num_elements, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %flags) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %num_elements.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %expd = alloca ptr, align 8
  %act = alloca ptr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %num_elements, ptr %num_elements.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  store ptr null, ptr %expd, align 8
  store ptr null, ptr %act, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %do.end

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %num_elements.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %3)
  call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  %4 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %expected.addr, align 8
  %6 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %5, %6
  br i1 %cmp4, label %do.end, label %if.end6

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load ptr, ptr %actual.addr, align 8
  %9 = load i64, ptr %lineNumber.addr, align 8
  %10 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end9:                                          ; preds = %if.end6
  %11 = load i32, ptr %flags.addr, align 4
  %cmp10.not = icmp eq i32 %11, 1
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  %12 = load ptr, ptr %expected.addr, align 8
  store ptr %12, ptr %expd, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end12
  %13 = load ptr, ptr %actual.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  store ptr %15, ptr %act, align 8
  %16 = load i32, ptr %flags.addr, align 4
  %cmp13 = icmp eq i32 %16, 1
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %do.body
  %17 = load ptr, ptr %expected.addr, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom15 = zext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %17, i64 %idxprom15
  %19 = load ptr, ptr %arrayidx16, align 8
  store ptr %19, ptr %expd, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body
  %20 = load ptr, ptr %expd, align 8
  %tobool18.not = icmp eq ptr %20, null
  %21 = load ptr, ptr %act, align 8
  %tobool19.not = icmp eq ptr %21, null
  %or.cond1 = select i1 %tobool18.not, i1 true, i1 %tobool19.not
  br i1 %or.cond1, label %if.else, label %for.cond

for.cond:                                         ; preds = %if.end17, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.end17 ]
  store i32 %storemerge, ptr %i, align 4
  %22 = load ptr, ptr %expd, align 8
  %idxprom21 = zext i32 %storemerge to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 %idxprom21
  %23 = load i8, ptr %arrayidx22, align 1
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %lor.rhs, label %for.body

lor.rhs:                                          ; preds = %for.cond
  %24 = load ptr, ptr %act, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom24 = zext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %24, i64 %idxprom24
  %26 = load i8, ptr %arrayidx25, align 1
  %tobool27 = icmp ne i8 %26, 0
  br i1 %tobool27, label %for.body, label %if.end42

for.body:                                         ; preds = %for.cond, %lor.rhs
  %27 = load ptr, ptr %expd, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom28 = zext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %27, i64 %idxprom28
  %29 = load i8, ptr %arrayidx29, align 1
  %30 = load ptr, ptr %act, align 8
  %idxprom31 = zext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %30, i64 %idxprom31
  %31 = load i8, ptr %arrayidx32, align 1
  %cmp34.not = icmp eq i8 %29, %31
  br i1 %cmp34.not, label %for.inc, label %if.then36

if.then36:                                        ; preds = %for.body
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br label %if.end42

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4
  %inc = add i32 %32, 1
  br label %for.cond, !llvm.loop !27

if.else:                                          ; preds = %if.end17
  %33 = load ptr, ptr %expd, align 8
  %34 = load ptr, ptr %act, align 8
  %cmp38.not = icmp eq ptr %33, %34
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.else
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40, %lor.rhs, %if.then36
  %35 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool43.not = icmp eq i64 %35, 0
  br i1 %tobool43.not, label %do.cond, label %if.then44

if.then44:                                        ; preds = %if.end42
  %36 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %36)
  %37 = load i32, ptr %num_elements.addr, align 4
  %cmp45 = icmp ugt i32 %37, 1
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %38 = load i32, ptr %j, align 4
  %conv48 = zext i32 %38 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv48)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then44
  %39 = load ptr, ptr %expd, align 8
  %40 = load ptr, ptr %act, align 8
  call void @UnityPrintExpectedAndActualStrings(ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %41)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

do.cond:                                          ; preds = %if.end42
  %42 = load i32, ptr %j, align 4
  %inc51 = add i32 %42, 1
  store i32 %inc51, ptr %j, align 4
  %43 = load i32, ptr %num_elements.addr, align 4
  %cmp52 = icmp ult i32 %inc51, %43
  br i1 %cmp52, label %do.body, label %do.end, !llvm.loop !28

do.end:                                           ; preds = %if.end3, %entry, %do.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertEqualMemory(ptr noundef %expected, ptr noundef %actual, i32 noundef %length, i32 noundef %num_elements, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %flags) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %num_elements.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %lineNumber.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ptr_exp = alloca ptr, align 8
  %ptr_act = alloca ptr, align 8
  %elements = alloca i32, align 4
  %bytes = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 %num_elements, ptr %num_elements.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %expected.addr, align 8
  store ptr %0, ptr %ptr_exp, align 8
  %1 = load ptr, ptr %actual.addr, align 8
  store ptr %1, ptr %ptr_act, align 8
  %2 = load i32, ptr %num_elements.addr, align 4
  store i32 %2, ptr %elements, align 4
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %3, 0
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %4, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %while.end38

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %elements, align 4
  %cmp = icmp eq i32 %5, 0
  %6 = load i32, ptr %length.addr, align 4
  %cmp3 = icmp eq i32 %6, 0
  %or.cond1 = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond1, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %7)
  call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %expected.addr, align 8
  %10 = load ptr, ptr %actual.addr, align 8
  %cmp6 = icmp eq ptr %9, %10
  br i1 %cmp6, label %while.end38, label %if.end8

if.end8:                                          ; preds = %if.end5
  %11 = load ptr, ptr %expected.addr, align 8
  %12 = load ptr, ptr %actual.addr, align 8
  %13 = load i64, ptr %lineNumber.addr, align 8
  %14 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %while.cond, label %if.then10

if.then10:                                        ; preds = %if.end8
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

while.cond:                                       ; preds = %if.end8, %if.end37
  %15 = load i32, ptr %elements, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %elements, align 4
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %while.end38, label %while.body

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %length.addr, align 4
  store i32 %16, ptr %bytes, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end32, %while.body
  %17 = load i32, ptr %bytes, align 4
  %dec14 = add i32 %17, -1
  store i32 %dec14, ptr %bytes, align 4
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %while.end, label %while.body16

while.body16:                                     ; preds = %while.cond13
  %18 = load ptr, ptr %ptr_exp, align 8
  %19 = load i8, ptr %18, align 1
  %20 = load ptr, ptr %ptr_act, align 8
  %21 = load i8, ptr %20, align 1
  %cmp18.not = icmp eq i8 %19, %21
  br i1 %cmp18.not, label %if.end32, label %if.then20

if.then20:                                        ; preds = %while.body16
  %22 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %22)
  call void @UnityPrint(ptr noundef nonnull @UnityStrMemory)
  %23 = load i32, ptr %num_elements.addr, align 4
  %cmp21 = icmp ugt i32 %23, 1
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then20
  call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %24 = load i32, ptr %num_elements.addr, align 4
  %25 = load i32, ptr %elements, align 4
  %26 = xor i32 %25, -1
  %sub24 = add i32 %24, %26
  %conv25 = zext i32 %sub24 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv25)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20
  call void @UnityPrint(ptr noundef nonnull @UnityStrByte)
  %27 = load i32, ptr %length.addr, align 4
  %28 = load i32, ptr %bytes, align 4
  %29 = xor i32 %28, -1
  %sub28 = add i32 %27, %29
  %conv29 = zext i32 %sub28 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv29)
  call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %30 = load ptr, ptr %ptr_exp, align 8
  %31 = load i8, ptr %30, align 1
  %conv30 = zext i8 %31 to i64
  call void @UnityPrintNumberByStyle(i64 noundef %conv30, i32 noundef 65)
  call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %32 = load ptr, ptr %ptr_act, align 8
  %33 = load i8, ptr %32, align 1
  %conv31 = zext i8 %33 to i64
  call void @UnityPrintNumberByStyle(i64 noundef %conv31, i32 noundef 65)
  %34 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %34)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable

if.end32:                                         ; preds = %while.body16
  %35 = load ptr, ptr %ptr_exp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr, ptr %ptr_exp, align 8
  %36 = load ptr, ptr %ptr_act, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %incdec.ptr33, ptr %ptr_act, align 8
  br label %while.cond13, !llvm.loop !29

while.end:                                        ; preds = %while.cond13
  %37 = load i32, ptr %flags.addr, align 4
  %cmp34 = icmp eq i32 %37, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  %38 = load ptr, ptr %expected.addr, align 8
  store ptr %38, ptr %ptr_exp, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  br label %while.cond, !llvm.loop !30

while.end38:                                      ; preds = %if.end5, %entry, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @UnityNumToPtr(i64 noundef %num, i8 noundef zeroext %size) #0 {
entry:
  %retval = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  store i64 %num, ptr %num.addr, align 8
  switch i8 %size, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
    i8 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i64, ptr %num.addr, align 8
  %conv1 = trunc i64 %0 to i8
  store i8 %conv1, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  %1 = load i64, ptr %num.addr, align 8
  %conv3 = trunc i64 %1 to i16
  store i16 %conv3, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  %2 = load i64, ptr %num.addr, align 8
  store i64 %2, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i64, ptr %num.addr, align 8
  %conv5 = trunc i64 %3 to i32
  store i32 %conv5, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define ptr @UnityFloatToPtr(float noundef %num) #0 {
entry:
  store float %num, ptr @UnityQuickCompare, align 8
  ret ptr @UnityQuickCompare
}

; Function Attrs: nounwind ssp uwtable
define ptr @UnityDoubleToPtr(double noundef %num) #0 {
entry:
  store double %num, ptr @UnityQuickCompare, align 8
  ret ptr @UnityQuickCompare
}

; Function Attrs: nounwind ssp uwtable
define void @UnityFail(ptr noundef %msg, i64 noundef %line) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %line, ptr %line.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret void

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @Unity, align 8
  %3 = load i64, ptr %line.addr, align 8
  call void @UnityTestResultsBegin(ptr noundef %2, i64 noundef %3)
  call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %4 = load ptr, ptr %msg.addr, align 8
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 @putchar(i32 noundef 58) #7
  %5 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 2), align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @UnityPrint(ptr noundef nonnull @UnityStrDetail1Name)
  %6 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 2), align 8
  call void @UnityPrint(ptr noundef %6)
  %7 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 3), align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @UnityPrint(ptr noundef nonnull @UnityStrDetail2Name)
  %8 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 3), align 8
  call void @UnityPrint(ptr noundef %8)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  call void @UnityPrint(ptr noundef nonnull @UnityStrSpacer)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %9 = load ptr, ptr %msg.addr, align 8
  %10 = load i8, ptr %9, align 1
  %cmp9.not = icmp eq i8 %10, 32
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @putchar(i32 noundef 32) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %11 = load ptr, ptr %msg.addr, align 8
  call void @UnityPrint(ptr noundef %11)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define void @UnityIgnore(ptr noundef %msg, i64 noundef %line) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %line, ptr %line.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  %tobool.not = icmp eq i64 %0, 0
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  %tobool1.not = icmp eq i64 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret void

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @Unity, align 8
  %3 = load i64, ptr %line.addr, align 8
  call void @UnityTestResultsBegin(ptr noundef %2, i64 noundef %3)
  call void @UnityPrint(ptr noundef nonnull @UnityStrIgnore)
  %4 = load ptr, ptr %msg.addr, align 8
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 @putchar(i32 noundef 58) #7
  %call3 = call i32 @putchar(i32 noundef 32) #7
  %5 = load ptr, ptr %msg.addr, align 8
  call void @UnityPrint(ptr noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10), i32 noundef 1) #8
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define void @UnityDefaultTestRun(ptr noundef %Func, ptr noundef %FuncName, i32 noundef %FuncLineNum) #0 {
entry:
  %Func.addr = alloca ptr, align 8
  store ptr %Func, ptr %Func.addr, align 8
  store ptr %FuncName, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 1), align 8
  %conv = sext i32 %FuncLineNum to i64
  store i64 %conv, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 4), align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 5), align 8
  %inc = add i64 %0, 1
  store i64 %inc, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 5), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 2), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 3), align 8
  %call = call i32 @setjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %Func.addr, align 8
  call void %1() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @setjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 10)) #9
  call void @UnityConcludeTest()
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define void @UnityBegin(ptr noundef %filename) #0 {
entry:
  store ptr %filename, ptr @Unity, align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 1), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 4), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 6), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 7), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 8), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 9), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 2), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 3), align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @UnityEnd() #0 {
entry:
  %call = call i32 @putchar(i32 noundef 10) #7
  call void @UnityPrint(ptr noundef nonnull @UnityStrBreaker)
  %call1 = call i32 @putchar(i32 noundef 10) #7
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 5), align 8
  call void @UnityPrintNumber(i64 noundef %0)
  call void @UnityPrint(ptr noundef nonnull @UnityStrResultsTests)
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 6), align 8
  call void @UnityPrintNumber(i64 noundef %1)
  call void @UnityPrint(ptr noundef nonnull @UnityStrResultsFailures)
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 7), align 8
  call void @UnityPrintNumber(i64 noundef %2)
  call void @UnityPrint(ptr noundef nonnull @UnityStrResultsIgnored)
  %call2 = call i32 @putchar(i32 noundef 10) #7
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 6), align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef nonnull @UnityStrOk)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 @putchar(i32 noundef 10) #7
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i64 0, i32 6), align 8
  %conv = trunc i64 %4 to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: alwaysinline nounwind ssp uwtable
define weak void @pc_inline_source_snapshot_public_repos_cJSON_tests_unity_src_unity_0() #6 {
entry:
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define weak void @pc_inline_source_snapshot_public_repos_cJSON_tests_unity_src_unity_1() #6 {
entry:
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind returns_twice }

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
