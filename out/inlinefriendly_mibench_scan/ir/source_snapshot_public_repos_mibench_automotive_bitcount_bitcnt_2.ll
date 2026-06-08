; ModuleID = './source_snapshot/public_repos/mibench/automotive/bitcount/bitcnt_2.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/bitcount/bitcnt_2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bitcount(i64 noundef %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  %0 = load i64, ptr %i.addr, align 8
  %and = and i64 %0, 2863311530
  %shr = ashr i64 %and, 1
  %1 = load i64, ptr %i.addr, align 8
  %and1 = and i64 %1, 1431655765
  %add = add nsw i64 %shr, %and1
  store i64 %add, ptr %i.addr, align 8
  %2 = load i64, ptr %i.addr, align 8
  %and2 = and i64 %2, 3435973836
  %shr3 = ashr i64 %and2, 2
  %3 = load i64, ptr %i.addr, align 8
  %and4 = and i64 %3, 858993459
  %add5 = add nsw i64 %shr3, %and4
  store i64 %add5, ptr %i.addr, align 8
  %4 = load i64, ptr %i.addr, align 8
  %and6 = and i64 %4, 4042322160
  %shr7 = ashr i64 %and6, 4
  %5 = load i64, ptr %i.addr, align 8
  %and8 = and i64 %5, 252645135
  %add9 = add nsw i64 %shr7, %and8
  store i64 %add9, ptr %i.addr, align 8
  %6 = load i64, ptr %i.addr, align 8
  %and10 = and i64 %6, 4278255360
  %shr11 = ashr i64 %and10, 8
  %7 = load i64, ptr %i.addr, align 8
  %and12 = and i64 %7, 16711935
  %add13 = add nsw i64 %shr11, %and12
  store i64 %add13, ptr %i.addr, align 8
  %8 = load i64, ptr %i.addr, align 8
  %and14 = and i64 %8, 4294901760
  %shr15 = ashr i64 %and14, 16
  %9 = load i64, ptr %i.addr, align 8
  %and16 = and i64 %9, 65535
  %add17 = add nsw i64 %shr15, %and16
  store i64 %add17, ptr %i.addr, align 8
  %10 = load i64, ptr %i.addr, align 8
  %conv = trunc i64 %10 to i32
  ret i32 %conv
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
