; ModuleID = './source_snapshot/public_repos/cJSON/tests/unity/src/unity.c'
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
  %num_failures.addr = alloca i32, align 4
  store i32 %num_failures, ptr %num_failures.addr, align 4
  %0 = load i32, ptr %num_failures.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrint(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %pch = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  %0 = load ptr, ptr %string.addr, align 8
  store ptr %0, ptr %pch, align 8
  %1 = load ptr, ptr %pch, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.then
  %2 = load ptr, ptr %pch, align 8
  %3 = load i8, ptr %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pch, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp sle i32 %conv, 126
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load ptr, ptr %pch, align 8
  %7 = load i8, ptr %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp sge i32 %conv3, 32
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pch, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = sext i8 %9 to i32
  %call = call i32 @putchar(i32 noundef %conv7)
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %while.body
  %10 = load ptr, ptr %pch, align 8
  %11 = load i8, ptr %10, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 13
  br i1 %cmp9, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @putchar(i32 noundef 92)
  %call13 = call i32 @putchar(i32 noundef 114)
  br label %if.end25

if.else14:                                        ; preds = %if.else
  %12 = load ptr, ptr %pch, align 8
  %13 = load i8, ptr %12, align 1
  %conv15 = sext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 10
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else14
  %call19 = call i32 @putchar(i32 noundef 92)
  %call20 = call i32 @putchar(i32 noundef 110)
  br label %if.end

if.else21:                                        ; preds = %if.else14
  %call22 = call i32 @putchar(i32 noundef 92)
  %call23 = call i32 @putchar(i32 noundef 120)
  %14 = load ptr, ptr %pch, align 8
  %15 = load i8, ptr %14, align 1
  %conv24 = sext i8 %15 to i64
  call void @UnityPrintNumberHex(i64 noundef %conv24, i8 noundef signext 2)
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then6
  %16 = load ptr, ptr %pch, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pch, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end27

if.end27:                                         ; preds = %while.end, %entry
  ret void
}

declare i32 @putchar(i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumberHex(i64 noundef %number, i8 noundef signext %nibbles_to_print) #0 {
entry:
  %number.addr = alloca i64, align 8
  %nibbles_to_print.addr = alloca i8, align 1
  %nibble = alloca i32, align 4
  %nibbles = alloca i8, align 1
  store i64 %number, ptr %number.addr, align 8
  store i8 %nibbles_to_print, ptr %nibbles_to_print.addr, align 1
  %0 = load i8, ptr %nibbles_to_print.addr, align 1
  store i8 %0, ptr %nibbles, align 1
  %1 = load i8, ptr %nibbles, align 1
  %conv = sext i8 %1 to i32
  %conv1 = zext i32 %conv to i64
  %cmp = icmp ugt i64 %conv1, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 16, ptr %nibbles, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end
  %2 = load i8, ptr %nibbles, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp sgt i32 %conv3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %nibbles, align 1
  %dec = add i8 %3, -1
  store i8 %dec, ptr %nibbles, align 1
  %4 = load i64, ptr %number.addr, align 8
  %5 = load i8, ptr %nibbles, align 1
  %conv6 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv6, 4
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %4, %sh_prom
  %conv7 = trunc i64 %shr to i32
  %and = and i32 %conv7, 15
  store i32 %and, ptr %nibble, align 4
  %6 = load i32, ptr %nibble, align 4
  %cmp8 = icmp sle i32 %6, 9
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %7 = load i32, ptr %nibble, align 4
  %add = add nsw i32 48, %7
  %conv11 = trunc i32 %add to i8
  %conv12 = sext i8 %conv11 to i32
  %call = call i32 @putchar(i32 noundef %conv12)
  br label %if.end17

if.else:                                          ; preds = %while.body
  %8 = load i32, ptr %nibble, align 4
  %add13 = add nsw i32 55, %8
  %conv14 = trunc i32 %add13 to i8
  %conv15 = sext i8 %conv14 to i32
  %call16 = call i32 @putchar(i32 noundef %conv15)
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
  %0 = load ptr, ptr %string.addr, align 8
  store ptr %0, ptr %pch, align 8
  %1 = load ptr, ptr %pch, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.then
  %2 = load ptr, ptr %pch, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pch, align 8
  %5 = load ptr, ptr %string.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv1 = trunc i64 %sub.ptr.sub to i32
  %6 = load i32, ptr %length.addr, align 4
  %cmp2 = icmp ult i32 %conv1, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %pch, align 8
  %9 = load i8, ptr %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp sle i32 %conv4, 126
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %10 = load ptr, ptr %pch, align 8
  %11 = load i8, ptr %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp sge i32 %conv7, 32
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %pch, align 8
  %13 = load i8, ptr %12, align 1
  %conv11 = sext i8 %13 to i32
  %call = call i32 @putchar(i32 noundef %conv11)
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %while.body
  %14 = load ptr, ptr %pch, align 8
  %15 = load i8, ptr %14, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else
  %call16 = call i32 @putchar(i32 noundef 92)
  %call17 = call i32 @putchar(i32 noundef 114)
  br label %if.end29

if.else18:                                        ; preds = %if.else
  %16 = load ptr, ptr %pch, align 8
  %17 = load i8, ptr %16, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 10
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else18
  %call23 = call i32 @putchar(i32 noundef 92)
  %call24 = call i32 @putchar(i32 noundef 110)
  br label %if.end

if.else25:                                        ; preds = %if.else18
  %call26 = call i32 @putchar(i32 noundef 92)
  %call27 = call i32 @putchar(i32 noundef 120)
  %18 = load ptr, ptr %pch, align 8
  %19 = load i8, ptr %18, align 1
  %conv28 = sext i8 %19 to i64
  call void @UnityPrintNumberHex(i64 noundef %conv28, i8 noundef signext 2)
  br label %if.end

if.end:                                           ; preds = %if.else25, %if.then22
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then10
  %20 = load ptr, ptr %pch, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %pch, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  br label %if.end31

if.end31:                                         ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumberByStyle(i64 noundef %number, i32 noundef %style) #0 {
entry:
  %number.addr = alloca i64, align 8
  %style.addr = alloca i32, align 4
  store i64 %number, ptr %number.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  %0 = load i32, ptr %style.addr, align 4
  %and = and i32 %0, 16
  %cmp = icmp eq i32 %and, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %number.addr, align 8
  call void @UnityPrintNumber(i64 noundef %1)
  br label %if.end7

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %style.addr, align 4
  %and1 = and i32 %2, 32
  %cmp2 = icmp eq i32 %and1, 32
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %3 = load i64, ptr %number.addr, align 8
  call void @UnityPrintNumberUnsigned(i64 noundef %3)
  br label %if.end

if.else4:                                         ; preds = %if.else
  %call = call i32 @putchar(i32 noundef 48)
  %call5 = call i32 @putchar(i32 noundef 120)
  %4 = load i64, ptr %number.addr, align 8
  %5 = load i32, ptr %style.addr, align 4
  %and6 = and i32 %5, 15
  %mul = mul i32 %and6, 2
  %conv = trunc i32 %mul to i8
  call void @UnityPrintNumberHex(i64 noundef %4, i8 noundef signext %conv)
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumber(i64 noundef %number_to_print) #0 {
entry:
  %number_to_print.addr = alloca i64, align 8
  %number = alloca i64, align 8
  store i64 %number_to_print, ptr %number_to_print.addr, align 8
  %0 = load i64, ptr %number_to_print.addr, align 8
  store i64 %0, ptr %number, align 8
  %1 = load i64, ptr %number_to_print.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 45)
  %2 = load i64, ptr %number_to_print.addr, align 8
  %sub = sub nsw i64 0, %2
  store i64 %sub, ptr %number, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %number, align 8
  call void @UnityPrintNumberUnsigned(i64 noundef %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintNumberUnsigned(i64 noundef %number) #0 {
entry:
  %number.addr = alloca i64, align 8
  %divisor = alloca i64, align 8
  store i64 %number, ptr %number.addr, align 8
  store i64 1, ptr %divisor, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %number.addr, align 8
  %1 = load i64, ptr %divisor, align 8
  %div = udiv i64 %0, %1
  %cmp = icmp ugt i64 %div, 9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %divisor, align 8
  %mul = mul i64 %2, 10
  store i64 %mul, ptr %divisor, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %3 = load i64, ptr %number.addr, align 8
  %4 = load i64, ptr %divisor, align 8
  %div1 = udiv i64 %3, %4
  %rem = urem i64 %div1, 10
  %add = add i64 48, %rem
  %conv = trunc i64 %add to i8
  %conv2 = sext i8 %conv to i32
  %call = call i32 @putchar(i32 noundef %conv2)
  %5 = load i64, ptr %divisor, align 8
  %div3 = udiv i64 %5, 10
  store i64 %div3, ptr %divisor, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i64, ptr %divisor, align 8
  %cmp4 = icmp ugt i64 %6, 0
  br i1 %cmp4, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
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
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %current_bit, align 8
  %2 = load i64, ptr %mask.addr, align 8
  %and = and i64 %1, %2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr %current_bit, align 8
  %4 = load i64, ptr %number.addr, align 8
  %and1 = and i64 %3, %4
  %tobool2 = icmp ne i64 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call = call i32 @putchar(i32 noundef 49)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call4 = call i32 @putchar(i32 noundef 48)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end7

if.else5:                                         ; preds = %for.body
  %call6 = call i32 @putchar(i32 noundef 88)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.end
  %5 = load i64, ptr %current_bit, align 8
  %shr = lshr i64 %5, 1
  store i64 %shr, ptr %current_bit, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityPrintFloat(double noundef %input_number) #0 {
entry:
  %__x.addr.i156 = alloca double, align 8
  %__x.addr.i153 = alloca double, align 8
  %__x.addr.i150 = alloca float, align 4
  %__x.addr.i147 = alloca double, align 8
  %__x.addr.i144 = alloca double, align 8
  %__x.addr.i = alloca float, align 4
  %input_number.addr = alloca double, align 8
  %number = alloca double, align 8
  %exponent = alloca i32, align 4
  %decimals = alloca i32, align 4
  %digits = alloca i32, align 4
  %n = alloca i32, align 4
  %buf = alloca [16 x i8], align 1
  store double %input_number, ptr %input_number.addr, align 8
  %0 = load double, ptr %input_number.addr, align 8
  store double %0, ptr %number, align 8
  %1 = load double, ptr %number, align 8
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load double, ptr %number, align 8
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load double, ptr %number, align 8
  %div = fdiv double 1.000000e+00, %3
  %cmp2 = fcmp olt double %div, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 @putchar(i32 noundef 45)
  %4 = load double, ptr %number, align 8
  %fneg = fneg double %4
  store double %fneg, ptr %number, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %5 = load double, ptr %number, align 8
  %cmp3 = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @UnityPrint(ptr noundef @.str)
  br label %if.end143

if.else:                                          ; preds = %if.end
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %6 = load double, ptr %number, align 8
  %conv = fptrunc double %6 to float
  store float %conv, ptr %__x.addr.i, align 4
  %7 = load float, ptr %__x.addr.i, align 4
  %8 = load float, ptr %__x.addr.i, align 4
  %cmp.i = fcmp une float %7, %8
  %conv.i = zext i1 %cmp.i to i32
  %tobool = icmp ne i32 %conv.i, 0
  br i1 %tobool, label %if.then12, label %if.else13

cond.false:                                       ; preds = %if.else
  br i1 true, label %cond.true6, label %cond.false9

cond.true6:                                       ; preds = %cond.false
  %9 = load double, ptr %number, align 8
  store double %9, ptr %__x.addr.i144, align 8
  %10 = load double, ptr %__x.addr.i144, align 8
  %11 = load double, ptr %__x.addr.i144, align 8
  %cmp.i145 = fcmp une double %10, %11
  %conv.i146 = zext i1 %cmp.i145 to i32
  %tobool8 = icmp ne i32 %conv.i146, 0
  br i1 %tobool8, label %if.then12, label %if.else13

cond.false9:                                      ; preds = %cond.false
  %12 = load double, ptr %number, align 8
  store double %12, ptr %__x.addr.i147, align 8
  %13 = load double, ptr %__x.addr.i147, align 8
  %14 = load double, ptr %__x.addr.i147, align 8
  %cmp.i148 = fcmp une double %13, %14
  %conv.i149 = zext i1 %cmp.i148 to i32
  %tobool11 = icmp ne i32 %conv.i149, 0
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %cond.false9, %cond.true6, %cond.true
  call void @UnityPrint(ptr noundef @.str.1)
  br label %if.end142

if.else13:                                        ; preds = %cond.false9, %cond.true6, %cond.true
  br i1 false, label %cond.true14, label %cond.false18

cond.true14:                                      ; preds = %if.else13
  %15 = load double, ptr %number, align 8
  %conv15 = fptrunc double %15 to float
  store float %conv15, ptr %__x.addr.i150, align 4
  %16 = load float, ptr %__x.addr.i150, align 4
  %17 = call float @llvm.fabs.f32(float %16)
  %cmp.i151 = fcmp oeq float %17, 0x7FF0000000000000
  %conv.i152 = zext i1 %cmp.i151 to i32
  %tobool17 = icmp ne i32 %conv.i152, 0
  br i1 %tobool17, label %if.then25, label %if.else26

cond.false18:                                     ; preds = %if.else13
  br i1 true, label %cond.true19, label %cond.false22

cond.true19:                                      ; preds = %cond.false18
  %18 = load double, ptr %number, align 8
  store double %18, ptr %__x.addr.i153, align 8
  %19 = load double, ptr %__x.addr.i153, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %cmp.i154 = fcmp oeq double %20, 0x7FF0000000000000
  %conv.i155 = zext i1 %cmp.i154 to i32
  %tobool21 = icmp ne i32 %conv.i155, 0
  br i1 %tobool21, label %if.then25, label %if.else26

cond.false22:                                     ; preds = %cond.false18
  %21 = load double, ptr %number, align 8
  store double %21, ptr %__x.addr.i156, align 8
  %22 = load double, ptr %__x.addr.i156, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %cmp.i157 = fcmp oeq double %23, 0x7FF0000000000000
  %conv.i158 = zext i1 %cmp.i157 to i32
  %tobool24 = icmp ne i32 %conv.i158, 0
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %cond.false22, %cond.true19, %cond.true14
  call void @UnityPrint(ptr noundef @.str.2)
  br label %if.end141

if.else26:                                        ; preds = %cond.false22, %cond.true19, %cond.true14
  store i32 0, ptr %exponent, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else26
  %24 = load double, ptr %number, align 8
  %cmp27 = fcmp olt double %24, 0x3FB99999A0000000
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load double, ptr %number, align 8
  %mul = fmul double %25, 1.000000e+06
  store double %mul, ptr %number, align 8
  %26 = load i32, ptr %exponent, align 4
  %sub = sub nsw i32 %26, 6
  store i32 %sub, ptr %exponent, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %while.end
  %27 = load double, ptr %number, align 8
  %cmp30 = fcmp olt double %27, 1.000000e+05
  br i1 %cmp30, label %while.body32, label %while.end34

while.body32:                                     ; preds = %while.cond29
  %28 = load double, ptr %number, align 8
  %mul33 = fmul double %28, 1.000000e+01
  store double %mul33, ptr %number, align 8
  %29 = load i32, ptr %exponent, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %exponent, align 4
  br label %while.cond29, !llvm.loop !14

while.end34:                                      ; preds = %while.cond29
  br label %while.cond35

while.cond35:                                     ; preds = %while.body38, %while.end34
  %30 = load double, ptr %number, align 8
  %cmp36 = fcmp ogt double %30, 0x426D1A94A0000000
  br i1 %cmp36, label %while.body38, label %while.end40

while.body38:                                     ; preds = %while.cond35
  %31 = load double, ptr %number, align 8
  %div39 = fdiv double %31, 1.000000e+06
  store double %div39, ptr %number, align 8
  %32 = load i32, ptr %exponent, align 4
  %add = add nsw i32 %32, 6
  store i32 %add, ptr %exponent, align 4
  br label %while.cond35, !llvm.loop !15

while.end40:                                      ; preds = %while.cond35
  br label %while.cond41

while.cond41:                                     ; preds = %while.body44, %while.end40
  %33 = load double, ptr %number, align 8
  %cmp42 = fcmp ogt double %33, 1.000000e+06
  br i1 %cmp42, label %while.body44, label %while.end46

while.body44:                                     ; preds = %while.cond41
  %34 = load double, ptr %number, align 8
  %div45 = fdiv double %34, 1.000000e+01
  store double %div45, ptr %number, align 8
  %35 = load i32, ptr %exponent, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %exponent, align 4
  br label %while.cond41, !llvm.loop !16

while.end46:                                      ; preds = %while.cond41
  %36 = load double, ptr %number, align 8
  %37 = load double, ptr %number, align 8
  %add47 = fadd double %36, %37
  %conv48 = fptosi double %add47 to i32
  %add49 = add nsw i32 %conv48, 1
  %div50 = sdiv i32 %add49, 2
  store i32 %div50, ptr %n, align 4
  %38 = load i32, ptr %n, align 4
  %cmp51 = icmp sgt i32 %38, 999999
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %while.end46
  store i32 100000, ptr %n, align 4
  %39 = load i32, ptr %exponent, align 4
  %inc54 = add nsw i32 %39, 1
  store i32 %inc54, ptr %exponent, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %while.end46
  %40 = load i32, ptr %exponent, align 4
  %cmp56 = icmp sle i32 %40, 0
  br i1 %cmp56, label %land.lhs.true58, label %cond.false63

land.lhs.true58:                                  ; preds = %if.end55
  %41 = load i32, ptr %exponent, align 4
  %cmp59 = icmp sge i32 %41, -9
  br i1 %cmp59, label %cond.true61, label %cond.false63

cond.true61:                                      ; preds = %land.lhs.true58
  %42 = load i32, ptr %exponent, align 4
  %sub62 = sub nsw i32 0, %42
  br label %cond.end

cond.false63:                                     ; preds = %land.lhs.true58, %if.end55
  br label %cond.end

cond.end:                                         ; preds = %cond.false63, %cond.true61
  %cond = phi i32 [ %sub62, %cond.true61 ], [ 5, %cond.false63 ]
  store i32 %cond, ptr %decimals, align 4
  %43 = load i32, ptr %decimals, align 4
  %44 = load i32, ptr %exponent, align 4
  %add64 = add nsw i32 %44, %43
  store i32 %add64, ptr %exponent, align 4
  br label %while.cond65

while.cond65:                                     ; preds = %while.body70, %cond.end
  %45 = load i32, ptr %decimals, align 4
  %cmp66 = icmp sgt i32 %45, 0
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond65
  %46 = load i32, ptr %n, align 4
  %rem = srem i32 %46, 10
  %cmp68 = icmp eq i32 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond65
  %47 = phi i1 [ false, %while.cond65 ], [ %cmp68, %land.rhs ]
  br i1 %47, label %while.body70, label %while.end73

while.body70:                                     ; preds = %land.end
  %48 = load i32, ptr %n, align 4
  %div71 = sdiv i32 %48, 10
  store i32 %div71, ptr %n, align 4
  %49 = load i32, ptr %decimals, align 4
  %dec72 = add nsw i32 %49, -1
  store i32 %dec72, ptr %decimals, align 4
  br label %while.cond65, !llvm.loop !17

while.end73:                                      ; preds = %land.end
  store i32 0, ptr %digits, align 4
  br label %while.cond74

while.cond74:                                     ; preds = %while.body80, %while.end73
  %50 = load i32, ptr %n, align 4
  %cmp75 = icmp ne i32 %50, 0
  br i1 %cmp75, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond74
  %51 = load i32, ptr %digits, align 4
  %52 = load i32, ptr %decimals, align 4
  %add77 = add nsw i32 %52, 1
  %cmp78 = icmp slt i32 %51, %add77
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond74
  %53 = phi i1 [ true, %while.cond74 ], [ %cmp78, %lor.rhs ]
  br i1 %53, label %while.body80, label %while.end86

while.body80:                                     ; preds = %lor.end
  %54 = load i32, ptr %n, align 4
  %rem81 = srem i32 %54, 10
  %add82 = add nsw i32 48, %rem81
  %conv83 = trunc i32 %add82 to i8
  %55 = load i32, ptr %digits, align 4
  %inc84 = add nsw i32 %55, 1
  store i32 %inc84, ptr %digits, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv83, ptr %arrayidx, align 1
  %56 = load i32, ptr %n, align 4
  %div85 = sdiv i32 %56, 10
  store i32 %div85, ptr %n, align 4
  br label %while.cond74, !llvm.loop !18

while.end86:                                      ; preds = %lor.end
  br label %while.cond87

while.cond87:                                     ; preds = %if.end95, %while.end86
  %57 = load i32, ptr %digits, align 4
  %cmp88 = icmp sgt i32 %57, 0
  br i1 %cmp88, label %while.body90, label %while.end101

while.body90:                                     ; preds = %while.cond87
  %58 = load i32, ptr %digits, align 4
  %59 = load i32, ptr %decimals, align 4
  %cmp91 = icmp eq i32 %58, %59
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %while.body90
  %call94 = call i32 @putchar(i32 noundef 46)
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %while.body90
  %60 = load i32, ptr %digits, align 4
  %dec96 = add nsw i32 %60, -1
  store i32 %dec96, ptr %digits, align 4
  %idxprom97 = sext i32 %dec96 to i64
  %arrayidx98 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom97
  %61 = load i8, ptr %arrayidx98, align 1
  %conv99 = sext i8 %61 to i32
  %call100 = call i32 @putchar(i32 noundef %conv99)
  br label %while.cond87, !llvm.loop !19

while.end101:                                     ; preds = %while.cond87
  %62 = load i32, ptr %exponent, align 4
  %cmp102 = icmp ne i32 %62, 0
  br i1 %cmp102, label %if.then104, label %if.end140

if.then104:                                       ; preds = %while.end101
  %call105 = call i32 @putchar(i32 noundef 101)
  %63 = load i32, ptr %exponent, align 4
  %cmp106 = icmp slt i32 %63, 0
  br i1 %cmp106, label %if.then108, label %if.else111

if.then108:                                       ; preds = %if.then104
  %call109 = call i32 @putchar(i32 noundef 45)
  %64 = load i32, ptr %exponent, align 4
  %sub110 = sub nsw i32 0, %64
  store i32 %sub110, ptr %exponent, align 4
  br label %if.end113

if.else111:                                       ; preds = %if.then104
  %call112 = call i32 @putchar(i32 noundef 43)
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then108
  store i32 0, ptr %digits, align 4
  br label %while.cond114

while.cond114:                                    ; preds = %while.body121, %if.end113
  %65 = load i32, ptr %exponent, align 4
  %cmp115 = icmp ne i32 %65, 0
  br i1 %cmp115, label %lor.end120, label %lor.rhs117

lor.rhs117:                                       ; preds = %while.cond114
  %66 = load i32, ptr %digits, align 4
  %cmp118 = icmp slt i32 %66, 2
  br label %lor.end120

lor.end120:                                       ; preds = %lor.rhs117, %while.cond114
  %67 = phi i1 [ true, %while.cond114 ], [ %cmp118, %lor.rhs117 ]
  br i1 %67, label %while.body121, label %while.end129

while.body121:                                    ; preds = %lor.end120
  %68 = load i32, ptr %exponent, align 4
  %rem122 = srem i32 %68, 10
  %add123 = add nsw i32 48, %rem122
  %conv124 = trunc i32 %add123 to i8
  %69 = load i32, ptr %digits, align 4
  %inc125 = add nsw i32 %69, 1
  store i32 %inc125, ptr %digits, align 4
  %idxprom126 = sext i32 %69 to i64
  %arrayidx127 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom126
  store i8 %conv124, ptr %arrayidx127, align 1
  %70 = load i32, ptr %exponent, align 4
  %div128 = sdiv i32 %70, 10
  store i32 %div128, ptr %exponent, align 4
  br label %while.cond114, !llvm.loop !20

while.end129:                                     ; preds = %lor.end120
  br label %while.cond130

while.cond130:                                    ; preds = %while.body133, %while.end129
  %71 = load i32, ptr %digits, align 4
  %cmp131 = icmp sgt i32 %71, 0
  br i1 %cmp131, label %while.body133, label %while.end139

while.body133:                                    ; preds = %while.cond130
  %72 = load i32, ptr %digits, align 4
  %dec134 = add nsw i32 %72, -1
  store i32 %dec134, ptr %digits, align 4
  %idxprom135 = sext i32 %dec134 to i64
  %arrayidx136 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom135
  %73 = load i8, ptr %arrayidx136, align 1
  %conv137 = sext i8 %73 to i32
  %call138 = call i32 @putchar(i32 noundef %conv137)
  br label %while.cond130, !llvm.loop !21

while.end139:                                     ; preds = %while.cond130
  br label %if.end140

if.end140:                                        ; preds = %while.end139, %while.end101
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then25
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then12
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityConcludeTest() #0 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 7), align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 7), align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool1 = icmp ne i64 %2, 0
  br i1 %tobool1, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr @Unity, align 8
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 4), align 8
  call void @UnityTestResultsBegin(ptr noundef %3, i64 noundef %4)
  call void @UnityPrint(ptr noundef @UnityStrPass)
  br label %if.end

