; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_056.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_056.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @game_056_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_0(i32 noundef 4)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 7
  %call1 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_1(i32 noundef %and)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %call1
  store i32 %add2, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and3 = and i32 %3, 7
  %call4 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_2(i32 noundef %and3)
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, %call4
  store i32 %add5, ptr %total, align 4
  %call6 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %5 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %5, %call6
  store i32 %add7, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %and8 = and i32 %6, 7
  %call9 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_4(i32 noundef %and8)
  %and10 = and i32 %call9, 255
  %7 = load i32, ptr %total, align 4
  %add11 = add nsw i32 %7, %and10
  store i32 %add11, ptr %total, align 4
  %8 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %8, 7
  %call13 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_5(i32 noundef %and12)
  %9 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %9, %call13
  store i32 %add14, ptr %total, align 4
  %call15 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_6(i32 noundef 10)
  %10 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %10, %call15
  store i32 %add16, ptr %total, align 4
  %call17 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %11 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %11, %call17
  store i32 %add18, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and19 = and i32 %12, 7
  %call20 = call noundef i32 @_ZL16game_056_large_ai(i32 noundef %and19)
  %13 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %13, %call20
  store i32 %add21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL16game_056_large_bi(i32 noundef 0)
  %and23 = and i32 %call22, 255
  %14 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %14, %and23
  store i32 %add24, ptr %total, align 4
  %15 = load i32, ptr %x.addr, align 4
  %and25 = and i32 %15, 7
  %call26 = call noundef i32 @_ZL16game_056_large_ai(i32 noundef %and25)
  %16 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %16, %call26
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %17 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %17, %call28
  store i32 %add29, ptr %total, align 4
  %call30 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_9(i32 noundef 0, i32 noundef 3)
  %18 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %18, %call30
  store i32 %add31, ptr %total, align 4
  %19 = load i32, ptr %x.addr, align 4
  %and32 = and i32 %19, 3
  %20 = load i32, ptr %x.addr, align 4
  %and33 = and i32 %20, 7
  %call34 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10(i32 noundef %and32, i32 noundef %and33)
  %21 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %21, %call34
  store i32 %add35, ptr %total, align 4
  %call36 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 2)
  %and37 = and i32 %call36, 255
  %22 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %22, %and37
  store i32 %add38, ptr %total, align 4
  %call39 = call noundef i32 @_ZL18game_056_recursivei(i32 noundef 3)
  %23 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %23, %call39
  store i32 %add40, ptr %total, align 4
  %24 = load i32, ptr %total, align 4
  ret i32 %24
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_056_tiny_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 1
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_056_tiny_1i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 5
  %add = add nsw i32 %mul, 2
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_056_tiny_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 6
  %add = add nsw i32 %mul, 3
  ret i32 %add
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL18game_056_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL18game_056_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_056_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 5
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_056_tiny_5i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 6
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL15game_056_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 5
  %add = add nsw i32 %mul, 0
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_056_large_ai(i32 noundef %x) #1 {
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
  %add = add nsw i32 %and, 3
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL16game_056_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 8
  %2 = load i32, ptr %s, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, ptr %s, align 4
  %3 = load i32, ptr %s, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %s, align 4
  %sub = sub nsw i32 %4, 3
  store i32 %sub, ptr %s, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %5, 1
  store i32 %add1, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %x.addr, align 4
  %and2 = and i32 %6, 4
  %mul3 = mul nsw i32 %and2, 9
  %7 = load i32, ptr %s, align 4
  %add4 = add nsw i32 %7, %mul3
  store i32 %add4, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %rem5 = srem i32 %8, 3
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %s, align 4
  %sub8 = sub nsw i32 %9, 4
  store i32 %sub8, ptr %s, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.end
  %10 = load i32, ptr %s, align 4
  %add10 = add nsw i32 %10, 3
  store i32 %add10, ptr %s, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %11 = load i32, ptr %x.addr, align 4
  %and12 = and i32 %11, 5
  %mul13 = mul nsw i32 %and12, 10
  %12 = load i32, ptr %s, align 4
  %add14 = add nsw i32 %12, %mul13
  store i32 %add14, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %rem15 = srem i32 %13, 4
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end11
  %14 = load i32, ptr %s, align 4
  %sub18 = sub nsw i32 %14, 5
  store i32 %sub18, ptr %s, align 4
  br label %if.end21

if.else19:                                        ; preds = %if.end11
  %15 = load i32, ptr %s, align 4
  %add20 = add nsw i32 %15, 5
  store i32 %add20, ptr %s, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %16 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %16, 6
  %mul23 = mul nsw i32 %and22, 11
  %17 = load i32, ptr %s, align 4
  %add24 = add nsw i32 %17, %mul23
  store i32 %add24, ptr %s, align 4
  %18 = load i32, ptr %s, align 4
  %rem25 = srem i32 %18, 5
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end21
  %19 = load i32, ptr %s, align 4
  %sub28 = sub nsw i32 %19, 6
  store i32 %sub28, ptr %s, align 4
  br label %if.end31

if.else29:                                        ; preds = %if.end21
  %20 = load i32, ptr %s, align 4
  %add30 = add nsw i32 %20, 7
  store i32 %add30, ptr %s, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  %21 = load i32, ptr %s, align 4
  ret i32 %21
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL24game_056_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 10
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_0(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 1
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_1(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 5
  %add = add nsw i32 %mul, 2
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_2(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 6
  %add = add nsw i32 %mul, 3
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_4(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 5
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_5(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 6
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_6(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 5
  %add = add nsw i32 %mul, 0
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_9(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 10
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_056_10(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %mode.addr, align 4
  %and = and i32 %0, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 10
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
