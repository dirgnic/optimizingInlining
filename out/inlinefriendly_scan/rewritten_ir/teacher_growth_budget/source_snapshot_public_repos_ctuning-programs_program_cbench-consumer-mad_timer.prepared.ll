; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/timer.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/timer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.mad_timer_t = type { i64, i64 }

@mad_timer_zero = constant %struct.mad_timer_t zeroinitializer, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @mad_timer_compare([2 x i64] %timer1.coerce, [2 x i64] %timer2.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %timer1 = alloca %struct.mad_timer_t, align 8
  %timer2 = alloca %struct.mad_timer_t, align 8
  %diff = alloca i64, align 8
  store [2 x i64] %timer1.coerce, ptr %timer1, align 8
  store [2 x i64] %timer2.coerce, ptr %timer2, align 8
  %seconds = getelementptr inbounds %struct.mad_timer_t, ptr %timer1, i32 0, i32 0
  %0 = load i64, ptr %seconds, align 8
  %seconds1 = getelementptr inbounds %struct.mad_timer_t, ptr %timer2, i32 0, i32 0
  %1 = load i64, ptr %seconds1, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, ptr %diff, align 8
  %2 = load i64, ptr %diff, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %diff, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %timer1, i32 0, i32 1
  %4 = load i64, ptr %fraction, align 8
  %fraction5 = getelementptr inbounds %struct.mad_timer_t, ptr %timer2, i32 0, i32 1
  %5 = load i64, ptr %fraction5, align 8
  %sub6 = sub i64 %4, %5
  store i64 %sub6, ptr %diff, align 8
  %6 = load i64, ptr %diff, align 8
  %cmp7 = icmp slt i64 %6, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.end4
  %7 = load i64, ptr %diff, align 8
  %cmp10 = icmp sgt i64 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else9
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.else9
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then8, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind ssp uwtable
define void @mad_timer_negate(ptr noundef %timer) #0 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  %0 = load ptr, ptr %timer.addr, align 8
  %seconds = getelementptr inbounds %struct.mad_timer_t, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %seconds, align 8
  %sub = sub nsw i64 0, %1
  %2 = load ptr, ptr %timer.addr, align 8
  %seconds1 = getelementptr inbounds %struct.mad_timer_t, ptr %2, i32 0, i32 0
  store i64 %sub, ptr %seconds1, align 8
  %3 = load ptr, ptr %timer.addr, align 8
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %fraction, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %timer.addr, align 8
  %seconds2 = getelementptr inbounds %struct.mad_timer_t, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %seconds2, align 8
  %sub3 = sub nsw i64 %6, 1
  store i64 %sub3, ptr %seconds2, align 8
  %7 = load ptr, ptr %timer.addr, align 8
  %fraction4 = getelementptr inbounds %struct.mad_timer_t, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %fraction4, align 8
  %sub5 = sub i64 352800000, %8
  %9 = load ptr, ptr %timer.addr, align 8
  %fraction6 = getelementptr inbounds %struct.mad_timer_t, ptr %9, i32 0, i32 1
  store i64 %sub5, ptr %fraction6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define [2 x i64] @mad_timer_abs([2 x i64] %timer.coerce) #0 {
entry:
  %retval = alloca %struct.mad_timer_t, align 8
  %timer = alloca %struct.mad_timer_t, align 8
  store [2 x i64] %timer.coerce, ptr %timer, align 8
  %0 = load [2 x i64], ptr %timer, align 8
  %1 = load [2 x i64], ptr @mad_timer_zero, align 8
  %call = call i32 @mad_timer_compare([2 x i64] %0, [2 x i64] %1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mad_timer_negate(ptr noundef %timer)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %timer, i64 16, i1 false)
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind ssp uwtable
define void @mad_timer_set(ptr noundef %timer, i64 noundef %seconds, i64 noundef %numer, i64 noundef %denom) #0 {
entry:
  %timer.addr = alloca ptr, align 8
  %seconds.addr = alloca i64, align 8
  %numer.addr = alloca i64, align 8
  %denom.addr = alloca i64, align 8
  store ptr %timer, ptr %timer.addr, align 8
  store i64 %seconds, ptr %seconds.addr, align 8
  store i64 %numer, ptr %numer.addr, align 8
  store i64 %denom, ptr %denom.addr, align 8
  %0 = load i64, ptr %seconds.addr, align 8
  %1 = load ptr, ptr %timer.addr, align 8
  %seconds1 = getelementptr inbounds %struct.mad_timer_t, ptr %1, i32 0, i32 0
  store i64 %0, ptr %seconds1, align 8
  %2 = load i64, ptr %numer.addr, align 8
  %3 = load i64, ptr %denom.addr, align 8
  %cmp = icmp uge i64 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, ptr %denom.addr, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, ptr %numer.addr, align 8
  %6 = load i64, ptr %denom.addr, align 8
  %div = udiv i64 %5, %6
  %7 = load ptr, ptr %timer.addr, align 8
  %seconds3 = getelementptr inbounds %struct.mad_timer_t, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %seconds3, align 8
  %add = add i64 %8, %div
  store i64 %add, ptr %seconds3, align 8
  %9 = load i64, ptr %denom.addr, align 8
  %10 = load i64, ptr %numer.addr, align 8
  %rem = urem i64 %10, %9
  store i64 %rem, ptr %numer.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i64, ptr %denom.addr, align 8
  switch i64 %11, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb
    i64 352800000, label %sw.bb4
    i64 1000, label %sw.bb6
    i64 8000, label %sw.bb8
    i64 11025, label %sw.bb11
    i64 12000, label %sw.bb14
    i64 16000, label %sw.bb17
    i64 22050, label %sw.bb20
    i64 24000, label %sw.bb23
    i64 32000, label %sw.bb26
    i64 44100, label %sw.bb29
    i64 48000, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %12 = load ptr, ptr %timer.addr, align 8
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %12, i32 0, i32 1
  store i64 0, ptr %fraction, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %13 = load i64, ptr %numer.addr, align 8
  %14 = load ptr, ptr %timer.addr, align 8
  %fraction5 = getelementptr inbounds %struct.mad_timer_t, ptr %14, i32 0, i32 1
  store i64 %13, ptr %fraction5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %15 = load i64, ptr %numer.addr, align 8
  %mul = mul i64 %15, 352800
  %16 = load ptr, ptr %timer.addr, align 8
  %fraction7 = getelementptr inbounds %struct.mad_timer_t, ptr %16, i32 0, i32 1
  store i64 %mul, ptr %fraction7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %17 = load i64, ptr %numer.addr, align 8
  %mul9 = mul i64 %17, 44100
  %18 = load ptr, ptr %timer.addr, align 8
  %fraction10 = getelementptr inbounds %struct.mad_timer_t, ptr %18, i32 0, i32 1
  store i64 %mul9, ptr %fraction10, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %19 = load i64, ptr %numer.addr, align 8
  %mul12 = mul i64 %19, 32000
  %20 = load ptr, ptr %timer.addr, align 8
  %fraction13 = getelementptr inbounds %struct.mad_timer_t, ptr %20, i32 0, i32 1
  store i64 %mul12, ptr %fraction13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %21 = load i64, ptr %numer.addr, align 8
  %mul15 = mul i64 %21, 29400
  %22 = load ptr, ptr %timer.addr, align 8
  %fraction16 = getelementptr inbounds %struct.mad_timer_t, ptr %22, i32 0, i32 1
  store i64 %mul15, ptr %fraction16, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %23 = load i64, ptr %numer.addr, align 8
  %mul18 = mul i64 %23, 22050
  %24 = load ptr, ptr %timer.addr, align 8
  %fraction19 = getelementptr inbounds %struct.mad_timer_t, ptr %24, i32 0, i32 1
  store i64 %mul18, ptr %fraction19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %25 = load i64, ptr %numer.addr, align 8
  %mul21 = mul i64 %25, 16000
  %26 = load ptr, ptr %timer.addr, align 8
  %fraction22 = getelementptr inbounds %struct.mad_timer_t, ptr %26, i32 0, i32 1
  store i64 %mul21, ptr %fraction22, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %27 = load i64, ptr %numer.addr, align 8
  %mul24 = mul i64 %27, 14700
  %28 = load ptr, ptr %timer.addr, align 8
  %fraction25 = getelementptr inbounds %struct.mad_timer_t, ptr %28, i32 0, i32 1
  store i64 %mul24, ptr %fraction25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %29 = load i64, ptr %numer.addr, align 8
  %mul27 = mul i64 %29, 11025
  %30 = load ptr, ptr %timer.addr, align 8
  %fraction28 = getelementptr inbounds %struct.mad_timer_t, ptr %30, i32 0, i32 1
  store i64 %mul27, ptr %fraction28, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %31 = load i64, ptr %numer.addr, align 8
  %mul30 = mul i64 %31, 8000
  %32 = load ptr, ptr %timer.addr, align 8
  %fraction31 = getelementptr inbounds %struct.mad_timer_t, ptr %32, i32 0, i32 1
  store i64 %mul30, ptr %fraction31, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %33 = load i64, ptr %numer.addr, align 8
  %mul33 = mul i64 %33, 7350
  %34 = load ptr, ptr %timer.addr, align 8
  %fraction34 = getelementptr inbounds %struct.mad_timer_t, ptr %34, i32 0, i32 1
  store i64 %mul33, ptr %fraction34, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %35 = load i64, ptr %numer.addr, align 8
  %36 = load i64, ptr %denom.addr, align 8
  %call = call i64 @scale_rational(i64 noundef %35, i64 noundef %36, i64 noundef 352800000)
  %37 = load ptr, ptr %timer.addr, align 8
  %fraction35 = getelementptr inbounds %struct.mad_timer_t, ptr %37, i32 0, i32 1
  store i64 %call, ptr %fraction35, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %38 = load ptr, ptr %timer.addr, align 8
  %fraction36 = getelementptr inbounds %struct.mad_timer_t, ptr %38, i32 0, i32 1
  %39 = load i64, ptr %fraction36, align 8
  %cmp37 = icmp uge i64 %39, 352800000
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %sw.epilog
  %40 = load ptr, ptr %timer.addr, align 8
  call void @reduce_timer(ptr noundef %40)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %sw.epilog
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @scale_rational(i64 noundef %numer, i64 noundef %denom, i64 noundef %scale) #0 {
entry:
  %retval = alloca i64, align 8
  %numer.addr = alloca i64, align 8
  %denom.addr = alloca i64, align 8
  %scale.addr = alloca i64, align 8
  store i64 %numer, ptr %numer.addr, align 8
  store i64 %denom, ptr %denom.addr, align 8
  store i64 %scale, ptr %scale.addr, align 8
  call void @reduce_rational(ptr noundef %numer.addr, ptr noundef %denom.addr)
  call void @reduce_rational(ptr noundef %scale.addr, ptr noundef %denom.addr)
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %denom.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, ptr %denom.addr, align 8
  %2 = load i64, ptr %scale.addr, align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %do.end
  %3 = load i64, ptr %numer.addr, align 8
  %4 = load i64, ptr %scale.addr, align 8
  %5 = load i64, ptr %denom.addr, align 8
  %div = udiv i64 %4, %5
  %mul = mul i64 %3, %div
  %6 = load i64, ptr %numer.addr, align 8
  %7 = load i64, ptr %scale.addr, align 8
  %8 = load i64, ptr %denom.addr, align 8
  %rem = urem i64 %7, %8
  %mul3 = mul i64 %6, %rem
  %9 = load i64, ptr %denom.addr, align 8
  %div4 = udiv i64 %mul3, %9
  %add = add i64 %mul, %div4
  store i64 %add, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %do.end
  %10 = load i64, ptr %denom.addr, align 8
  %11 = load i64, ptr %numer.addr, align 8
  %cmp6 = icmp ult i64 %10, %11
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end5
  %12 = load i64, ptr %scale.addr, align 8
  %13 = load i64, ptr %numer.addr, align 8
  %14 = load i64, ptr %denom.addr, align 8
  %div8 = udiv i64 %13, %14
  %mul9 = mul i64 %12, %div8
  %15 = load i64, ptr %scale.addr, align 8
  %16 = load i64, ptr %numer.addr, align 8
  %17 = load i64, ptr %denom.addr, align 8
  %rem10 = urem i64 %16, %17
  %mul11 = mul i64 %15, %rem10
  %18 = load i64, ptr %denom.addr, align 8
  %div12 = udiv i64 %mul11, %18
  %add13 = add i64 %mul9, %div12
  store i64 %add13, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end5
  %19 = load i64, ptr %numer.addr, align 8
  %20 = load i64, ptr %scale.addr, align 8
  %mul15 = mul i64 %19, %20
  %21 = load i64, ptr %denom.addr, align 8
  %div16 = udiv i64 %mul15, %21
  store i64 %div16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then7, %if.then2
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: nounwind ssp uwtable
define internal void @reduce_timer(ptr noundef %timer) #0 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  %0 = load ptr, ptr %timer.addr, align 8
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %fraction, align 8
  %div = udiv i64 %1, 352800000
  %2 = load ptr, ptr %timer.addr, align 8
  %seconds = getelementptr inbounds %struct.mad_timer_t, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %seconds, align 8
  %add = add i64 %3, %div
  store i64 %add, ptr %seconds, align 8
  %4 = load ptr, ptr %timer.addr, align 8
  %fraction1 = getelementptr inbounds %struct.mad_timer_t, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %fraction1, align 8
  %rem = urem i64 %5, 352800000
  store i64 %rem, ptr %fraction1, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mad_timer_add(ptr noundef %timer, [2 x i64] %incr.coerce) #0 {
entry:
  %incr = alloca %struct.mad_timer_t, align 8
  %timer.addr = alloca ptr, align 8
  store [2 x i64] %incr.coerce, ptr %incr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  %seconds = getelementptr inbounds %struct.mad_timer_t, ptr %incr, i32 0, i32 0
  %0 = load i64, ptr %seconds, align 8
  %1 = load ptr, ptr %timer.addr, align 8
  %seconds1 = getelementptr inbounds %struct.mad_timer_t, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %seconds1, align 8
  %add = add nsw i64 %2, %0
  store i64 %add, ptr %seconds1, align 8
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %incr, i32 0, i32 1
  %3 = load i64, ptr %fraction, align 8
  %4 = load ptr, ptr %timer.addr, align 8
  %fraction2 = getelementptr inbounds %struct.mad_timer_t, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %fraction2, align 8
  %add3 = add i64 %5, %3
  store i64 %add3, ptr %fraction2, align 8
  %6 = load ptr, ptr %timer.addr, align 8
  %fraction4 = getelementptr inbounds %struct.mad_timer_t, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %fraction4, align 8
  %cmp = icmp uge i64 %7, 352800000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %timer.addr, align 8
  call void @reduce_timer(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @mad_timer_multiply(ptr noundef %timer, i64 noundef %scalar) #0 {
entry:
  %timer.addr = alloca ptr, align 8
  %scalar.addr = alloca i64, align 8
  %addend = alloca %struct.mad_timer_t, align 8
  %factor = alloca i64, align 8
  store ptr %timer, ptr %timer.addr, align 8
  store i64 %scalar, ptr %scalar.addr, align 8
  %0 = load i64, ptr %scalar.addr, align 8
  store i64 %0, ptr %factor, align 8
  %1 = load i64, ptr %scalar.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %scalar.addr, align 8
  %sub = sub nsw i64 0, %2
  store i64 %sub, ptr %factor, align 8
  %3 = load ptr, ptr %timer.addr, align 8
  call void @mad_timer_negate(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %timer.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %addend, ptr align 8 %4, i64 16, i1 false)
  %5 = load ptr, ptr %timer.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 @mad_timer_zero, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.end
  %6 = load i64, ptr %factor, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %factor, align 8
  %and = and i64 %7, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  %8 = load ptr, ptr %timer.addr, align 8
  %9 = load [2 x i64], ptr %addend, align 8
  call void @mad_timer_add(ptr noundef %8, [2 x i64] %9)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.body
  %10 = load [2 x i64], ptr %addend, align 8
  call void @mad_timer_add(ptr noundef %addend, [2 x i64] %10)
  %11 = load i64, ptr %factor, align 8
  %shr = lshr i64 %11, 1
  store i64 %shr, ptr %factor, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @mad_timer_count([2 x i64] %timer.coerce, i32 noundef %units) #0 {
entry:
  %retval = alloca i64, align 8
  %timer = alloca %struct.mad_timer_t, align 8
  %units.addr = alloca i32, align 4
  store [2 x i64] %timer.coerce, ptr %timer, align 8
  store i32 %units, ptr %units.addr, align 4
  %0 = load i32, ptr %units.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb2
    i32 0, label %sw.bb5
    i32 10, label %sw.bb7
    i32 100, label %sw.bb7
    i32 1000, label %sw.bb7
    i32 8000, label %sw.bb7
    i32 11025, label %sw.bb7
    i32 12000, label %sw.bb7
    i32 16000, label %sw.bb7
    i32 22050, label %sw.bb7
    i32 24000, label %sw.bb7
    i32 32000, label %sw.bb7
    i32 44100, label %sw.bb7
    i32 48000, label %sw.bb7
    i32 24, label %sw.bb7
    i32 25, label %sw.bb7
    i32 30, label %sw.bb7
    i32 48, label %sw.bb7
    i32 50, label %sw.bb7
    i32 60, label %sw.bb7
    i32 75, label %sw.bb7
    i32 -24, label %sw.bb10
    i32 -25, label %sw.bb10
    i32 -30, label %sw.bb10
    i32 -48, label %sw.bb10
    i32 -50, label %sw.bb10
    i32 -60, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %seconds = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 0
  %1 = load i64, ptr %seconds, align 8
  %div = sdiv i64 %1, 60
  %div1 = sdiv i64 %div, 60
  store i64 %div1, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  %seconds3 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 0
  %2 = load i64, ptr %seconds3, align 8
  %div4 = sdiv i64 %2, 60
  store i64 %div4, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  %seconds6 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 0
  %3 = load i64, ptr %seconds6, align 8
  store i64 %3, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %seconds8 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 0
  %4 = load i64, ptr %seconds8, align 8
  %5 = load i32, ptr %units.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul nsw i64 %4, %conv
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 1
  %6 = load i64, ptr %fraction, align 8
  %7 = load i32, ptr %units.addr, align 4
  %conv9 = sext i32 %7 to i64
  %call = call i64 @scale_rational(i64 noundef %6, i64 noundef 352800000, i64 noundef %conv9)
  %add = add nsw i64 %mul, %call
  store i64 %add, ptr %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %8 = load i32, ptr %units.addr, align 4
  %sub = sub nsw i32 0, %8
  %9 = load [2 x i64], ptr %timer, align 8
  %call11 = call i64 @mad_timer_count([2 x i64] %9, i32 noundef %sub)
  %add12 = add nsw i64 %call11, 1
  %mul13 = mul nsw i64 %add12, 1000
  %div14 = sdiv i64 %mul13, 1001
  store i64 %div14, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb7, %sw.bb5, %sw.bb2, %sw.bb
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define i64 @mad_timer_fraction([2 x i64] %timer.coerce, i64 noundef %denom) #0 {
entry:
  %retval = alloca i64, align 8
  %timer = alloca %struct.mad_timer_t, align 8
  %denom.addr = alloca i64, align 8
  %tmp = alloca %struct.mad_timer_t, align 8
  store [2 x i64] %timer.coerce, ptr %timer, align 8
  store i64 %denom, ptr %denom.addr, align 8
  %0 = load [2 x i64], ptr %timer, align 8
  %call = call [2 x i64] @mad_timer_abs([2 x i64] %0)
  store [2 x i64] %call, ptr %tmp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %timer, ptr align 8 %tmp, i64 16, i1 false)
  %1 = load i64, ptr %denom.addr, align 8
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 352800000, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 1
  %2 = load i64, ptr %fraction, align 8
  %div = udiv i64 352800000, %2
  store i64 %div, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %fraction2 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 1
  %3 = load i64, ptr %fraction2, align 8
  store i64 %3, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %fraction3 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 1
  %4 = load i64, ptr %fraction3, align 8
  %5 = load i64, ptr %denom.addr, align 8
  %call4 = call i64 @scale_rational(i64 noundef %4, i64 noundef 352800000, i64 noundef %5)
  store i64 %call4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

; Function Attrs: nounwind ssp uwtable
define void @mad_timer_string([2 x i64] %timer.coerce, ptr noundef %dest, ptr noundef %format, i32 noundef %units, i32 noundef %fracunits, i64 noundef %subparts) #0 {
entry:
  %timer = alloca %struct.mad_timer_t, align 8
  %dest.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %units.addr = alloca i32, align 4
  %fracunits.addr = alloca i32, align 4
  %subparts.addr = alloca i64, align 8
  %hours = alloca i64, align 8
  %minutes = alloca i64, align 8
  %seconds = alloca i64, align 8
  %sub = alloca i64, align 8
  %frac = alloca i32, align 4
  %tmp = alloca %struct.mad_timer_t, align 8
  %denom = alloca i64, align 8
  %frame = alloca i64, align 8
  %cycle = alloca i64, align 8
  %d = alloca i64, align 8
  %m = alloca i64, align 8
  store [2 x i64] %timer.coerce, ptr %timer, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %format, ptr %format.addr, align 8
  store i32 %units, ptr %units.addr, align 4
  store i32 %fracunits, ptr %fracunits.addr, align 4
  store i64 %subparts, ptr %subparts.addr, align 8
  %0 = load [2 x i64], ptr %timer, align 8
  %call = call [2 x i64] @mad_timer_abs([2 x i64] %0)
  store [2 x i64] %call, ptr %tmp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %timer, ptr align 8 %tmp, i64 16, i1 false)
  %seconds1 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 0
  %1 = load i64, ptr %seconds1, align 8
  store i64 %1, ptr %seconds, align 8
  store i64 0, ptr %sub, align 8
  store i32 0, ptr %frac, align 4
  %2 = load i32, ptr %fracunits.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb
    i32 0, label %sw.bb
    i32 10, label %sw.bb2
    i32 100, label %sw.bb2
    i32 1000, label %sw.bb2
    i32 8000, label %sw.bb2
    i32 11025, label %sw.bb2
    i32 12000, label %sw.bb2
    i32 16000, label %sw.bb2
    i32 22050, label %sw.bb2
    i32 24000, label %sw.bb2
    i32 32000, label %sw.bb2
    i32 44100, label %sw.bb2
    i32 48000, label %sw.bb2
    i32 24, label %sw.bb2
    i32 25, label %sw.bb2
    i32 30, label %sw.bb2
    i32 48, label %sw.bb2
    i32 50, label %sw.bb2
    i32 60, label %sw.bb2
    i32 75, label %sw.bb2
    i32 -24, label %sw.bb7
    i32 -25, label %sw.bb7
    i32 -30, label %sw.bb7
    i32 -48, label %sw.bb7
    i32 -50, label %sw.bb7
    i32 -60, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load i32, ptr %fracunits.addr, align 4
  %conv = sext i32 %3 to i64
  %div = udiv i64 352800000, %conv
  store i64 %div, ptr %denom, align 8
  %fraction = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 1
  %4 = load i64, ptr %fraction, align 8
  %5 = load i64, ptr %denom, align 8
  %div3 = udiv i64 %4, %5
  %conv4 = trunc i64 %div3 to i32
  store i32 %conv4, ptr %frac, align 4
  %fraction5 = getelementptr inbounds %struct.mad_timer_t, ptr %timer, i32 0, i32 1
  %6 = load i64, ptr %fraction5, align 8
  %7 = load i64, ptr %denom, align 8
  %rem = urem i64 %6, %7
  %8 = load i64, ptr %denom, align 8
  %9 = load i64, ptr %subparts.addr, align 8
  %call6 = call i64 @scale_rational(i64 noundef %rem, i64 noundef %8, i64 noundef %9)
  store i64 %call6, ptr %sub, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %10 = load i32, ptr %fracunits.addr, align 4
  %11 = load [2 x i64], ptr %timer, align 8
  %call8 = call i64 @mad_timer_count([2 x i64] %11, i32 noundef %10)
  store i64 %call8, ptr %frame, align 8
  %12 = load i32, ptr %fracunits.addr, align 4
  %sub9 = sub nsw i32 0, %12
  %mul = mul nsw i32 %sub9, 60
  %mul10 = mul nsw i32 %mul, 10
  %sub11 = sub nsw i32 %mul10, 18
  %conv12 = sext i32 %sub11 to i64
  store i64 %conv12, ptr %cycle, align 8
  %13 = load i64, ptr %frame, align 8
  %14 = load i64, ptr %cycle, align 8
  %div13 = udiv i64 %13, %14
  store i64 %div13, ptr %d, align 8
  %15 = load i64, ptr %frame, align 8
  %16 = load i64, ptr %cycle, align 8
  %rem14 = urem i64 %15, %16
  store i64 %rem14, ptr %m, align 8
  %17 = load i64, ptr %d, align 8
  %mul15 = mul i64 18, %17
  %18 = load i64, ptr %frame, align 8
  %add = add i64 %18, %mul15
  store i64 %add, ptr %frame, align 8
  %19 = load i64, ptr %m, align 8
  %cmp = icmp ugt i64 %19, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb7
  %20 = load i64, ptr %m, align 8
  %sub17 = sub i64 %20, 2
  %21 = load i64, ptr %cycle, align 8
  %div18 = udiv i64 %21, 10
  %div19 = udiv i64 %sub17, %div18
  %mul20 = mul i64 2, %div19
  %22 = load i64, ptr %frame, align 8
  %add21 = add i64 %22, %mul20
  store i64 %add21, ptr %frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7
  %23 = load i64, ptr %frame, align 8
  %24 = load i32, ptr %fracunits.addr, align 4
  %sub22 = sub nsw i32 0, %24
  %conv23 = sext i32 %sub22 to i64
  %rem24 = urem i64 %23, %conv23
  %conv25 = trunc i64 %rem24 to i32
  store i32 %conv25, ptr %frac, align 4
  %25 = load i64, ptr %frame, align 8
  %26 = load i32, ptr %fracunits.addr, align 4
  %sub26 = sub nsw i32 0, %26
  %conv27 = sext i32 %sub26 to i64
  %div28 = udiv i64 %25, %conv27
  store i64 %div28, ptr %seconds, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb2, %sw.bb
  %27 = load i32, ptr %units.addr, align 4
  switch i32 %27, label %sw.epilog52 [
    i32 -2, label %sw.bb29
    i32 -1, label %sw.bb37
    i32 0, label %sw.bb42
    i32 -24, label %sw.bb44
    i32 -25, label %sw.bb44
    i32 -30, label %sw.bb44
    i32 -48, label %sw.bb44
    i32 -50, label %sw.bb44
    i32 -60, label %sw.bb44
    i32 10, label %sw.bb49
    i32 100, label %sw.bb49
    i32 1000, label %sw.bb49
    i32 8000, label %sw.bb49
    i32 11025, label %sw.bb49
    i32 12000, label %sw.bb49
    i32 16000, label %sw.bb49
    i32 22050, label %sw.bb49
    i32 24000, label %sw.bb49
    i32 32000, label %sw.bb49
    i32 44100, label %sw.bb49
    i32 48000, label %sw.bb49
    i32 24, label %sw.bb49
    i32 25, label %sw.bb49
    i32 30, label %sw.bb49
    i32 48, label %sw.bb49
    i32 50, label %sw.bb49
    i32 60, label %sw.bb49
    i32 75, label %sw.bb49
  ]

