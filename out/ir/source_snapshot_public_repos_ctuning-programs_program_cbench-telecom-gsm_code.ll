; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/code.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/code.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Coder(ptr noundef %S, ptr noundef %s, ptr noundef %LARc, ptr noundef %Nc, ptr noundef %bc, ptr noundef %Mc, ptr noundef %xmaxc, ptr noundef %xMc) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %LARc.addr = alloca ptr, align 8
  %Nc.addr = alloca ptr, align 8
  %bc.addr = alloca ptr, align 8
  %Mc.addr = alloca ptr, align 8
  %xmaxc.addr = alloca ptr, align 8
  %xMc.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %dp = alloca ptr, align 8
  %dpp = alloca ptr, align 8
  %so = alloca [160 x i16], align 2
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store ptr %S, ptr %S.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %LARc, ptr %LARc.addr, align 8
  store ptr %Nc, ptr %Nc.addr, align 8
  store ptr %bc, ptr %bc.addr, align 8
  store ptr %Mc, ptr %Mc.addr, align 8
  store ptr %xmaxc, ptr %xmaxc.addr, align 8
  store ptr %xMc, ptr %xMc.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %dp0 = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [280 x i16], ptr %dp0, i64 0, i64 0
  %add.ptr = getelementptr inbounds i16, ptr %arraydecay, i64 120
  store ptr %add.ptr, ptr %dp, align 8
  %1 = load ptr, ptr %dp, align 8
  store ptr %1, ptr %dpp, align 8
  %2 = load ptr, ptr %S.addr, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %arraydecay1 = getelementptr inbounds [160 x i16], ptr %so, i64 0, i64 0
  call void @Gsm_Preprocess(ptr noundef %2, ptr noundef %3, ptr noundef %arraydecay1)
  %4 = load ptr, ptr %S.addr, align 8
  %arraydecay2 = getelementptr inbounds [160 x i16], ptr %so, i64 0, i64 0
  %5 = load ptr, ptr %LARc.addr, align 8
  call void @Gsm_LPC_Analysis(ptr noundef %4, ptr noundef %arraydecay2, ptr noundef %5)
  %6 = load ptr, ptr %S.addr, align 8
  %7 = load ptr, ptr %LARc.addr, align 8
  %arraydecay3 = getelementptr inbounds [160 x i16], ptr %so, i64 0, i64 0
  call void @Gsm_Short_Term_Analysis_Filter(ptr noundef %6, ptr noundef %7, ptr noundef %arraydecay3)
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %8 = load i32, ptr %k, align 4
  %cmp = icmp sle i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %S.addr, align 8
  %arraydecay4 = getelementptr inbounds [160 x i16], ptr %so, i64 0, i64 0
  %10 = load i32, ptr %k, align 4
  %mul = mul nsw i32 %10, 40
  %idx.ext = sext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i16, ptr %arraydecay4, i64 %idx.ext
  %11 = load ptr, ptr %dp, align 8
  %12 = load ptr, ptr %dpp, align 8
  %13 = load ptr, ptr %Nc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %Nc.addr, align 8
  %14 = load ptr, ptr %bc.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i16, ptr %14, i32 1
  store ptr %incdec.ptr6, ptr %bc.addr, align 8
  call void @Gsm_Long_Term_Predictor(ptr noundef %9, ptr noundef %add.ptr5, ptr noundef %11, ptr noundef getelementptr inbounds (i16, ptr @Gsm_Coder.e, i64 5), ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %S.addr, align 8
  %16 = load ptr, ptr %xmaxc.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i16, ptr %16, i32 1
  store ptr %incdec.ptr7, ptr %xmaxc.addr, align 8
  %17 = load ptr, ptr %Mc.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, ptr %17, i32 1
  store ptr %incdec.ptr8, ptr %Mc.addr, align 8
  %18 = load ptr, ptr %xMc.addr, align 8
  call void @Gsm_RPE_Encoding(ptr noundef %15, ptr noundef getelementptr inbounds (i16, ptr @Gsm_Coder.e, i64 5), ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %19 = load i32, ptr %i, align 4
  %cmp10 = icmp sle i32 %19, 39
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %20 = load i32, ptr %i, align 4
  %add = add nsw i32 5, %20
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [50 x i16], ptr @Gsm_Coder.e, i64 0, i64 %idxprom
  %21 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %21 to i64
  %22 = load ptr, ptr %dpp, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %22, i64 %idxprom12
  %24 = load i16, ptr %arrayidx13, align 2
  %conv14 = sext i16 %24 to i64
  %add15 = add nsw i64 %conv, %conv14
  store i64 %add15, ptr %ltmp, align 8
  %sub = sub nsw i64 %add15, -32768
  %cmp16 = icmp ugt i64 %sub, 65535
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body11
  %25 = load i64, ptr %ltmp, align 8
  %cmp18 = icmp sgt i64 %25, 0
  %26 = zext i1 %cmp18 to i64
  %cond = select i1 %cmp18, i32 32767, i32 -32768
  %conv20 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body11
  %27 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i64 [ %conv20, %cond.true ], [ %27, %cond.false ]
  %conv22 = trunc i64 %cond21 to i16
  %28 = load ptr, ptr %dp, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %28, i64 %idxprom23
  store i16 %conv22, ptr %arrayidx24, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond9, !llvm.loop !6

for.end:                                          ; preds = %for.cond9
  %31 = load ptr, ptr %dp, align 8
  %add.ptr25 = getelementptr inbounds i16, ptr %31, i64 40
  store ptr %add.ptr25, ptr %dp, align 8
  %32 = load ptr, ptr %dpp, align 8
  %add.ptr26 = getelementptr inbounds i16, ptr %32, i64 40
  store ptr %add.ptr26, ptr %dpp, align 8
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %33 = load i32, ptr %k, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, ptr %k, align 4
  %34 = load ptr, ptr %xMc.addr, align 8
  %add.ptr29 = getelementptr inbounds i16, ptr %34, i64 13
  store ptr %add.ptr29, ptr %xMc.addr, align 8
  br label %for.cond, !llvm.loop !8

for.end30:                                        ; preds = %for.cond
  %35 = load ptr, ptr %S.addr, align 8
  %dp031 = getelementptr inbounds %struct.gsm_state, ptr %35, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [280 x i16], ptr %dp031, i64 0, i64 0
  %36 = load ptr, ptr %S.addr, align 8
  %dp033 = getelementptr inbounds %struct.gsm_state, ptr %36, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [280 x i16], ptr %dp033, i64 0, i64 0
  %add.ptr35 = getelementptr inbounds i16, ptr %arraydecay34, i64 160
  %37 = load ptr, ptr %S.addr, align 8
  %dp036 = getelementptr inbounds %struct.gsm_state, ptr %37, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [280 x i16], ptr %dp036, i64 0, i64 0
  %38 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay37, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %arraydecay32, ptr noundef %add.ptr35, i64 noundef 240, i64 noundef %38) #4
  ret void
}

declare void @Gsm_Preprocess(ptr noundef, ptr noundef, ptr noundef) #1

declare void @Gsm_LPC_Analysis(ptr noundef, ptr noundef, ptr noundef) #1

declare void @Gsm_Short_Term_Analysis_Filter(ptr noundef, ptr noundef, ptr noundef) #1

declare void @Gsm_Long_Term_Predictor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @Gsm_RPE_Encoding(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