if.else3:                                         ; preds = %if.else
  %5 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 6), align 8
  %inc4 = add i64 %5, 1
  store i64 %inc4, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 6), align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %call = call i32 @putchar(i32 noundef 10)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityTestResultsBegin(ptr noundef %file, i64 noundef %line) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store i64 %line, ptr %line.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  call void @UnityPrint(ptr noundef %0)
  %call = call i32 @putchar(i32 noundef 58)
  %1 = load i64, ptr %line.addr, align 8
  call void @UnityPrintNumber(i64 noundef %1)
  %call1 = call i32 @putchar(i32 noundef 58)
  %2 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 1), align 8
  call void @UnityPrint(ptr noundef %2)
  %call2 = call i32 @putchar(i32 noundef 58)
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end4

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %mask.addr, align 8
  %3 = load i64, ptr %expected.addr, align 8
  %and = and i64 %2, %3
  %4 = load i64, ptr %mask.addr, align 8
  %5 = load i64, ptr %actual.addr, align 8
  %and2 = and i64 %4, %5
  %cmp = icmp ne i64 %and, %and2
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %6)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %7 = load i64, ptr %mask.addr, align 8
  %8 = load i64, ptr %expected.addr, align 8
  call void @UnityPrintMask(i64 noundef %7, i64 noundef %8)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %9 = load i64, ptr %mask.addr, align 8
  %10 = load i64, ptr %actual.addr, align 8
  call void @UnityPrintMask(i64 noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %11)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end4:                                          ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityTestResultsFailBegin(i64 noundef %line) #0 {
