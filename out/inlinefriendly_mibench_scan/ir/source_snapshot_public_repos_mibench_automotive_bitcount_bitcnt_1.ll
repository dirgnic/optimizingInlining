; ModuleID = './source_snapshot/public_repos/mibench/automotive/bitcount/bitcnt_1.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/bitcount/bitcnt_1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bit_count(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store i32 0, ptr %n, align 4
  %0 = load i64, ptr %x.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i32, ptr %n, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %x.addr, align 8
  %sub = sub nsw i64 %3, 1
  %and = and i64 %2, %sub
  store i64 %and, ptr %x.addr, align 8
  %cmp = icmp ne i64 0, %and
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %4 = load i32, ptr %n, align 4
  ret i32 %4
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
