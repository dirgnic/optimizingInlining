; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_ctuning-programs_program_cbench-automotive-qsort1_qsort.prepared.ll'
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
  %cmp = icmp ult i32 %num, 2
  %0 = load i32, ptr %width.addr, align 4
  %cmp1 = icmp eq i32 %0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 0, ptr %stkptr, align 4
  %1 = load ptr, ptr %base.addr, align 8
  store ptr %1, ptr %lo, align 8
  %2 = load i32, ptr %width.addr, align 4
  %3 = load i32, ptr %num.addr, align 4
  %sub = add i32 %3, -1
  %mul = mul i32 %2, %sub
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %hi, align 8
  br label %recurse

recurse:                                          ; preds = %if.then82, %if.then73, %if.then57, %if.end
  %4 = load ptr, ptr %hi, align 8
  %5 = load ptr, ptr %lo, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i32, ptr %width.addr, align 4
  %conv = zext i32 %6 to i64
  %div = sdiv i64 %sub.ptr.sub, %conv
  %7 = trunc i64 %div to i32
  %conv2 = add i32 %7, 1
  store i32 %conv2, ptr %size, align 4
  %cmp3 = icmp ult i32 %conv2, 9
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %recurse
  %8 = load ptr, ptr %lo, align 8
  %9 = load ptr, ptr %hi, align 8
  %10 = load i32, ptr %width.addr, align 4
  %11 = load ptr, ptr %comp.addr, align 8
  call void @shortsort(ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11)
  br label %if.end79

if.else:                                          ; preds = %recurse
  %12 = load ptr, ptr %lo, align 8
  %13 = load i32, ptr %size, align 4
  %div61 = lshr i32 %13, 1
  %14 = load i32, ptr %width.addr, align 4
  %mul7 = mul i32 %div61, %14
  %idx.ext8 = zext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %12, i64 %idx.ext8
  %15 = load ptr, ptr %lo, align 8
  call void @swap(ptr noundef %add.ptr9, ptr noundef %15, i32 noundef %14)
  store ptr %15, ptr %loguy, align 8
  %16 = load ptr, ptr %hi, align 8
  %17 = load i32, ptr %width.addr, align 4
  %idx.ext10 = zext i32 %17 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %16, i64 %idx.ext10
  store ptr %add.ptr11, ptr %higuy, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %if.else
  br label %do.body

do.body:                                          ; preds = %land.rhs, %for.cond
  %18 = load i32, ptr %width.addr, align 4
  %19 = load ptr, ptr %loguy, align 8
  %idx.ext12 = zext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %19, i64 %idx.ext12
  store ptr %add.ptr13, ptr %loguy, align 8
  %20 = load ptr, ptr %loguy, align 8
  %21 = load ptr, ptr %hi, align 8
  %cmp14.not = icmp ugt ptr %20, %21
  br i1 %cmp14.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %22 = load ptr, ptr %comp.addr, align 8
  %23 = load ptr, ptr %loguy, align 8
  %24 = load ptr, ptr %lo, align 8
  %call = call i32 %22(ptr noundef %23, ptr noundef %24) #1
  %cmp16 = icmp slt i32 %call, 1
  br i1 %cmp16, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.body, %land.rhs
  br label %do.body18

do.body18:                                        ; preds = %land.rhs24, %do.end
  %25 = load i32, ptr %width.addr, align 4
  %26 = load ptr, ptr %higuy, align 8
  %idx.ext19 = zext i32 %25 to i64
  %idx.neg = sub nsw i64 0, %idx.ext19
  %add.ptr20 = getelementptr inbounds i8, ptr %26, i64 %idx.neg
  store ptr %add.ptr20, ptr %higuy, align 8
  %27 = load ptr, ptr %higuy, align 8
  %28 = load ptr, ptr %lo, align 8
  %cmp22 = icmp ugt ptr %27, %28
  br i1 %cmp22, label %land.rhs24, label %do.end29

land.rhs24:                                       ; preds = %do.body18
  %29 = load ptr, ptr %comp.addr, align 8
  %30 = load ptr, ptr %higuy, align 8
  %31 = load ptr, ptr %lo, align 8
  %call25 = call i32 %29(ptr noundef %30, ptr noundef %31) #1
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %do.body18, label %do.end29, !llvm.loop !8

do.end29:                                         ; preds = %do.body18, %land.rhs24
  %32 = load ptr, ptr %higuy, align 8
  %33 = load ptr, ptr %loguy, align 8
  %cmp30 = icmp ult ptr %32, %33
  br i1 %cmp30, label %for.end, label %if.end33

if.end33:                                         ; preds = %do.end29
  %34 = load ptr, ptr %loguy, align 8
  %35 = load ptr, ptr %higuy, align 8
  %36 = load i32, ptr %width.addr, align 4
  call void @swap(ptr noundef %34, ptr noundef %35, i32 noundef %36)
  br label %for.cond