entry:
  %line.addr = alloca i64, align 8
  store i64 %line, ptr %line.addr, align 8
  %0 = load ptr, ptr @Unity, align 8
  %1 = load i64, ptr %line.addr, align 8
  call void @UnityTestResultsBegin(ptr noundef %0, i64 noundef %1)
  call void @UnityPrint(ptr noundef @UnityStrFail)
  %call = call i32 @putchar(i32 noundef 58)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityAddMsgIfSpecified(ptr noundef %msg) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  store ptr %msg, ptr %msg.addr, align 8
  %0 = load ptr, ptr %msg.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef @UnityStrSpacer)
  %1 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 2), align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  call void @UnityPrint(ptr noundef @UnityStrDetail1Name)
  %2 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 2), align 8
  call void @UnityPrint(ptr noundef %2)
  %3 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 3), align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  call void @UnityPrint(ptr noundef @UnityStrDetail2Name)
  %4 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 3), align 8
  call void @UnityPrint(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  call void @UnityPrint(ptr noundef @UnityStrSpacer)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %msg.addr, align 8
  call void @UnityPrint(ptr noundef %5)
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end3

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %expected.addr, align 8
  %3 = load i64, ptr %actual.addr, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %4)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %5 = load i64, ptr %expected.addr, align 8
  %6 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %5, i32 noundef %6)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %7 = load i64, ptr %actual.addr, align 8
  %8 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %9)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end3:                                          ; preds = %if.then, %if.end
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end50

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %threshold.addr, align 8
  %3 = load i64, ptr %actual.addr, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %compare.addr, align 4
  %and = and i32 %4, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  br label %if.end50

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
  %cmp9 = icmp eq i32 %and8, 16
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %8 = load i64, ptr %actual.addr, align 8
  %9 = load i64, ptr %threshold.addr, align 8
  %cmp11 = icmp sgt i64 %8, %9
  br i1 %cmp11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.then10
  %10 = load i32, ptr %compare.addr, align 4
  %and13 = and i32 %10, 4
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  store i32 1, ptr %failed, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12, %if.then10
  %11 = load i64, ptr %actual.addr, align 8
  %12 = load i64, ptr %threshold.addr, align 8
  %cmp17 = icmp slt i64 %11, %12
  br i1 %cmp17, label %land.lhs.true18, label %if.end22

land.lhs.true18:                                  ; preds = %if.end16
  %13 = load i32, ptr %compare.addr, align 4
  %and19 = and i32 %13, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true18
  store i32 1, ptr %failed, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true18, %if.end16
  br label %if.end35

if.else:                                          ; preds = %if.end7
  %14 = load i64, ptr %actual.addr, align 8
  %15 = load i64, ptr %threshold.addr, align 8
  %cmp23 = icmp ugt i64 %14, %15
  br i1 %cmp23, label %land.lhs.true24, label %if.end28

land.lhs.true24:                                  ; preds = %if.else
  %16 = load i32, ptr %compare.addr, align 4
  %and25 = and i32 %16, 4
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true24
  store i32 1, ptr %failed, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true24, %if.else
  %17 = load i64, ptr %actual.addr, align 8
  %18 = load i64, ptr %threshold.addr, align 8
  %cmp29 = icmp ult i64 %17, %18
  br i1 %cmp29, label %land.lhs.true30, label %if.end34

land.lhs.true30:                                  ; preds = %if.end28
  %19 = load i32, ptr %compare.addr, align 4
  %and31 = and i32 %19, 2
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true30
  store i32 1, ptr %failed, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true30, %if.end28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end22
  %20 = load i32, ptr %failed, align 4
  %tobool36 = icmp ne i32 %20, 0
  br i1 %tobool36, label %if.then37, label %if.end50

if.then37:                                        ; preds = %if.end35
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %22 = load i64, ptr %actual.addr, align 8
  %23 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %22, i32 noundef %23)
  %24 = load i32, ptr %compare.addr, align 4
  %and38 = and i32 %24, 2
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  call void @UnityPrint(ptr noundef @UnityStrGt)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then37
  %25 = load i32, ptr %compare.addr, align 4
  %and42 = and i32 %25, 4
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @UnityPrint(ptr noundef @UnityStrLt)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %26 = load i32, ptr %compare.addr, align 4
  %and46 = and i32 %26, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @UnityPrint(ptr noundef @UnityStrOrEqual)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %27 = load i64, ptr %threshold.addr, align 8
  %28 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %29)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end50:                                         ; preds = %if.then, %if.then3, %if.end35
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
  %mask = alloca i64, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  store i32 %num_elements, ptr %num_elements.addr, align 4
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %lineNumber, ptr %lineNumber.addr, align 8
  store i32 %style, ptr %style.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i32, ptr %num_elements.addr, align 4
  store i32 %0, ptr %elements, align 4
  %1 = load i32, ptr %style.addr, align 4
  %and = and i32 %1, 15
  store i32 %and, ptr %length, align 4
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %num_elements.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef @UnityStrPointless)
  %6 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %6)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %7, %8
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %while.end

if.end6:                                          ; preds = %if.end3
  %9 = load ptr, ptr %expected.addr, align 8
  %10 = load ptr, ptr %actual.addr, align 8
  %11 = load i64, ptr %lineNumber.addr, align 8
  %12 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end9:                                          ; preds = %if.end6
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end9
  %13 = load i32, ptr %elements, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %elements, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %length, align 4
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 8, label %sw.bb15
  ]

sw.bb:                                            ; preds = %while.body
  %15 = load ptr, ptr %expected.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv = sext i8 %16 to i64
  store i64 %conv, ptr %expect_val, align 8
  %17 = load ptr, ptr %actual.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv11 = sext i8 %18 to i64
  store i64 %conv11, ptr %actual_val, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %19 = load ptr, ptr %expected.addr, align 8
  %20 = load i16, ptr %19, align 2
  %conv13 = sext i16 %20 to i64
  store i64 %conv13, ptr %expect_val, align 8
  %21 = load ptr, ptr %actual.addr, align 8
  %22 = load i16, ptr %21, align 2
  %conv14 = sext i16 %22 to i64
  store i64 %conv14, ptr %actual_val, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  %23 = load ptr, ptr %expected.addr, align 8
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %expect_val, align 8
  %25 = load ptr, ptr %actual.addr, align 8
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %actual_val, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %27 = load ptr, ptr %expected.addr, align 8
  %28 = load i32, ptr %27, align 4
  %conv16 = sext i32 %28 to i64
  store i64 %conv16, ptr %expect_val, align 8
  %29 = load ptr, ptr %actual.addr, align 8
  %30 = load i32, ptr %29, align 4
  %conv17 = sext i32 %30 to i64
  store i64 %conv17, ptr %actual_val, align 8
  store i32 4, ptr %length, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb
  %31 = load i64, ptr %expect_val, align 8
  %32 = load i64, ptr %actual_val, align 8
  %cmp18 = icmp ne i64 %31, %32
  br i1 %cmp18, label %if.then20, label %if.end33

if.then20:                                        ; preds = %sw.epilog
  %33 = load i32, ptr %style.addr, align 4
  %and21 = and i32 %33, 32
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.then20
  %34 = load i32, ptr %length, align 4
  %conv23 = zext i32 %34 to i64
  %cmp24 = icmp ult i64 %conv23, 8
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  store i64 1, ptr %mask, align 8
  %35 = load i64, ptr %mask, align 8
  %36 = load i32, ptr %length, align 4
  %mul = mul i32 8, %36
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 %35, %sh_prom
  %sub = sub nsw i64 %shl, 1
  store i64 %sub, ptr %mask, align 8
  %37 = load i64, ptr %mask, align 8
  %38 = load i64, ptr %expect_val, align 8
  %and27 = and i64 %38, %37
  store i64 %and27, ptr %expect_val, align 8
  %39 = load i64, ptr %mask, align 8
  %40 = load i64, ptr %actual_val, align 8
  %and28 = and i64 %40, %39
  store i64 %and28, ptr %actual_val, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true, %if.then20
  %41 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %41)
  call void @UnityPrint(ptr noundef @UnityStrElement)
  %42 = load i32, ptr %num_elements.addr, align 4
  %43 = load i32, ptr %elements, align 4
  %sub30 = sub i32 %42, %43
  %sub31 = sub i32 %sub30, 1
  %conv32 = zext i32 %sub31 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv32)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %44 = load i64, ptr %expect_val, align 8
  %45 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %44, i32 noundef %45)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %46 = load i64, ptr %actual_val, align 8
  %47 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %46, i32 noundef %47)
  %48 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %48)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end33:                                         ; preds = %sw.epilog
  %49 = load i32, ptr %flags.addr, align 4
  %cmp34 = icmp eq i32 %49, 1
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  %50 = load i32, ptr %length, align 4
  %51 = load ptr, ptr %expected.addr, align 8
  %idx.ext = zext i32 %50 to i64
  %add.ptr = getelementptr inbounds i8, ptr %51, i64 %idx.ext
  store ptr %add.ptr, ptr %expected.addr, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %52 = load i32, ptr %length, align 4
  %53 = load ptr, ptr %actual.addr, align 8
  %idx.ext38 = zext i32 %52 to i64
  %add.ptr39 = getelementptr inbounds i8, ptr %53, i64 %idx.ext38
  store ptr %add.ptr39, ptr %actual.addr, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %if.then, %if.then5, %while.cond
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
  %0 = load ptr, ptr %expected.addr, align 8
  %1 = load ptr, ptr %actual.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %expected.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %3)
  call void @UnityPrint(ptr noundef @UnityStrNullPointerForExpected)
  %4 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %6 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %6)
  call void @UnityPrint(ptr noundef @UnityStrNullPointerForActual)
  %7 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %7)
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
  %0 = load i32, ptr %num_elements.addr, align 4
  store i32 %0, ptr %elements, align 4
  %1 = load ptr, ptr %expected.addr, align 8
  store ptr %1, ptr %ptr_expected, align 8
  %2 = load ptr, ptr %actual.addr, align 8
  store ptr %2, ptr %ptr_actual, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %elements, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %6)
  call void @UnityPrint(ptr noundef @UnityStrPointless)
  %7 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %7)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %expected.addr, align 8
  %9 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %8, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %while.end

if.end6:                                          ; preds = %if.end3
  %10 = load ptr, ptr %expected.addr, align 8
  %11 = load ptr, ptr %actual.addr, align 8
  %12 = load i64, ptr %lineNumber.addr, align 8
  %13 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end9:                                          ; preds = %if.end6
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end9
  %14 = load i32, ptr %elements, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %elements, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %ptr_expected, align 8
  %16 = load float, ptr %15, align 4
  %mul = fmul float %16, 0x3EE4F8B580000000
  %17 = load ptr, ptr %ptr_expected, align 8
  %18 = load float, ptr %17, align 4
  %19 = load ptr, ptr %ptr_actual, align 8
  %20 = load float, ptr %19, align 4
  %call11 = call i32 @UnityFloatsWithin(float noundef %mul, float noundef %18, float noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %while.body
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  call void @UnityPrint(ptr noundef @UnityStrElement)
  %22 = load i32, ptr %num_elements.addr, align 4
  %23 = load i32, ptr %elements, align 4
  %sub = sub i32 %22, %23
  %sub14 = sub i32 %sub, 1
  %conv = zext i32 %sub14 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %24 = load ptr, ptr %ptr_expected, align 8
  %25 = load float, ptr %24, align 4
  %conv15 = fpext float %25 to double
  call void @UnityPrintFloat(double noundef %conv15)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %26 = load ptr, ptr %ptr_actual, align 8
  %27 = load float, ptr %26, align 4
  %conv16 = fpext float %27 to double
  call void @UnityPrintFloat(double noundef %conv16)
  %28 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %28)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end17:                                         ; preds = %while.body
  %29 = load i32, ptr %flags.addr, align 4
  %cmp18 = icmp eq i32 %29, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %30 = load ptr, ptr %ptr_expected, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %ptr_expected, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %31 = load ptr, ptr %ptr_actual, align 8
  %incdec.ptr22 = getelementptr inbounds float, ptr %31, i32 1
  store ptr %incdec.ptr22, ptr %ptr_actual, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %if.then, %if.then5, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @UnityFloatsWithin(float noundef %delta, float noundef %expected, float noundef %actual) #0 {
entry:
  %__x.addr.i136 = alloca double, align 8
  %__x.addr.i133 = alloca double, align 8
  %__x.addr.i130 = alloca double, align 8
  %__x.addr.i127 = alloca double, align 8
  %__x.addr.i124 = alloca double, align 8
  %__x.addr.i121 = alloca double, align 8
  %__x.addr.i118 = alloca float, align 4
  %__x.addr.i115 = alloca float, align 4
  %__x.addr.i112 = alloca float, align 4
  %__x.addr.i109 = alloca double, align 8
  %__x.addr.i106 = alloca double, align 8
  %__x.addr.i103 = alloca double, align 8
  %__x.addr.i100 = alloca double, align 8
  %__x.addr.i97 = alloca double, align 8
  %__x.addr.i94 = alloca double, align 8
  %__x.addr.i91 = alloca float, align 4
  %__x.addr.i88 = alloca float, align 4
  %__x.addr.i = alloca float, align 4
  %retval = alloca i32, align 4
  %delta.addr = alloca float, align 4
  %expected.addr = alloca float, align 4
  %actual.addr = alloca float, align 4
  %diff = alloca float, align 4
  store float %delta, ptr %delta.addr, align 4
  store float %expected, ptr %expected.addr, align 4
  store float %actual, ptr %actual.addr, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load float, ptr %expected.addr, align 4
  store float %0, ptr %__x.addr.i118, align 4
  %1 = load float, ptr %__x.addr.i118, align 4
  %2 = call float @llvm.fabs.f32(float %1)
  %cmp.i119 = fcmp oeq float %2, 0x7FF0000000000000
  %conv.i120 = zext i1 %cmp.i119 to i32
  %tobool = icmp ne i32 %conv.i120, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4

cond.true1:                                       ; preds = %cond.false
  %3 = load float, ptr %expected.addr, align 4
  %conv = fpext float %3 to double
  store double %conv, ptr %__x.addr.i127, align 8
  %4 = load double, ptr %__x.addr.i127, align 8
  %5 = call double @llvm.fabs.f64(double %4)
  %cmp.i128 = fcmp oeq double %5, 0x7FF0000000000000
  %conv.i129 = zext i1 %cmp.i128 to i32
  %tobool3 = icmp ne i32 %conv.i129, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

