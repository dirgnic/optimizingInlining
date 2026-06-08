; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_055.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_055.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_055_kernel(i32 noundef %x) #0 {
entry:
  %x.addr.i115 = alloca i32, align 4
  %s.i116 = alloca i32, align 4
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
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i, align 4
  %add.i = add nsw i32 %x, 2
  store i32 %add.i, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i2 = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add3 = add nsw i32 %2, %mul.i2
  %add5 = add nsw i32 %add3, 37
  store i32 %add5, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %3, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add6, ptr %x.addr.i7, align 4
  %and.i = and i32 %add6, 3
  %mul.i8 = mul nuw nsw i32 %and.i, 7
  %add.i9 = add nsw i32 %add6, %mul.i8
  store i32 %add.i9, ptr %s.i, align 4
  %4 = and i32 %add.i9, 1
  %cmp.i10 = icmp eq i32 %4, 0
  %5 = load i32, ptr %s.i, align 4
  %add1.i12 = add nsw i32 %5, 1
  %6 = load i32, ptr %s.i, align 4
  %sub.i11 = add nsw i32 %6, -2
  %storemerge = select i1 %cmp.i10, i32 %sub.i11, i32 %add1.i12
  store i32 %storemerge, ptr %s.i, align 4
  %7 = load i32, ptr %x.addr.i7, align 4
  %and2.i = shl i32 %7, 3
  %mul3.i = and i32 %and2.i, 32
  %add4.i = add nsw i32 %storemerge, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %8 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %8, 3
  %9 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %9, -3
  %storemerge156 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge156, ptr %s.i, align 4
  %10 = load i32, ptr %x.addr.i7, align 4
  %and12.i = and i32 %10, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 9
  %add14.i = add nsw i32 %storemerge156, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %11 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %11, 0
  %12 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %12, 5
  %13 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %13, -4
  %storemerge157 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge157, ptr %s.i, align 4
  %14 = load i32, ptr %x.addr.i7, align 4
  %and22.i = and i32 %14, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 10
  %add24.i = add nsw i32 %storemerge157, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %15 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %15, 7
  %16 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %16, -5
  %storemerge158 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge158, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %17 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %17, %storemerge158
  store i32 %add8, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  store i32 4, ptr %x.addr.i14, align 4
  %18 = load i32, ptr %x.addr.i14, align 4
  %xor.i17 = xor i32 %18, 9
  store i32 %xor.i17, ptr %retval.i, align 4
  %19 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  %and = and i32 %19, 255
  %20 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %20, %and
  store i32 %add10, ptr %total, align 4
  %call11 = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef 1)
  %add12 = add nsw i32 %add10, %call11
  %add14 = add nsw i32 %add12, 30
  store i32 %add14, ptr %total, align 4
  %21 = load i32, ptr %x.addr, align 4
  %add15 = add nsw i32 %21, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i25)
  store i32 %add15, ptr %x.addr.i25, align 4
  %22 = load i32, ptr %x.addr.i25, align 4
  %xor.i29 = xor i32 %22, 16
  store i32 %xor.i29, ptr %retval.i23, align 4
  %23 = load i32, ptr %retval.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i25)
  %24 = load i32, ptr %total, align 4
  %add17 = add nsw i32 %24, %23
  %add19 = add nsw i32 %add17, 14
  store i32 %add19, ptr %total, align 4
  %25 = load i32, ptr %x.addr, align 4
  %add20 = add nsw i32 %25, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i43)
  store i32 %add20, ptr %x.addr.i42, align 4
  %and.i44 = and i32 %add20, 3
  %mul.i45 = mul nuw nsw i32 %and.i44, 7
  %add.i46 = add nsw i32 %add20, %mul.i45
  store i32 %add.i46, ptr %s.i43, align 4
  %26 = and i32 %add.i46, 1
  %cmp.i48 = icmp eq i32 %26, 0
  %27 = load i32, ptr %s.i43, align 4
  %add1.i51 = add nsw i32 %27, 1
  %28 = load i32, ptr %s.i43, align 4
  %sub.i49 = add nsw i32 %28, -2
  %storemerge159 = select i1 %cmp.i48, i32 %sub.i49, i32 %add1.i51
  store i32 %storemerge159, ptr %s.i43, align 4
  %29 = load i32, ptr %x.addr.i42, align 4
  %and2.i53 = shl i32 %29, 3
  %mul3.i54 = and i32 %and2.i53, 32
  %add4.i55 = add nsw i32 %storemerge159, %mul3.i54
  store i32 %add4.i55, ptr %s.i43, align 4
  %rem5.i56 = srem i32 %add4.i55, 3
  %cmp6.i57 = icmp eq i32 %rem5.i56, 0
  %30 = load i32, ptr %s.i43, align 4
  %add10.i61 = add nsw i32 %30, 3
  %31 = load i32, ptr %s.i43, align 4
  %sub8.i59 = add nsw i32 %31, -3
  %storemerge160 = select i1 %cmp6.i57, i32 %sub8.i59, i32 %add10.i61
  store i32 %storemerge160, ptr %s.i43, align 4
  %32 = load i32, ptr %x.addr.i42, align 4
  %and12.i63 = and i32 %32, 5
  %mul13.i64 = mul nuw nsw i32 %and12.i63, 9
  %add14.i65 = add nsw i32 %storemerge160, %mul13.i64
  store i32 %add14.i65, ptr %s.i43, align 4
  %33 = and i32 %add14.i65, 3
  %cmp16.i67 = icmp eq i32 %33, 0
  %34 = load i32, ptr %s.i43, align 4
  %add20.i71 = add nsw i32 %34, 5
  %35 = load i32, ptr %s.i43, align 4
  %sub18.i69 = add nsw i32 %35, -4
  %storemerge161 = select i1 %cmp16.i67, i32 %sub18.i69, i32 %add20.i71
  store i32 %storemerge161, ptr %s.i43, align 4
  %36 = load i32, ptr %x.addr.i42, align 4
  %and22.i73 = and i32 %36, 6
  %mul23.i74 = mul nuw nsw i32 %and22.i73, 10
  %add24.i75 = add nsw i32 %storemerge161, %mul23.i74
  store i32 %add24.i75, ptr %s.i43, align 4
  %rem25.i76 = srem i32 %add24.i75, 5
  %cmp26.i77 = icmp eq i32 %rem25.i76, 0
  %37 = load i32, ptr %s.i43, align 4
  %add30.i81 = add nsw i32 %37, 7
  %38 = load i32, ptr %s.i43, align 4
  %sub28.i79 = add nsw i32 %38, -5
  %storemerge162 = select i1 %cmp26.i77, i32 %sub28.i79, i32 %add30.i81
  store i32 %storemerge162, ptr %s.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i43)
  %and22 = and i32 %storemerge162, 255
  %39 = load i32, ptr %total, align 4
  %add23 = add nsw i32 %39, %and22
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i85)
  store i32 3, ptr %x.addr.i85, align 4
  %40 = load i32, ptr %x.addr.i85, align 4
  %xor.i89 = xor i32 %40, 9
  store i32 %xor.i89, ptr %retval.i83, align 4
  %41 = load i32, ptr %retval.i83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i85)
  %42 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %42, %41
  store i32 %add25, ptr %total, align 4
  %call26 = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef 3)
  %add27 = add nsw i32 %add25, %call26
  %add29 = add nsw i32 %add27, 14
  store i32 %add29, ptr %total, align 4
  %43 = load i32, ptr %x.addr, align 4
  %add30 = add nsw i32 %43, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i100)
  store i32 1, ptr %mode.addr.i98, align 4
  store i32 %add30, ptr %t.i100, align 4
  %44 = load i32, ptr %t.i100, align 4
  %45 = load i32, ptr %mode.addr.i98, align 4
  %add1.i102 = add nsw i32 %45, 1
  %mul.i103 = mul nsw i32 %44, %add1.i102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i100)
  %46 = load i32, ptr %total, align 4
  %add32 = add nsw i32 %46, %mul.i103
  %add35 = add nsw i32 %add32, 41
  store i32 %add35, ptr %total, align 4
  %47 = load i32, ptr %x.addr, align 4
  %add36 = add nsw i32 %47, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i116)
  store i32 %add36, ptr %x.addr.i115, align 4
  %and.i117 = and i32 %add36, 3
  %mul.i118 = mul nuw nsw i32 %and.i117, 7
  %add.i119 = add nsw i32 %add36, %mul.i118
  store i32 %add.i119, ptr %s.i116, align 4
  %48 = and i32 %add.i119, 1
  %cmp.i121 = icmp eq i32 %48, 0
  %49 = load i32, ptr %s.i116, align 4
  %add1.i124 = add nsw i32 %49, 1
  %50 = load i32, ptr %s.i116, align 4
  %sub.i122 = add nsw i32 %50, -2
  %storemerge163 = select i1 %cmp.i121, i32 %sub.i122, i32 %add1.i124
  store i32 %storemerge163, ptr %s.i116, align 4
  %51 = load i32, ptr %x.addr.i115, align 4
  %and2.i126 = shl i32 %51, 3
  %mul3.i127 = and i32 %and2.i126, 32
  %add4.i128 = add nsw i32 %storemerge163, %mul3.i127
  store i32 %add4.i128, ptr %s.i116, align 4
  %rem5.i129 = srem i32 %add4.i128, 3
  %cmp6.i130 = icmp eq i32 %rem5.i129, 0
  %52 = load i32, ptr %s.i116, align 4
  %add10.i134 = add nsw i32 %52, 3
  %53 = load i32, ptr %s.i116, align 4
  %sub8.i132 = add nsw i32 %53, -3
  %storemerge164 = select i1 %cmp6.i130, i32 %sub8.i132, i32 %add10.i134
  store i32 %storemerge164, ptr %s.i116, align 4
  %54 = load i32, ptr %x.addr.i115, align 4
  %and12.i136 = and i32 %54, 5
  %mul13.i137 = mul nuw nsw i32 %and12.i136, 9
  %add14.i138 = add nsw i32 %storemerge164, %mul13.i137
  store i32 %add14.i138, ptr %s.i116, align 4
  %55 = and i32 %add14.i138, 3
  %cmp16.i140 = icmp eq i32 %55, 0
  %56 = load i32, ptr %s.i116, align 4
  %add20.i144 = add nsw i32 %56, 5
  %57 = load i32, ptr %s.i116, align 4
  %sub18.i142 = add nsw i32 %57, -4
  %storemerge165 = select i1 %cmp16.i140, i32 %sub18.i142, i32 %add20.i144
  store i32 %storemerge165, ptr %s.i116, align 4
  %58 = load i32, ptr %x.addr.i115, align 4
  %and22.i146 = and i32 %58, 6
  %mul23.i147 = mul nuw nsw i32 %and22.i146, 10
  %add24.i148 = add nsw i32 %storemerge165, %mul23.i147
  store i32 %add24.i148, ptr %s.i116, align 4
  %rem25.i149 = srem i32 %add24.i148, 5
  %cmp26.i150 = icmp eq i32 %rem25.i149, 0
  %59 = load i32, ptr %s.i116, align 4
  %add30.i154 = add nsw i32 %59, 7
  %60 = load i32, ptr %s.i116, align 4
  %sub28.i152 = add nsw i32 %60, -5
  %storemerge166 = select i1 %cmp26.i150, i32 %sub28.i152, i32 %add30.i154
  store i32 %storemerge166, ptr %s.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i116)
  %61 = load i32, ptr %total, align 4
  %add38 = add nsw i32 %61, %storemerge166
  store i32 %add38, ptr %total, align 4
  ret i32 %add38
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_055_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_055_recursivei(i32 noundef %sub)
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
