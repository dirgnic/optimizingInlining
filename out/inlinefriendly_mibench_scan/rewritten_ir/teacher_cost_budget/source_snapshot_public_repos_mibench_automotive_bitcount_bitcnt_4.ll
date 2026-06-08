; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_mibench_automotive_bitcount_bitcnt_4.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/automotive/bitcount/bitcnt_4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @ntbl_bitcnt(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  %conv = and i64 %x, 15
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %conv
  %0 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %0 to i32
  store i32 %conv1, ptr %cnt, align 4
  %shr = ashr i64 %x, 4
  store i64 %shr, ptr %x.addr, align 8
  %cmp.not = icmp ult i64 %x, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %x.addr, align 8
  %call = call i32 @ntbl_bitcnt(i64 noundef %1)
  %2 = load i32, ptr %cnt, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, ptr %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %cnt, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define i32 @btbl_bitcnt(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  %0 = load i8, ptr %x.addr, align 8
  %idxprom = zext i8 %0 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %1 to i32
  store i32 %conv2, ptr %cnt, align 4
  %2 = load i64, ptr %x.addr, align 8
  %shr = ashr i64 %2, 8
  store i64 %shr, ptr %x.addr, align 8
  %cmp.not = icmp ult i64 %2, 256
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %x.addr, align 8
  %call = call i32 @btbl_bitcnt(i64 noundef %3)
  %4 = load i32, ptr %cnt, align 4
  %add = add nsw i32 %4, %call
  store i32 %add, ptr %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %cnt, align 4
  ret i32 %5
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
