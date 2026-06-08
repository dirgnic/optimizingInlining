; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/add.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/add.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@__func__.gsm_L_mult = private unnamed_addr constant [11 x i8] c"gsm_L_mult\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"add.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"a != MIN_WORD || b != MIN_WORD\00", align 1
@__func__.gsm_norm = private unnamed_addr constant [9 x i8] c"gsm_norm\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"a != 0\00", align 1
@__func__.gsm_div = private unnamed_addr constant [8 x i8] c"gsm_div\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"num >= 0 && denum >= num\00", align 1
@bitoff = internal global <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_add(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %sum = alloca i64, align 8
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load i16, ptr %b.addr, align 2
  %conv1 = sext i16 %1 to i64
  %add = add nsw i64 %conv, %conv1
  store i64 %add, ptr %sum, align 8
  %2 = load i64, ptr %sum, align 8
  %cmp = icmp slt i64 %2, -32768
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %sum, align 8
  %cmp3 = icmp sgt i64 %3, 32767
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %4 = load i64, ptr %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ 32767, %cond.true5 ], [ %4, %cond.false6 ]
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv9 = trunc i64 %cond8 to i16
  ret i16 %conv9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_sub(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %diff = alloca i64, align 8
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load i16, ptr %b.addr, align 2
  %conv1 = sext i16 %1 to i64
  %sub = sub nsw i64 %conv, %conv1
  store i64 %sub, ptr %diff, align 8
  %2 = load i64, ptr %diff, align 8
  %cmp = icmp slt i64 %2, -32768
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end7

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %diff, align 8
  %cmp3 = icmp sgt i64 %3, 32767
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %4 = load i64, ptr %diff, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ 32767, %cond.true5 ], [ %4, %cond.false6 ]
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv9 = trunc i64 %cond8 to i16
  ret i16 %conv9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_mult(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, ptr %b.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 32767, ptr %retval, align 2
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i16, ptr %a.addr, align 2
  %conv5 = sext i16 %2 to i64
  %3 = load i16, ptr %b.addr, align 2
  %conv6 = sext i16 %3 to i64
  %mul = mul nsw i64 %conv5, %conv6
  %call = call i32 @SASR(i64 noundef %mul, i32 noundef 15)
  %conv7 = trunc i32 %call to i16
  store i16 %conv7, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, ptr %retval, align 2
  ret i16 %4
}

