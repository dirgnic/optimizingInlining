; ModuleID = './source_snapshot/public_repos/mibench/automotive/bitcount/bitstrng.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/bitcount/bitstrng.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bitstring(ptr noundef %str, i64 noundef %byze, i32 noundef %biz, i32 noundef %strwid) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %byze.addr = alloca i64, align 8
  %biz.addr = alloca i32, align 4
  %strwid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i64 %byze, ptr %byze.addr, align 8
  store i32 %biz, ptr %biz.addr, align 4
  store i32 %strwid, ptr %strwid.addr, align 4
  %0 = load i32, ptr %strwid.addr, align 4
  %1 = load i32, ptr %biz.addr, align 4
  %2 = load i32, ptr %biz.addr, align 4
  %shr = ashr i32 %2, 2
  %add = add nsw i32 %1, %shr
  %3 = load i32, ptr %biz.addr, align 4
  %rem = srem i32 %3, 4
  %tobool = icmp ne i32 %rem, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  %sub = sub nsw i32 %add, %cond
  %sub1 = sub nsw i32 %0, %sub
  store i32 %sub1, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  store i8 32, ptr %7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %9 = load i32, ptr %biz.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %biz.addr, align 4
  %cmp2 = icmp sge i32 %dec, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %byze.addr, align 8
  %11 = load i32, ptr %biz.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shr3 = ashr i64 %10, %sh_prom
  %and = and i64 %shr3, 1
  %add4 = add nsw i64 %and, 48
  %conv = trunc i64 %add4 to i8
  %12 = load ptr, ptr %str.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr5, ptr %str.addr, align 8
  store i8 %conv, ptr %12, align 1
  %13 = load i32, ptr %biz.addr, align 4
  %rem6 = srem i32 %13, 4
  %tobool7 = icmp ne i32 %rem6, 0
  br i1 %tobool7, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %14 = load i32, ptr %biz.addr, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %str.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr9, ptr %str.addr, align 8
  store i8 32, ptr %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %str.addr, align 8
  store i8 0, ptr %16, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