sw.bb29:                                          ; preds = %sw.epilog
  %28 = load i64, ptr %seconds, align 8
  %div30 = udiv i64 %28, 60
  store i64 %div30, ptr %minutes, align 8
  %29 = load i64, ptr %minutes, align 8
  %div31 = udiv i64 %29, 60
  store i64 %div31, ptr %hours, align 8
  %30 = load ptr, ptr %dest.addr, align 8
  %31 = load ptr, ptr %dest.addr, align 8
  %32 = call i64 @llvm.objectsize.i64.p0(ptr %31, i1 false, i1 true, i1 false)
  %33 = load ptr, ptr %format.addr, align 8
  %34 = load i64, ptr %hours, align 8
  %35 = load i64, ptr %minutes, align 8
  %rem32 = urem i64 %35, 60
  %conv33 = trunc i64 %rem32 to i32
  %36 = load i64, ptr %seconds, align 8
  %rem34 = urem i64 %36, 60
  %conv35 = trunc i64 %rem34 to i32
  %37 = load i32, ptr %frac, align 4
  %38 = load i64, ptr %sub, align 8
  %call36 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %30, i32 noundef 0, i64 noundef %32, ptr noundef %33, i64 noundef %34, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %37, i64 noundef %38)
  br label %sw.epilog52

