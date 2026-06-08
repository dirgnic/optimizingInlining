; ModuleID = './source_snapshot/public_repos/mibench/automotive/basicmath/isqrt.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/basicmath/isqrt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @usqrt(i64 noundef %x, ptr noundef %q) #0 {
entry:
  %x.addr = alloca i64, align 8
  %q.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %r = alloca i64, align 8
  %e = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store i64 0, ptr %a, align 8
  store i64 0, ptr %r, align 8
  store i64 0, ptr %e, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %r, align 8
  %shl = shl i64 %1, 2
  %2 = load i64, ptr %x.addr, align 8
  %and = and i64 %2, 3221225472
  %shr = lshr i64 %and, 30
  %add = add i64 %shl, %shr
  store i64 %add, ptr %r, align 8
  %3 = load i64, ptr %x.addr, align 8
  %shl1 = shl i64 %3, 2
  store i64 %shl1, ptr %x.addr, align 8
  %4 = load i64, ptr %a, align 8
  %shl2 = shl i64 %4, 1
  store i64 %shl2, ptr %a, align 8
  %5 = load i64, ptr %a, align 8
  %shl3 = shl i64 %5, 1
  %add4 = add i64 %shl3, 1
  store i64 %add4, ptr %e, align 8
  %6 = load i64, ptr %r, align 8
  %7 = load i64, ptr %e, align 8
  %cmp5 = icmp uge i64 %6, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, ptr %e, align 8
  %9 = load i64, ptr %r, align 8
  %sub = sub i64 %9, %8
  store i64 %sub, ptr %r, align 8
  %10 = load i64, ptr %a, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %11, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %q.addr, align 8
  %13 = load ptr, ptr %q.addr, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %12, ptr noundef %a, i64 noundef 8, i64 noundef %14) #3
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