cond.false4:                                      ; preds = %cond.false
  %6 = load float, ptr %expected.addr, align 4
  %conv5 = fpext float %6 to double
  store double %conv5, ptr %__x.addr.i136, align 8
  %7 = load double, ptr %__x.addr.i136, align 8
  %8 = call double @llvm.fabs.f64(double %7)
  %cmp.i137 = fcmp oeq double %8, 0x7FF0000000000000
  %conv.i138 = zext i1 %cmp.i137 to i32
  %tobool7 = icmp ne i32 %conv.i138, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.false4, %cond.true1, %cond.true
  br i1 true, label %cond.true8, label %cond.false11

cond.true8:                                       ; preds = %land.lhs.true
  %9 = load float, ptr %actual.addr, align 4
  store float %9, ptr %__x.addr.i115, align 4
  %10 = load float, ptr %__x.addr.i115, align 4
  %11 = call float @llvm.fabs.f32(float %10)
  %cmp.i116 = fcmp oeq float %11, 0x7FF0000000000000
  %conv.i117 = zext i1 %cmp.i116 to i32
  %tobool10 = icmp ne i32 %conv.i117, 0
  br i1 %tobool10, label %land.lhs.true20, label %if.end

cond.false11:                                     ; preds = %land.lhs.true
  br i1 false, label %cond.true12, label %cond.false16

cond.true12:                                      ; preds = %cond.false11
  %12 = load float, ptr %actual.addr, align 4
  %conv13 = fpext float %12 to double
  store double %conv13, ptr %__x.addr.i124, align 8
  %13 = load double, ptr %__x.addr.i124, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %cmp.i125 = fcmp oeq double %14, 0x7FF0000000000000
  %conv.i126 = zext i1 %cmp.i125 to i32
  %tobool15 = icmp ne i32 %conv.i126, 0
  br i1 %tobool15, label %land.lhs.true20, label %if.end

cond.false16:                                     ; preds = %cond.false11
  %15 = load float, ptr %actual.addr, align 4
  %conv17 = fpext float %15 to double
  store double %conv17, ptr %__x.addr.i133, align 8
  %16 = load double, ptr %__x.addr.i133, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %cmp.i134 = fcmp oeq double %17, 0x7FF0000000000000
  %conv.i135 = zext i1 %cmp.i134 to i32
  %tobool19 = icmp ne i32 %conv.i135, 0
  br i1 %tobool19, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %cond.false16, %cond.true12, %cond.true8
  %18 = load float, ptr %expected.addr, align 4
  %cmp = fcmp olt float %18, 0.000000e+00
  %conv21 = zext i1 %cmp to i32
  %19 = load float, ptr %actual.addr, align 4
  %cmp22 = fcmp olt float %19, 0.000000e+00
  %conv23 = zext i1 %cmp22 to i32
  %cmp24 = icmp eq i32 %conv21, %conv23
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true20
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true20, %cond.false16, %cond.true12, %cond.true8, %cond.false4, %cond.true1, %cond.true
  br i1 true, label %cond.true26, label %cond.false29

cond.true26:                                      ; preds = %if.end
  %20 = load float, ptr %expected.addr, align 4
  store float %20, ptr %__x.addr.i91, align 4
  %21 = load float, ptr %__x.addr.i91, align 4
  %22 = load float, ptr %__x.addr.i91, align 4
  %cmp.i92 = fcmp une float %21, %22
  %conv.i93 = zext i1 %cmp.i92 to i32
  %tobool28 = icmp ne i32 %conv.i93, 0
  br i1 %tobool28, label %land.lhs.true38, label %if.end52

cond.false29:                                     ; preds = %if.end
  br i1 false, label %cond.true30, label %cond.false34

cond.true30:                                      ; preds = %cond.false29
  %23 = load float, ptr %expected.addr, align 4
  %conv31 = fpext float %23 to double
  store double %conv31, ptr %__x.addr.i100, align 8
  %24 = load double, ptr %__x.addr.i100, align 8
  %25 = load double, ptr %__x.addr.i100, align 8
  %cmp.i101 = fcmp une double %24, %25
  %conv.i102 = zext i1 %cmp.i101 to i32
  %tobool33 = icmp ne i32 %conv.i102, 0
  br i1 %tobool33, label %land.lhs.true38, label %if.end52

cond.false34:                                     ; preds = %cond.false29
  %26 = load float, ptr %expected.addr, align 4
  %conv35 = fpext float %26 to double
  store double %conv35, ptr %__x.addr.i109, align 8
  %27 = load double, ptr %__x.addr.i109, align 8
  %28 = load double, ptr %__x.addr.i109, align 8
  %cmp.i110 = fcmp une double %27, %28
  %conv.i111 = zext i1 %cmp.i110 to i32
  %tobool37 = icmp ne i32 %conv.i111, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.end52

land.lhs.true38:                                  ; preds = %cond.false34, %cond.true30, %cond.true26
  br i1 true, label %cond.true39, label %cond.false42

cond.true39:                                      ; preds = %land.lhs.true38
  %29 = load float, ptr %actual.addr, align 4
  store float %29, ptr %__x.addr.i88, align 4
  %30 = load float, ptr %__x.addr.i88, align 4
  %31 = load float, ptr %__x.addr.i88, align 4
  %cmp.i89 = fcmp une float %30, %31
  %conv.i90 = zext i1 %cmp.i89 to i32
  %tobool41 = icmp ne i32 %conv.i90, 0
  br i1 %tobool41, label %if.then51, label %if.end52

cond.false42:                                     ; preds = %land.lhs.true38
  br i1 false, label %cond.true43, label %cond.false47

cond.true43:                                      ; preds = %cond.false42
  %32 = load float, ptr %actual.addr, align 4
  %conv44 = fpext float %32 to double
  store double %conv44, ptr %__x.addr.i97, align 8
  %33 = load double, ptr %__x.addr.i97, align 8
  %34 = load double, ptr %__x.addr.i97, align 8
  %cmp.i98 = fcmp une double %33, %34
  %conv.i99 = zext i1 %cmp.i98 to i32
  %tobool46 = icmp ne i32 %conv.i99, 0
  br i1 %tobool46, label %if.then51, label %if.end52

cond.false47:                                     ; preds = %cond.false42
  %35 = load float, ptr %actual.addr, align 4
  %conv48 = fpext float %35 to double
  store double %conv48, ptr %__x.addr.i106, align 8
  %36 = load double, ptr %__x.addr.i106, align 8
  %37 = load double, ptr %__x.addr.i106, align 8
  %cmp.i107 = fcmp une double %36, %37
  %conv.i108 = zext i1 %cmp.i107 to i32
  %tobool50 = icmp ne i32 %conv.i108, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cond.false47, %cond.true43, %cond.true39
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %cond.false47, %cond.true43, %cond.true39, %cond.false34, %cond.true30, %cond.true26
  %38 = load float, ptr %actual.addr, align 4
  %39 = load float, ptr %expected.addr, align 4
  %sub = fsub float %38, %39
  store float %sub, ptr %diff, align 4
  %40 = load float, ptr %diff, align 4
  %cmp53 = fcmp olt float %40, 0.000000e+00
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %41 = load float, ptr %diff, align 4
  %fneg = fneg float %41
  store float %fneg, ptr %diff, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  %42 = load float, ptr %delta.addr, align 4
  %cmp57 = fcmp olt float %42, 0.000000e+00
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %43 = load float, ptr %delta.addr, align 4
  %fneg60 = fneg float %43
  store float %fneg60, ptr %delta.addr, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56
  br i1 true, label %cond.true62, label %cond.false65

cond.true62:                                      ; preds = %if.end61
  %44 = load float, ptr %diff, align 4
  store float %44, ptr %__x.addr.i, align 4
  %45 = load float, ptr %__x.addr.i, align 4
  %46 = load float, ptr %__x.addr.i, align 4
  %cmp.i = fcmp une float %45, %46
  %conv.i = zext i1 %cmp.i to i32
  %tobool64 = icmp ne i32 %conv.i, 0
  br i1 %tobool64, label %lor.end, label %lor.lhs.false

cond.false65:                                     ; preds = %if.end61
  br i1 false, label %cond.true66, label %cond.false70

cond.true66:                                      ; preds = %cond.false65
  %47 = load float, ptr %diff, align 4
  %conv67 = fpext float %47 to double
  store double %conv67, ptr %__x.addr.i94, align 8
  %48 = load double, ptr %__x.addr.i94, align 8
  %49 = load double, ptr %__x.addr.i94, align 8
  %cmp.i95 = fcmp une double %48, %49
  %conv.i96 = zext i1 %cmp.i95 to i32
  %tobool69 = icmp ne i32 %conv.i96, 0
  br i1 %tobool69, label %lor.end, label %lor.lhs.false

cond.false70:                                     ; preds = %cond.false65
  %50 = load float, ptr %diff, align 4
  %conv71 = fpext float %50 to double
  store double %conv71, ptr %__x.addr.i103, align 8
  %51 = load double, ptr %__x.addr.i103, align 8
  %52 = load double, ptr %__x.addr.i103, align 8
  %cmp.i104 = fcmp une double %51, %52
  %conv.i105 = zext i1 %cmp.i104 to i32
  %tobool73 = icmp ne i32 %conv.i105, 0
  br i1 %tobool73, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false70, %cond.true66, %cond.true62
  br i1 true, label %cond.true74, label %cond.false77

cond.true74:                                      ; preds = %lor.lhs.false
  %53 = load float, ptr %diff, align 4
  store float %53, ptr %__x.addr.i112, align 4
  %54 = load float, ptr %__x.addr.i112, align 4
  %55 = call float @llvm.fabs.f32(float %54)
  %cmp.i113 = fcmp oeq float %55, 0x7FF0000000000000
  %conv.i114 = zext i1 %cmp.i113 to i32
  %tobool76 = icmp ne i32 %conv.i114, 0
  br i1 %tobool76, label %lor.end, label %lor.rhs

cond.false77:                                     ; preds = %lor.lhs.false
  br i1 false, label %cond.true78, label %cond.false82

cond.true78:                                      ; preds = %cond.false77
  %56 = load float, ptr %diff, align 4
  %conv79 = fpext float %56 to double
  store double %conv79, ptr %__x.addr.i121, align 8
  %57 = load double, ptr %__x.addr.i121, align 8
  %58 = call double @llvm.fabs.f64(double %57)
  %cmp.i122 = fcmp oeq double %58, 0x7FF0000000000000
  %conv.i123 = zext i1 %cmp.i122 to i32
  %tobool81 = icmp ne i32 %conv.i123, 0
  br i1 %tobool81, label %lor.end, label %lor.rhs

cond.false82:                                     ; preds = %cond.false77
  %59 = load float, ptr %diff, align 4
  %conv83 = fpext float %59 to double
  store double %conv83, ptr %__x.addr.i130, align 8
  %60 = load double, ptr %__x.addr.i130, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  %cmp.i131 = fcmp oeq double %61, 0x7FF0000000000000
  %conv.i132 = zext i1 %cmp.i131 to i32
  %tobool85 = icmp ne i32 %conv.i132, 0
  br i1 %tobool85, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false82, %cond.true78, %cond.true74
  %62 = load float, ptr %diff, align 4
  %63 = load float, ptr %delta.addr, align 4
  %cmp86 = fcmp ogt float %62, %63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false82, %cond.true78, %cond.true74, %cond.false70, %cond.true66, %cond.true62
  %64 = phi i1 [ true, %cond.false82 ], [ true, %cond.true78 ], [ true, %cond.true74 ], [ true, %cond.false70 ], [ true, %cond.true66 ], [ true, %cond.true62 ], [ %cmp86, %lor.rhs ]
  %lnot = xor i1 %64, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then51, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end5

