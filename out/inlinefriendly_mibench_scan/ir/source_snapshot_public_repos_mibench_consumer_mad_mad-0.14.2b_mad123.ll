; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/mad123.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/mad123.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.anon = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"vqtsSw:k:n:cyb:f:r:g:o:a:24d:h:01mp:@:zZu:E:C\00", align 1
@options = internal constant [42 x %struct.option] [%struct.option { ptr @.str.2, i32 1, ptr null, i32 107 }, %struct.option { ptr @.str.3, i32 1, ptr null, i32 97 }, %struct.option { ptr @.str.4, i32 0, ptr null, i32 50 }, %struct.option { ptr @.str.5, i32 0, ptr null, i32 52 }, %struct.option { ptr @.str.6, i32 0, ptr null, i32 116 }, %struct.option { ptr @.str.7, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.8, i32 0, ptr null, i32 83 }, %struct.option { ptr @.str.9, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.10, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.11, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.12, i32 0, ptr null, i32 121 }, %struct.option { ptr @.str.13, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.14, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.15, i32 0, ptr null, i32 49 }, %struct.option { ptr @.str.16, i32 0, ptr null, i32 49 }, %struct.option { ptr @.str.17, i32 0, ptr null, i32 109 }, %struct.option { ptr @.str.18, i32 0, ptr null, i32 109 }, %struct.option { ptr @.str.19, i32 0, ptr null, i32 -115 }, %struct.option { ptr @.str.20, i32 0, ptr null, i32 -114 }, %struct.option { ptr @.str.21, i32 1, ptr null, i32 103 }, %struct.option { ptr @.str.22, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.23, i32 0, ptr null, i32 -56 }, %struct.option { ptr @.str.24, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.25, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.26, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.27, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.28, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.29, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.30, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.31, i32 1, ptr null, i32 104 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 64 }, %struct.option { ptr @.str.34, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.35, i32 0, ptr null, i32 90 }, %struct.option { ptr @.str.36, i32 1, ptr null, i32 69 }, %struct.option { ptr @.str.37, i32 0, ptr null, i32 -97 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 117 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.40, i32 1, ptr null, i32 -109 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 -99 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 -101 }, %struct.option zeroinitializer], align 8
@config = internal global %struct.anon zeroinitializer, align 4
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [264 x i8] c"High Quality MPEG 1.0/2.0/2.5 Audio Player for Layer I, II, and III.\0AVersion 0.59r (2000/Oct/04). Written and copyright by Robert Leslie.\0AUses mpg123 command interface. See the documentation!\0ATHIS SOFTWARE COMES WITH ABSOLUTELY NO WARRANTY! USE AT YOUR OWN RISK!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"audiodevice\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2to1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"4to1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"single0\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"single1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"headphones\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"lineout\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"doublespeed\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"halfspeed\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"equalizer\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"aggressive\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"wav\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"au\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"esd\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %opt = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str, ptr noundef @options, ptr noundef %index)
  store i32 %call, ptr %opt, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %opt, align 4
  switch i32 %2, label %sw.epilog [
    i32 118, label %sw.bb
    i32 113, label %sw.bb1
    i32 63, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i32, ptr @config, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @config, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 -1, ptr @config, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  call void @exit(i32 noundef 1) #3
  unreachable

sw.epilog:                                        ; preds = %while.body, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr @config, align 4
  %cmp3 = icmp sge i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 0
}

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

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