sw.bb37:                                          ; preds = %sw.epilog
  %39 = load i64, ptr %seconds, align 8
  %div38 = udiv i64 %39, 60
  store i64 %div38, ptr %minutes, align 8
  %40 = load ptr, ptr %dest.addr, align 8
  %41 = load ptr, ptr %dest.addr, align 8
  %42 = call i64 @llvm.objectsize.i64.p0(ptr %41, i1 false, i1 true, i1 false)
  %43 = load ptr, ptr %format.addr, align 8
  %44 = load i64, ptr %minutes, align 8
  %45 = load i64, ptr %seconds, align 8
  %rem39 = urem i64 %45, 60
  %conv40 = trunc i64 %rem39 to i32
  %46 = load i32, ptr %frac, align 4
  %47 = load i64, ptr %sub, align 8
  %call41 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %40, i32 noundef 0, i64 noundef %42, ptr noundef %43, i64 noundef %44, i32 noundef %conv40, i32 noundef %46, i64 noundef %47)
  br label %sw.epilog52

sw.bb42:                                          ; preds = %sw.epilog
  %48 = load ptr, ptr %dest.addr, align 8
  %49 = load ptr, ptr %dest.addr, align 8
  %50 = call i64 @llvm.objectsize.i64.p0(ptr %49, i1 false, i1 true, i1 false)
  %51 = load ptr, ptr %format.addr, align 8
  %52 = load i64, ptr %seconds, align 8
  %53 = load i32, ptr %frac, align 4
  %54 = load i64, ptr %sub, align 8
  %call43 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %48, i32 noundef 0, i64 noundef %50, ptr noundef %51, i64 noundef %52, i32 noundef %53, i64 noundef %54)
  br label %sw.epilog52

