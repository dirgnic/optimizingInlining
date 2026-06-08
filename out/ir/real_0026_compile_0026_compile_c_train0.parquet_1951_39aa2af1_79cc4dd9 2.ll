; ModuleID = '<stdin>'
source_filename = "simple/armthumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @lzma_simple_armthumb_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #0 {
entry:
  %next.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %filters.addr = alloca ptr, align 8
  store ptr %next, ptr %next.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  store ptr %filters, ptr %filters.addr, align 8
  %0 = load ptr, ptr %next.addr, align 8
  %1 = load ptr, ptr %allocator.addr, align 8
  %2 = load ptr, ptr %filters.addr, align 8
  %call = call i32 @armthumb_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armthumb_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, i1 noundef zeroext %is_encoder) #0 {
entry:
  %next.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %filters.addr = alloca ptr, align 8
  %is_encoder.addr = alloca i8, align 1
  store ptr %next, ptr %next.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  store ptr %filters, ptr %filters.addr, align 8
  %frombool = zext i1 %is_encoder to i8
  store i8 %frombool, ptr %is_encoder.addr, align 1
  %0 = load ptr, ptr %next.addr, align 8
  %1 = load ptr, ptr %allocator.addr, align 8
  %2 = load ptr, ptr %filters.addr, align 8
  %3 = load i8, ptr %is_encoder.addr, align 1
  %tobool = trunc i8 %3 to i1
  %call = call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @armthumb_code, i64 noundef 0, i64 noundef 4, i32 noundef 2, i1 noundef zeroext %tobool)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @lzma_simple_armthumb_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #0 {
