; ModuleID = './source_snapshot/public_repos/mibench/automotive/basicmath/rad2deg.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/basicmath/rad2deg.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @rad2deg(double noundef %rad) #0 {
entry:
  %rad.addr = alloca double, align 8
  store double %rad, ptr %rad.addr, align 8
  %0 = load double, ptr %rad.addr, align 8
  %mul = fmul double 1.800000e+02, %0
  %call = call double @atan(double noundef 1.000000e+00) #2
  %mul1 = fmul double 4.000000e+00, %call
  %div = fdiv double %mul, %mul1
  ret double %div
}

; Function Attrs: nounwind readnone willreturn
declare double @atan(double noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @deg2rad(double noundef %deg) #0 {
entry:
  %deg.addr = alloca double, align 8
  store double %deg, ptr %deg.addr, align 8
  %call = call double @atan(double noundef 1.000000e+00) #2
  %mul = fmul double 4.000000e+00, %call
  %0 = load double, ptr %deg.addr, align 8
  %mul1 = fmul double %mul, %0
  %div = fdiv double %mul1, 1.800000e+02
  ret double %div
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
