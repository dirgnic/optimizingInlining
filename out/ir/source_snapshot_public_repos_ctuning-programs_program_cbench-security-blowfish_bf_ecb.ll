; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_ecb.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_ecb.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @BF_options() #0 {
entry:
  ret ptr @.str.1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BF_ecb_encrypt(ptr noundef %in, ptr noundef %out, ptr noundef %ks, i32 noundef %encrypt) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %ks.addr = alloca ptr, align 8
  %encrypt.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %d = alloca [2 x i64], align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %ks, ptr %ks.addr, align 8
  store i32 %encrypt, ptr %encrypt.addr, align 4
  %0 = load ptr, ptr %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %in.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, ptr %l, align 8
  %2 = load ptr, ptr %in.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %in.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 16
  %4 = load i64, ptr %l, align 8
  %or = or i64 %4, %shl3
  store i64 %or, ptr %l, align 8
  %5 = load ptr, ptr %in.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr4, ptr %in.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv5 = zext i8 %6 to i64
  %shl6 = shl i64 %conv5, 8
  %7 = load i64, ptr %l, align 8
  %or7 = or i64 %7, %shl6
  store i64 %or7, ptr %l, align 8
  %8 = load ptr, ptr %in.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr8, ptr %in.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv9 = zext i8 %9 to i64
  %10 = load i64, ptr %l, align 8
  %or10 = or i64 %10, %conv9
  store i64 %or10, ptr %l, align 8
  %11 = load i64, ptr %l, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 0
  store i64 %11, ptr %arrayidx, align 8
  %12 = load ptr, ptr %in.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr11, ptr %in.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv12 = zext i8 %13 to i64
  %shl13 = shl i64 %conv12, 24
  store i64 %shl13, ptr %l, align 8
  %14 = load ptr, ptr %in.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr14, ptr %in.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv15 = zext i8 %15 to i64
  %shl16 = shl i64 %conv15, 16
  %16 = load i64, ptr %l, align 8
  %or17 = or i64 %16, %shl16
  store i64 %or17, ptr %l, align 8
  %17 = load ptr, ptr %in.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr18, ptr %in.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv19 = zext i8 %18 to i64
  %shl20 = shl i64 %conv19, 8
  %19 = load i64, ptr %l, align 8
  %or21 = or i64 %19, %shl20
  store i64 %or21, ptr %l, align 8
  %20 = load ptr, ptr %in.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr22, ptr %in.addr, align 8
  %21 = load i8, ptr %20, align 1
  %conv23 = zext i8 %21 to i64
  %22 = load i64, ptr %l, align 8
  %or24 = or i64 %22, %conv23
  store i64 %or24, ptr %l, align 8
  %23 = load i64, ptr %l, align 8
  %arrayidx25 = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 1
  store i64 %23, ptr %arrayidx25, align 8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 0
  %24 = load ptr, ptr %ks.addr, align 8
  %25 = load i32, ptr %encrypt.addr, align 4
  call void @BF_encrypt(ptr noundef %arraydecay, ptr noundef %24, i32 noundef %25)
  %arrayidx26 = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 0
  %26 = load i64, ptr %arrayidx26, align 8
  store i64 %26, ptr %l, align 8
  %27 = load i64, ptr %l, align 8
  %shr = lshr i64 %27, 24
  %and = and i64 %shr, 255
  %conv27 = trunc i64 %and to i8
  %28 = load ptr, ptr %out.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr28, ptr %out.addr, align 8
  store i8 %conv27, ptr %28, align 1
  %29 = load i64, ptr %l, align 8
  %shr29 = lshr i64 %29, 16
  %and30 = and i64 %shr29, 255
  %conv31 = trunc i64 %and30 to i8
  %30 = load ptr, ptr %out.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr32, ptr %out.addr, align 8
  store i8 %conv31, ptr %30, align 1
  %31 = load i64, ptr %l, align 8
  %shr33 = lshr i64 %31, 8
  %and34 = and i64 %shr33, 255
  %conv35 = trunc i64 %and34 to i8
  %32 = load ptr, ptr %out.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr36, ptr %out.addr, align 8
  store i8 %conv35, ptr %32, align 1
  %33 = load i64, ptr %l, align 8
  %and37 = and i64 %33, 255
  %conv38 = trunc i64 %and37 to i8
  %34 = load ptr, ptr %out.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr39, ptr %out.addr, align 8
  store i8 %conv38, ptr %34, align 1
  %arrayidx40 = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 1
  %35 = load i64, ptr %arrayidx40, align 8
  store i64 %35, ptr %l, align 8
  %36 = load i64, ptr %l, align 8
  %shr41 = lshr i64 %36, 24
  %and42 = and i64 %shr41, 255
  %conv43 = trunc i64 %and42 to i8
  %37 = load ptr, ptr %out.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr44, ptr %out.addr, align 8
  store i8 %conv43, ptr %37, align 1
  %38 = load i64, ptr %l, align 8
  %shr45 = lshr i64 %38, 16
  %and46 = and i64 %shr45, 255
  %conv47 = trunc i64 %and46 to i8
  %39 = load ptr, ptr %out.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr48, ptr %out.addr, align 8
  store i8 %conv47, ptr %39, align 1
  %40 = load i64, ptr %l, align 8
  %shr49 = lshr i64 %40, 8
  %and50 = and i64 %shr49, 255
  %conv51 = trunc i64 %and50 to i8
  %41 = load ptr, ptr %out.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr52, ptr %out.addr, align 8
  store i8 %conv51, ptr %41, align 1
  %42 = load i64, ptr %l, align 8
  %and53 = and i64 %42, 255
  %conv54 = trunc i64 %and53 to i8
  %43 = load ptr, ptr %out.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr55, ptr %out.addr, align 8
  store i8 %conv54, ptr %43, align 1
  %arrayidx56 = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 1
  store i64 0, ptr %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], ptr %d, i64 0, i64 0
  store i64 0, ptr %arrayidx57, align 8
  store i64 0, ptr %l, align 8
  ret void
}

declare void @BF_encrypt(ptr noundef, ptr noundef, i32 noundef) #1

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