declare i32 @SASR(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_mult_r(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %prod = alloca i64, align 8
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %b.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, ptr %a.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 32767, ptr %retval, align 2
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i16, ptr %a.addr, align 2
  %conv5 = sext i16 %2 to i64
  %3 = load i16, ptr %b.addr, align 2
  %conv6 = sext i16 %3 to i64
  %mul = mul nsw i64 %conv5, %conv6
  %add = add nsw i64 %mul, 16384
  store i64 %add, ptr %prod, align 8
  %4 = load i64, ptr %prod, align 8
  %shr = ashr i64 %4, 15
  store i64 %shr, ptr %prod, align 8
  %5 = load i64, ptr %prod, align 8
  %and = and i64 %5, 65535
  %conv7 = trunc i64 %and to i16
  store i16 %conv7, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i16, ptr %retval, align 2
  ret i16 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_abs(i16 noundef signext %a) #0 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false7

cond.true:                                        ; preds = %entry
  %1 = load i16, ptr %a.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %cond.true5, label %cond.false

cond.true5:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %2 = load i16, ptr %a.addr, align 2
  %conv6 = sext i16 %2 to i32
  %sub = sub nsw i32 0, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i32 [ 32767, %cond.true5 ], [ %sub, %cond.false ]
  br label %cond.end9

cond.false7:                                      ; preds = %entry
  %3 = load i16, ptr %a.addr, align 2
  %conv8 = sext i16 %3 to i32
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.end
  %cond10 = phi i32 [ %cond, %cond.end ], [ %conv8, %cond.false7 ]
  %conv11 = trunc i32 %cond10 to i16
  ret i16 %conv11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gsm_L_mult(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, -32768
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i16, ptr %b.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp ne i32 %conv2, -32768
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %2, true
  %lnot.ext = zext i1 %lnot to i32
  %conv5 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(ptr noundef @__func__.gsm_L_mult, ptr noundef @.str, i32 noundef 58, ptr noundef @.str.1) #3
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load i16, ptr %a.addr, align 2
  %conv6 = sext i16 %4 to i64
  %5 = load i16, ptr %b.addr, align 2
  %conv7 = sext i16 %5 to i64
  %mul = mul nsw i64 %conv6, %conv7
  %shl = shl i64 %mul, 1
  ret i64 %shl
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gsm_L_add(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %A = alloca i64, align 8
  %A15 = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %b.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load i64, ptr %a.addr, align 8
  %3 = load i64, ptr %b.addr, align 8
  %add = add nsw i64 %2, %3
  store i64 %add, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i64, ptr %a.addr, align 8
  %add3 = add nsw i64 %4, 1
  %sub = sub nsw i64 0, %add3
  %5 = load i64, ptr %b.addr, align 8
  %add4 = add nsw i64 %5, 1
  %sub5 = sub nsw i64 0, %add4
  %add6 = add i64 %sub, %sub5
  store i64 %add6, ptr %A, align 8
  %6 = load i64, ptr %A, align 8
  %cmp7 = icmp uge i64 %6, 2147483647
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %7 = load i64, ptr %A, align 8
  %sub8 = sub nsw i64 0, %7
  %sub9 = sub nsw i64 %sub8, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -2147483648, %cond.true ], [ %sub9, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  br label %return

if.else10:                                        ; preds = %entry
  %8 = load i64, ptr %b.addr, align 8
  %cmp11 = icmp sle i64 %8, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  %9 = load i64, ptr %a.addr, align 8
  %10 = load i64, ptr %b.addr, align 8
  %add13 = add nsw i64 %9, %10
  store i64 %add13, ptr %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else10
  %11 = load i64, ptr %a.addr, align 8
  %12 = load i64, ptr %b.addr, align 8
  %add16 = add i64 %11, %12
  store i64 %add16, ptr %A15, align 8
  %13 = load i64, ptr %A15, align 8
  %cmp17 = icmp ugt i64 %13, 2147483647
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.else14
  br label %cond.end20

cond.false19:                                     ; preds = %if.else14
  %14 = load i64, ptr %A15, align 8
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ 2147483647, %cond.true18 ], [ %14, %cond.false19 ]
  store i64 %cond21, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end20, %if.then12, %cond.end, %if.then2
  %15 = load i64, ptr %retval, align 8
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gsm_L_sub(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %A = alloca i64, align 8
  %A12 = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %b.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load i64, ptr %a.addr, align 8
  %3 = load i64, ptr %b.addr, align 8
  %sub = sub nsw i64 %2, %3
  store i64 %sub, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i64, ptr %a.addr, align 8
  %5 = load i64, ptr %b.addr, align 8
  %add = add nsw i64 %5, 1
  %sub3 = sub nsw i64 0, %add
  %add4 = add i64 %4, %sub3
  store i64 %add4, ptr %A, align 8
  %6 = load i64, ptr %A, align 8
  %cmp5 = icmp uge i64 %6, 2147483647
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %7 = load i64, ptr %A, align 8
  %add6 = add i64 %7, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 2147483647, %cond.true ], [ %add6, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  br label %return

if.else7:                                         ; preds = %entry
  %8 = load i64, ptr %b.addr, align 8
  %cmp8 = icmp sle i64 %8, 0
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else7
  %9 = load i64, ptr %a.addr, align 8
  %10 = load i64, ptr %b.addr, align 8
  %sub10 = sub nsw i64 %9, %10
  store i64 %sub10, ptr %retval, align 8
  br label %return

if.else11:                                        ; preds = %if.else7
  %11 = load i64, ptr %a.addr, align 8
  %add13 = add nsw i64 %11, 1
  %sub14 = sub nsw i64 0, %add13
  %12 = load i64, ptr %b.addr, align 8
  %add15 = add i64 %sub14, %12
  store i64 %add15, ptr %A12, align 8
  %13 = load i64, ptr %A12, align 8
  %cmp16 = icmp uge i64 %13, 2147483647
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %if.else11
  br label %cond.end21

cond.false18:                                     ; preds = %if.else11
  %14 = load i64, ptr %A12, align 8
  %sub19 = sub nsw i64 0, %14
  %sub20 = sub nsw i64 %sub19, 1
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false18, %cond.true17
  %cond22 = phi i64 [ -2147483648, %cond.true17 ], [ %sub20, %cond.false18 ]
  store i64 %cond22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end21, %if.then9, %cond.end, %if.then2
  %15 = load i64, ptr %retval, align 8
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_norm(i64 noundef %a) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %cmp = icmp ne i64 %0, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.gsm_norm, ptr noundef @.str, i32 noundef 137, ptr noundef @.str.2) #3
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i64, ptr %a.addr, align 8
  %cmp1 = icmp slt i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %cond.end
  %3 = load i64, ptr %a.addr, align 8
  %cmp3 = icmp sle i64 %3, -1073741824
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i16 0, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i64, ptr %a.addr, align 8
  %neg = xor i64 %4, -1
  store i64 %neg, ptr %a.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %cond.end
  %5 = load i64, ptr %a.addr, align 8
  %and = and i64 %5, 4294901760
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %cond.true8, label %cond.false21

cond.true8:                                       ; preds = %if.end6
  %6 = load i64, ptr %a.addr, align 8
  %and9 = and i64 %6, 4278190080
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false14

cond.true11:                                      ; preds = %cond.true8
  %7 = load i64, ptr %a.addr, align 8
  %shr = ashr i64 %7, 24
  %and12 = and i64 255, %shr
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bitoff, i64 0, i64 %and12
  %8 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %8 to i32
  %add = add nsw i32 -1, %conv13
  br label %cond.end20

cond.false14:                                     ; preds = %cond.true8
  %9 = load i64, ptr %a.addr, align 8
  %shr15 = ashr i64 %9, 16
  %and16 = and i64 255, %shr15
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr @bitoff, i64 0, i64 %and16
  %10 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %add19 = add nsw i32 7, %conv18
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false14, %cond.true11
  %cond = phi i32 [ %add, %cond.true11 ], [ %add19, %cond.false14 ]
  br label %cond.end37

cond.false21:                                     ; preds = %if.end6
  %11 = load i64, ptr %a.addr, align 8
  %and22 = and i64 %11, 65280
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %cond.true24, label %cond.false30

cond.true24:                                      ; preds = %cond.false21
  %12 = load i64, ptr %a.addr, align 8
  %shr25 = ashr i64 %12, 8
  %and26 = and i64 255, %shr25
  %arrayidx27 = getelementptr inbounds [256 x i8], ptr @bitoff, i64 0, i64 %and26
  %13 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %13 to i32
  %add29 = add nsw i32 15, %conv28
  br label %cond.end35

cond.false30:                                     ; preds = %cond.false21
  %14 = load i64, ptr %a.addr, align 8
  %and31 = and i64 255, %14
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr @bitoff, i64 0, i64 %and31
  %15 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %15 to i32
  %add34 = add nsw i32 23, %conv33
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false30, %cond.true24
  %cond36 = phi i32 [ %add29, %cond.true24 ], [ %add34, %cond.false30 ]
  br label %cond.end37

cond.end37:                                       ; preds = %cond.end35, %cond.end20
  %cond38 = phi i32 [ %cond, %cond.end20 ], [ %cond36, %cond.end35 ]
  %conv39 = trunc i32 %cond38 to i16
  store i16 %conv39, ptr %retval, align 2
  br label %return

return:                                           ; preds = %cond.end37, %if.then5
  %16 = load i16, ptr %retval, align 2
  ret i16 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gsm_L_asl(i64 noundef %a, i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp sle i32 %1, -32
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr %a.addr, align 8
  %cmp3 = icmp slt i64 %2, 0
  %conv = zext i1 %cmp3 to i32
  %sub = sub nsw i32 0, %conv
  %conv4 = sext i32 %sub to i64
  store i64 %conv4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %cmp6 = icmp slt i32 %3, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %4 = load i64, ptr %a.addr, align 8
  %5 = load i32, ptr %n.addr, align 4
  %sub9 = sub nsw i32 0, %5
  %call = call i64 @gsm_L_asr(i64 noundef %4, i32 noundef %sub9)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end5
  %6 = load i64, ptr %a.addr, align 8
  %7 = load i32, ptr %n.addr, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 %6, %sh_prom
  store i64 %shl, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.then2, %if.then
  %8 = load i64, ptr %retval, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @gsm_L_asr(i64 noundef %a, i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %a.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  %conv = zext i1 %cmp1 to i32
  %sub = sub nsw i32 0, %conv
  %conv2 = sext i32 %sub to i64
  store i64 %conv2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %cmp3 = icmp sle i32 %2, -32
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %4 = load i64, ptr %a.addr, align 8
  %5 = load i32, ptr %n.addr, align 4
  %sub10 = sub nsw i32 0, %5
  %sh_prom = zext i32 %sub10 to i64
  %shl = shl i64 %4, %sh_prom
  store i64 %shl, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end6
  %6 = load i64, ptr %a.addr, align 8
  %cmp12 = icmp sge i64 %6, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %7 = load i64, ptr %a.addr, align 8
  %8 = load i32, ptr %n.addr, align 4
  %sh_prom15 = zext i32 %8 to i64
  %shr = ashr i64 %7, %sh_prom15
  store i64 %shr, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end11
  %9 = load i64, ptr %a.addr, align 8
  %sub16 = sub i64 0, %9
  %10 = load i32, ptr %n.addr, align 4
  %sh_prom17 = zext i32 %10 to i64
  %shr18 = lshr i64 %sub16, %sh_prom17
  %sub19 = sub nsw i64 0, %shr18
  store i64 %sub19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then14, %if.then9, %if.then5, %if.then
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_asl(i16 noundef signext %a, i32 noundef %n) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %n.addr = alloca i32, align 4
  store i16 %a, ptr %a.addr, align 2
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp sle i32 %1, -16
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %2 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %2 to i32
  %cmp3 = icmp slt i32 %conv, 0
  %conv4 = zext i1 %cmp3 to i32
  %sub = sub nsw i32 0, %conv4
  %conv5 = trunc i32 %sub to i16
  store i16 %conv5, ptr %retval, align 2
  br label %return

if.end6:                                          ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %4 = load i16, ptr %a.addr, align 2
  %5 = load i32, ptr %n.addr, align 4
  %sub10 = sub nsw i32 0, %5
  %call = call signext i16 @gsm_asr(i16 noundef signext %4, i32 noundef %sub10)
  store i16 %call, ptr %retval, align 2
  br label %return

if.end11:                                         ; preds = %if.end6
  %6 = load i16, ptr %a.addr, align 2
  %conv12 = sext i16 %6 to i32
  %7 = load i32, ptr %n.addr, align 4
  %shl = shl i32 %conv12, %7
  %conv13 = trunc i32 %shl to i16
  store i16 %conv13, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %if.then2, %if.then
  %8 = load i16, ptr %retval, align 2
  ret i16 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_asr(i16 noundef signext %a, i32 noundef %n) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %n.addr = alloca i32, align 4
  store i16 %a, ptr %a.addr, align 2
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %1 to i32
  %cmp1 = icmp slt i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 0, %conv2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %cmp4 = icmp sle i32 %2, -16
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i16 0, ptr %retval, align 2
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %cmp8 = icmp slt i32 %3, 0
  br i1 %cmp8, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end7
  %4 = load i16, ptr %a.addr, align 2
  %conv11 = sext i16 %4 to i32
  %5 = load i32, ptr %n.addr, align 4
  %sub12 = sub nsw i32 0, %5
  %shl = shl i32 %conv11, %sub12
  %conv13 = trunc i32 %shl to i16
  store i16 %conv13, ptr %retval, align 2
  br label %return

if.end14:                                         ; preds = %if.end7
  %6 = load i16, ptr %a.addr, align 2
  %conv15 = sext i16 %6 to i32
  %cmp16 = icmp sge i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  %7 = load i16, ptr %a.addr, align 2
  %conv19 = sext i16 %7 to i32
  %8 = load i32, ptr %n.addr, align 4
  %shr = ashr i32 %conv19, %8
  %conv20 = trunc i32 %shr to i16
  store i16 %conv20, ptr %retval, align 2
  br label %return

if.else:                                          ; preds = %if.end14
  %9 = load i16, ptr %a.addr, align 2
  %conv21 = zext i16 %9 to i32
  %sub22 = sub nsw i32 0, %conv21
  %10 = load i32, ptr %n.addr, align 4
  %shr23 = ashr i32 %sub22, %10
  %conv24 = trunc i32 %shr23 to i16
  %conv25 = sext i16 %conv24 to i32
  %sub26 = sub nsw i32 0, %conv25
  %conv27 = trunc i32 %sub26 to i16
  store i16 %conv27, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.else, %if.then18, %if.then10, %if.then6, %if.then
  %11 = load i16, ptr %retval, align 2
  ret i16 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i16 @gsm_div(i16 noundef signext %num, i16 noundef signext %denum) #0 {
entry:
  %retval = alloca i16, align 2
  %num.addr = alloca i16, align 2
  %denum.addr = alloca i16, align 2
  %L_num = alloca i64, align 8
  %L_denum = alloca i64, align 8
  %div = alloca i16, align 2
  %k = alloca i32, align 4
  store i16 %num, ptr %num.addr, align 2
  store i16 %denum, ptr %denum.addr, align 2
  %0 = load i16, ptr %num.addr, align 2
  %conv = sext i16 %0 to i64
  store i64 %conv, ptr %L_num, align 8
  %1 = load i16, ptr %denum.addr, align 2
  %conv1 = sext i16 %1 to i64
  store i64 %conv1, ptr %L_denum, align 8
  store i16 0, ptr %div, align 2
  store i32 15, ptr %k, align 4
  %2 = load i16, ptr %num.addr, align 2
  %conv2 = sext i16 %2 to i32
  %cmp = icmp sge i32 %conv2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i16, ptr %denum.addr, align 2
  %conv4 = sext i16 %3 to i32
  %4 = load i16, ptr %num.addr, align 2
  %conv5 = sext i16 %4 to i32
  %cmp6 = icmp sge i32 %conv4, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %lnot = xor i1 %5, true
  %lnot.ext = zext i1 %lnot to i32
  %conv8 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.gsm_div, ptr noundef @.str, i32 noundef 220, ptr noundef @.str.3) #3
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %6
  %7 = load i16, ptr %num.addr, align 2
  %conv9 = sext i16 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i16 0, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end
  %8 = load i32, ptr %k, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %k, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i16, ptr %div, align 2
  %conv13 = sext i16 %9 to i32
  %shl = shl i32 %conv13, 1
  %conv14 = trunc i32 %shl to i16
  store i16 %conv14, ptr %div, align 2
  %10 = load i64, ptr %L_num, align 8
  %shl15 = shl i64 %10, 1
  store i64 %shl15, ptr %L_num, align 8
  %11 = load i64, ptr %L_num, align 8
  %12 = load i64, ptr %L_denum, align 8
  %cmp16 = icmp sge i64 %11, %12
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body
  %13 = load i64, ptr %L_denum, align 8
  %14 = load i64, ptr %L_num, align 8
  %sub = sub nsw i64 %14, %13
  store i64 %sub, ptr %L_num, align 8
  %15 = load i16, ptr %div, align 2
  %inc = add i16 %15, 1
  store i16 %inc, ptr %div, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load i16, ptr %div, align 2
  store i16 %16, ptr %retval, align 2
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i16, ptr %retval, align 2
  ret i16 %17
}

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