if.end:                                           ; preds = %lor.lhs.false
  %2 = load float, ptr %delta.addr, align 4
  %3 = load float, ptr %expected.addr, align 4
  %4 = load float, ptr %actual.addr, align 4
  %call = call i32 @UnityFloatsWithin(float noundef %2, float noundef %3, float noundef %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %6 = load float, ptr %expected.addr, align 4
  %conv = fpext float %6 to double
  call void @UnityPrintFloat(double noundef %conv)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %7 = load float, ptr %actual.addr, align 4
  %conv4 = fpext float %7 to double
  call void @UnityPrintFloat(double noundef %conv4)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end5:                                          ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertFloatSpecial(float noundef %actual, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %__x.addr.i96 = alloca double, align 8
  %__x.addr.i93 = alloca double, align 8
  %__x.addr.i90 = alloca double, align 8
  %__x.addr.i87 = alloca double, align 8
  %__x.addr.i84 = alloca double, align 8
  %__x.addr.i81 = alloca double, align 8
  %__x.addr.i78 = alloca float, align 4
  %__x.addr.i75 = alloca float, align 4
  %__x.addr.i72 = alloca float, align 4
  %__x.addr.i69 = alloca float, align 4
  %__x.addr.i = alloca float, align 4
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %trait_names, ptr align 8 @__const.UnityAssertFloatSpecial.trait_names, i64 32, i1 false)
  %0 = load i32, ptr %style.addr, align 4
  %conv = zext i32 %0 to i64
  %and = and i64 %conv, 1
  store i64 %and, ptr %should_be_trait, align 8
  %1 = load i64, ptr %should_be_trait, align 8
  %tobool = icmp ne i64 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv1 = sext i32 %lnot.ext to i64
  store i64 %conv1, ptr %is_trait, align 8
  %2 = load i32, ptr %style.addr, align 4
  %shr = lshr i32 %2, 1
  %conv2 = zext i32 %shr to i64
  store i64 %conv2, ptr %trait_index, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool3 = icmp ne i64 %3, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool4 = icmp ne i64 %4, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end68

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %style.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb16
    i32 2, label %sw.bb16
    i32 5, label %sw.bb35
    i32 4, label %sw.bb35
    i32 7, label %sw.bb39
    i32 6, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %6 = load float, ptr %actual.addr, align 4
  store float %6, ptr %__x.addr.i78, align 4
  %7 = load float, ptr %__x.addr.i78, align 4
  %8 = call float @llvm.fabs.f32(float %7)
  %cmp.i79 = fcmp oeq float %8, 0x7FF0000000000000
  %conv.i80 = zext i1 %cmp.i79 to i32
  %tobool5 = icmp ne i32 %conv.i80, 0
  br i1 %tobool5, label %land.rhs, label %land.end

cond.false:                                       ; preds = %sw.bb
  br i1 false, label %cond.true6, label %cond.false10

cond.true6:                                       ; preds = %cond.false
  %9 = load float, ptr %actual.addr, align 4
  %conv7 = fpext float %9 to double
  store double %conv7, ptr %__x.addr.i87, align 8
  %10 = load double, ptr %__x.addr.i87, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  %cmp.i88 = fcmp oeq double %11, 0x7FF0000000000000
  %conv.i89 = zext i1 %cmp.i88 to i32
  %tobool9 = icmp ne i32 %conv.i89, 0
  br i1 %tobool9, label %land.rhs, label %land.end

cond.false10:                                     ; preds = %cond.false
  %12 = load float, ptr %actual.addr, align 4
  %conv11 = fpext float %12 to double
  store double %conv11, ptr %__x.addr.i96, align 8
  %13 = load double, ptr %__x.addr.i96, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %cmp.i97 = fcmp oeq double %14, 0x7FF0000000000000
  %conv.i98 = zext i1 %cmp.i97 to i32
  %tobool13 = icmp ne i32 %conv.i98, 0
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false10, %cond.true6, %cond.true
  %15 = load float, ptr %actual.addr, align 4
  %cmp = fcmp ogt float %15, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false10, %cond.true6, %cond.true
  %16 = phi i1 [ false, %cond.false10 ], [ false, %cond.true6 ], [ false, %cond.true ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %conv15 = sext i32 %land.ext to i64
  store i64 %conv15, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end, %if.end
  br i1 true, label %cond.true17, label %cond.false20

cond.true17:                                      ; preds = %sw.bb16
  %17 = load float, ptr %actual.addr, align 4
  store float %17, ptr %__x.addr.i75, align 4
  %18 = load float, ptr %__x.addr.i75, align 4
  %19 = call float @llvm.fabs.f32(float %18)
  %cmp.i76 = fcmp oeq float %19, 0x7FF0000000000000
  %conv.i77 = zext i1 %cmp.i76 to i32
  %tobool19 = icmp ne i32 %conv.i77, 0
  br i1 %tobool19, label %land.rhs29, label %land.end32

cond.false20:                                     ; preds = %sw.bb16
  br i1 false, label %cond.true21, label %cond.false25

cond.true21:                                      ; preds = %cond.false20
  %20 = load float, ptr %actual.addr, align 4
  %conv22 = fpext float %20 to double
  store double %conv22, ptr %__x.addr.i84, align 8
  %21 = load double, ptr %__x.addr.i84, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %cmp.i85 = fcmp oeq double %22, 0x7FF0000000000000
  %conv.i86 = zext i1 %cmp.i85 to i32
  %tobool24 = icmp ne i32 %conv.i86, 0
  br i1 %tobool24, label %land.rhs29, label %land.end32

cond.false25:                                     ; preds = %cond.false20
  %23 = load float, ptr %actual.addr, align 4
  %conv26 = fpext float %23 to double
  store double %conv26, ptr %__x.addr.i93, align 8
  %24 = load double, ptr %__x.addr.i93, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %cmp.i94 = fcmp oeq double %25, 0x7FF0000000000000
  %conv.i95 = zext i1 %cmp.i94 to i32
  %tobool28 = icmp ne i32 %conv.i95, 0
  br i1 %tobool28, label %land.rhs29, label %land.end32

land.rhs29:                                       ; preds = %cond.false25, %cond.true21, %cond.true17
  %26 = load float, ptr %actual.addr, align 4
  %cmp30 = fcmp olt float %26, 0.000000e+00
  br label %land.end32

land.end32:                                       ; preds = %land.rhs29, %cond.false25, %cond.true21, %cond.true17
  %27 = phi i1 [ false, %cond.false25 ], [ false, %cond.true21 ], [ false, %cond.true17 ], [ %cmp30, %land.rhs29 ]
  %land.ext33 = zext i1 %27 to i32
  %conv34 = sext i32 %land.ext33 to i64
  store i64 %conv34, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end, %if.end
  %28 = load float, ptr %actual.addr, align 4
  store float %28, ptr %__x.addr.i69, align 4
  %29 = load float, ptr %__x.addr.i69, align 4
  %30 = load float, ptr %__x.addr.i69, align 4
  %cmp.i70 = fcmp une float %29, %30
  %conv.i71 = zext i1 %cmp.i70 to i32
  %tobool37 = icmp ne i32 %conv.i71, 0
  %31 = zext i1 %tobool37 to i64
  %cond = select i1 %tobool37, i32 1, i32 0
  %conv38 = sext i32 %cond to i64
  store i64 %conv38, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end, %if.end
  br i1 true, label %cond.true40, label %cond.false43

cond.true40:                                      ; preds = %sw.bb39
  %32 = load float, ptr %actual.addr, align 4
  store float %32, ptr %__x.addr.i72, align 4
  %33 = load float, ptr %__x.addr.i72, align 4
  %34 = call float @llvm.fabs.f32(float %33)
  %cmp.i73 = fcmp oeq float %34, 0x7FF0000000000000
  %conv.i74 = zext i1 %cmp.i73 to i32
  %tobool42 = icmp ne i32 %conv.i74, 0
  br i1 %tobool42, label %land.end57, label %land.rhs52

cond.false43:                                     ; preds = %sw.bb39
  br i1 false, label %cond.true44, label %cond.false48

cond.true44:                                      ; preds = %cond.false43
  %35 = load float, ptr %actual.addr, align 4
  %conv45 = fpext float %35 to double
  store double %conv45, ptr %__x.addr.i81, align 8
  %36 = load double, ptr %__x.addr.i81, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %cmp.i82 = fcmp oeq double %37, 0x7FF0000000000000
  %conv.i83 = zext i1 %cmp.i82 to i32
  %tobool47 = icmp ne i32 %conv.i83, 0
  br i1 %tobool47, label %land.end57, label %land.rhs52

cond.false48:                                     ; preds = %cond.false43
  %38 = load float, ptr %actual.addr, align 4
  %conv49 = fpext float %38 to double
  store double %conv49, ptr %__x.addr.i90, align 8
  %39 = load double, ptr %__x.addr.i90, align 8
  %40 = call double @llvm.fabs.f64(double %39)
  %cmp.i91 = fcmp oeq double %40, 0x7FF0000000000000
  %conv.i92 = zext i1 %cmp.i91 to i32
  %tobool51 = icmp ne i32 %conv.i92, 0
  br i1 %tobool51, label %land.end57, label %land.rhs52

land.rhs52:                                       ; preds = %cond.false48, %cond.true44, %cond.true40
  %41 = load float, ptr %actual.addr, align 4
  store float %41, ptr %__x.addr.i, align 4
  %42 = load float, ptr %__x.addr.i, align 4
  %43 = load float, ptr %__x.addr.i, align 4
  %cmp.i = fcmp une float %42, %43
  %conv.i = zext i1 %cmp.i to i32
  %tobool54 = icmp ne i32 %conv.i, 0
  %lnot55 = xor i1 %tobool54, true
  br label %land.end57

land.end57:                                       ; preds = %land.rhs52, %cond.false48, %cond.true44, %cond.true40
  %44 = phi i1 [ false, %cond.false48 ], [ false, %cond.true44 ], [ false, %cond.true40 ], [ %lnot55, %land.rhs52 ]
  %land.ext58 = zext i1 %44 to i32
  %conv59 = sext i32 %land.ext58 to i64
  store i64 %conv59, ptr %is_trait, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i64 0, ptr %trait_index, align 8
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %trait_names, i64 0, i64 0
  store ptr @UnityStrInvalidFloatTrait, ptr %arrayidx, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.end57, %sw.bb35, %land.end32, %land.end
  %45 = load i64, ptr %is_trait, align 8
  %46 = load i64, ptr %should_be_trait, align 8
  %cmp60 = icmp ne i64 %45, %46
  br i1 %cmp60, label %if.then62, label %if.end68

if.then62:                                        ; preds = %sw.epilog
  %47 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %47)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %48 = load i64, ptr %should_be_trait, align 8
  %tobool63 = icmp ne i64 %48, 0
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.then62
  call void @UnityPrint(ptr noundef @UnityStrNot)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then62
  %49 = load i64, ptr %trait_index, align 8
  %arrayidx66 = getelementptr inbounds [4 x ptr], ptr %trait_names, i64 0, i64 %49
  %50 = load ptr, ptr %arrayidx66, align 8
  call void @UnityPrint(ptr noundef %50)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %51 = load float, ptr %actual.addr, align 4
  %conv67 = fpext float %51 to double
  call void @UnityPrintFloat(double noundef %conv67)
  %52 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %52)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end68:                                         ; preds = %if.then, %sw.epilog
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
  %0 = load i32, ptr %num_elements.addr, align 4
  store i32 %0, ptr %elements, align 4
  %1 = load ptr, ptr %expected.addr, align 8
  store ptr %1, ptr %ptr_expected, align 8
  %2 = load ptr, ptr %actual.addr, align 8
  store ptr %2, ptr %ptr_actual, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %elements, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %6)
  call void @UnityPrint(ptr noundef @UnityStrPointless)
  %7 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %7)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %expected.addr, align 8
  %9 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %8, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %while.end

if.end6:                                          ; preds = %if.end3
  %10 = load ptr, ptr %expected.addr, align 8
  %11 = load ptr, ptr %actual.addr, align 8
  %12 = load i64, ptr %lineNumber.addr, align 8
  %13 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end9:                                          ; preds = %if.end6
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end9
  %14 = load i32, ptr %elements, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %elements, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %ptr_expected, align 8
  %16 = load double, ptr %15, align 8
  %mul = fmul double %16, 0x3D719799812DEA11
  %17 = load ptr, ptr %ptr_expected, align 8
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %ptr_actual, align 8
  %20 = load double, ptr %19, align 8
  %call11 = call i32 @UnityDoublesWithin(double noundef %mul, double noundef %18, double noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %while.body
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  call void @UnityPrint(ptr noundef @UnityStrElement)
  %22 = load i32, ptr %num_elements.addr, align 4
  %23 = load i32, ptr %elements, align 4
  %sub = sub i32 %22, %23
  %sub14 = sub i32 %sub, 1
  %conv = zext i32 %sub14 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %24 = load ptr, ptr %ptr_expected, align 8
  %25 = load double, ptr %24, align 8
  call void @UnityPrintFloat(double noundef %25)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %26 = load ptr, ptr %ptr_actual, align 8
  %27 = load double, ptr %26, align 8
  call void @UnityPrintFloat(double noundef %27)
  %28 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %28)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end15:                                         ; preds = %while.body
  %29 = load i32, ptr %flags.addr, align 4
  %cmp16 = icmp eq i32 %29, 1
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %30 = load ptr, ptr %ptr_expected, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %ptr_expected, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %31 = load ptr, ptr %ptr_actual, align 8
  %incdec.ptr20 = getelementptr inbounds double, ptr %31, i32 1
  store ptr %incdec.ptr20, ptr %ptr_actual, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %if.then, %if.then5, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @UnityDoublesWithin(double noundef %delta, double noundef %expected, double noundef %actual) #0 {
entry:
  %__x.addr.i130 = alloca double, align 8
  %__x.addr.i127 = alloca double, align 8
  %__x.addr.i124 = alloca double, align 8
  %__x.addr.i121 = alloca double, align 8
  %__x.addr.i118 = alloca double, align 8
  %__x.addr.i115 = alloca double, align 8
  %__x.addr.i112 = alloca float, align 4
  %__x.addr.i109 = alloca float, align 4
  %__x.addr.i106 = alloca float, align 4
  %__x.addr.i103 = alloca double, align 8
  %__x.addr.i100 = alloca double, align 8
  %__x.addr.i97 = alloca double, align 8
  %__x.addr.i94 = alloca double, align 8
  %__x.addr.i91 = alloca double, align 8
  %__x.addr.i88 = alloca double, align 8
  %__x.addr.i85 = alloca float, align 4
  %__x.addr.i82 = alloca float, align 4
  %__x.addr.i = alloca float, align 4
  %retval = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %expected.addr = alloca double, align 8
  %actual.addr = alloca double, align 8
  %diff = alloca double, align 8
  store double %delta, ptr %delta.addr, align 8
  store double %expected, ptr %expected.addr, align 8
  store double %actual, ptr %actual.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, ptr %expected.addr, align 8
  %conv = fptrunc double %0 to float
  store float %conv, ptr %__x.addr.i112, align 4
  %1 = load float, ptr %__x.addr.i112, align 4
  %2 = call float @llvm.fabs.f32(float %1)
  %cmp.i113 = fcmp oeq float %2, 0x7FF0000000000000
  %conv.i114 = zext i1 %cmp.i113 to i32
  %tobool = icmp ne i32 %conv.i114, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true1, label %cond.false4

cond.true1:                                       ; preds = %cond.false
  %3 = load double, ptr %expected.addr, align 8
  store double %3, ptr %__x.addr.i121, align 8
  %4 = load double, ptr %__x.addr.i121, align 8
  %5 = call double @llvm.fabs.f64(double %4)
  %cmp.i122 = fcmp oeq double %5, 0x7FF0000000000000
  %conv.i123 = zext i1 %cmp.i122 to i32
  %tobool3 = icmp ne i32 %conv.i123, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