for.end:                                          ; preds = %do.end29
  %37 = load ptr, ptr %lo, align 8
  %38 = load ptr, ptr %higuy, align 8
  %39 = load i32, ptr %width.addr, align 4
  call void @swap(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  %add.ptr34 = getelementptr inbounds i8, ptr %38, i64 -1
  %sub.ptr.lhs.cast35 = ptrtoint ptr %add.ptr34 to i64
  %sub.ptr.rhs.cast36 = ptrtoint ptr %37 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %40 = load ptr, ptr %hi, align 8
  %41 = load ptr, ptr %loguy, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %41 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp41.not = icmp slt i64 %sub.ptr.sub37, %sub.ptr.sub40
  br i1 %cmp41.not, label %if.else59, label %if.then43

if.then43:                                        ; preds = %for.end
  %42 = load ptr, ptr %lo, align 8
  %43 = load i32, ptr %width.addr, align 4
  %idx.ext44 = zext i32 %43 to i64
  %add.ptr45 = getelementptr inbounds i8, ptr %42, i64 %idx.ext44
  %44 = load ptr, ptr %higuy, align 8
  %cmp46 = icmp ult ptr %add.ptr45, %44
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.then43
  %45 = load ptr, ptr %lo, align 8
  %46 = load i32, ptr %stkptr, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds [30 x ptr], ptr %lostk, i64 0, i64 %idxprom
  store ptr %45, ptr %arrayidx, align 8
  %47 = load ptr, ptr %higuy, align 8
  %48 = load i32, ptr %width.addr, align 4
  %idx.ext49 = zext i32 %48 to i64
  %idx.neg50 = sub nsw i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds i8, ptr %47, i64 %idx.neg50
  %49 = load i32, ptr %stkptr, align 4
  %idxprom52 = sext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds [30 x ptr], ptr %histk, i64 0, i64 %idxprom52
  store ptr %add.ptr51, ptr %arrayidx53, align 8
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %stkptr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.then43
  %50 = load ptr, ptr %loguy, align 8
  %51 = load ptr, ptr %hi, align 8
  %cmp55 = icmp ult ptr %50, %51
  br i1 %cmp55, label %if.then57, label %if.end79

if.then57:                                        ; preds = %if.end54
  %52 = load ptr, ptr %loguy, align 8
  store ptr %52, ptr %lo, align 8
  br label %recurse

if.else59:                                        ; preds = %for.end
  %53 = load ptr, ptr %loguy, align 8
  %54 = load ptr, ptr %hi, align 8
  %cmp60 = icmp ult ptr %53, %54
  br i1 %cmp60, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.else59
  %55 = load ptr, ptr %loguy, align 8
  %56 = load i32, ptr %stkptr, align 4
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds [30 x ptr], ptr %lostk, i64 0, i64 %idxprom63
  store ptr %55, ptr %arrayidx64, align 8
  %57 = load ptr, ptr %hi, align 8
  %idxprom65 = sext i32 %56 to i64
  %arrayidx66 = getelementptr inbounds [30 x ptr], ptr %histk, i64 0, i64 %idxprom65
  store ptr %57, ptr %arrayidx66, align 8
  %58 = load i32, ptr %stkptr, align 4
  %inc67 = add nsw i32 %58, 1
  store i32 %inc67, ptr %stkptr, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.else59
  %59 = load ptr, ptr %lo, align 8
  %60 = load i32, ptr %width.addr, align 4
  %idx.ext69 = zext i32 %60 to i64
  %add.ptr70 = getelementptr inbounds i8, ptr %59, i64 %idx.ext69
  %61 = load ptr, ptr %higuy, align 8
  %cmp71 = icmp ult ptr %add.ptr70, %61
  br i1 %cmp71, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.end68
  %62 = load ptr, ptr %higuy, align 8
  %63 = load i32, ptr %width.addr, align 4
  %idx.ext74 = zext i32 %63 to i64
  %idx.neg75 = sub nsw i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, ptr %62, i64 %idx.neg75
  store ptr %add.ptr76, ptr %hi, align 8
  br label %recurse

if.end79:                                         ; preds = %if.end54, %if.end68, %if.then5
  %64 = load i32, ptr %stkptr, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, ptr %stkptr, align 4
  %cmp80 = icmp sgt i32 %64, 0
  br i1 %cmp80, label %if.then82, label %return

if.then82:                                        ; preds = %if.end79
  %65 = load i32, ptr %stkptr, align 4
  %idxprom83 = sext i32 %65 to i64
  %arrayidx84 = getelementptr inbounds [30 x ptr], ptr %lostk, i64 0, i64 %idxprom83
  %66 = load ptr, ptr %arrayidx84, align 8
  store ptr %66, ptr %lo, align 8
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [30 x ptr], ptr %histk, i64 0, i64 %idxprom85
  %67 = load ptr, ptr %arrayidx86, align 8
  store ptr %67, ptr %hi, align 8
  br label %recurse

return:                                           ; preds = %if.end79, %entry
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
  %3 = load i32, ptr %width.addr, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %storemerge = phi ptr [ %add.ptr, %while.body ], [ %add.ptr4, %for.inc ]
  store ptr %storemerge, ptr %p, align 8
  %4 = load ptr, ptr %hi.addr, align 8
  %cmp1.not = icmp ugt ptr %storemerge, %4
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %comp.addr, align 8
  %6 = load ptr, ptr %p, align 8
  %7 = load ptr, ptr %max, align 8
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #1
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %p, align 8
  store ptr %8, ptr %max, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %9 = load i32, ptr %width.addr, align 4
  %10 = load ptr, ptr %p, align 8
  %idx.ext3 = zext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %10, i64 %idx.ext3
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %max, align 8
  %12 = load ptr, ptr %hi.addr, align 8
  %13 = load i32, ptr %width.addr, align 4
  call void @swap(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  %idx.ext5 = zext i32 %13 to i64
  %idx.neg = sub nsw i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, ptr %12, i64 %idx.neg
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
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %width, ptr %width.addr, align 4
  %cmp.not = icmp eq ptr %a, %b
  br i1 %cmp.not, label %if.end, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %0 = load i32, ptr %width.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr %width.addr, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load i8, ptr %1, align 1
  %3 = load ptr, ptr %b.addr, align 8
  %4 = load i8, ptr %3, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %a.addr, align 8
  store i8 %4, ptr %1, align 1
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr1, ptr %b.addr, align 8
  store i8 %2, ptr %3, align 1
  br label %while.cond, !llvm.loop !11

if.end:                                           ; preds = %while.cond, %entry
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
