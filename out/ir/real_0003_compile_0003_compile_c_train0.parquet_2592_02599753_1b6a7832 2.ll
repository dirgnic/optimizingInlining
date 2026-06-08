; ModuleID = '<stdin>'
source_filename = "timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._hr_time = type { %struct.timeval }
%struct.mbedtls_timing_delay_context = type { %struct.mbedtls_timing_hr_time, i32, i32 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }

@mbedtls_timing_alarmed = global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"  TIMING tests note: will take some time!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"  TIMING test #1 (set_alarm / get_timer): \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"failed at line %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c" cycles=%lu ratio=%lu millisecs=%lu secs=%lu hardfail=%d a=%lu b=%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c" elapsed(hires)=%lu elapsed(ctx)=%lu status(ctx)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"  TIMING test #2 (set/get_delay        ): \00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"  TIMING test #3 (hardclock / get_timer): \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"failed (ignored)\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @mbedtls_timing_hardclock() #0 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  %asmresult = extractvalue { i64, i64 } %0, 0
  %asmresult1 = extractvalue { i64, i64 } %0, 1
  store i64 %asmresult, ptr %lo, align 8
  store i64 %asmresult1, ptr %hi, align 8
  %1 = load i64, ptr %lo, align 8
  %2 = load i64, ptr %hi, align 8
  %shl = shl i64 %2, 32
  %or = or i64 %1, %shl
  ret i64 %or
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @mbedtls_timing_get_timer(ptr noundef %val, i32 noundef %reset) #0 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca ptr, align 8
  %reset.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  %delta = alloca i64, align 8
  %now = alloca %struct.timeval, align 8
  store ptr %val, ptr %val.addr, align 8
  store i32 %reset, ptr %reset.addr, align 4
  %0 = load ptr, ptr %val.addr, align 8
  store ptr %0, ptr %t, align 8
  %1 = load i32, ptr %reset.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %t, align 8
  %start = getelementptr inbounds %struct._hr_time, ptr %2, i32 0, i32 0
  %call = call i32 @gettimeofday(ptr noundef %start, ptr noundef null) #3
  store i64 0, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call i32 @gettimeofday(ptr noundef %now, ptr noundef null) #3
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %now, i32 0, i32 0
  %3 = load i64, ptr %tv_sec, align 8
  %4 = load ptr, ptr %t, align 8
  %start2 = getelementptr inbounds %struct._hr_time, ptr %4, i32 0, i32 0
  %tv_sec3 = getelementptr inbounds %struct.timeval, ptr %start2, i32 0, i32 0
  %5 = load i64, ptr %tv_sec3, align 8
  %sub = sub nsw i64 %3, %5
  %mul = mul i64 %sub, 1000
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %now, i32 0, i32 1
  %6 = load i64, ptr %tv_usec, align 8
  %7 = load ptr, ptr %t, align 8
  %start4 = getelementptr inbounds %struct._hr_time, ptr %7, i32 0, i32 0
  %tv_usec5 = getelementptr inbounds %struct.timeval, ptr %start4, i32 0, i32 1
  %8 = load i64, ptr %tv_usec5, align 8
  %sub6 = sub nsw i64 %6, %8
  %div = sdiv i64 %sub6, 1000
  %add = add i64 %mul, %div
  store i64 %add, ptr %delta, align 8
  %9 = load i64, ptr %delta, align 8
  store i64 %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_set_alarm(i32 noundef %seconds) #0 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  store volatile i32 0, ptr @mbedtls_timing_alarmed, align 4
  %call = call ptr @signal(i32 noundef 14, ptr noundef @sighandler) #3
  %0 = load i32, ptr %seconds.addr, align 4
  %call1 = call i32 @alarm(i32 noundef %0) #3
  %1 = load i32, ptr %seconds.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store volatile i32 1, ptr @mbedtls_timing_alarmed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighandler(i32 noundef %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  store i32 %signum, ptr %signum.addr, align 4
  store volatile i32 1, ptr @mbedtls_timing_alarmed, align 4
  %0 = load i32, ptr %signum.addr, align 4
  %call = call ptr @signal(i32 noundef %0, ptr noundef @sighandler) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_timing_set_delay(ptr noundef %data, i32 noundef %int_ms, i32 noundef %fin_ms) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %int_ms.addr = alloca i32, align 4
  %fin_ms.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %int_ms, ptr %int_ms.addr, align 4
  store i32 %fin_ms, ptr %fin_ms.addr, align 4
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ctx, align 8
  %1 = load i32, ptr %int_ms.addr, align 4
  %2 = load ptr, ptr %ctx, align 8
  %int_ms1 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %2, i32 0, i32 1
  store i32 %1, ptr %int_ms1, align 4
  %3 = load i32, ptr %fin_ms.addr, align 4
  %4 = load ptr, ptr %ctx, align 8
  %fin_ms2 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %4, i32 0, i32 2
  store i32 %3, ptr %fin_ms2, align 4
  %5 = load i32, ptr %fin_ms.addr, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ctx, align 8
  %timer = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %6, i32 0, i32 0
  %call = call i64 @mbedtls_timing_get_timer(ptr noundef %timer, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_timing_get_delay(ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %elapsed_ms = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ctx, align 8
  %1 = load ptr, ptr %ctx, align 8
  %fin_ms = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %fin_ms, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8
  %timer = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %3, i32 0, i32 0
  %call = call i64 @mbedtls_timing_get_timer(ptr noundef %timer, i32 noundef 0)
  store i64 %call, ptr %elapsed_ms, align 8
  %4 = load i64, ptr %elapsed_ms, align 8
  %5 = load ptr, ptr %ctx, align 8
  %fin_ms1 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %fin_ms1, align 4
  %conv = zext i32 %6 to i64
  %cmp2 = icmp uge i64 %4, %conv
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load i64, ptr %elapsed_ms, align 8
  %8 = load ptr, ptr %ctx, align 8
  %int_ms = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %int_ms, align 4
  %conv6 = zext i32 %9 to i64
  %cmp7 = icmp uge i64 %7, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_timing_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %cycles = alloca i64, align 8
  %ratio = alloca i64, align 8
  %millisecs = alloca i64, align 8
  %secs = alloca i64, align 8
  %hardfail = alloca i32, align 4
  %hires = alloca %struct.mbedtls_timing_hr_time, align 1
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_timing_delay_context, align 4
  store i32 %verbose, ptr %verbose.addr, align 4
  store i64 0, ptr %cycles, align 8
  store i64 0, ptr %ratio, align 8
  store i64 0, ptr %millisecs, align 8
  store i64 0, ptr %secs, align 8
  store i32 0, ptr %hardfail, align 4
  store i32 0, ptr %a, align 4
  store i32 0, ptr %b, align 4
  %0 = load i32, ptr %verbose.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  store i64 1, ptr %secs, align 8
  %call5 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 1)
  %2 = load i64, ptr %secs, align 8
  %conv = trunc i64 %2 to i32
  call void @mbedtls_set_alarm(i32 noundef %conv)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %3 = load volatile i32, ptr @mbedtls_timing_alarmed, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call6 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  store i64 %call6, ptr %millisecs, align 8
  %4 = load i64, ptr %millisecs, align 8
  %5 = load i64, ptr %secs, align 8
  %mul = mul i64 800, %5
  %cmp7 = icmp ult i64 %4, %mul
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %6 = load i64, ptr %millisecs, align 8
  %7 = load i64, ptr %secs, align 8
  %mul9 = mul i64 1200, %7
  %add = add i64 %mul9, 300
  %cmp10 = icmp ugt i64 %6, %add
  br i1 %cmp10, label %if.then12, label %if.end25

if.then12:                                        ; preds = %lor.lhs.false, %while.end
  br label %do.body

do.body:                                          ; preds = %if.then12
  %8 = load i32, ptr %verbose.addr, align 4
  %cmp13 = icmp ne i32 %8, 0
  br i1 %cmp13, label %if.then15, label %if.end24

if.then15:                                        ; preds = %do.body
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 447)
  %9 = load i64, ptr %cycles, align 8
  %10 = load i64, ptr %ratio, align 8
  %11 = load i64, ptr %millisecs, align 8
  %12 = load i64, ptr %secs, align 8
  %13 = load i32, ptr %hardfail, align 4
  %14 = load i32, ptr %a, align 4
  %conv17 = zext i32 %14 to i64
  %15 = load i32, ptr %b, align 4
  %conv18 = zext i32 %15 to i64
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i32 noundef %13, i64 noundef %conv17, i64 noundef %conv18)
  %call20 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  %timer = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %ctx, i32 0, i32 0
  %call21 = call i64 @mbedtls_timing_get_timer(ptr noundef %timer, i32 noundef 0)
  %call22 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call20, i64 noundef %call21, i32 noundef %call22)
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %do.body
  store i32 1, ptr %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end25