cond.false4:                                      ; preds = %cond.false
  %6 = load double, ptr %expected.addr, align 8
  store double %6, ptr %__x.addr.i130, align 8
  %7 = load double, ptr %__x.addr.i130, align 8
  %8 = call double @llvm.fabs.f64(double %7)
  %cmp.i131 = fcmp oeq double %8, 0x7FF0000000000000
  %conv.i132 = zext i1 %cmp.i131 to i32
  %tobool6 = icmp ne i32 %conv.i132, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.false4, %cond.true1, %cond.true
  br i1 false, label %cond.true7, label %cond.false11

cond.true7:                                       ; preds = %land.lhs.true
  %9 = load double, ptr %actual.addr, align 8
  %conv8 = fptrunc double %9 to float
  store float %conv8, ptr %__x.addr.i109, align 4
  %10 = load float, ptr %__x.addr.i109, align 4
  %11 = call float @llvm.fabs.f32(float %10)
  %cmp.i110 = fcmp oeq float %11, 0x7FF0000000000000
  %conv.i111 = zext i1 %cmp.i110 to i32
  %tobool10 = icmp ne i32 %conv.i111, 0
  br i1 %tobool10, label %land.lhs.true18, label %if.end

cond.false11:                                     ; preds = %land.lhs.true
  br i1 true, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %cond.false11
  %12 = load double, ptr %actual.addr, align 8
  store double %12, ptr %__x.addr.i118, align 8
  %13 = load double, ptr %__x.addr.i118, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %cmp.i119 = fcmp oeq double %14, 0x7FF0000000000000
  %conv.i120 = zext i1 %cmp.i119 to i32
  %tobool14 = icmp ne i32 %conv.i120, 0
  br i1 %tobool14, label %land.lhs.true18, label %if.end

cond.false15:                                     ; preds = %cond.false11
  %15 = load double, ptr %actual.addr, align 8
  store double %15, ptr %__x.addr.i127, align 8
  %16 = load double, ptr %__x.addr.i127, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %cmp.i128 = fcmp oeq double %17, 0x7FF0000000000000
  %conv.i129 = zext i1 %cmp.i128 to i32
  %tobool17 = icmp ne i32 %conv.i129, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %cond.false15, %cond.true12, %cond.true7
  %18 = load double, ptr %expected.addr, align 8
  %cmp = fcmp olt double %18, 0.000000e+00
  %conv19 = zext i1 %cmp to i32
  %19 = load double, ptr %actual.addr, align 8
  %cmp20 = fcmp olt double %19, 0.000000e+00
  %conv21 = zext i1 %cmp20 to i32
  %cmp22 = icmp eq i32 %conv19, %conv21
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true18
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true18, %cond.false15, %cond.true12, %cond.true7, %cond.false4, %cond.true1, %cond.true
  br i1 false, label %cond.true24, label %cond.false28

cond.true24:                                      ; preds = %if.end
  %20 = load double, ptr %expected.addr, align 8
  %conv25 = fptrunc double %20 to float
  store float %conv25, ptr %__x.addr.i85, align 4
  %21 = load float, ptr %__x.addr.i85, align 4
  %22 = load float, ptr %__x.addr.i85, align 4
  %cmp.i86 = fcmp une float %21, %22
  %conv.i87 = zext i1 %cmp.i86 to i32
  %tobool27 = icmp ne i32 %conv.i87, 0
  br i1 %tobool27, label %land.lhs.true35, label %if.end48

cond.false28:                                     ; preds = %if.end
  br i1 true, label %cond.true29, label %cond.false32

cond.true29:                                      ; preds = %cond.false28
  %23 = load double, ptr %expected.addr, align 8
  store double %23, ptr %__x.addr.i94, align 8
  %24 = load double, ptr %__x.addr.i94, align 8
  %25 = load double, ptr %__x.addr.i94, align 8
  %cmp.i95 = fcmp une double %24, %25
  %conv.i96 = zext i1 %cmp.i95 to i32
  %tobool31 = icmp ne i32 %conv.i96, 0
  br i1 %tobool31, label %land.lhs.true35, label %if.end48

cond.false32:                                     ; preds = %cond.false28
  %26 = load double, ptr %expected.addr, align 8
  store double %26, ptr %__x.addr.i103, align 8
  %27 = load double, ptr %__x.addr.i103, align 8
  %28 = load double, ptr %__x.addr.i103, align 8
  %cmp.i104 = fcmp une double %27, %28
  %conv.i105 = zext i1 %cmp.i104 to i32
  %tobool34 = icmp ne i32 %conv.i105, 0
  br i1 %tobool34, label %land.lhs.true35, label %if.end48

land.lhs.true35:                                  ; preds = %cond.false32, %cond.true29, %cond.true24
  br i1 false, label %cond.true36, label %cond.false40

cond.true36:                                      ; preds = %land.lhs.true35
  %29 = load double, ptr %actual.addr, align 8
  %conv37 = fptrunc double %29 to float
  store float %conv37, ptr %__x.addr.i82, align 4
  %30 = load float, ptr %__x.addr.i82, align 4
  %31 = load float, ptr %__x.addr.i82, align 4
  %cmp.i83 = fcmp une float %30, %31
  %conv.i84 = zext i1 %cmp.i83 to i32
  %tobool39 = icmp ne i32 %conv.i84, 0
  br i1 %tobool39, label %if.then47, label %if.end48

cond.false40:                                     ; preds = %land.lhs.true35
  br i1 true, label %cond.true41, label %cond.false44

cond.true41:                                      ; preds = %cond.false40
  %32 = load double, ptr %actual.addr, align 8
  store double %32, ptr %__x.addr.i91, align 8
  %33 = load double, ptr %__x.addr.i91, align 8
  %34 = load double, ptr %__x.addr.i91, align 8
  %cmp.i92 = fcmp une double %33, %34
  %conv.i93 = zext i1 %cmp.i92 to i32
  %tobool43 = icmp ne i32 %conv.i93, 0
  br i1 %tobool43, label %if.then47, label %if.end48

cond.false44:                                     ; preds = %cond.false40
  %35 = load double, ptr %actual.addr, align 8
  store double %35, ptr %__x.addr.i100, align 8
  %36 = load double, ptr %__x.addr.i100, align 8
  %37 = load double, ptr %__x.addr.i100, align 8
  %cmp.i101 = fcmp une double %36, %37
  %conv.i102 = zext i1 %cmp.i101 to i32
  %tobool46 = icmp ne i32 %conv.i102, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %cond.false44, %cond.true41, %cond.true36
  store i32 1, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %cond.false44, %cond.true41, %cond.true36, %cond.false32, %cond.true29, %cond.true24
  %38 = load double, ptr %actual.addr, align 8
  %39 = load double, ptr %expected.addr, align 8
  %sub = fsub double %38, %39
  store double %sub, ptr %diff, align 8
  %40 = load double, ptr %diff, align 8
  %cmp49 = fcmp olt double %40, 0.000000e+00
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  %41 = load double, ptr %diff, align 8
  %fneg = fneg double %41
  store double %fneg, ptr %diff, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %42 = load double, ptr %delta.addr, align 8
  %cmp53 = fcmp olt double %42, 0.000000e+00
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  %43 = load double, ptr %delta.addr, align 8
  %fneg56 = fneg double %43
  store double %fneg56, ptr %delta.addr, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  br i1 false, label %cond.true58, label %cond.false62

cond.true58:                                      ; preds = %if.end57
  %44 = load double, ptr %diff, align 8
  %conv59 = fptrunc double %44 to float
  store float %conv59, ptr %__x.addr.i, align 4
  %45 = load float, ptr %__x.addr.i, align 4
  %46 = load float, ptr %__x.addr.i, align 4
  %cmp.i = fcmp une float %45, %46
  %conv.i = zext i1 %cmp.i to i32
  %tobool61 = icmp ne i32 %conv.i, 0
  br i1 %tobool61, label %lor.end, label %lor.lhs.false

cond.false62:                                     ; preds = %if.end57
  br i1 true, label %cond.true63, label %cond.false66

cond.true63:                                      ; preds = %cond.false62
  %47 = load double, ptr %diff, align 8
  store double %47, ptr %__x.addr.i88, align 8
  %48 = load double, ptr %__x.addr.i88, align 8
  %49 = load double, ptr %__x.addr.i88, align 8
  %cmp.i89 = fcmp une double %48, %49
  %conv.i90 = zext i1 %cmp.i89 to i32
  %tobool65 = icmp ne i32 %conv.i90, 0
  br i1 %tobool65, label %lor.end, label %lor.lhs.false

cond.false66:                                     ; preds = %cond.false62
  %50 = load double, ptr %diff, align 8
  store double %50, ptr %__x.addr.i97, align 8
  %51 = load double, ptr %__x.addr.i97, align 8
  %52 = load double, ptr %__x.addr.i97, align 8
  %cmp.i98 = fcmp une double %51, %52
  %conv.i99 = zext i1 %cmp.i98 to i32
  %tobool68 = icmp ne i32 %conv.i99, 0
  br i1 %tobool68, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false66, %cond.true63, %cond.true58
  br i1 false, label %cond.true69, label %cond.false73

cond.true69:                                      ; preds = %lor.lhs.false
  %53 = load double, ptr %diff, align 8
  %conv70 = fptrunc double %53 to float
  store float %conv70, ptr %__x.addr.i106, align 4
  %54 = load float, ptr %__x.addr.i106, align 4
  %55 = call float @llvm.fabs.f32(float %54)
  %cmp.i107 = fcmp oeq float %55, 0x7FF0000000000000
  %conv.i108 = zext i1 %cmp.i107 to i32
  %tobool72 = icmp ne i32 %conv.i108, 0
  br i1 %tobool72, label %lor.end, label %lor.rhs

cond.false73:                                     ; preds = %lor.lhs.false
  br i1 true, label %cond.true74, label %cond.false77

cond.true74:                                      ; preds = %cond.false73
  %56 = load double, ptr %diff, align 8
  store double %56, ptr %__x.addr.i115, align 8
  %57 = load double, ptr %__x.addr.i115, align 8
  %58 = call double @llvm.fabs.f64(double %57)
  %cmp.i116 = fcmp oeq double %58, 0x7FF0000000000000
  %conv.i117 = zext i1 %cmp.i116 to i32
  %tobool76 = icmp ne i32 %conv.i117, 0
  br i1 %tobool76, label %lor.end, label %lor.rhs

cond.false77:                                     ; preds = %cond.false73
  %59 = load double, ptr %diff, align 8
  store double %59, ptr %__x.addr.i124, align 8
  %60 = load double, ptr %__x.addr.i124, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  %cmp.i125 = fcmp oeq double %61, 0x7FF0000000000000
  %conv.i126 = zext i1 %cmp.i125 to i32
  %tobool79 = icmp ne i32 %conv.i126, 0
  br i1 %tobool79, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false77, %cond.true74, %cond.true69
  %62 = load double, ptr %diff, align 8
  %63 = load double, ptr %delta.addr, align 8
  %cmp80 = fcmp ogt double %62, %63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false77, %cond.true74, %cond.true69, %cond.false66, %cond.true63, %cond.true58
  %64 = phi i1 [ true, %cond.false77 ], [ true, %cond.true74 ], [ true, %cond.true69 ], [ true, %cond.false66 ], [ true, %cond.true63 ], [ true, %cond.true58 ], [ %cmp80, %lor.rhs ]
  %lnot = xor i1 %64, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then47, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end4

if.end:                                           ; preds = %lor.lhs.false
  %2 = load double, ptr %delta.addr, align 8
  %3 = load double, ptr %expected.addr, align 8
  %4 = load double, ptr %actual.addr, align 8
  %call = call i32 @UnityDoublesWithin(double noundef %2, double noundef %3, double noundef %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %5)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %6 = load double, ptr %expected.addr, align 8
  call void @UnityPrintFloat(double noundef %6)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %7 = load double, ptr %actual.addr, align 8
  call void @UnityPrintFloat(double noundef %7)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end4:                                          ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @UnityAssertDoubleSpecial(double noundef %actual, ptr noundef %msg, i64 noundef %lineNumber, i32 noundef %style) #0 {
entry:
  %__x.addr.i92 = alloca double, align 8
  %__x.addr.i89 = alloca double, align 8
  %__x.addr.i86 = alloca double, align 8
  %__x.addr.i83 = alloca double, align 8
  %__x.addr.i80 = alloca double, align 8
  %__x.addr.i77 = alloca double, align 8
  %__x.addr.i74 = alloca float, align 4
  %__x.addr.i71 = alloca float, align 4
  %__x.addr.i68 = alloca float, align 4
  %__x.addr.i65 = alloca double, align 8
  %__x.addr.i = alloca double, align 8
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %trait_names, ptr align 8 @__const.UnityAssertDoubleSpecial.trait_names, i64 32, i1 false)
  %0 = load i32, ptr %style.addr, align 4
  %conv = zext i32 %0 to i64
  %and = and i64 %conv, 1
  store i64 %and, ptr %should_be_trait, align 8
  %1 = load i64, ptr %should_be_trait, align 8
  %tobool = icmp ne i64 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv1 = sext i32 %lnot.ext to i64
  store i64 %conv1, ptr %is_trait, align 8
  %2 = load i32, ptr %style.addr, align 4
  %shr = lshr i32 %2, 1
  %conv2 = zext i32 %shr to i64
  store i64 %conv2, ptr %trait_index, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool3 = icmp ne i64 %3, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool4 = icmp ne i64 %4, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end64

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %style.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb15
    i32 2, label %sw.bb15
    i32 5, label %sw.bb33
    i32 4, label %sw.bb33
    i32 7, label %sw.bb37
    i32 6, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %6 = load double, ptr %actual.addr, align 8
  %conv5 = fptrunc double %6 to float
  store float %conv5, ptr %__x.addr.i74, align 4
  %7 = load float, ptr %__x.addr.i74, align 4
  %8 = call float @llvm.fabs.f32(float %7)
  %cmp.i75 = fcmp oeq float %8, 0x7FF0000000000000
  %conv.i76 = zext i1 %cmp.i75 to i32
  %tobool6 = icmp ne i32 %conv.i76, 0
  br i1 %tobool6, label %land.rhs, label %land.end

