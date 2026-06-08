; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_055.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_055.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_055_kernel(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_0(i32 noundef 0)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %1 = load i32, ptr %x.addr, align 4
  %add1 = add nsw i32 %1, 1
  %call2 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_1(i32 noundef 1, i32 noundef %add1)
  %2 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %2, %call2
  store i32 %add3, ptr %total, align 4
  %call4 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_2(i32 noundef 2)
  %3 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %3, %call4
  store i32 %add5, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %4, 3
  %call7 = call noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %add6)
  %5 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %5, %call7
  store i32 %add8, ptr %total, align 4
  %call9 = call noundef i32 @_ZL26matrix_055_branch_variableii(i32 noundef 1, i32 noundef 4)
  %and = and i32 %call9, 255
  %6 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %6, %and
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef 1)
  %7 = load i32, ptr %total, align 4
  %add12 = add nsw i32 %7, %call11
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_4(i32 noundef 6)
  %8 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %8, %call13
  store i32 %add14, ptr %total, align 4
  %9 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %9, 7
  %call16 = call noundef i32 @_ZL19matrix_055_branch_7ii(i32 noundef 1, i32 noundef %add15)
  %10 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %10, %call16
  store i32 %add17, ptr %total, align 4
  %call18 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_5(i32 noundef 1)
  %11 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %11, %call18
  store i32 %add19, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %12, 9
  %call21 = call noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %add20)
  %and22 = and i32 %call21, 255
  %13 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %13, %and22
  store i32 %add23, ptr %total, align 4
  %call24 = call noundef i32 @_ZL26matrix_055_branch_variableii(i32 noundef 1, i32 noundef 3)
  %14 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %14, %call24
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef 3)
  %15 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %15, %call26
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_7(i32 noundef 5)
  %16 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %16, %call28
  store i32 %add29, ptr %total, align 4
  %17 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %17, 13
  %call31 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_8(i32 noundef 1, i32 noundef %add30)
  %18 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %18, %call31
  store i32 %add32, ptr %total, align 4
  %call33 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_9(i32 noundef 0)
  %and34 = and i32 %call33, 255
  %19 = load i32, ptr %total, align 4
  %add35 = add nsw i32 %19, %and34
  store i32 %add35, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %20, 15
  %call37 = call noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %add36)
  %21 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %21, %call37
  store i32 %add38, ptr %total, align 4
  %22 = load i32, ptr %total, align 4
  ret i32 %22
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17matrix_055_tiny_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 0
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_055_branch_1ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %t, align 4
  %5 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_055_medium_2i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 4
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 6
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_055_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 7
  %2 = load i32, ptr %s, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, ptr %s, align 4
  %3 = load i32, ptr %s, align 4
  %rem = srem i32 %3, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %s, align 4
  %sub = sub nsw i32 %4, 2
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
  %mul3 = mul nsw i32 %and2, 8
  %7 = load i32, ptr %s, align 4
  %add4 = add nsw i32 %7, %mul3
  store i32 %add4, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %rem5 = srem i32 %8, 3
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %s, align 4
  %sub8 = sub nsw i32 %9, 3
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
  %mul13 = mul nsw i32 %and12, 9
  %12 = load i32, ptr %s, align 4
  %add14 = add nsw i32 %12, %mul13
  store i32 %add14, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %rem15 = srem i32 %13, 4
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end11
  %14 = load i32, ptr %s, align 4
  %sub18 = sub nsw i32 %14, 4
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
  %mul23 = mul nsw i32 %and22, 10
  %17 = load i32, ptr %s, align 4
  %add24 = add nsw i32 %17, %mul23
  store i32 %add24, ptr %s, align 4
  %18 = load i32, ptr %s, align 4
  %rem25 = srem i32 %18, 5
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.end21
  %19 = load i32, ptr %s, align 4
  %sub28 = sub nsw i32 %19, 5
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
define internal noundef i32 @_ZL26matrix_055_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 2
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 9
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 4
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 7
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_055_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17matrix_055_tiny_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 6
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_055_branch_7ii(i32 noundef %mode, i32 noundef %x) #1 {
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
  %add = add nsw i32 %1, 9
  store i32 %add, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %xor = xor i32 %2, 16
  store i32 %xor, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %4, 7
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_055_medium_0i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 2
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 4
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL17matrix_055_tiny_4i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 4
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_055_branch_5ii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
  store i32 %add, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %t, align 4
  %5 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL19matrix_055_medium_6i(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 9
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 10
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_0(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 0
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_1(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %t, align 4
  %5 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_2(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 4
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 6
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_4(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 4
  %add = add nsw i32 %mul, 6
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_5(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 2
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 4
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_7(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 4
  ret i32 %add
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_8(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 0
  store i32 %add, ptr %t, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %t, align 4
  %3 = load i32, ptr %mode.addr, align 4
  %add1 = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %t, align 4
  %5 = load i32, ptr %mode.addr, align 4
  %sub = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_055_9(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 9
  store i32 %add, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, ptr %y, align 4
  %shr = ashr i32 %2, 1
  %xor = xor i32 %mul, %shr
  store i32 %xor, ptr %y, align 4
  %3 = load i32, ptr %y, align 4
  %add1 = add nsw i32 %3, 10
  store i32 %add1, ptr %y, align 4
  %4 = load i32, ptr %y, align 4
  ret i32 %4
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
