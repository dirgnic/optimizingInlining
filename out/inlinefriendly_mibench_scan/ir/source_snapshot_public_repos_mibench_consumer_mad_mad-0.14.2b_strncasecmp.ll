; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/strncasecmp.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/strncasecmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @strncasecmp(ptr noundef %str1, ptr noundef %str2, i64 noundef %len) #0 {
entry:
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store ptr %str1, ptr %str1.addr, align 8
  store ptr %str2, ptr %str2.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i32 0, ptr %c1, align 4
  store i32 0, ptr %c2, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %len.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %len.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %str1.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 @tolower(i32 noundef %conv) #2
  store i32 %call, ptr %c1, align 4
  %3 = load ptr, ptr %str2.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %str2.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv2 = sext i8 %4 to i32
  %call3 = call i32 @tolower(i32 noundef %conv2) #2
  store i32 %call3, ptr %c2, align 4
  %5 = load i32, ptr %c1, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, ptr %c1, align 4
  %7 = load i32, ptr %c2, align 4
  %cmp5 = icmp ne i32 %6, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %8 = load i32, ptr %c1, align 4
  %9 = load i32, ptr %c2, align 4
  %sub = sub nsw i32 %8, %9
  ret i32 %sub
}

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn }

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