cond.false:                                       ; preds = %sw.bb
  br i1 true, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.false
  %9 = load double, ptr %actual.addr, align 8
  store double %9, ptr %__x.addr.i83, align 8
  %10 = load double, ptr %__x.addr.i83, align 8
  %11 = call double @llvm.fabs.f64(double %10)
  %cmp.i84 = fcmp oeq double %11, 0x7FF0000000000000
  %conv.i85 = zext i1 %cmp.i84 to i32
  %tobool9 = icmp ne i32 %conv.i85, 0
  br i1 %tobool9, label %land.rhs, label %land.end

cond.false10:                                     ; preds = %cond.false
  %12 = load double, ptr %actual.addr, align 8
  store double %12, ptr %__x.addr.i92, align 8
  %13 = load double, ptr %__x.addr.i92, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %cmp.i93 = fcmp oeq double %14, 0x7FF0000000000000
  %conv.i94 = zext i1 %cmp.i93 to i32
  %tobool12 = icmp ne i32 %conv.i94, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false10, %cond.true7, %cond.true
  %15 = load double, ptr %actual.addr, align 8
  %cmp = fcmp ogt double %15, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false10, %cond.true7, %cond.true
  %16 = phi i1 [ false, %cond.false10 ], [ false, %cond.true7 ], [ false, %cond.true ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %conv14 = sext i32 %land.ext to i64
  store i64 %conv14, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end, %if.end
  br i1 false, label %cond.true16, label %cond.false20

cond.true16:                                      ; preds = %sw.bb15
  %17 = load double, ptr %actual.addr, align 8
  %conv17 = fptrunc double %17 to float
  store float %conv17, ptr %__x.addr.i71, align 4
  %18 = load float, ptr %__x.addr.i71, align 4
  %19 = call float @llvm.fabs.f32(float %18)
  %cmp.i72 = fcmp oeq float %19, 0x7FF0000000000000
  %conv.i73 = zext i1 %cmp.i72 to i32
  %tobool19 = icmp ne i32 %conv.i73, 0
  br i1 %tobool19, label %land.rhs27, label %land.end30

cond.false20:                                     ; preds = %sw.bb15
  br i1 true, label %cond.true21, label %cond.false24

cond.true21:                                      ; preds = %cond.false20
  %20 = load double, ptr %actual.addr, align 8
  store double %20, ptr %__x.addr.i80, align 8
  %21 = load double, ptr %__x.addr.i80, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %cmp.i81 = fcmp oeq double %22, 0x7FF0000000000000
  %conv.i82 = zext i1 %cmp.i81 to i32
  %tobool23 = icmp ne i32 %conv.i82, 0
  br i1 %tobool23, label %land.rhs27, label %land.end30

cond.false24:                                     ; preds = %cond.false20
  %23 = load double, ptr %actual.addr, align 8
  store double %23, ptr %__x.addr.i89, align 8
  %24 = load double, ptr %__x.addr.i89, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %cmp.i90 = fcmp oeq double %25, 0x7FF0000000000000
  %conv.i91 = zext i1 %cmp.i90 to i32
  %tobool26 = icmp ne i32 %conv.i91, 0
  br i1 %tobool26, label %land.rhs27, label %land.end30

land.rhs27:                                       ; preds = %cond.false24, %cond.true21, %cond.true16
  %26 = load double, ptr %actual.addr, align 8
  %cmp28 = fcmp olt double %26, 0.000000e+00
  br label %land.end30

land.end30:                                       ; preds = %land.rhs27, %cond.false24, %cond.true21, %cond.true16
  %27 = phi i1 [ false, %cond.false24 ], [ false, %cond.true21 ], [ false, %cond.true16 ], [ %cmp28, %land.rhs27 ]
  %land.ext31 = zext i1 %27 to i32
  %conv32 = sext i32 %land.ext31 to i64
  store i64 %conv32, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end, %if.end
  %28 = load double, ptr %actual.addr, align 8
  store double %28, ptr %__x.addr.i65, align 8
  %29 = load double, ptr %__x.addr.i65, align 8
  %30 = load double, ptr %__x.addr.i65, align 8
  %cmp.i66 = fcmp une double %29, %30
  %conv.i67 = zext i1 %cmp.i66 to i32
  %tobool35 = icmp ne i32 %conv.i67, 0
  %31 = zext i1 %tobool35 to i64
  %cond = select i1 %tobool35, i32 1, i32 0
  %conv36 = sext i32 %cond to i64
  store i64 %conv36, ptr %is_trait, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end, %if.end
  br i1 false, label %cond.true38, label %cond.false42

cond.true38:                                      ; preds = %sw.bb37
  %32 = load double, ptr %actual.addr, align 8
  %conv39 = fptrunc double %32 to float
  store float %conv39, ptr %__x.addr.i68, align 4
  %33 = load float, ptr %__x.addr.i68, align 4
  %34 = call float @llvm.fabs.f32(float %33)
  %cmp.i69 = fcmp oeq float %34, 0x7FF0000000000000
  %conv.i70 = zext i1 %cmp.i69 to i32
  %tobool41 = icmp ne i32 %conv.i70, 0
  br i1 %tobool41, label %land.end54, label %land.rhs49

cond.false42:                                     ; preds = %sw.bb37
  br i1 true, label %cond.true43, label %cond.false46

cond.true43:                                      ; preds = %cond.false42
  %35 = load double, ptr %actual.addr, align 8
  store double %35, ptr %__x.addr.i77, align 8
  %36 = load double, ptr %__x.addr.i77, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %cmp.i78 = fcmp oeq double %37, 0x7FF0000000000000
  %conv.i79 = zext i1 %cmp.i78 to i32
  %tobool45 = icmp ne i32 %conv.i79, 0
  br i1 %tobool45, label %land.end54, label %land.rhs49

cond.false46:                                     ; preds = %cond.false42
  %38 = load double, ptr %actual.addr, align 8
  store double %38, ptr %__x.addr.i86, align 8
  %39 = load double, ptr %__x.addr.i86, align 8
  %40 = call double @llvm.fabs.f64(double %39)
  %cmp.i87 = fcmp oeq double %40, 0x7FF0000000000000
  %conv.i88 = zext i1 %cmp.i87 to i32
  %tobool48 = icmp ne i32 %conv.i88, 0
  br i1 %tobool48, label %land.end54, label %land.rhs49

land.rhs49:                                       ; preds = %cond.false46, %cond.true43, %cond.true38
  %41 = load double, ptr %actual.addr, align 8
  store double %41, ptr %__x.addr.i, align 8
  %42 = load double, ptr %__x.addr.i, align 8
  %43 = load double, ptr %__x.addr.i, align 8
  %cmp.i = fcmp une double %42, %43
  %conv.i = zext i1 %cmp.i to i32
  %tobool51 = icmp ne i32 %conv.i, 0
  %lnot52 = xor i1 %tobool51, true
  br label %land.end54

land.end54:                                       ; preds = %land.rhs49, %cond.false46, %cond.true43, %cond.true38
  %44 = phi i1 [ false, %cond.false46 ], [ false, %cond.true43 ], [ false, %cond.true38 ], [ %lnot52, %land.rhs49 ]
  %land.ext55 = zext i1 %44 to i32
  %conv56 = sext i32 %land.ext55 to i64
  store i64 %conv56, ptr %is_trait, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i64 0, ptr %trait_index, align 8
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %trait_names, i64 0, i64 0
  store ptr @UnityStrInvalidFloatTrait, ptr %arrayidx, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.end54, %sw.bb33, %land.end30, %land.end
  %45 = load i64, ptr %is_trait, align 8
  %46 = load i64, ptr %should_be_trait, align 8
  %cmp57 = icmp ne i64 %45, %46
  br i1 %cmp57, label %if.then59, label %if.end64

if.then59:                                        ; preds = %sw.epilog
  %47 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %47)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %48 = load i64, ptr %should_be_trait, align 8
  %tobool60 = icmp ne i64 %48, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then59
  call void @UnityPrint(ptr noundef @UnityStrNot)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59
  %49 = load i64, ptr %trait_index, align 8
  %arrayidx63 = getelementptr inbounds [4 x ptr], ptr %trait_names, i64 0, i64 %49
  %50 = load ptr, ptr %arrayidx63, align 8
  call void @UnityPrint(ptr noundef %50)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %51 = load double, ptr %actual.addr, align 8
  call void @UnityPrintFloat(double noundef %51)
  %52 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %52)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end64:                                         ; preds = %if.then, %sw.epilog
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end29

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %style.addr, align 4
  %and = and i32 %2, 16
  %cmp = icmp eq i32 %and, 16
  br i1 %cmp, label %if.then2, label %if.else12

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
  %conv = zext i1 %cmp5 to i32
  %conv6 = sext i32 %conv to i64
  store i64 %conv6, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end11

if.else:                                          ; preds = %if.then2
  %8 = load i64, ptr %expected.addr, align 8
  %9 = load i64, ptr %actual.addr, align 8
  %sub7 = sub nsw i64 %8, %9
  %10 = load i64, ptr %delta.addr, align 8
  %cmp8 = icmp ugt i64 %sub7, %10
  %conv9 = zext i1 %cmp8 to i32
  %conv10 = sext i32 %conv9 to i64
  store i64 %conv10, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
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
  %conv18 = zext i1 %cmp17 to i32
  %conv19 = sext i32 %conv18 to i64
  store i64 %conv19, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end25

if.else20:                                        ; preds = %if.else12
  %16 = load i64, ptr %expected.addr, align 8
  %17 = load i64, ptr %actual.addr, align 8
  %sub21 = sub nsw i64 %16, %17
  %18 = load i64, ptr %delta.addr, align 8
  %cmp22 = icmp ugt i64 %sub21, %18
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = sext i32 %conv23 to i64
  store i64 %conv24, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end11
  %19 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool27 = icmp ne i64 %19, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %20 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %20)
  call void @UnityPrint(ptr noundef @UnityStrDelta)
  %21 = load i64, ptr %delta.addr, align 8
  %22 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %21, i32 noundef %22)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %23 = load i64, ptr %expected.addr, align 8
  %24 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %23, i32 noundef %24)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %25 = load i64, ptr %actual.addr, align 8
  %26 = load i32, ptr %style.addr, align 4
  call void @UnityPrintNumberByStyle(i64 noundef %25, i32 noundef %26)
  %27 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %27)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end29:                                         ; preds = %if.then, %if.end26
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end26

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %expected.addr, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %actual.addr, align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %4 = load ptr, ptr %expected.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %7 = load ptr, ptr %actual.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %10 = phi i1 [ true, %for.cond ], [ %tobool9, %lor.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %11 = load ptr, ptr %expected.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom10 = zext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom10
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %14 = load ptr, ptr %actual.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom13 = zext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %idxprom13
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %16 to i32
  %cmp = icmp ne i32 %conv12, %conv15
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %for.end

if.end18:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %17 = load i32, ptr %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.then17, %lor.end
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %if.end
  %18 = load ptr, ptr %expected.addr, align 8
  %19 = load ptr, ptr %actual.addr, align 8
  %cmp19 = icmp ne ptr %18, %19
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %for.end
  %20 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool24 = icmp ne i64 %20, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  %21 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %21)
  %22 = load ptr, ptr %expected.addr, align 8
  %23 = load ptr, ptr %actual.addr, align 8
  call void @UnityPrintExpectedAndActualStrings(ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %24)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end26:                                         ; preds = %if.then, %if.end23
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @UnityPrintExpectedAndActualStrings(ptr noundef %expected, ptr noundef %actual) #0 {
entry:
  %expected.addr = alloca ptr, align 8
  %actual.addr = alloca ptr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store ptr %actual, ptr %actual.addr, align 8
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %0 = load ptr, ptr %expected.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 39)
  %1 = load ptr, ptr %expected.addr, align 8
  call void @UnityPrint(ptr noundef %1)
  %call1 = call i32 @putchar(i32 noundef 39)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef @UnityStrNull)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %2 = load ptr, ptr %actual.addr, align 8
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @putchar(i32 noundef 39)
  %3 = load ptr, ptr %actual.addr, align 8
  call void @UnityPrint(ptr noundef %3)
  %call5 = call i32 @putchar(i32 noundef 39)
  br label %if.end7

if.else6:                                         ; preds = %if.end
  call void @UnityPrint(ptr noundef @UnityStrNull)
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end27

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %expected.addr, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %actual.addr, align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %length.addr, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %expected.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %9 = load ptr, ptr %actual.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom6
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %tobool9, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %12, %lor.end ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load ptr, ptr %expected.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom10 = zext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10
  %16 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %16 to i32
  %17 = load ptr, ptr %actual.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom13 = zext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %17, i64 %idxprom13
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp ne i32 %conv12, %conv15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %for.end

if.end19:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %20 = load i32, ptr %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %if.then18, %land.end
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = load ptr, ptr %expected.addr, align 8
  %22 = load ptr, ptr %actual.addr, align 8
  %cmp20 = icmp ne ptr %21, %22
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %for.end
  %23 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool25 = icmp ne i64 %23, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  %24 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %24)
  %25 = load ptr, ptr %expected.addr, align 8
  %26 = load ptr, ptr %actual.addr, align 8
  %27 = load i32, ptr %length.addr, align 4
  call void @UnityPrintExpectedAndActualStringsLen(ptr noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %28)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end27:                                         ; preds = %if.then, %if.end24
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
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %0 = load ptr, ptr %expected.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 39)
  %1 = load ptr, ptr %expected.addr, align 8
  %2 = load i32, ptr %length.addr, align 4
  call void @UnityPrintLen(ptr noundef %1, i32 noundef %2)
  %call1 = call i32 @putchar(i32 noundef 39)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef @UnityStrNull)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %3 = load ptr, ptr %actual.addr, align 8
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @putchar(i32 noundef 39)
  %4 = load ptr, ptr %actual.addr, align 8
  %5 = load i32, ptr %length.addr, align 4
  call void @UnityPrintLen(ptr noundef %4, i32 noundef %5)
  %call5 = call i32 @putchar(i32 noundef 39)
  br label %if.end7

