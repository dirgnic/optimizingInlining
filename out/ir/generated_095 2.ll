; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_095.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_095.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable
define i32 @matrix_095_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 3
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 0
  %call = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and, i32 noundef %add)
  %2 = load i32, ptr %total, align 4
  %add1 = add nsw i32 %2, %call
  store i32 %add1, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add2 = add nsw i32 %3, 1
  %call3 = call noundef i32 @_ZL18matrix_095_large_bi(i32 noundef %add2)
  %4 = load i32, ptr %total, align 4
  %add4 = add nsw i32 %4, %call3
  store i32 %add4, ptr %total, align 4
  %5 = load i32, ptr %x.addr, align 4
  %add5 = add nsw i32 %5, 2
  %and6 = and i32 %add5, 1
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %x.addr, align 4
  %and7 = and i32 %6, 3
  %7 = load i32, ptr %x.addr, align 4
  %add8 = add nsw i32 %7, 2
  %call9 = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and7, i32 noundef %add8)
  %8 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %8, %call9
  store i32 %add10, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call noundef i32 @_ZL20matrix_095_recursivei(i32 noundef 3)
  %9 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %9, %call11
  store i32 %add12, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add13 = add nsw i32 %10, 4
  %call14 = call noundef i32 @_ZL18matrix_095_large_ai(i32 noundef %add13)
  %11 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %11, %call14
  store i32 %add15, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %add16 = add nsw i32 %12, 5
  %and17 = and i32 %add16, 1
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %13 = load i32, ptr %x.addr, align 4
  %and20 = and i32 %13, 3
  %14 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %14, 5
  %call22 = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and20, i32 noundef %add21)
  %15 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %15, %call22
  store i32 %add23, ptr %total, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end
  %16 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %16, 3
  %17 = load i32, ptr %x.addr, align 4
  %add26 = add nsw i32 %17, 6
  %call27 = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and25, i32 noundef %add26)
  %18 = load i32, ptr %total, align 4
  %add28 = add nsw i32 %18, %call27
  store i32 %add28, ptr %total, align 4
  %call29 = call noundef i32 @_ZL20matrix_095_recursivei(i32 noundef 3)
  %19 = load i32, ptr %total, align 4
  %add30 = add nsw i32 %19, %call29
  store i32 %add30, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %20, 8
  %and32 = and i32 %add31, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end24
  %21 = load i32, ptr %x.addr, align 4
  %add35 = add nsw i32 %21, 8
  %call36 = call noundef i32 @_ZL18matrix_095_large_ai(i32 noundef %add35)
  %22 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %22, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end24
  %23 = load i32, ptr %x.addr, align 4
  %add39 = add nsw i32 %23, 9
  %call40 = call noundef i32 @_ZL18matrix_095_large_bi(i32 noundef %add39)
  %24 = load i32, ptr %total, align 4
  %add41 = add nsw i32 %24, %call40
  store i32 %add41, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %and42 = and i32 %25, 3
  %26 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %26, 10
  %call44 = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and42, i32 noundef %add43)
  %27 = load i32, ptr %total, align 4
  %add45 = add nsw i32 %27, %call44
  store i32 %add45, ptr %total, align 4
  %28 = load i32, ptr %x.addr, align 4
  %add46 = add nsw i32 %28, 11
  %and47 = and i32 %add46, 1
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end38
  %call50 = call noundef i32 @_ZL20matrix_095_recursivei(i32 noundef 3)
  %29 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %29, %call50
  store i32 %add51, ptr %total, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38
  %30 = load i32, ptr %x.addr, align 4
  %add53 = add nsw i32 %30, 12
  %call54 = call noundef i32 @_ZL18matrix_095_large_ai(i32 noundef %add53)
  %31 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %31, %call54
  store i32 %add55, ptr %total, align 4
  %32 = load i32, ptr %x.addr, align 4
  %add56 = add nsw i32 %32, 13
  %call57 = call noundef i32 @_ZL18matrix_095_large_bi(i32 noundef %add56)
  %33 = load i32, ptr %total, align 4
  %add58 = add nsw i32 %33, %call57
  store i32 %add58, ptr %total, align 4
  %34 = load i32, ptr %x.addr, align 4
  %add59 = add nsw i32 %34, 14
  %and60 = and i32 %add59, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end52
  %35 = load i32, ptr %x.addr, align 4
  %and63 = and i32 %35, 3
  %36 = load i32, ptr %x.addr, align 4
  %add64 = add nsw i32 %36, 14
  %call65 = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and63, i32 noundef %add64)
  %37 = load i32, ptr %total, align 4
  %add66 = add nsw i32 %37, %call65
  store i32 %add66, ptr %total, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end52
  %38 = load i32, ptr %x.addr, align 4
  %and68 = and i32 %38, 3
  %39 = load i32, ptr %x.addr, align 4
  %add69 = add nsw i32 %39, 15
  %call70 = call noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %and68, i32 noundef %add69)
  %40 = load i32, ptr %total, align 4
  %add71 = add nsw i32 %40, %call70
  store i32 %add71, ptr %total, align 4
  %41 = load i32, ptr %total, align 4
  ret i32 %41
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL26matrix_095_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 6
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18matrix_095_large_bi(i32 noundef %x) #1 {
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
  %add = add nsw i32 %and, 4
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
  %sub = sub nsw i32 %mul, 0
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
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %s, align 4
  ret i32 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define internal noundef i32 @_ZL20matrix_095_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_095_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL20matrix_095_recursivei(i32 noundef %sub1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define internal noundef i32 @_ZL18matrix_095_large_ai(i32 noundef %x) #1 {
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
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %xor = xor i32 %2, %3
  %add = add nsw i32 %xor, 4
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
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %s, align 4
  ret i32 %8
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
