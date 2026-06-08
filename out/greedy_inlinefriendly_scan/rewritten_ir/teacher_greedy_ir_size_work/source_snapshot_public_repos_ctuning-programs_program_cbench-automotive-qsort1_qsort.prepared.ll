; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-qsort1/qsort.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-qsort1/qsort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define void @qsortx(ptr noundef %base, i32 noundef %num, i32 noundef %width, ptr noundef %comp) #0 {
entry:
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %comp.addr = alloca ptr, align 8
  %lo = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %mid = alloca ptr, align 8
  %loguy = alloca ptr, align 8
  %higuy = alloca ptr, align 8
  %size = alloca i32, align 4
  %lostk = alloca [30 x ptr], align 8
  %histk = alloca [30 x ptr], align 8
  %stkptr = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  store i32 %width, ptr %width.addr, align 4
  store ptr %comp, ptr %comp.addr, align 8
  %0 = load i32, ptr %num.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %width.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %stkptr, align 4
  %2 = load ptr, ptr %base.addr, align 8
  store ptr %2, ptr %lo, align 8
  %3 = load ptr, ptr %base.addr, align 8
  %4 = load i32, ptr %width.addr, align 4
  %5 = load i32, ptr %num.addr, align 4
  %sub = sub i32 %5, 1
  %mul = mul i32 %4, %sub
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %hi, align 8
  br label %recurse

recurse:                                          ; preds = %if.then82, %if.then73, %if.then57, %if.end
  %6 = load ptr, ptr %hi, align 8
  %7 = load ptr, ptr %lo, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load i32, ptr %width.addr, align 4
  %conv = zext i32 %8 to i64
  %div = sdiv i64 %sub.ptr.sub, %conv
  %add = add nsw i64 %div, 1
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, ptr %size, align 4
  %9 = load i32, ptr %size, align 4
  %cmp3 = icmp ule i32 %9, 8
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %recurse
  %10 = load ptr, ptr %lo, align 8
  %11 = load ptr, ptr %hi, align 8
  %12 = load i32, ptr %width.addr, align 4
  %13 = load ptr, ptr %comp.addr, align 8
  call void @shortsort(ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13)
  br label %if.end79