if.else6:                                         ; preds = %if.end
  call void @UnityPrint(ptr noundef @UnityStrNull)
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
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %num_elements.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %3)
  call void @UnityPrint(ptr noundef @UnityStrPointless)
  %4 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %4)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %expected.addr, align 8
  %6 = load ptr, ptr %actual.addr, align 8
  %cmp4 = icmp eq ptr %5, %6
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %do.end

if.end6:                                          ; preds = %if.end3
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load ptr, ptr %actual.addr, align 8
  %9 = load i64, ptr %lineNumber.addr, align 8
  %10 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end9:                                          ; preds = %if.end6
  %11 = load i32, ptr %flags.addr, align 4
  %cmp10 = icmp ne i32 %11, 1
  br i1 %cmp10, label %if.then11, label %if.end12

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
  %tobool18 = icmp ne ptr %20, null
  br i1 %tobool18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %21 = load ptr, ptr %act, align 8
  %tobool19 = icmp ne ptr %21, null
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then20
  %22 = load ptr, ptr %expd, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 %idxprom21
  %24 = load i8, ptr %arrayidx22, align 1
  %conv = sext i8 %24 to i32
  %tobool23 = icmp ne i32 %conv, 0
  br i1 %tobool23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %25 = load ptr, ptr %act, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom24 = zext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %25, i64 %idxprom24
  %27 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %27 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %28 = phi i1 [ true, %for.cond ], [ %tobool27, %lor.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %29 = load ptr, ptr %expd, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom28 = zext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 %idxprom28
  %31 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %31 to i32
  %32 = load ptr, ptr %act, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom31 = zext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %32, i64 %idxprom31
  %34 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %34 to i32
  %cmp34 = icmp ne i32 %conv30, %conv33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %for.end

if.end37:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %35 = load i32, ptr %i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %if.then36, %lor.end
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true, %if.end17
  %36 = load ptr, ptr %expd, align 8
  %37 = load ptr, ptr %act, align 8
  %cmp38 = icmp ne ptr %36, %37
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %for.end
  %38 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool43 = icmp ne i64 %38, 0
  br i1 %tobool43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end42
  %39 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %39)
  %40 = load i32, ptr %num_elements.addr, align 4
  %cmp45 = icmp ugt i32 %40, 1
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then44
  call void @UnityPrint(ptr noundef @UnityStrElement)
  %41 = load i32, ptr %j, align 4
  %conv48 = zext i32 %41 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv48)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then44
  %42 = load ptr, ptr %expd, align 8
  %43 = load ptr, ptr %act, align 8
  call void @UnityPrintExpectedAndActualStrings(ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %44)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end50:                                         ; preds = %if.end42
  br label %do.cond

do.cond:                                          ; preds = %if.end50
  %45 = load i32, ptr %j, align 4
  %inc51 = add i32 %45, 1
  store i32 %inc51, ptr %j, align 4
  %46 = load i32, ptr %num_elements.addr, align 4
  %cmp52 = icmp ult i32 %inc51, %46
  br i1 %cmp52, label %do.body, label %do.end, !llvm.loop !28

do.end:                                           ; preds = %if.then, %if.then5, %do.cond
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
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end38

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %elements, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then4, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %if.end
  %6 = load i32, ptr %length.addr, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false2, %if.end
  %7 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %7)
  call void @UnityPrint(ptr noundef @UnityStrPointless)
  %8 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %8)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end5:                                          ; preds = %lor.lhs.false2
  %9 = load ptr, ptr %expected.addr, align 8
  %10 = load ptr, ptr %actual.addr, align 8
  %cmp6 = icmp eq ptr %9, %10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  br label %while.end38

if.end8:                                          ; preds = %if.end5
  %11 = load ptr, ptr %expected.addr, align 8
  %12 = load ptr, ptr %actual.addr, align 8
  %13 = load i64, ptr %lineNumber.addr, align 8
  %14 = load ptr, ptr %msg.addr, align 8
  %call = call i32 @UnityIsOneArrayNull(ptr noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end11:                                         ; preds = %if.end8
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end11
  %15 = load i32, ptr %elements, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %elements, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %while.body, label %while.end38

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %length.addr, align 4
  store i32 %16, ptr %bytes, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end32, %while.body
  %17 = load i32, ptr %bytes, align 4
  %dec14 = add i32 %17, -1
  store i32 %dec14, ptr %bytes, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %while.body16, label %while.end

while.body16:                                     ; preds = %while.cond13
  %18 = load ptr, ptr %ptr_exp, align 8
  %19 = load i8, ptr %18, align 1
  %conv = zext i8 %19 to i32
  %20 = load ptr, ptr %ptr_act, align 8
  %21 = load i8, ptr %20, align 1
  %conv17 = zext i8 %21 to i32
  %cmp18 = icmp ne i32 %conv, %conv17
  br i1 %cmp18, label %if.then20, label %if.end32

if.then20:                                        ; preds = %while.body16
  %22 = load i64, ptr %lineNumber.addr, align 8
  call void @UnityTestResultsFailBegin(i64 noundef %22)
  call void @UnityPrint(ptr noundef @UnityStrMemory)
  %23 = load i32, ptr %num_elements.addr, align 4
  %cmp21 = icmp ugt i32 %23, 1
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.then20
  call void @UnityPrint(ptr noundef @UnityStrElement)
  %24 = load i32, ptr %num_elements.addr, align 4
  %25 = load i32, ptr %elements, align 4
  %sub = sub i32 %24, %25
  %sub24 = sub i32 %sub, 1
  %conv25 = zext i32 %sub24 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv25)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20
  call void @UnityPrint(ptr noundef @UnityStrByte)
  %26 = load i32, ptr %length.addr, align 4
  %27 = load i32, ptr %bytes, align 4
  %sub27 = sub i32 %26, %27
  %sub28 = sub i32 %sub27, 1
  %conv29 = zext i32 %sub28 to i64
  call void @UnityPrintNumberUnsigned(i64 noundef %conv29)
  call void @UnityPrint(ptr noundef @UnityStrExpected)
  %28 = load ptr, ptr %ptr_exp, align 8
  %29 = load i8, ptr %28, align 1
  %conv30 = zext i8 %29 to i64
  call void @UnityPrintNumberByStyle(i64 noundef %conv30, i32 noundef 65)
  call void @UnityPrint(ptr noundef @UnityStrWas)
  %30 = load ptr, ptr %ptr_act, align 8
  %31 = load i8, ptr %30, align 1
  %conv31 = zext i8 %31 to i64
  call void @UnityPrintNumberByStyle(i64 noundef %conv31, i32 noundef 65)
  %32 = load ptr, ptr %msg.addr, align 8
  call void @UnityAddMsgIfSpecified(ptr noundef %32)
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable

if.end32:                                         ; preds = %while.body16
  %33 = load ptr, ptr %ptr_exp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %ptr_exp, align 8
  %34 = load ptr, ptr %ptr_act, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr33, ptr %ptr_act, align 8
  br label %while.cond13, !llvm.loop !29

while.end:                                        ; preds = %while.cond13
  %35 = load i32, ptr %flags.addr, align 4
  %cmp34 = icmp eq i32 %35, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  %36 = load ptr, ptr %expected.addr, align 8
  store ptr %36, ptr %ptr_exp, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  br label %while.cond, !llvm.loop !30

while.end38:                                      ; preds = %if.then, %if.then7, %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @UnityNumToPtr(i64 noundef %num, i8 noundef zeroext %size) #0 {
entry:
  %retval = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %size.addr = alloca i8, align 1
  store i64 %num, ptr %num.addr, align 8
  store i8 %size, ptr %size.addr, align 1
  %0 = load i8, ptr %size.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %num.addr, align 8
  %conv1 = trunc i64 %1 to i8
  store i8 %conv1, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = load i64, ptr %num.addr, align 8
  %conv3 = trunc i64 %2 to i16
  store i16 %conv3, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  %3 = load i64, ptr %num.addr, align 8
  store i64 %3, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i64, ptr %num.addr, align 8
  %conv5 = trunc i64 %4 to i32
  store i32 %conv5, ptr @UnityQuickCompare, align 8
  store ptr @UnityQuickCompare, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nounwind ssp uwtable
define ptr @UnityFloatToPtr(float noundef %num) #0 {
entry:
  %num.addr = alloca float, align 4
  store float %num, ptr %num.addr, align 4
  %0 = load float, ptr %num.addr, align 4
  store float %0, ptr @UnityQuickCompare, align 8
  ret ptr @UnityQuickCompare
}

; Function Attrs: nounwind ssp uwtable
define ptr @UnityDoubleToPtr(double noundef %num) #0 {
entry:
  %num.addr = alloca double, align 8
  store double %num, ptr %num.addr, align 8
  %0 = load double, ptr %num.addr, align 8
  store double %0, ptr @UnityQuickCompare, align 8
  ret ptr @UnityQuickCompare
}

; Function Attrs: nounwind ssp uwtable
define void @UnityFail(ptr noundef %msg, i64 noundef %line) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %line, ptr %line.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  ret void

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @Unity, align 8
  %3 = load i64, ptr %line.addr, align 8
  call void @UnityTestResultsBegin(ptr noundef %2, i64 noundef %3)
  call void @UnityPrint(ptr noundef @UnityStrFail)
  %4 = load ptr, ptr %msg.addr, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.end
  %call = call i32 @putchar(i32 noundef 58)
  %5 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 2), align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then2
  call void @UnityPrint(ptr noundef @UnityStrDetail1Name)
  %6 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 2), align 8
  call void @UnityPrint(ptr noundef %6)
  %7 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 3), align 8
  %tobool5 = icmp ne ptr %7, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @UnityPrint(ptr noundef @UnityStrDetail2Name)
  %8 = load ptr, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 3), align 8
  call void @UnityPrint(ptr noundef %8)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  call void @UnityPrint(ptr noundef @UnityStrSpacer)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %9 = load ptr, ptr %msg.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp9 = icmp ne i32 %conv, 32
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @putchar(i32 noundef 32)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8
  %11 = load ptr, ptr %msg.addr, align 8
  call void @UnityPrint(ptr noundef %11)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define void @UnityIgnore(ptr noundef %msg, i64 noundef %line) #0 {
entry:
  %msg.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  store ptr %msg, ptr %msg.addr, align 8
  store i64 %line, ptr %line.addr, align 8
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  ret void

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @Unity, align 8
  %3 = load i64, ptr %line.addr, align 8
  call void @UnityTestResultsBegin(ptr noundef %2, i64 noundef %3)
  call void @UnityPrint(ptr noundef @UnityStrIgnore)
  %4 = load ptr, ptr %msg.addr, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call = call i32 @putchar(i32 noundef 58)
  %call3 = call i32 @putchar(i32 noundef 32)
  %5 = load ptr, ptr %msg.addr, align 8
  call void @UnityPrint(ptr noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store i64 1, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  call void @longjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10), i32 noundef 1) #6
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define void @UnityDefaultTestRun(ptr noundef %Func, ptr noundef %FuncName, i32 noundef %FuncLineNum) #0 {
entry:
  %Func.addr = alloca ptr, align 8
  %FuncName.addr = alloca ptr, align 8
  %FuncLineNum.addr = alloca i32, align 4
  store ptr %Func, ptr %Func.addr, align 8
  store ptr %FuncName, ptr %FuncName.addr, align 8
  store i32 %FuncLineNum, ptr %FuncLineNum.addr, align 4
  %0 = load ptr, ptr %FuncName.addr, align 8
  store ptr %0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 1), align 8
  %1 = load i32, ptr %FuncLineNum.addr, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 4), align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 5), align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 5), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 2), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 3), align 8
  %call = call i32 @setjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @setUp()
  %3 = load ptr, ptr %Func.addr, align 8
  call void %3()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @setjmp(ptr noundef getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 10)) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @pc_inline_source_snapshot_public_repos_cJSON_tests_unity_src_unity_0()
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  call void @UnityConcludeTest()
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define void @UnityBegin(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  store ptr %0, ptr @Unity, align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 1), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 4), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 6), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 7), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 8), align 8
  store i64 0, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 9), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 2), align 8
  store ptr null, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @UnityEnd() #0 {
entry:
  %call = call i32 @putchar(i32 noundef 10)
  call void @UnityPrint(ptr noundef @UnityStrBreaker)
  %call1 = call i32 @putchar(i32 noundef 10)
  %0 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 5), align 8
  call void @UnityPrintNumber(i64 noundef %0)
  call void @UnityPrint(ptr noundef @UnityStrResultsTests)
  %1 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 6), align 8
  call void @UnityPrintNumber(i64 noundef %1)
  call void @UnityPrint(ptr noundef @UnityStrResultsFailures)
  %2 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 7), align 8
  call void @UnityPrintNumber(i64 noundef %2)
  call void @UnityPrint(ptr noundef @UnityStrResultsIgnored)
  %call2 = call i32 @putchar(i32 noundef 10)
  %3 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 6), align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef @UnityStrOk)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @UnityPrint(ptr noundef @UnityStrFail)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 @putchar(i32 noundef 10)
  %4 = load i64, ptr getelementptr inbounds (%struct.UNITY_STORAGE_T, ptr @Unity, i32 0, i32 6), align 8
  %conv = trunc i64 %4 to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn }
attributes #7 = { returns_twice }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define weak void @pc_inline_source_snapshot_public_repos_cJSON_tests_unity_src_unity_0()  alwaysinline#0 {
entry:
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