if.end25:                                         ; preds = %do.end, %lor.lhs.false
  %16 = load i32, ptr %verbose.addr, align 4
  %cmp26 = icmp ne i32 %16, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %17 = load i32, ptr %verbose.addr, align 4
  %cmp31 = icmp ne i32 %17, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  store i32 800, ptr %a, align 4
  store i32 400, ptr %b, align 4
  %18 = load i32, ptr %a, align 4
  %19 = load i32, ptr %a, align 4
  %20 = load i32, ptr %b, align 4
  %add36 = add i32 %19, %20
  call void @mbedtls_timing_set_delay(ptr noundef %ctx, i32 noundef %18, i32 noundef %add36)
  %21 = load i32, ptr %a, align 4
  %22 = load i32, ptr %a, align 4
  %div = udiv i32 %22, 4
  %sub = sub i32 %21, %div
  %conv37 = zext i32 %sub to i64
  call void @busy_msleep(i64 noundef %conv37)
  %call38 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end57

if.then41:                                        ; preds = %if.end35
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  %23 = load i32, ptr %verbose.addr, align 4
  %cmp43 = icmp ne i32 %23, 0
  br i1 %cmp43, label %if.then45, label %if.end55

if.then45:                                        ; preds = %do.body42
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 463)
  %24 = load i64, ptr %cycles, align 8
  %25 = load i64, ptr %ratio, align 8
  %26 = load i64, ptr %millisecs, align 8
  %27 = load i64, ptr %secs, align 8
  %28 = load i32, ptr %hardfail, align 4
  %29 = load i32, ptr %a, align 4
  %conv47 = zext i32 %29 to i64
  %30 = load i32, ptr %b, align 4
  %conv48 = zext i32 %30 to i64
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i32 noundef %28, i64 noundef %conv47, i64 noundef %conv48)
  %call50 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  %timer51 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %ctx, i32 0, i32 0
  %call52 = call i64 @mbedtls_timing_get_timer(ptr noundef %timer51, i32 noundef 0)
  %call53 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call50, i64 noundef %call52, i32 noundef %call53)
  br label %if.end55