entry:
  %next.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  %filters.addr = alloca ptr, align 8
  store ptr %next, ptr %next.addr, align 8
  store ptr %allocator, ptr %allocator.addr, align 8
  store ptr %filters, ptr %filters.addr, align 8
  %0 = load ptr, ptr %next.addr, align 8
  %1 = load ptr, ptr %allocator.addr, align 8
  %2 = load ptr, ptr %filters.addr, align 8
  %call = call i32 @armthumb_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %call
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @armthumb_code(ptr noundef %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr noundef %buffer, i64 noundef %size) #0 {
entry:
  %simple.addr = alloca ptr, align 8
  %now_pos.addr = alloca i32, align 4
  %is_encoder.addr = alloca i8, align 1
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  store ptr %simple, ptr %simple.addr, align 8
  store i32 %now_pos, ptr %now_pos.addr, align 4
  %frombool = zext i1 %is_encoder to i8
  store i8 %frombool, ptr %is_encoder.addr, align 1
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %add = add i64 %0, 4
  %1 = load i64, ptr %size.addr, align 8
  %cmp = icmp ule i64 %add, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buffer.addr, align 8
  %3 = load i64, ptr %i, align 8
  %add1 = add i64 %3, 1
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %add1
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 248
  %cmp2 = icmp eq i32 %and, 240
  br i1 %cmp2, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %buffer.addr, align 8
  %6 = load i64, ptr %i, align 8
  %add4 = add i64 %6, 3
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 %add4
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %and7 = and i32 %conv6, 248
  %cmp8 = icmp eq i32 %and7, 248
  br i1 %cmp8, label %if.then, label %if.end57

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %buffer.addr, align 8
  %9 = load i64, ptr %i, align 8
  %add10 = add i64 %9, 1
  %arrayidx11 = getelementptr inbounds i8, ptr %8, i64 %add10
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %and13 = and i32 %conv12, 7
  %shl = shl i32 %and13, 19
  %11 = load ptr, ptr %buffer.addr, align 8
  %12 = load i64, ptr %i, align 8
  %add14 = add i64 %12, 0
  %arrayidx15 = getelementptr inbounds i8, ptr %11, i64 %add14
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %shl17 = shl i32 %conv16, 11
  %or = or i32 %shl, %shl17
  %14 = load ptr, ptr %buffer.addr, align 8
  %15 = load i64, ptr %i, align 8
  %add18 = add i64 %15, 3
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 %add18
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %and21 = and i32 %conv20, 7
  %shl22 = shl i32 %and21, 8
  %or23 = or i32 %or, %shl22
  %17 = load ptr, ptr %buffer.addr, align 8
  %18 = load i64, ptr %i, align 8
  %add24 = add i64 %18, 2
  %arrayidx25 = getelementptr inbounds i8, ptr %17, i64 %add24
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %or27 = or i32 %or23, %conv26
  store i32 %or27, ptr %src, align 4
  %20 = load i32, ptr %src, align 4
  %shl28 = shl i32 %20, 1
  store i32 %shl28, ptr %src, align 4
  %21 = load i8, ptr %is_encoder.addr, align 1
  %tobool = trunc i8 %21 to i1
  br i1 %tobool, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then
  %22 = load i32, ptr %now_pos.addr, align 4
  %23 = load i64, ptr %i, align 8
  %conv30 = trunc i64 %23 to i32
  %add31 = add i32 %22, %conv30
  %add32 = add i32 %add31, 4
  %24 = load i32, ptr %src, align 4
  %add33 = add i32 %add32, %24
  store i32 %add33, ptr %dest, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %25 = load i32, ptr %src, align 4
  %26 = load i32, ptr %now_pos.addr, align 4
  %27 = load i64, ptr %i, align 8
  %conv34 = trunc i64 %27 to i32
  %add35 = add i32 %26, %conv34
  %add36 = add i32 %add35, 4
  %sub = sub i32 %25, %add36
  store i32 %sub, ptr %dest, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then29
  %28 = load i32, ptr %dest, align 4
  %shr = lshr i32 %28, 1
  store i32 %shr, ptr %dest, align 4
  %29 = load i32, ptr %dest, align 4
  %shr37 = lshr i32 %29, 19
  %and38 = and i32 %shr37, 7
  %or39 = or i32 240, %and38
  %conv40 = trunc i32 %or39 to i8
  %30 = load ptr, ptr %buffer.addr, align 8
  %31 = load i64, ptr %i, align 8
  %add41 = add i64 %31, 1
  %arrayidx42 = getelementptr inbounds i8, ptr %30, i64 %add41
  store i8 %conv40, ptr %arrayidx42, align 1
  %32 = load i32, ptr %dest, align 4
  %shr43 = lshr i32 %32, 11
  %conv44 = trunc i32 %shr43 to i8
  %33 = load ptr, ptr %buffer.addr, align 8
  %34 = load i64, ptr %i, align 8
  %add45 = add i64 %34, 0
  %arrayidx46 = getelementptr inbounds i8, ptr %33, i64 %add45
  store i8 %conv44, ptr %arrayidx46, align 1
  %35 = load i32, ptr %dest, align 4
  %shr47 = lshr i32 %35, 8
  %and48 = and i32 %shr47, 7
  %or49 = or i32 248, %and48
  %conv50 = trunc i32 %or49 to i8
  %36 = load ptr, ptr %buffer.addr, align 8
  %37 = load i64, ptr %i, align 8
  %add51 = add i64 %37, 3
  %arrayidx52 = getelementptr inbounds i8, ptr %36, i64 %add51
  store i8 %conv50, ptr %arrayidx52, align 1
  %38 = load i32, ptr %dest, align 4
  %conv53 = trunc i32 %38 to i8
  %39 = load ptr, ptr %buffer.addr, align 8
  %40 = load i64, ptr %i, align 8
  %add54 = add i64 %40, 2
  %arrayidx55 = getelementptr inbounds i8, ptr %39, i64 %add54
  store i8 %conv53, ptr %arrayidx55, align 1
  %41 = load i64, ptr %i, align 8
  %add56 = add i64 %41, 2
  store i64 %add56, ptr %i, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %42 = load i64, ptr %i, align 8
  %add58 = add i64 %42, 2
  store i64 %add58, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %43 = load i64, ptr %i, align 8
  ret i64 %43
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
