; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount/bitcnt_3.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount/bitcnt_3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%union.anon = type { i64 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ntbl_bitcount(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %and = and i64 %0, 15
  %conv = trunc i64 %and to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %1 to i32
  %2 = load i64, ptr %x.addr, align 8
  %and2 = and i64 %2, 240
  %shr = lshr i64 %and2, 4
  %conv3 = trunc i64 %shr to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom4
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %3 to i32
  %add = add nsw i32 %conv1, %conv6
  %4 = load i64, ptr %x.addr, align 8
  %and7 = and i64 %4, 3840
  %shr8 = lshr i64 %and7, 8
  %conv9 = trunc i64 %shr8 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom10
  %5 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %5 to i32
  %add13 = add nsw i32 %add, %conv12
  %6 = load i64, ptr %x.addr, align 8
  %and14 = and i64 %6, 61440
  %shr15 = lshr i64 %and14, 12
  %conv16 = trunc i64 %shr15 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom17
  %7 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %7 to i32
  %add20 = add nsw i32 %add13, %conv19
  %8 = load i64, ptr %x.addr, align 8
  %and21 = and i64 %8, 983040
  %shr22 = lshr i64 %and21, 16
  %conv23 = trunc i64 %shr22 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom24
  %9 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %9 to i32
  %add27 = add nsw i32 %add20, %conv26
  %10 = load i64, ptr %x.addr, align 8
  %and28 = and i64 %10, 15728640
  %shr29 = lshr i64 %and28, 20
  %conv30 = trunc i64 %shr29 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom31
  %11 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %11 to i32
  %add34 = add nsw i32 %add27, %conv33
  %12 = load i64, ptr %x.addr, align 8
  %and35 = and i64 %12, 251658240
  %shr36 = lshr i64 %and35, 24
  %conv37 = trunc i64 %shr36 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom38
  %13 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %13 to i32
  %add41 = add nsw i32 %add34, %conv40
  %14 = load i64, ptr %x.addr, align 8
  %and42 = and i64 %14, 4026531840
  %shr43 = lshr i64 %and42, 28
  %conv44 = trunc i64 %shr43 to i32
  %idxprom45 = sext i32 %conv44 to i64
  %arrayidx46 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom45
  %15 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %15 to i32
  %add48 = add nsw i32 %add41, %conv47
  ret i32 %add48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @BW_btbl_bitcount(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %U = alloca %union.anon, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  store i64 %0, ptr %U, align 8
  %arrayidx = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 0
  %1 = load i8, ptr %arrayidx, align 8
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %2 to i32
  %arrayidx2 = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %idxprom3 = zext i8 %3 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom3
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %4 to i32
  %add = add nsw i32 %conv, %conv5
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 3
  %5 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %5 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom7
  %6 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %add10 = add nsw i32 %add, %conv9
  %arrayidx11 = getelementptr inbounds [4 x i8], ptr %U, i64 0, i64 2
  %7 = load i8, ptr %arrayidx11, align 2
  %idxprom12 = zext i8 %7 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom12
  %8 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %8 to i32
  %add15 = add nsw i32 %add10, %conv14
  ret i32 %add15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @AR_btbl_bitcount(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %Ptr = alloca ptr, align 8
  %Accu = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store ptr %x.addr, ptr %Ptr, align 8
  %0 = load ptr, ptr %Ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %Ptr, align 8
  %1 = load i8, ptr %0, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, ptr %Accu, align 4
  %3 = load ptr, ptr %Ptr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %Ptr, align 8
  %4 = load i8, ptr %3, align 1
  %idxprom2 = zext i8 %4 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom2
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i32, ptr %Accu, align 4
  %add = add nsw i32 %6, %conv4
  store i32 %add, ptr %Accu, align 4
  %7 = load ptr, ptr %Ptr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr5, ptr %Ptr, align 8
  %8 = load i8, ptr %7, align 1
  %idxprom6 = zext i8 %8 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %10 = load i32, ptr %Accu, align 4
  %add9 = add nsw i32 %10, %conv8
  store i32 %add9, ptr %Accu, align 4
  %11 = load ptr, ptr %Ptr, align 8
  %12 = load i8, ptr %11, align 1
  %idxprom10 = zext i8 %12 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %idxprom10
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %14 = load i32, ptr %Accu, align 4
  %add13 = add nsw i32 %14, %conv12
  store i32 %add13, ptr %Accu, align 4
  %15 = load i32, ptr %Accu, align 4
  ret i32 %15
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