sw.bb44:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %55 = load i32, ptr %fracunits.addr, align 4
  %cmp45 = icmp slt i32 %55, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %sw.bb44
  store i64 0, ptr %sub, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %sw.bb44
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %if.end48
  %56 = load ptr, ptr %dest.addr, align 8
  %57 = load ptr, ptr %dest.addr, align 8
  %58 = call i64 @llvm.objectsize.i64.p0(ptr %57, i1 false, i1 true, i1 false)
  %59 = load ptr, ptr %format.addr, align 8
  %60 = load i32, ptr %units.addr, align 4
  %61 = load [2 x i64], ptr %timer, align 8
  %call50 = call i64 @mad_timer_count([2 x i64] %61, i32 noundef %60)
  %62 = load i64, ptr %sub, align 8
  %call51 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %56, i32 noundef 0, i64 noundef %58, ptr noundef %59, i64 noundef %call50, i64 noundef %62)
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.epilog, %sw.bb49, %sw.bb42, %sw.bb37, %sw.bb29
  ret void
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define internal void @reduce_rational(ptr noundef %numer, ptr noundef %denom) #0 {
entry:
  %numer.addr = alloca ptr, align 8
  %denom.addr = alloca ptr, align 8
  %factor = alloca i64, align 8
  store ptr %numer, ptr %numer.addr, align 8
  store ptr %denom, ptr %denom.addr, align 8
  %0 = load ptr, ptr %numer.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load ptr, ptr %denom.addr, align 8
  %3 = load i64, ptr %2, align 8
  %call = call i64 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_timer_0(i64 noundef %1, i64 noundef %3)
  store i64 %call, ptr %factor, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load i64, ptr %factor, align 8
  %cmp = icmp ne i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i64, ptr %factor, align 8
  %6 = load ptr, ptr %numer.addr, align 8
  %7 = load i64, ptr %6, align 8
  %div = udiv i64 %7, %5
  store i64 %div, ptr %6, align 8
  %8 = load i64, ptr %factor, align 8
  %9 = load ptr, ptr %denom.addr, align 8
  %10 = load i64, ptr %9, align 8
  %div1 = udiv i64 %10, %8
  store i64 %div1, ptr %9, align 8
  ret void
}

