; ModuleID = './source_snapshot/DCMTK/generated_inlining/generated_043.cc'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_043.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_043_step(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  %call = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_0(i32 noundef 10)
  %0 = load i32, ptr %total, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, ptr %total, align 4
  %call1 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1(i32 noundef 0)
  %1 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %1, %call1
  store i32 %add2, ptr %total, align 4
  %2 = load i32, ptr %x.addr, align 4
  %add3 = add nsw i32 %2, 2
  %and = and i32 %add3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2(i32 noundef 2, i32 noundef 1)
  %3 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %3, %call4
  store i32 %add5, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %4 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %4, %call6
  store i32 %add7, ptr %total, align 4
  %call8 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_4(i32 noundef 3)
  %5 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %5, %call8
  store i32 %add9, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %add10 = add nsw i32 %6, 5
  %and11 = and i32 %add10, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %call14 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_5(i32 noundef 4)
  %7 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %7, %call14
  store i32 %add15, ptr %total, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  %call17 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6(i32 noundef 0, i32 noundef 5)
  %8 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %8, %call17
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %9 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %9, %call19
  store i32 %add20, ptr %total, align 4
  %10 = load i32, ptr %x.addr, align 4
  %add21 = add nsw i32 %10, 8
  %and22 = and i32 %add21, 1
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end16
  %call25 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_8(i32 noundef 7)
  %11 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %11, %call25
  store i32 %add26, ptr %total, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end16
  %call28 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_9(i32 noundef 8)
  %12 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %12, %call28
  store i32 %add29, ptr %total, align 4
  %call30 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10(i32 noundef 1, i32 noundef 9)
  %13 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %13, %call30
  store i32 %add31, ptr %total, align 4
  %14 = load i32, ptr %x.addr, align 4
  %add32 = add nsw i32 %14, 11
  %and33 = and i32 %add32, 1
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end27
  %call36 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %15 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %15, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end27
  %call39 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_12(i32 noundef 0)
  %16 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %16, %call39
  store i32 %add40, ptr %total, align 4
  %call41 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_13(i32 noundef 1)
  %17 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %17, %call41
  store i32 %add42, ptr %total, align 4
  %18 = load i32, ptr %x.addr, align 4
  %add43 = add nsw i32 %18, 14
  %and44 = and i32 %add43, 1
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end38
  %call47 = call noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_14(i32 noundef 2, i32 noundef 2)
  %19 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %19, %call47
  store i32 %add48, ptr %total, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end38
  %call50 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %20 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %20, %call50
  store i32 %add51, ptr %total, align 4
  %21 = load i32, ptr %total, align 4
  ret i32 %21
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL18matrix_043_large_ai(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 11
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
  %mul3 = mul nsw i32 %and2, 12
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
  %mul13 = mul nsw i32 %and12, 13
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
  %mul23 = mul nsw i32 %and22, 14
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
define internal noundef i32 @_ZL18matrix_043_large_bi(i32 noundef %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 60
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 61
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 62
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 63
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 64
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 65
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 66
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 67
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  ret i32 %25
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @_ZL26matrix_043_branch_variableii(i32 noundef %mode, i32 noundef %x) #1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %out, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %out, align 4
  %add = add nsw i32 %2, 4
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 8
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %sub)
  %add = add nsw i32 %2, %call
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %call2 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %sub1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_0(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 11
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
  %mul3 = mul nsw i32 %and2, 12
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
  %mul13 = mul nsw i32 %and12, 13
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
  %mul23 = mul nsw i32 %and22, 14
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

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_1(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 60
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 61
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 62
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 63
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 64
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 65
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 66
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 67
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  ret i32 %25
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %out, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %out, align 4
  %add = add nsw i32 %2, 4
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 8
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_4(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 11
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
  %mul3 = mul nsw i32 %and2, 12
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
  %mul13 = mul nsw i32 %and12, 13
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
  %mul23 = mul nsw i32 %and22, 14
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

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_5(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 60
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 61
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 62
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 63
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 64
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 65
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 66
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 67
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  ret i32 %25
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %out, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %out, align 4
  %add = add nsw i32 %2, 4
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 8
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_8(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 11
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
  %mul3 = mul nsw i32 %and2, 12
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
  %mul13 = mul nsw i32 %and12, 13
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
  %mul23 = mul nsw i32 %and22, 14
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

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_9(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 60
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 61
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 62
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 63
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 64
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 65
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 66
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 67
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  ret i32 %25
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %out, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %out, align 4
  %add = add nsw i32 %2, 4
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 8
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_12(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 3
  %mul = mul nsw i32 %and, 11
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
  %mul3 = mul nsw i32 %and2, 12
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
  %mul13 = mul nsw i32 %and12, 13
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
  %mul23 = mul nsw i32 %and22, 14
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

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_13(i32 noundef %x)  alwaysinline#1 {
entry:
  %x.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %s, align 4
  %1 = load i32, ptr %s, align 4
  %mul = mul nsw i32 %1, 3
  %add = add nsw i32 %mul, 60
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = ashr i32 %2, 1
  %3 = load i32, ptr %s, align 4
  %xor = xor i32 %3, %shr
  store i32 %xor, ptr %s, align 4
  %4 = load i32, ptr %s, align 4
  %mul1 = mul nsw i32 %4, 4
  %add2 = add nsw i32 %mul1, 61
  store i32 %add2, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %shr3 = ashr i32 %5, 2
  %6 = load i32, ptr %s, align 4
  %xor4 = xor i32 %6, %shr3
  store i32 %xor4, ptr %s, align 4
  %7 = load i32, ptr %s, align 4
  %mul5 = mul nsw i32 %7, 5
  %add6 = add nsw i32 %mul5, 62
  store i32 %add6, ptr %s, align 4
  %8 = load i32, ptr %s, align 4
  %shr7 = ashr i32 %8, 3
  %9 = load i32, ptr %s, align 4
  %xor8 = xor i32 %9, %shr7
  store i32 %xor8, ptr %s, align 4
  %10 = load i32, ptr %s, align 4
  %mul9 = mul nsw i32 %10, 6
  %add10 = add nsw i32 %mul9, 63
  store i32 %add10, ptr %s, align 4
  %11 = load i32, ptr %s, align 4
  %shr11 = ashr i32 %11, 1
  %12 = load i32, ptr %s, align 4
  %xor12 = xor i32 %12, %shr11
  store i32 %xor12, ptr %s, align 4
  %13 = load i32, ptr %s, align 4
  %mul13 = mul nsw i32 %13, 7
  %add14 = add nsw i32 %mul13, 64
  store i32 %add14, ptr %s, align 4
  %14 = load i32, ptr %s, align 4
  %shr15 = ashr i32 %14, 2
  %15 = load i32, ptr %s, align 4
  %xor16 = xor i32 %15, %shr15
  store i32 %xor16, ptr %s, align 4
  %16 = load i32, ptr %s, align 4
  %mul17 = mul nsw i32 %16, 8
  %add18 = add nsw i32 %mul17, 65
  store i32 %add18, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %shr19 = ashr i32 %17, 3
  %18 = load i32, ptr %s, align 4
  %xor20 = xor i32 %18, %shr19
  store i32 %xor20, ptr %s, align 4
  %19 = load i32, ptr %s, align 4
  %mul21 = mul nsw i32 %19, 9
  %add22 = add nsw i32 %mul21, 66
  store i32 %add22, ptr %s, align 4
  %20 = load i32, ptr %s, align 4
  %shr23 = ashr i32 %20, 1
  %21 = load i32, ptr %s, align 4
  %xor24 = xor i32 %21, %shr23
  store i32 %xor24, ptr %s, align 4
  %22 = load i32, ptr %s, align 4
  %mul25 = mul nsw i32 %22, 10
  %add26 = add nsw i32 %mul25, 67
  store i32 %add26, ptr %s, align 4
  %23 = load i32, ptr %s, align 4
  %shr27 = ashr i32 %23, 2
  %24 = load i32, ptr %s, align 4
  %xor28 = xor i32 %24, %shr27
  store i32 %xor28, ptr %s, align 4
  %25 = load i32, ptr %s, align 4
  ret i32 %25
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_14(i32 noundef %mode, i32 noundef %x)  alwaysinline#1 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %out, align 4
  %1 = load i32, ptr %mode.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %out, align 4
  %add = add nsw i32 %2, 4
  store i32 %add, ptr %out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mode.addr, align 4
  %and1 = and i32 %3, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %out, align 4
  %xor = xor i32 %4, 8
  store i32 %xor, ptr %out, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %out, align 4
  ret i32 %5
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
