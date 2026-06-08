; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_swab.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_swab.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@TIFFBitRevTable = internal constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 1
@TIFFNoBitRevTable = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1

; Function Attrs: nounwind ssp uwtable
define void @TIFFSwabShort(ptr noundef %wp) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, ptr %wp, i64 1
  %0 = load i8, ptr %arrayidx, align 1
  %1 = load i8, ptr %wp, align 1
  %arrayidx2 = getelementptr inbounds i8, ptr %wp, i64 1
  store i8 %1, ptr %arrayidx2, align 1
  store i8 %0, ptr %wp, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSwabLong(ptr noundef %lp) #0 {
entry:
  %cp = alloca ptr, align 8
  store ptr %lp, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %lp, i64 3
  %0 = load i8, ptr %arrayidx, align 1
  %1 = load i8, ptr %lp, align 1
  %arrayidx2 = getelementptr inbounds i8, ptr %lp, i64 3
  store i8 %1, ptr %arrayidx2, align 1
  store i8 %0, ptr %lp, align 1
  %arrayidx5 = getelementptr inbounds i8, ptr %lp, i64 2
  %2 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr inbounds i8, ptr %lp, i64 1
  %3 = load i8, ptr %arrayidx7, align 1
  %4 = load ptr, ptr %cp, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %3, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %2, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSwabArrayOfShort(ptr noundef %wp, i64 noundef %n) #0 {
entry:
  %wp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %n.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %wp.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx, align 1
  %3 = load i8, ptr %1, align 1
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %3, ptr %arrayidx2, align 1
  store i8 %2, ptr %1, align 1
  %4 = load ptr, ptr %wp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %wp.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSwabArrayOfLong(ptr noundef %lp, i64 noundef %n) #0 {
entry:
  %lp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %cp = alloca ptr, align 8
  store ptr %lp, ptr %lp.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %n.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %lp.addr, align 8
  store ptr %1, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 3
  %2 = load i8, ptr %arrayidx, align 1
  %3 = load i8, ptr %1, align 1
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %3, ptr %arrayidx2, align 1
  store i8 %2, ptr %1, align 1
  %arrayidx5 = getelementptr inbounds i8, ptr %1, i64 2
  %4 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %arrayidx7, align 1
  %6 = load ptr, ptr %cp, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %5, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %4, ptr %arrayidx10, align 1
  %7 = load ptr, ptr %lp.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %lp.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSwabDouble(ptr noundef %dp) #0 {
entry:
  call void @TIFFSwabArrayOfLong(ptr noundef %dp, i64 noundef 2)
  %0 = load i64, ptr %dp, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %dp, i64 1
  %1 = load i64, ptr %arrayidx1, align 8
  store i64 %1, ptr %dp, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %dp, i64 1
  store i64 %0, ptr %arrayidx3, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFSwabArrayOfDouble(ptr noundef %dp, i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %lp = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %dp, ptr %lp, align 8
  %add = shl i64 %n, 1
  call void @TIFFSwabArrayOfLong(ptr noundef %dp, i64 noundef %add)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %n.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %n.addr, align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %lp, align 8
  %2 = load i64, ptr %1, align 8
  %arrayidx1 = getelementptr inbounds i64, ptr %1, i64 1
  %3 = load i64, ptr %arrayidx1, align 8
  store i64 %3, ptr %1, align 8
  %arrayidx3 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %2, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %lp, align 8
  %add.ptr = getelementptr inbounds i64, ptr %4, i64 2
  store ptr %add.ptr, ptr %lp, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @TIFFGetBitRevTable(i32 noundef %reversed) #0 {
entry:
  %tobool.not = icmp eq i32 %reversed, 0
  %cond = select i1 %tobool.not, ptr @TIFFNoBitRevTable, ptr @TIFFBitRevTable
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define void @TIFFReverseBits(ptr noundef %cp, i64 noundef %n) #0 {
entry:
  %cp.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %cp, ptr %cp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  store i64 %storemerge, ptr %n.addr, align 8
  %cmp = icmp ugt i64 %storemerge, 8
  br i1 %cmp, label %for.body, label %while.cond

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %cp.addr, align 8
  %1 = load i8, ptr %0, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1
  store i8 %2, ptr %0, align 1
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = zext i8 %3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom4
  %4 = load i8, ptr %arrayidx5, align 1
  %5 = load ptr, ptr %cp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %4, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx7, align 1
  %idxprom8 = zext i8 %6 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom8
  %7 = load i8, ptr %arrayidx9, align 1
  %8 = load ptr, ptr %cp.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 2
  store i8 %7, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds i8, ptr %8, i64 3
  %9 = load i8, ptr %arrayidx11, align 1
  %idxprom12 = zext i8 %9 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom12
  %10 = load i8, ptr %arrayidx13, align 1
  %11 = load ptr, ptr %cp.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 3
  store i8 %10, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds i8, ptr %11, i64 4
  %12 = load i8, ptr %arrayidx15, align 1
  %idxprom16 = zext i8 %12 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom16
  %13 = load i8, ptr %arrayidx17, align 1
  %14 = load ptr, ptr %cp.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %14, i64 4
  store i8 %13, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds i8, ptr %14, i64 5
  %15 = load i8, ptr %arrayidx19, align 1
  %idxprom20 = zext i8 %15 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom20
  %16 = load i8, ptr %arrayidx21, align 1
  %17 = load ptr, ptr %cp.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %17, i64 5
  store i8 %16, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr inbounds i8, ptr %17, i64 6
  %18 = load i8, ptr %arrayidx23, align 1
  %idxprom24 = zext i8 %18 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1
  %20 = load ptr, ptr %cp.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 6
  store i8 %19, ptr %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds i8, ptr %20, i64 7
  %21 = load i8, ptr %arrayidx27, align 1
  %idxprom28 = zext i8 %21 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom28
  %22 = load i8, ptr %arrayidx29, align 1
  %23 = load ptr, ptr %cp.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %23, i64 7
  store i8 %22, ptr %arrayidx30, align 1
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 8
  store ptr %add.ptr, ptr %cp.addr, align 8
  %24 = load i64, ptr %n.addr, align 8
  %sub = add i64 %24, -8
  br label %for.cond, !llvm.loop !10

while.cond:                                       ; preds = %for.cond, %while.body
  %25 = load i64, ptr %n.addr, align 8
  %dec = add i64 %25, -1
  store i64 %dec, ptr %n.addr, align 8
  %cmp31.not = icmp eq i64 %25, 0
  br i1 %cmp31.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %cp.addr, align 8
  %27 = load i8, ptr %26, align 1
  %idxprom32 = zext i8 %27 to i64
  %arrayidx33 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %idxprom32
  %28 = load i8, ptr %arrayidx33, align 1
  store i8 %28, ptr %26, align 1
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr, ptr %cp.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