if.end55:                                         ; preds = %if.then45, %do.body42
  store i32 1, ptr %retval, align 4
  br label %return

do.end56:                                         ; No predecessors!
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end35
  %31 = load i32, ptr %a, align 4
  %div58 = udiv i32 %31, 4
  %32 = load i32, ptr %b, align 4
  %div59 = udiv i32 %32, 4
  %add60 = add i32 %div58, %div59
  %conv61 = zext i32 %add60 to i64
  call void @busy_msleep(i64 noundef %conv61)
  %call62 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %cmp63 = icmp ne i32 %call62, 1
  br i1 %cmp63, label %if.then65, label %if.end81

if.then65:                                        ; preds = %if.end57
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  %33 = load i32, ptr %verbose.addr, align 4
  %cmp67 = icmp ne i32 %33, 0
  br i1 %cmp67, label %if.then69, label %if.end79

if.then69:                                        ; preds = %do.body66
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 467)
  %34 = load i64, ptr %cycles, align 8
  %35 = load i64, ptr %ratio, align 8
  %36 = load i64, ptr %millisecs, align 8
  %37 = load i64, ptr %secs, align 8
  %38 = load i32, ptr %hardfail, align 4
  %39 = load i32, ptr %a, align 4
  %conv71 = zext i32 %39 to i64
  %40 = load i32, ptr %b, align 4
  %conv72 = zext i32 %40 to i64
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %34, i64 noundef %35, i64 noundef %36, i64 noundef %37, i32 noundef %38, i64 noundef %conv71, i64 noundef %conv72)
  %call74 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  %timer75 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %ctx, i32 0, i32 0
  %call76 = call i64 @mbedtls_timing_get_timer(ptr noundef %timer75, i32 noundef 0)
  %call77 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call74, i64 noundef %call76, i32 noundef %call77)
  br label %if.end79

if.end79:                                         ; preds = %if.then69, %do.body66
  store i32 1, ptr %retval, align 4
  br label %return

