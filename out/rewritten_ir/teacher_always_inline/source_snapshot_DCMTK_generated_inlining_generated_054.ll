; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_054.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_054.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_054_kernel(i32 noundef %x) #0 {
entry:
  %x.addr.i116 = alloca i32, align 4
  %s.i117 = alloca i32, align 4
  %mode.addr.i98 = alloca i32, align 4
  %t.i100 = alloca i32, align 4
  %retval.i83 = alloca i32, align 4
  %x.addr.i85 = alloca i32, align 4
  %x.addr.i42 = alloca i32, align 4
  %s.i43 = alloca i32, align 4
  %retval.i23 = alloca i32, align 4
  %x.addr.i25 = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %x.addr.i14 = alloca i32, align 4
  %x.addr.i7 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 26, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 0, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i2 = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %mul.i2
  %add4 = add nsw i32 %add2, 18
  store i32 %add4, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 2, ptr %x.addr.i7, align 4
  store i32 14, ptr %s.i, align 4
  %3 = load i32, ptr %s.i, align 4
  %sub.i11 = add nsw i32 %3, -1
  store i32 %sub.i11, ptr %s.i, align 4
  %4 = load i32, ptr %x.addr.i7, align 4
  %and2.i = and i32 %4, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 7
  %add4.i = add nsw i32 %sub.i11, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %5 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %5, 3
  %6 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %6, -2
  %storemerge157 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge157, ptr %s.i, align 4
  %7 = load i32, ptr %x.addr.i7, align 4
  %and12.i = shl i32 %7, 3
  %mul13.i = and i32 %and12.i, 40
  %add14.i = add nsw i32 %storemerge157, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %8 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %8, 0
  %9 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %9, 5
  %10 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %10, -3
  %storemerge158 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge158, ptr %s.i, align 4
  %11 = load i32, ptr %x.addr.i7, align 4
  %and22.i = and i32 %11, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 9
  %add24.i = add nsw i32 %storemerge158, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %12 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %12, 7
  %13 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %13, -4
  %storemerge159 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge159, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %14 = load i32, ptr %total, align 4
  %add6 = add nsw i32 %14, %storemerge159
  store i32 %add6, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  store i32 3, ptr %x.addr.i14, align 4
  %15 = load i32, ptr %x.addr.i14, align 4
  %xor.i17 = xor i32 %15, 8
  store i32 %xor.i17, ptr %retval.i, align 4
  %16 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  %and = and i32 %16, 255
  %17 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %17, %and
  store i32 %add8, ptr %total, align 4
  %call9 = call noundef i32 @_ZL20packet_054_recursivei(i32 noundef 1)
  %add10 = add nsw i32 %add8, %call9
  %add12 = add nsw i32 %add10, 20
  store i32 %add12, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i25)
  store i32 6, ptr %x.addr.i25, align 4
  %18 = load i32, ptr %x.addr.i25, align 4
  %xor.i29 = xor i32 %18, 15
  store i32 %xor.i29, ptr %retval.i23, align 4
  %19 = load i32, ptr %retval.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i25)
  %20 = load i32, ptr %total, align 4
  %add14 = add nsw i32 %20, %19
  %add16 = add nsw i32 %add14, 117
  store i32 %add16, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i43)
  store i32 8, ptr %x.addr.i42, align 4
  store i32 8, ptr %s.i43, align 4
  %21 = load i32, ptr %s.i43, align 4
  %sub.i49 = add nsw i32 %21, -1
  store i32 %sub.i49, ptr %s.i43, align 4
  %22 = load i32, ptr %x.addr.i42, align 4
  %and2.i53 = and i32 %22, 4
  %mul3.i54 = mul nuw nsw i32 %and2.i53, 7
  %add4.i55 = add nsw i32 %sub.i49, %mul3.i54
  store i32 %add4.i55, ptr %s.i43, align 4
  %rem5.i56 = srem i32 %add4.i55, 3
  %cmp6.i57 = icmp eq i32 %rem5.i56, 0
  %23 = load i32, ptr %s.i43, align 4
  %add10.i61 = add nsw i32 %23, 3
  %24 = load i32, ptr %s.i43, align 4
  %sub8.i59 = add nsw i32 %24, -2
  %storemerge161 = select i1 %cmp6.i57, i32 %sub8.i59, i32 %add10.i61
  store i32 %storemerge161, ptr %s.i43, align 4
  %25 = load i32, ptr %x.addr.i42, align 4
  %and12.i63 = shl i32 %25, 3
  %mul13.i64 = and i32 %and12.i63, 40
  %add14.i65 = add nsw i32 %storemerge161, %mul13.i64
  store i32 %add14.i65, ptr %s.i43, align 4
  %26 = and i32 %add14.i65, 3
  %cmp16.i67 = icmp eq i32 %26, 0
  %27 = load i32, ptr %s.i43, align 4
  %add20.i71 = add nsw i32 %27, 5
  %28 = load i32, ptr %s.i43, align 4
  %sub18.i69 = add nsw i32 %28, -3
  %storemerge162 = select i1 %cmp16.i67, i32 %sub18.i69, i32 %add20.i71
  store i32 %storemerge162, ptr %s.i43, align 4
  %29 = load i32, ptr %x.addr.i42, align 4
  %and22.i73 = and i32 %29, 6
  %mul23.i74 = mul nuw nsw i32 %and22.i73, 9
  %add24.i75 = add nsw i32 %storemerge162, %mul23.i74
  store i32 %add24.i75, ptr %s.i43, align 4
  %rem25.i76 = srem i32 %add24.i75, 5
  %cmp26.i77 = icmp eq i32 %rem25.i76, 0
  %30 = load i32, ptr %s.i43, align 4
  %add30.i81 = add nsw i32 %30, 7
  %31 = load i32, ptr %s.i43, align 4
  %sub28.i79 = add nsw i32 %31, -4
  %storemerge163 = select i1 %cmp26.i77, i32 %sub28.i79, i32 %add30.i81
  store i32 %storemerge163, ptr %s.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i43)
  %and18 = and i32 %storemerge163, 255
  %32 = load i32, ptr %total, align 4
  %add19 = add nsw i32 %32, %and18
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i85)
  store i32 9, ptr %x.addr.i85, align 4
  %33 = load i32, ptr %x.addr.i85, align 4
  %xor.i89 = xor i32 %33, 8
  store i32 %xor.i89, ptr %retval.i83, align 4
  %34 = load i32, ptr %retval.i83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i85)
  %35 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %35, %34
  store i32 %add21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL20packet_054_recursivei(i32 noundef 3)
  %add23 = add nsw i32 %add21, %call22
  %add25 = add nsw i32 %add23, 3
  store i32 %add25, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i100)
  store i32 1, ptr %mode.addr.i98, align 4
  store i32 5, ptr %t.i100, align 4
  %36 = load i32, ptr %t.i100, align 4
  %37 = load i32, ptr %mode.addr.i98, align 4
  %add1.i103 = add nsw i32 %37, 1
  %mul.i104 = mul nsw i32 %36, %add1.i103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i100)
  %38 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %38, %mul.i104
  %add30 = add nsw i32 %add27, 26
  store i32 %add30, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i117)
  store i32 3, ptr %x.addr.i116, align 4
  store i32 21, ptr %s.i117, align 4
  %39 = load i32, ptr %s.i117, align 4
  %add1.i125 = add nsw i32 %39, 1
  store i32 %add1.i125, ptr %s.i117, align 4
  %40 = load i32, ptr %x.addr.i116, align 4
  %and2.i127 = and i32 %40, 4
  %mul3.i128 = mul nuw nsw i32 %and2.i127, 7
  %add4.i129 = add nsw i32 %add1.i125, %mul3.i128
  store i32 %add4.i129, ptr %s.i117, align 4
  %rem5.i130 = srem i32 %add4.i129, 3
  %cmp6.i131 = icmp eq i32 %rem5.i130, 0
  %41 = load i32, ptr %s.i117, align 4
  %add10.i135 = add nsw i32 %41, 3
  %42 = load i32, ptr %s.i117, align 4
  %sub8.i133 = add nsw i32 %42, -2
  %storemerge165 = select i1 %cmp6.i131, i32 %sub8.i133, i32 %add10.i135
  store i32 %storemerge165, ptr %s.i117, align 4
  %43 = load i32, ptr %x.addr.i116, align 4
  %and12.i137 = shl i32 %43, 3
  %mul13.i138 = and i32 %and12.i137, 40
  %add14.i139 = add nsw i32 %storemerge165, %mul13.i138
  store i32 %add14.i139, ptr %s.i117, align 4
  %44 = and i32 %add14.i139, 3
  %cmp16.i141 = icmp eq i32 %44, 0
  %45 = load i32, ptr %s.i117, align 4
  %add20.i145 = add nsw i32 %45, 5
  %46 = load i32, ptr %s.i117, align 4
  %sub18.i143 = add nsw i32 %46, -3
  %storemerge166 = select i1 %cmp16.i141, i32 %sub18.i143, i32 %add20.i145
  store i32 %storemerge166, ptr %s.i117, align 4
  %47 = load i32, ptr %x.addr.i116, align 4
  %and22.i147 = and i32 %47, 6
  %mul23.i148 = mul nuw nsw i32 %and22.i147, 9
  %add24.i149 = add nsw i32 %storemerge166, %mul23.i148
  store i32 %add24.i149, ptr %s.i117, align 4
  %rem25.i150 = srem i32 %add24.i149, 5
  %cmp26.i151 = icmp eq i32 %rem25.i150, 0
  %48 = load i32, ptr %s.i117, align 4
  %add30.i155 = add nsw i32 %48, 7
  %49 = load i32, ptr %s.i117, align 4
  %sub28.i153 = add nsw i32 %49, -4
  %storemerge167 = select i1 %cmp26.i151, i32 %sub28.i153, i32 %add30.i155
  store i32 %storemerge167, ptr %s.i117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i117)
  %50 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %50, %storemerge167
  store i32 %add32, ptr %total, align 4
  ret i32 %add32
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_054_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20packet_054_recursivei(i32 noundef %sub)
  %add = add nsw i32 %0, %call
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