if.else:                                          ; preds = %recurse
  %14 = load ptr, ptr %lo, align 8
  %15 = load i32, ptr %size, align 4
  %div6 = udiv i32 %15, 2
  %16 = load i32, ptr %width.addr, align 4
  %mul7 = mul i32 %div6, %16
  %idx.ext8 = zext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %14, i64 %idx.ext8
  store ptr %add.ptr9, ptr %mid, align 8
  %17 = load ptr, ptr %mid, align 8
  %18 = load ptr, ptr %lo, align 8
  %19 = load i32, ptr %width.addr, align 4
  call void @swap(ptr noundef %17, ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %lo, align 8
  store ptr %20, ptr %loguy, align 8
  %21 = load ptr, ptr %hi, align 8
  %22 = load i32, ptr %width.addr, align 4
  %idx.ext10 = zext i32 %22 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %21, i64 %idx.ext10
  store ptr %add.ptr11, ptr %higuy, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %if.else
  br label %do.body

do.body:                                          ; preds = %land.end, %for.cond
  %23 = load i32, ptr %width.addr, align 4
  %24 = load ptr, ptr %loguy, align 8
  %idx.ext12 = zext i32 %23 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %24, i64 %idx.ext12
  store ptr %add.ptr13, ptr %loguy, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %25 = load ptr, ptr %loguy, align 8
  %26 = load ptr, ptr %hi, align 8
  %cmp14 = icmp ule ptr %25, %26
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %27 = load ptr, ptr %comp.addr, align 8
  %28 = load ptr, ptr %loguy, align 8
  %29 = load ptr, ptr %lo, align 8
  %call = call i32 %27(ptr noundef %28, ptr noundef %29)
  %cmp16 = icmp sle i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %30 = phi i1 [ false, %do.cond ], [ %cmp16, %land.rhs ]
  br i1 %30, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  br label %do.body18

do.body18:                                        ; preds = %land.end28, %do.end
  %31 = load i32, ptr %width.addr, align 4
  %32 = load ptr, ptr %higuy, align 8
  %idx.ext19 = zext i32 %31 to i64
  %idx.neg = sub i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, ptr %32, i64 %idx.neg
  store ptr %add.ptr20, ptr %higuy, align 8
  br label %do.cond21

do.cond21:                                        ; preds = %do.body18
  %33 = load ptr, ptr %higuy, align 8
  %34 = load ptr, ptr %lo, align 8
  %cmp22 = icmp ugt ptr %33, %34
  br i1 %cmp22, label %land.rhs24, label %land.end28

land.rhs24:                                       ; preds = %do.cond21
  %35 = load ptr, ptr %comp.addr, align 8
  %36 = load ptr, ptr %higuy, align 8
  %37 = load ptr, ptr %lo, align 8
  %call25 = call i32 %35(ptr noundef %36, ptr noundef %37)
  %cmp26 = icmp sge i32 %call25, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs24, %do.cond21
  %38 = phi i1 [ false, %do.cond21 ], [ %cmp26, %land.rhs24 ]
  br i1 %38, label %do.body18, label %do.end29, !llvm.loop !8

do.end29:                                         ; preds = %land.end28
  %39 = load ptr, ptr %higuy, align 8
  %40 = load ptr, ptr %loguy, align 8
  %cmp30 = icmp ult ptr %39, %40
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.end29
  br label %for.end

if.end33:                                         ; preds = %do.end29
  %41 = load ptr, ptr %loguy, align 8
  %42 = load ptr, ptr %higuy, align 8
  %43 = load i32, ptr %width.addr, align 4
  call void @swap(ptr noundef %41, ptr noundef %42, i32 noundef %43)
  br label %for.cond

for.end:                                          ; preds = %if.then32
  %44 = load ptr, ptr %lo, align 8
  %45 = load ptr, ptr %higuy, align 8
  %46 = load i32, ptr %width.addr, align 4
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_automotive_qsort1_qsort_0(ptr noundef %44, ptr noundef %45, i32 noundef %46)
  %47 = load ptr, ptr %higuy, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %47, i64 -1
  %48 = load ptr, ptr %lo, align 8
  %sub.ptr.lhs.cast35 = ptrtoint ptr %add.ptr34 to i64
  %sub.ptr.rhs.cast36 = ptrtoint ptr %48 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %49 = load ptr, ptr %hi, align 8
  %50 = load ptr, ptr %loguy, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %49 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %50 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp41 = icmp sge i64 %sub.ptr.sub37, %sub.ptr.sub40
  br i1 %cmp41, label %if.then43, label %if.else59

if.then43:                                        ; preds = %for.end
  %51 = load ptr, ptr %lo, align 8
  %52 = load i32, ptr %width.addr, align 4
  %idx.ext44 = zext i32 %52 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %51, i64 %idx.ext44
  %53 = load ptr, ptr %higuy, align 8
  %cmp46 = icmp ult ptr %add.ptr45, %53
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.then43
  %54 = load ptr, ptr %lo, align 8
  %55 = load i32, ptr %stkptr, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds [30 x ptr], ptr %lostk, i64 0, i64 %idxprom
  store ptr %54, ptr %arrayidx, align 8
  %56 = load ptr, ptr %higuy, align 8
  %57 = load i32, ptr %width.addr, align 4
  %idx.ext49 = zext i32 %57 to i64
  %idx.neg50 = sub i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, ptr %56, i64 %idx.neg50
  %58 = load i32, ptr %stkptr, align 4
  %idxprom52 = sext i32 %58 to i64
  %arrayidx53 = getelementptr inbounds [30 x ptr], ptr %histk, i64 0, i64 %idxprom52
  store ptr %add.ptr51, ptr %arrayidx53, align 8
  %59 = load i32, ptr %stkptr, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %stkptr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.then43
  %60 = load ptr, ptr %loguy, align 8
  %61 = load ptr, ptr %hi, align 8
  %cmp55 = icmp ult ptr %60, %61
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  %62 = load ptr, ptr %loguy, align 8
  store ptr %62, ptr %lo, align 8
  br label %recurse

if.end58:                                         ; preds = %if.end54
  br label %if.end78

if.else59:                                        ; preds = %for.end
  %63 = load ptr, ptr %loguy, align 8
  %64 = load ptr, ptr %hi, align 8
  %cmp60 = icmp ult ptr %63, %64
  br i1 %cmp60, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.else59
  %65 = load ptr, ptr %loguy, align 8
  %66 = load i32, ptr %stkptr, align 4
  %idxprom63 = sext i32 %66 to i64
  %arrayidx64 = getelementptr inbounds [30 x ptr], ptr %lostk, i64 0, i64 %idxprom63
  store ptr %65, ptr %arrayidx64, align 8
  %67 = load ptr, ptr %hi, align 8
  %68 = load i32, ptr %stkptr, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds [30 x ptr], ptr %histk, i64 0, i64 %idxprom65
  store ptr %67, ptr %arrayidx66, align 8
  %69 = load i32, ptr %stkptr, align 4
  %inc67 = add nsw i32 %69, 1
  store i32 %inc67, ptr %stkptr, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.else59
  %70 = load ptr, ptr %lo, align 8
  %71 = load i32, ptr %width.addr, align 4
  %idx.ext69 = zext i32 %71 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %70, i64 %idx.ext69
  %72 = load ptr, ptr %higuy, align 8
  %cmp71 = icmp ult ptr %add.ptr70, %72
  br i1 %cmp71, label %if.then73, label %if.end77

if.then73:                                        ; preds = %if.end68
  %73 = load ptr, ptr %higuy, align 8
  %74 = load i32, ptr %width.addr, align 4
  %idx.ext74 = zext i32 %74 to i64
  %idx.neg75 = sub i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, ptr %73, i64 %idx.neg75
  store ptr %add.ptr76, ptr %hi, align 8
  br label %recurse

if.end77:                                         ; preds = %if.end68
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end58
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then5
  %75 = load i32, ptr %stkptr, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, ptr %stkptr, align 4
  %76 = load i32, ptr %stkptr, align 4
  %cmp80 = icmp sge i32 %76, 0
  br i1 %cmp80, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.end79
  %77 = load i32, ptr %stkptr, align 4
  %idxprom83 = sext i32 %77 to i64
  %arrayidx84 = getelementptr inbounds [30 x ptr], ptr %lostk, i64 0, i64 %idxprom83
  %78 = load ptr, ptr %arrayidx84, align 8
  store ptr %78, ptr %lo, align 8
  %79 = load i32, ptr %stkptr, align 4
  %idxprom85 = sext i32 %79 to i64
  %arrayidx86 = getelementptr inbounds [30 x ptr], ptr %histk, i64 0, i64 %idxprom85
  %80 = load ptr, ptr %arrayidx86, align 8
  store ptr %80, ptr %hi, align 8
  br label %recurse

if.else87:                                        ; preds = %if.end79
  br label %return

return:                                           ; preds = %if.else87, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @shortsort(ptr noundef %lo, ptr noundef %hi, i32 noundef %width, ptr noundef %comp) #0 {
entry:
  %lo.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %comp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %max = alloca ptr, align 8
  store ptr %lo, ptr %lo.addr, align 8
  store ptr %hi, ptr %hi.addr, align 8
  store i32 %width, ptr %width.addr, align 4
  store ptr %comp, ptr %comp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load ptr, ptr %hi.addr, align 8
  %1 = load ptr, ptr %lo.addr, align 8
  %cmp = icmp ugt ptr %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %lo.addr, align 8
  store ptr %2, ptr %max, align 8
  %3 = load ptr, ptr %lo.addr, align 8
  %4 = load i32, ptr %width.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %hi.addr, align 8
  %cmp1 = icmp ule ptr %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %comp.addr, align 8
  %8 = load ptr, ptr %p, align 8
  %9 = load ptr, ptr %max, align 8
  %call = call i32 %7(ptr noundef %8, ptr noundef %9)
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %p, align 8
  store ptr %10, ptr %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %width.addr, align 4
  %12 = load ptr, ptr %p, align 8
  %idx.ext3 = zext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %12, i64 %idx.ext3
  store ptr %add.ptr4, ptr %p, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %max, align 8
  %14 = load ptr, ptr %hi.addr, align 8
  %15 = load i32, ptr %width.addr, align 4
  call void @swap(ptr noundef %13, ptr noundef %14, i32 noundef %15)
  %16 = load i32, ptr %width.addr, align 4
  %17 = load ptr, ptr %hi.addr, align 8
  %idx.ext5 = zext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, ptr %17, i64 %idx.neg
  store ptr %add.ptr6, ptr %hi.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @swap(ptr noundef %a, ptr noundef %b, i32 noundef %width) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %tmp = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %width, ptr %width.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, ptr %width.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %width.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr %tmp, align 1
  %5 = load ptr, ptr %b.addr, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8
  store i8 %6, ptr %7, align 1
  %8 = load i8, ptr %tmp, align 1
  %9 = load ptr, ptr %b.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr1, ptr %b.addr, align 8
  store i8 %8, ptr %9, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_automotive_qsort1_qsort_0(ptr noundef %a, ptr noundef %b, i32 noundef %width)  alwaysinline#0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %tmp = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %width, ptr %width.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, ptr %width.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %width.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr %tmp, align 1
  %5 = load ptr, ptr %b.addr, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %a.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8
  store i8 %6, ptr %7, align 1
  %8 = load i8, ptr %tmp, align 1
  %9 = load ptr, ptr %b.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr1, ptr %b.addr, align 8
  store i8 %8, ptr %9, align 1
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
