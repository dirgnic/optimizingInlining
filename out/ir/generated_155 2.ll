; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_155.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_155.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @matrix_155_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
  %call = call noundef i32 @_ZL18matrix_155_large_ai(i32 noundef %add)
  %1 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %1, %call
  store i32 %add1, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %2, 1
  %call3 = call noundef i32 @_ZL18matrix_155_large_bi(i32 noundef %add2)
  %3 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %3, %call3
  store i32 %add4, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %4, 2
  %and = and i32 %add5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %x.addr, align 4
  %and6 = and i32 %5, 3
  %6 = load i32, ptr %x.addr, align 4
  %add7 = add nsw i32 %6, 2
  %call8 = call noundef i32 @_ZL26matrix_155_branch_variableii(i32 noundef %and6, i32 noundef %add7)
  %7 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %7, %call8
  store i32 %add9, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call10 = call noundef i32 @_ZL20matrix_155_recursivei(i32 noundef 3)
  %8 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %8, %call10
  store i32 %add11, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add12 = add nsw i32 %9, 4
  %call13 = call noundef i32 @_ZL18matrix_155_large_ai(i32 noundef %add12)
  %10 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %10, %call13
  store i32 %add14, ptr %total, align 4
  %11 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %11, 5
  %and16 = and i32 %add15, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end
  %12 = load i32, ptr %x.addr, align 4
  %add19 = add nsw i32 %12, 5
  %call20 = call noundef i32 @_ZL18matrix_155_large_bi(i32 noundef %add19)
  %13 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %13, %call20
  store i32 %add21, ptr %total, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end
  %14 = load i32, ptr %x.addr, align 4
  %and23 = and i32 %14, 3
  %15 = load i32, ptr %x.addr, align 4
  %add24 = add nsw i32 %15, 6
  %call25 = call noundef i32 @_ZL26matrix_155_branch_variableii(i32 noundef %and23, i32 noundef %add24)
  %16 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %16, %call25
  store i32 %add26, ptr %total, align 4
  %call27 = call noundef i32 @_ZL20matrix_155_recursivei(i32 noundef 3)
  %17 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %17, %call27
  store i32 %add28, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add29 = add nsw i32 %18, 8
  %and30 = and i32 %add29, 1
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end22
  %19 = load i32, ptr %x.addr, align 4
  %add33 = add nsw i32 %19, 8
  %call34 = call noundef i32 @_ZL18matrix_155_large_ai(i32 noundef %add33)
  %20 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %20, %call34
  store i32 %add35, ptr %total, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end22
  %21 = load i32, ptr %x.addr, align 4
  %add37 = add nsw i32 %21, 9
  %call38 = call noundef i32 @_ZL18matrix_155_large_bi(i32 noundef %add37)
  %22 = load i32, ptr %total, align 4
  %add39 = add nsw i32 %22, %call38
  store i32 %add39, ptr %total, align 4
  %23 = load i32, ptr %x.addr, align 4
  %and40 = and i32 %23, 3
  %24 = load i32, ptr %x.addr, align 4
  %add41 = add nsw i32 %24, 10
  %call42 = call noundef i32 @_ZL26matrix_155_branch_variableii(i32 noundef %and40, i32 noundef %add41)
  %25 = load i32, ptr %total, align 4
  %add43 = add nsw i32 %25, %call42
  store i32 %add43, ptr %total, align 4
  %26 = load i32, ptr %x.addr, align 4
  %add44 = add nsw i32 %26, 11
  %and45 = and i32 %add44, 1
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end36
  %call48 = call noundef i32 @_ZL20matrix_155_recursivei(i32 noundef 3)
  %27 = load i32, ptr %total, align 4
  %add49 = add nsw i32 %27, %call48
  store i32 %add49, ptr %total, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end36
  %28 = load i32, ptr %x.addr, align 4
  %add51 = add nsw i32 %28, 12
  %call52 = call noundef i32 @_ZL18matrix_155_large_ai(i32 noundef %add51)
  %29 = load i32, ptr %total, align 4
  %add53 = add nsw i32 %29, %call52
  store i32 %add53, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %add54 = add nsw i32 %30, 13
  %call55 = call noundef i32 @_ZL18matrix_155_large_bi(i32 noundef %add54)
  %31 = load i32, ptr %total, align 4
  %add56 = add nsw i32 %31, %call55
  store i32 %add56, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %add57 = add nsw i32 %32, 14
  %and58 = and i32 %add57, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end50
  %33 = load i32, ptr %x.addr, align 4
  %and61 = and i32 %33, 3
  %34 = load i32, ptr %x.addr, align 4
  %add62 = add nsw i32 %34, 14
  %call63 = call noundef i32 @_ZL26matrix_155_branch_variableii(i32 noundef %and61, i32 noundef %add62)
  %35 = load i32, ptr %total, align 4
  %add64 = add nsw i32 %35, %call63
  store i32 %add64, ptr %total, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end50
  %call66 = call noundef i32 @_ZL20matrix_155_recursivei(i32 noundef 3)
  %36 = load i32, ptr %total, align 4
  %add67 = add nsw i32 %36, %call66
  store i32 %add67, ptr %total, align 4
  %37 = load i32, ptr %total, align 4
  ret i32 %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18matrix_155_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 12
  %4 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %4, %add
  store i32 %add1, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shl = shl i32 %5, 1
  %6 = load i32, ptr %s, align 4
  %shr = ashr i32 %6, 3
  %xor2 = xor i32 %shl, %shr
  store i32 %xor2, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %s, align 4
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18matrix_155_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %limit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %add = add nsw i32 %and, 5
  store i32 %add, ptr %limit, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %limit, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %4, %5
  %sub = sub nsw i32 %mul, 4
  %6 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %6, %sub
  store i32 %add1, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %and2 = and i32 %7, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add4 = add nsw i32 %8, %9
  %10 = load i32, ptr %s, align 4
  %xor = xor i32 %10, %add4
  store i32 %xor, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %s, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26matrix_155_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL20matrix_155_recursivei(i32 noundef %x) #0 {
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
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %3, 2
  %call = call noundef i32 @_ZL20matrix_155_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL20matrix_155_recursivei(i32 noundef %sub1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

attributes #0 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