do.end80:                                         ; No predecessors!
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %if.end57
  %41 = load i32, ptr %b, align 4
  %conv82 = zext i32 %41 to i64
  call void @busy_msleep(i64 noundef %conv82)
  %call83 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %cmp84 = icmp ne i32 %call83, 2
  br i1 %cmp84, label %if.then86, label %if.end102

if.then86:                                        ; preds = %if.end81
  br label %do.body87

do.body87:                                        ; preds = %if.then86
  %42 = load i32, ptr %verbose.addr, align 4
  %cmp88 = icmp ne i32 %42, 0
  br i1 %cmp88, label %if.then90, label %if.end100

if.then90:                                        ; preds = %do.body87
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 471)
  %43 = load i64, ptr %cycles, align 8
  %44 = load i64, ptr %ratio, align 8
  %45 = load i64, ptr %millisecs, align 8
  %46 = load i64, ptr %secs, align 8
  %47 = load i32, ptr %hardfail, align 4
  %48 = load i32, ptr %a, align 4
  %conv92 = zext i32 %48 to i64
  %49 = load i32, ptr %b, align 4
  %conv93 = zext i32 %49 to i64
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %43, i64 noundef %44, i64 noundef %45, i64 noundef %46, i32 noundef %47, i64 noundef %conv92, i64 noundef %conv93)
  %call95 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  %timer96 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %ctx, i32 0, i32 0
  %call97 = call i64 @mbedtls_timing_get_timer(ptr noundef %timer96, i32 noundef 0)
  %call98 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call95, i64 noundef %call97, i32 noundef %call98)
  br label %if.end100

if.end100:                                        ; preds = %if.then90, %do.body87
  store i32 1, ptr %retval, align 4
  br label %return

do.end101:                                        ; No predecessors!
  br label %if.end102

if.end102:                                        ; preds = %do.end101, %if.end81
  call void @mbedtls_timing_set_delay(ptr noundef %ctx, i32 noundef 0, i32 noundef 0)
  call void @busy_msleep(i64 noundef 200)
  %call103 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %cmp104 = icmp ne i32 %call103, -1
  br i1 %cmp104, label %if.then106, label %if.end122

if.then106:                                       ; preds = %if.end102
  br label %do.body107

do.body107:                                       ; preds = %if.then106
  %50 = load i32, ptr %verbose.addr, align 4
  %cmp108 = icmp ne i32 %50, 0
  br i1 %cmp108, label %if.then110, label %if.end120

if.then110:                                       ; preds = %do.body107
  %call111 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 477)
  %51 = load i64, ptr %cycles, align 8
  %52 = load i64, ptr %ratio, align 8
  %53 = load i64, ptr %millisecs, align 8
  %54 = load i64, ptr %secs, align 8
  %55 = load i32, ptr %hardfail, align 4
  %56 = load i32, ptr %a, align 4
  %conv112 = zext i32 %56 to i64
  %57 = load i32, ptr %b, align 4
  %conv113 = zext i32 %57 to i64
  %call114 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %51, i64 noundef %52, i64 noundef %53, i64 noundef %54, i32 noundef %55, i64 noundef %conv112, i64 noundef %conv113)
  %call115 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  %timer116 = getelementptr inbounds %struct.mbedtls_timing_delay_context, ptr %ctx, i32 0, i32 0
  %call117 = call i64 @mbedtls_timing_get_timer(ptr noundef %timer116, i32 noundef 0)
  %call118 = call i32 @mbedtls_timing_get_delay(ptr noundef %ctx)
  %call119 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call115, i64 noundef %call117, i32 noundef %call118)
  br label %if.end120

if.end120:                                        ; preds = %if.then110, %do.body107
  store i32 1, ptr %retval, align 4
  br label %return

do.end121:                                        ; No predecessors!
  br label %if.end122

if.end122:                                        ; preds = %do.end121, %if.end102
  %58 = load i32, ptr %verbose.addr, align 4
  %cmp123 = icmp ne i32 %58, 0
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end122
  %call126 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122
  %59 = load i32, ptr %verbose.addr, align 4
  %cmp128 = icmp ne i32 %59, 0
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end127
  %call131 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127
  br label %hard_test

hard_test:                                        ; preds = %if.then162, %if.end132
  %60 = load i32, ptr %hardfail, align 4
  %cmp133 = icmp sgt i32 %60, 1
  br i1 %cmp133, label %if.then135, label %if.end141

