; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/port/strcasecmp.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/port/strcasecmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@charmap = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @strcasecmp(ptr noundef %s1, ptr noundef %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %cm = alloca ptr, align 8
  %us1 = alloca ptr, align 8
  %us2 = alloca ptr, align 8
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  store ptr @charmap, ptr %cm, align 8
  %0 = load ptr, ptr %s1.addr, align 8
  store ptr %0, ptr %us1, align 8
  %1 = load ptr, ptr %s2.addr, align 8
  store ptr %1, ptr %us2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %cm, align 8
  %3 = load ptr, ptr %us1, align 8
  %4 = load i8, ptr %3, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load ptr, ptr %cm, align 8
  %7 = load ptr, ptr %us2, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %us2, align 8
  %8 = load i8, ptr %7, align 1
  %idxprom1 = zext i8 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 %idxprom1
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %us1, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr5, ptr %us1, align 8
  %11 = load i8, ptr %10, align 1
  %conv6 = zext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %cm, align 8
  %13 = load ptr, ptr %us1, align 8
  %14 = load i8, ptr %13, align 1
  %idxprom9 = zext i8 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %15 to i32
  %16 = load ptr, ptr %cm, align 8
  %17 = load ptr, ptr %us2, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %17, i32 -1
  store ptr %incdec.ptr12, ptr %us2, align 8
  %18 = load i8, ptr %incdec.ptr12, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 %idxprom13
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %sub = sub nsw i32 %conv11, %conv15
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @strncasecmp(ptr noundef %s1, ptr noundef %s2, i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %cm = alloca ptr, align 8
  %us1 = alloca ptr, align 8
  %us2 = alloca ptr, align 8
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  store ptr @charmap, ptr %cm, align 8
  %1 = load ptr, ptr %s1.addr, align 8
  store ptr %1, ptr %us1, align 8
  %2 = load ptr, ptr %s2.addr, align 8
  store ptr %2, ptr %us2, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load ptr, ptr %cm, align 8
  %4 = load ptr, ptr %us1, align 8
  %5 = load i8, ptr %4, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %cm, align 8
  %8 = load ptr, ptr %us2, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %us2, align 8
  %9 = load i8, ptr %8, align 1
  %idxprom1 = zext i8 %9 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %idxprom1
  %10 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.body
  %11 = load ptr, ptr %cm, align 8
  %12 = load ptr, ptr %us1, align 8
  %13 = load i8, ptr %12, align 1
  %idxprom7 = zext i8 %13 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %idxprom7
  %14 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %14 to i32
  %15 = load ptr, ptr %cm, align 8
  %16 = load ptr, ptr %us2, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 -1
  store ptr %incdec.ptr10, ptr %us2, align 8
  %17 = load i8, ptr %incdec.ptr10, align 1
  %idxprom11 = zext i8 %17 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 %idxprom11
  %18 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv9, %conv13
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %19 = load ptr, ptr %us1, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr14, ptr %us1, align 8
  %20 = load i8, ptr %19, align 1
  %conv15 = zext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  br label %do.end

if.end19:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  %21 = load i64, ptr %n.addr, align 8
  %dec = add i64 %21, -1
  store i64 %dec, ptr %n.addr, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond, %if.then18
  br label %if.end22

if.end22:                                         ; preds = %do.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then6
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
