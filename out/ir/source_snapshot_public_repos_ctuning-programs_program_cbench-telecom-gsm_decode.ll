; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/decode.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/decode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Decoder(ptr noundef %S, ptr noundef %LARcr, ptr noundef %Ncr, ptr noundef %bcr, ptr noundef %Mcr, ptr noundef %xmaxcr, ptr noundef %xMcr, ptr noundef %s) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %LARcr.addr = alloca ptr, align 8
  %Ncr.addr = alloca ptr, align 8
  %bcr.addr = alloca ptr, align 8
  %Mcr.addr = alloca ptr, align 8
  %xmaxcr.addr = alloca ptr, align 8
  %xMcr.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %erp = alloca [40 x i16], align 2
  %wt = alloca [160 x i16], align 2
  %drp = alloca ptr, align 8
  store ptr %S, ptr %S.addr, align 8
  store ptr %LARcr, ptr %LARcr.addr, align 8
  store ptr %Ncr, ptr %Ncr.addr, align 8
  store ptr %bcr, ptr %bcr.addr, align 8
  store ptr %Mcr, ptr %Mcr.addr, align 8
  store ptr %xmaxcr, ptr %xmaxcr.addr, align 8
  store ptr %xMcr, ptr %xMcr.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %dp0 = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [280 x i16], ptr %dp0, i64 0, i64 0
  %add.ptr = getelementptr inbounds i16, ptr %arraydecay, i64 120
  store ptr %add.ptr, ptr %drp, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %1 = load i32, ptr %j, align 4
  %cmp = icmp sle i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %S.addr, align 8
  %3 = load ptr, ptr %xmaxcr.addr, align 8
  %4 = load i16, ptr %3, align 2
  %5 = load ptr, ptr %Mcr.addr, align 8
  %6 = load i16, ptr %5, align 2
  %7 = load ptr, ptr %xMcr.addr, align 8
  %arraydecay1 = getelementptr inbounds [40 x i16], ptr %erp, i64 0, i64 0
  call void @Gsm_RPE_Decoding(ptr noundef %2, i16 noundef signext %4, i16 noundef signext %6, ptr noundef %7, ptr noundef %arraydecay1)
  %8 = load ptr, ptr %S.addr, align 8
  %9 = load ptr, ptr %Ncr.addr, align 8
  %10 = load i16, ptr %9, align 2
  %11 = load ptr, ptr %bcr.addr, align 8
  %12 = load i16, ptr %11, align 2
  %arraydecay2 = getelementptr inbounds [40 x i16], ptr %erp, i64 0, i64 0
  %13 = load ptr, ptr %drp, align 8
  call void @Gsm_Long_Term_Synthesis_Filtering(ptr noundef %8, i16 noundef signext %10, i16 noundef signext %12, ptr noundef %arraydecay2, ptr noundef %13)
  store i32 0, ptr %k, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %14 = load i32, ptr %k, align 4
  %cmp4 = icmp sle i32 %14, 39
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %15 = load ptr, ptr %drp, align 8
  %16 = load i32, ptr %k, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 %idxprom
  %17 = load i16, ptr %arrayidx, align 2
  %18 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %18, 40
  %19 = load i32, ptr %k, align 4
  %add = add nsw i32 %mul, %19
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [160 x i16], ptr %wt, i64 0, i64 %idxprom6
  store i16 %17, ptr %arrayidx7, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, ptr %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %21 = load i32, ptr %j, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, ptr %j, align 4
  %22 = load ptr, ptr %xmaxcr.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %xmaxcr.addr, align 8
  %23 = load ptr, ptr %bcr.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i16, ptr %23, i32 1
  store ptr %incdec.ptr10, ptr %bcr.addr, align 8
  %24 = load ptr, ptr %Ncr.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i16, ptr %24, i32 1
  store ptr %incdec.ptr11, ptr %Ncr.addr, align 8
  %25 = load ptr, ptr %Mcr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i16, ptr %25, i32 1
  store ptr %incdec.ptr12, ptr %Mcr.addr, align 8
  %26 = load ptr, ptr %xMcr.addr, align 8
  %add.ptr13 = getelementptr inbounds i16, ptr %26, i64 13
  store ptr %add.ptr13, ptr %xMcr.addr, align 8
  br label %for.cond, !llvm.loop !8

