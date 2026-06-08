; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/gsm_option.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/gsm_option.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @gsm_option(ptr noundef %r, i32 noundef %opt, ptr noundef %val) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %opt.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  store i32 %opt, ptr %opt.addr, align 4
  store ptr %val, ptr %val.addr, align 8
  store i32 -1, ptr %result, align 4
  %0 = load i32, ptr %opt.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8
  %verbose = getelementptr inbounds %struct.gsm_state, ptr %1, i32 0, i32 10
  %2 = load i8, ptr %verbose, align 4
  %conv = sext i8 %2 to i32
  store i32 %conv, ptr %result, align 4
  %3 = load ptr, ptr %val.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %val.addr, align 8
  %5 = load i32, ptr %4, align 4
  %conv1 = trunc i32 %5 to i8
  %6 = load ptr, ptr %r.addr, align 8
  %verbose2 = getelementptr inbounds %struct.gsm_state, ptr %6, i32 0, i32 10
  store i8 %conv1, ptr %verbose2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %if.end
  %7 = load i32, ptr %result, align 4
  ret i32 %7
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