; Function Attrs: noreturn
declare void @abort() #4

; Function Attrs: nounwind ssp uwtable
define internal i64 @gcd(i64 noundef %num1, i64 noundef %num2) #0 {
entry:
  %num1.addr = alloca i64, align 8
  %num2.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %num1, ptr %num1.addr, align 8
  store i64 %num2, ptr %num2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %num2.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %num2.addr, align 8
  store i64 %1, ptr %tmp, align 8
  %2 = load i64, ptr %num1.addr, align 8
  %3 = load i64, ptr %num2.addr, align 8
  %rem = urem i64 %2, %3
  store i64 %rem, ptr %num2.addr, align 8
  %4 = load i64, ptr %tmp, align 8
  store i64 %4, ptr %num1.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load i64, ptr %num1.addr, align 8
  ret i64 %5
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i64 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_mad_timer_0(i64 noundef %num1, i64 noundef %num2)  alwaysinline#0 {
entry:
  %num1.addr = alloca i64, align 8
  %num2.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %num1, ptr %num1.addr, align 8
  store i64 %num2, ptr %num2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %num2.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %num2.addr, align 8
  store i64 %1, ptr %tmp, align 8
  %2 = load i64, ptr %num1.addr, align 8
  %3 = load i64, ptr %num2.addr, align 8
  %rem = urem i64 %2, %3
  store i64 %rem, ptr %num2.addr, align 8
  %4 = load i64, ptr %tmp, align 8
  store i64 %4, ptr %num1.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load i64, ptr %num1.addr, align 8
  ret i64 %5
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