for.end14:                                        ; preds = %for.cond
  %27 = load ptr, ptr %S.addr, align 8
  %28 = load ptr, ptr %LARcr.addr, align 8
  %arraydecay15 = getelementptr inbounds [160 x i16], ptr %wt, i64 0, i64 0
  %29 = load ptr, ptr %s.addr, align 8
  call void @Gsm_Short_Term_Synthesis_Filter(ptr noundef %27, ptr noundef %28, ptr noundef %arraydecay15, ptr noundef %29)
  %30 = load ptr, ptr %S.addr, align 8
  %31 = load ptr, ptr %s.addr, align 8
  call void @Postprocessing(ptr noundef %30, ptr noundef %31)
  ret void
}

declare void @Gsm_RPE_Decoding(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) #1

declare void @Gsm_Long_Term_Synthesis_Filtering(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) #1

declare void @Gsm_Short_Term_Synthesis_Filter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Postprocessing(ptr noundef %S, ptr noundef %s) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %msr = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %tmp = alloca i16, align 2
  store ptr %S, ptr %S.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %msr1 = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 9
  %1 = load i16, ptr %msr1, align 2
  store i16 %1, ptr %msr, align 2
  store i32 160, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %k, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %k, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16, ptr %msr, align 2
  %conv = sext i16 %3 to i64
  %mul = mul nsw i64 %conv, 28180
  %add = add nsw i64 %mul, 16384
  %call = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv2 = trunc i32 %call to i16
  store i16 %conv2, ptr %tmp, align 2
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i16, ptr %4, align 2
  %conv3 = sext i16 %5 to i64
  %6 = load i16, ptr %tmp, align 2
  %conv4 = sext i16 %6 to i64
  %add5 = add nsw i64 %conv3, %conv4
  store i64 %add5, ptr %ltmp, align 8
  %sub = sub nsw i64 %add5, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i64, ptr %ltmp, align 8
  %cmp7 = icmp sgt i64 %7, 0
  %8 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %9, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  store i16 %conv11, ptr %msr, align 2
  %10 = load i16, ptr %msr, align 2
  %conv12 = sext i16 %10 to i64
  %11 = load i16, ptr %msr, align 2
  %conv13 = sext i16 %11 to i64
  %add14 = add nsw i64 %conv12, %conv13
  store i64 %add14, ptr %ltmp, align 8
  %sub15 = sub nsw i64 %add14, -32768
  %cmp16 = icmp ugt i64 %sub15, 65535
  br i1 %cmp16, label %cond.true18, label %cond.false23

cond.true18:                                      ; preds = %cond.end
  %12 = load i64, ptr %ltmp, align 8
  %cmp19 = icmp sgt i64 %12, 0
  %13 = zext i1 %cmp19 to i64
  %cond21 = select i1 %cmp19, i32 32767, i32 -32768
  %conv22 = sext i32 %cond21 to i64
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end
  %14 = load i64, ptr %ltmp, align 8
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.true18
  %cond25 = phi i64 [ %conv22, %cond.true18 ], [ %14, %cond.false23 ]
  %and = and i64 %cond25, 65528
  %conv26 = trunc i64 %and to i16
  %15 = load ptr, ptr %s.addr, align 8
  store i16 %conv26, ptr %15, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end24
  %16 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %17 = load i16, ptr %msr, align 2
  %18 = load ptr, ptr %S.addr, align 8
  %msr27 = getelementptr inbounds %struct.gsm_state, ptr %18, i32 0, i32 9
  store i16 %17, ptr %msr27, align 2
  ret void
}

declare i32 @SASR(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!9 = distinct !{!9, !7}