if.then135:                                       ; preds = %hard_test
  %61 = load i32, ptr %verbose.addr, align 4
  %cmp136 = icmp ne i32 %61, 0
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.then135
  %call139 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then135
  br label %hard_test_done

if.end141:                                        ; preds = %hard_test
  store i64 1, ptr %millisecs, align 8
  %call142 = call i64 @mbedtls_timing_hardclock()
  store i64 %call142, ptr %cycles, align 8
  %62 = load i64, ptr %millisecs, align 8
  call void @busy_msleep(i64 noundef %62)
  %call143 = call i64 @mbedtls_timing_hardclock()
  %63 = load i64, ptr %cycles, align 8
  %sub144 = sub i64 %call143, %63
  store i64 %sub144, ptr %cycles, align 8
  %64 = load i64, ptr %cycles, align 8
  %65 = load i64, ptr %millisecs, align 8
  %div145 = udiv i64 %64, %65
  store i64 %div145, ptr %ratio, align 8
  store i64 2, ptr %millisecs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end141
  %66 = load i64, ptr %millisecs, align 8
  %cmp146 = icmp ule i64 %66, 4
  br i1 %cmp146, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call148 = call i64 @mbedtls_timing_hardclock()
  store i64 %call148, ptr %cycles, align 8
  %67 = load i64, ptr %millisecs, align 8
  call void @busy_msleep(i64 noundef %67)
  %call149 = call i64 @mbedtls_timing_hardclock()
  %68 = load i64, ptr %cycles, align 8
  %sub150 = sub i64 %call149, %68
  store i64 %sub150, ptr %cycles, align 8
  %69 = load i64, ptr %cycles, align 8
  %70 = load i64, ptr %millisecs, align 8
  %div151 = udiv i64 %69, %70
  %71 = load i64, ptr %ratio, align 8
  %72 = load i64, ptr %ratio, align 8
  %div152 = udiv i64 %72, 5
  %sub153 = sub i64 %71, %div152
  %cmp154 = icmp ult i64 %div151, %sub153
  br i1 %cmp154, label %if.then162, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %for.body
  %73 = load i64, ptr %cycles, align 8
  %74 = load i64, ptr %millisecs, align 8
  %div157 = udiv i64 %73, %74
  %75 = load i64, ptr %ratio, align 8
  %76 = load i64, ptr %ratio, align 8
  %div158 = udiv i64 %76, 5
  %add159 = add i64 %75, %div158
  %cmp160 = icmp ugt i64 %div157, %add159
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %lor.lhs.false156, %for.body
  %77 = load i32, ptr %hardfail, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, ptr %hardfail, align 4
  br label %hard_test

if.end163:                                        ; preds = %lor.lhs.false156
  br label %for.inc

for.inc:                                          ; preds = %if.end163
  %78 = load i64, ptr %millisecs, align 8
  %inc164 = add i64 %78, 1
  store i64 %inc164, ptr %millisecs, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %79 = load i32, ptr %verbose.addr, align 4
  %cmp165 = icmp ne i32 %79, 0
  br i1 %cmp165, label %if.then167, label %if.end169

if.then167:                                       ; preds = %for.end
  %call168 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %for.end
  br label %hard_test_done

hard_test_done:                                   ; preds = %if.end169, %if.end140
  %80 = load i32, ptr %verbose.addr, align 4
  %cmp170 = icmp ne i32 %80, 0
  br i1 %cmp170, label %if.then172, label %if.end174

if.then172:                                       ; preds = %hard_test_done
  %call173 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %hard_test_done
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end174, %if.end120, %if.end100, %if.end79, %if.end55, %if.end24
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @busy_msleep(i64 noundef %msec) #0 {
entry:
  %msec.addr = alloca i64, align 8
  %hires = alloca %struct.mbedtls_timing_hr_time, align 1
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %msec, ptr %msec.addr, align 8
  store i64 0, ptr %i, align 8
  %call = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call1 = call i64 @mbedtls_timing_get_timer(ptr noundef %hires, i32 noundef 0)
  %0 = load i64, ptr %msec.addr, align 8
  %cmp = icmp ult i64 %call1, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %i, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %i, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %2 = load i64, ptr %i, align 8
  store volatile i64 %2, ptr %j, align 8
  %3 = load volatile i64, ptr %j, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{i64 2981}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
