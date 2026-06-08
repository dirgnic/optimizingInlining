; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-sha/sha_driver.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-sha/sha_driver.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@__stdinp = external global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv, i32 noundef %print) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %print.addr = alloca i32, align 4
  %fin = alloca ptr, align 8
  %sha_info = alloca %struct.SHA_INFO, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 %print, ptr %print.addr, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stdinp, align 8
  store ptr %1, ptr %fin, align 8
  %2 = load ptr, ptr %fin, align 8
  call void @sha_stream(ptr noundef %sha_info, ptr noundef %2)
  %3 = load i32, ptr %print.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @sha_print(ptr noundef %sha_info)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end12

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.else
  %4 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %argc.addr, align 4
  %tobool2 = icmp ne i32 %dec, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %6 = load ptr, ptr %incdec.ptr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %6, ptr noundef @.str)
  store ptr %call, ptr %fin, align 8
  %7 = load ptr, ptr %fin, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %while.body
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.1, ptr noundef %10)
  call void @exit(i32 noundef 1) #3
  unreachable

if.else6:                                         ; preds = %while.body
  %11 = load ptr, ptr %fin, align 8
  call void @sha_stream(ptr noundef %sha_info, ptr noundef %11)
  %12 = load i32, ptr %print.addr, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else6
  call void @sha_print(ptr noundef %sha_info)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else6
  %13 = load ptr, ptr %fin, align 8
  %call10 = call i32 @fclose(ptr noundef %13)
  br label %if.end11

if.end11:                                         ; preds = %if.end9
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end12

if.end12:                                         ; preds = %while.end, %if.end
  ret i32 0
}

declare void @sha_stream(ptr noundef, ptr noundef) #1

declare void @sha_print(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
