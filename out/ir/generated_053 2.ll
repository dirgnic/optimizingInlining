; ModuleID = './thesis_attempt/source_snapshot/DCMTK/generated_inlining/generated_053 2.cc'
source_filename = "./thesis_attempt/source_snapshot/DCMTK/generated_inlining/generated_053 2.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_small(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_branchy(i32 noundef %mode, i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %mode.addr, align 4
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %5, 3
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load i32, ptr %x.addr, align 4
  %7 = load i32, ptr %mode.addr, align 4
  %add7 = add nsw i32 %6, %7
  store i32 %add7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_large(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 53
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 54
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 55
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 56
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 57
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 58
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 59
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 60
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  %mul29 = mul nsw i32 %25, 11
  %add30 = add nsw i32 %mul29, 61
  store i32 %add30, ptr %s, align 4
  %26 = load i32, ptr %s, align 4
  %shr31 = ashr i32 %26, 3
  %27 = load i32, ptr %s, align 4
  %xor32 = xor i32 %27, %shr31
  store i32 %xor32, ptr %s, align 4
  %28 = load i32, ptr %s, align 4
  %mul33 = mul nsw i32 %28, 12
  %add34 = add nsw i32 %mul33, 62
  store i32 %add34, ptr %s, align 4
  %29 = load i32, ptr %s, align 4
  %shr35 = ashr i32 %29, 1
  %30 = load i32, ptr %s, align 4
  %xor36 = xor i32 %30, %shr35
  store i32 %xor36, ptr %s, align 4
  %31 = load i32, ptr %s, align 4
  %mul37 = mul nsw i32 %31, 13
  %add38 = add nsw i32 %mul37, 63
  store i32 %add38, ptr %s, align 4
  %32 = load i32, ptr %s, align 4
  %shr39 = ashr i32 %32, 2
  %33 = load i32, ptr %s, align 4
  %xor40 = xor i32 %33, %shr39
  store i32 %xor40, ptr %s, align 4
  %34 = load i32, ptr %s, align 4
  %mul41 = mul nsw i32 %34, 14
  %add42 = add nsw i32 %mul41, 64
  store i32 %add42, ptr %s, align 4
  %35 = load i32, ptr %s, align 4
  %shr43 = ashr i32 %35, 3
  %36 = load i32, ptr %s, align 4
  %xor44 = xor i32 %36, %shr43
  store i32 %xor44, ptr %s, align 4
  %37 = load i32, ptr %s, align 4
  ret i32 %37
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @gen_053_recursive(i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %2, 1
  %call = call i32 @gen_053_recursive(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_mix_0(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %call = call i32 @gen_053_small(i32 noundef %0)
  %1 = load i32, ptr %x.addr, align 4
  %call1 = call i32 @gen_053_branchy(i32 noundef 0, i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_mix_1(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %call = call i32 @gen_053_small(i32 noundef %0)
  %1 = load i32, ptr %x.addr, align 4
  %call1 = call i32 @gen_053_branchy(i32 noundef 1, i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_mix_2(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %call = call i32 @gen_053_small(i32 noundef %0)
  %1 = load i32, ptr %x.addr, align 4
  %call1 = call i32 @gen_053_branchy(i32 noundef 2, i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_mix_3(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %call = call i32 @gen_053_small(i32 noundef %0)
  %1 = load i32, ptr %x.addr, align 4
  %call1 = call i32 @gen_053_branchy(i32 noundef 0, i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_mix_4(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %call = call i32 @gen_053_small(i32 noundef %0)
  %1 = load i32, ptr %x.addr, align 4
  %call1 = call i32 @gen_053_branchy(i32 noundef 1, i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @gen_053_mix_5(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %call = call i32 @gen_053_small(i32 noundef %0)
  %1 = load i32, ptr %x.addr, align 4
  %call1 = call i32 @gen_053_branchy(i32 noundef 2, i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @gen_053_driver(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
  %call = call i32 @gen_053_small(i32 noundef %add)
  %1 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %1, %call
  store i32 %add1, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %call2 = call i32 @gen_053_branchy(i32 noundef 1, i32 noundef %2)
  %3 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %3, %call2
  store i32 %add3, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %4, 2
  %call5 = call i32 @gen_053_large(i32 noundef %add4)
  %5 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %5, %call5
  store i32 %add6, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %call7 = call i32 @gen_053_mix_3(i32 noundef %6)
  %7 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %7, %call7
  store i32 %add8, ptr %total, align 4
  %call9 = call i32 @gen_053_recursive(i32 noundef 0)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %call9
  store i32 %add10, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %9, 5
  %call12 = call i32 @gen_053_small(i32 noundef %add11)
  %10 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %10, %call12
  store i32 %add13, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %call14 = call i32 @gen_053_branchy(i32 noundef 0, i32 noundef %11)
  %12 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %12, %call14
  store i32 %add15, ptr %total, align 4
  %13 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %13, 7
  %call17 = call i32 @gen_053_large(i32 noundef %add16)
  %14 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %14, %call17
  store i32 %add18, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %call19 = call i32 @gen_053_mix_2(i32 noundef %15)
  %16 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %16, %call19
  store i32 %add20, ptr %total, align 4
  %call21 = call i32 @gen_053_recursive(i32 noundef 1)
  %17 = load i32, ptr %total, align 4
  %add22 = add nsw i32 %17, %call21
  store i32 %add22, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add23 = add nsw i32 %18, 10
  %call24 = call i32 @gen_053_small(i32 noundef %add23)
  %19 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %19, %call24
  store i32 %add25, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %call26 = call i32 @gen_053_branchy(i32 noundef 2, i32 noundef %20)
  %21 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %21, %call26
  store i32 %add27, ptr %total, align 4
  %22 = load i32, ptr %total, align 4
  ret i32 %22
}

attributes #0 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
