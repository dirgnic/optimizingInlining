; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_039.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_039.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_039_step(i32 noundef %x) #0 {
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
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 17, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i)
  store i32 1, ptr %mode.addr.i, align 4
  store i32 7, ptr %t.i, align 4
  %0 = load i32, ptr %t.i, align 4
  %1 = load i32, ptr %mode.addr.i, align 4
  %add1.i = add nsw i32 %1, 1
  %mul.i2 = mul nsw i32 %0, %add1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i)
  %2 = load i32, ptr %total, align 4
  %add2 = add nsw i32 %2, %mul.i2
  store i32 %add2, ptr %total, align 4
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %4, 55
  store i32 %add5, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 9, ptr %x.addr.i7, align 4
  store i32 11, ptr %s.i, align 4
  %5 = load i32, ptr %s.i, align 4
  %add1.i12 = add nsw i32 %5, 1
  store i32 %add1.i12, ptr %s.i, align 4
  %6 = load i32, ptr %x.addr.i7, align 4
  %and2.i = and i32 %6, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 3
  %add4.i = add nsw i32 %add1.i12, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %7 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %7, 3
  %8 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %8, -2
  %storemerge157 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge157, ptr %s.i, align 4
  %9 = load i32, ptr %x.addr.i7, align 4
  %and12.i = shl i32 %9, 2
  %mul13.i = and i32 %and12.i, 20
  %add14.i = add nsw i32 %storemerge157, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %10 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %10, 0
  %11 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %11, 5
  %12 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %12, -3
  %storemerge158 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge158, ptr %s.i, align 4
  %13 = load i32, ptr %x.addr.i7, align 4
  %and22.i = and i32 %13, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 5
  %add24.i = add nsw i32 %storemerge158, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %14 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %14, 7
  %15 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %15, -4
  %storemerge159 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge159, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %16 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %16, %storemerge159
  store i32 %add7, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  store i32 10, ptr %x.addr.i14, align 4
  %17 = load i32, ptr %x.addr.i14, align 4
  %xor.i17 = xor i32 %17, 10
  store i32 %xor.i17, ptr %retval.i, align 4
  %18 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  %19 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %19, %18
  store i32 %add9, ptr %total, align 4
  %20 = load i32, ptr %x.addr, align 4
  %21 = and i32 %20, 1
  %tobool12.not.not = icmp eq i32 %21, 0
  br i1 %tobool12.not.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %call14 = call noundef i32 @_ZL20matrix_039_recursivei(i32 noundef 1)
  %22 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %22, %call14
  store i32 %add15, ptr %total, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  %23 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %23, 7
  store i32 %add18, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i25)
  store i32 2, ptr %x.addr.i25, align 4
  %24 = load i32, ptr %x.addr.i25, align 4
  %xor.i29 = xor i32 %24, 17
  store i32 %xor.i29, ptr %retval.i23, align 4
  %25 = load i32, ptr %retval.i23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i25)
  %26 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %26, %25
  store i32 %add20, ptr %total, align 4
  %27 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %27, 1
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end16
  %28 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %28, 83
  store i32 %add26, ptr %total, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i43)
  store i32 4, ptr %x.addr.i42, align 4
  store i32 4, ptr %s.i43, align 4
  %29 = load i32, ptr %s.i43, align 4
  %sub.i49 = add nsw i32 %29, -1
  store i32 %sub.i49, ptr %s.i43, align 4
  %30 = load i32, ptr %x.addr.i42, align 4
  %and2.i53 = and i32 %30, 4
  %mul3.i54 = mul nuw nsw i32 %and2.i53, 3
  %add4.i55 = add nsw i32 %sub.i49, %mul3.i54
  store i32 %add4.i55, ptr %s.i43, align 4
  %rem5.i56 = srem i32 %add4.i55, 3
  %cmp6.i57 = icmp eq i32 %rem5.i56, 0
  %31 = load i32, ptr %s.i43, align 4
  %add10.i61 = add nsw i32 %31, 3
  %32 = load i32, ptr %s.i43, align 4
  %sub8.i59 = add nsw i32 %32, -2
  %storemerge161 = select i1 %cmp6.i57, i32 %sub8.i59, i32 %add10.i61
  store i32 %storemerge161, ptr %s.i43, align 4
  %33 = load i32, ptr %x.addr.i42, align 4
  %and12.i63 = shl i32 %33, 2
  %mul13.i64 = and i32 %and12.i63, 20
  %add14.i65 = add nsw i32 %storemerge161, %mul13.i64
  store i32 %add14.i65, ptr %s.i43, align 4
  %34 = and i32 %add14.i65, 3
  %cmp16.i67 = icmp eq i32 %34, 0
  %35 = load i32, ptr %s.i43, align 4
  %add20.i71 = add nsw i32 %35, 5
  %36 = load i32, ptr %s.i43, align 4
  %sub18.i69 = add nsw i32 %36, -3
  %storemerge162 = select i1 %cmp16.i67, i32 %sub18.i69, i32 %add20.i71
  store i32 %storemerge162, ptr %s.i43, align 4
  %37 = load i32, ptr %x.addr.i42, align 4
  %and22.i73 = and i32 %37, 6
  %mul23.i74 = mul nuw nsw i32 %and22.i73, 5
  %add24.i75 = add nsw i32 %storemerge162, %mul23.i74
  store i32 %add24.i75, ptr %s.i43, align 4
  %rem25.i76 = srem i32 %add24.i75, 5
  %cmp26.i77 = icmp eq i32 %rem25.i76, 0
  %38 = load i32, ptr %s.i43, align 4
  %add30.i81 = add nsw i32 %38, 7
  %39 = load i32, ptr %s.i43, align 4
  %sub28.i79 = add nsw i32 %39, -4
  %storemerge163 = select i1 %cmp26.i77, i32 %sub28.i79, i32 %add30.i81
  store i32 %storemerge163, ptr %s.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i43)
  %40 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %40, %storemerge163
  store i32 %add29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i85)
  store i32 5, ptr %x.addr.i85, align 4
  %41 = load i32, ptr %x.addr.i85, align 4
  %xor.i89 = xor i32 %41, 10
  store i32 %xor.i89, ptr %retval.i83, align 4
  %42 = load i32, ptr %retval.i83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i85)
  %43 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %43, %42
  store i32 %add31, ptr %total, align 4
  %44 = load i32, ptr %x.addr, align 4
  %45 = and i32 %44, 1
  %tobool34.not.not = icmp eq i32 %45, 0
  br i1 %tobool34.not.not, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end27
  %call36 = call noundef i32 @_ZL20matrix_039_recursivei(i32 noundef 3)
  %46 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %46, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end27
  %47 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %47, 44
  store i32 %add40, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i100)
  store i32 1, ptr %mode.addr.i98, align 4
  store i32 12, ptr %t.i100, align 4
  %48 = load i32, ptr %t.i100, align 4
  %49 = load i32, ptr %mode.addr.i98, align 4
  %add1.i103 = add nsw i32 %49, 1
  %mul.i104 = mul nsw i32 %48, %add1.i103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i98)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i100)
  %50 = load i32, ptr %total, align 4
  %add42 = add nsw i32 %50, %mul.i104
  store i32 %add42, ptr %total, align 4
  %51 = load i32, ptr %x.addr, align 4
  %and44 = and i32 %51, 1
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end38
  %52 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %52, 39
  store i32 %add48, ptr %total, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i117)
  store i32 10, ptr %x.addr.i116, align 4
  store i32 14, ptr %s.i117, align 4
  %53 = load i32, ptr %s.i117, align 4
  %sub.i123 = add nsw i32 %53, -1
  store i32 %sub.i123, ptr %s.i117, align 4
  %54 = load i32, ptr %x.addr.i116, align 4
  %and2.i127 = and i32 %54, 4
  %mul3.i128 = mul nuw nsw i32 %and2.i127, 3
  %add4.i129 = add nsw i32 %sub.i123, %mul3.i128
  store i32 %add4.i129, ptr %s.i117, align 4
  %rem5.i130 = srem i32 %add4.i129, 3
  %cmp6.i131 = icmp eq i32 %rem5.i130, 0
  %55 = load i32, ptr %s.i117, align 4
  %add10.i135 = add nsw i32 %55, 3
  %56 = load i32, ptr %s.i117, align 4
  %sub8.i133 = add nsw i32 %56, -2
  %storemerge165 = select i1 %cmp6.i131, i32 %sub8.i133, i32 %add10.i135
  store i32 %storemerge165, ptr %s.i117, align 4
  %57 = load i32, ptr %x.addr.i116, align 4
  %and12.i137 = shl i32 %57, 2
  %mul13.i138 = and i32 %and12.i137, 20
  %add14.i139 = add nsw i32 %storemerge165, %mul13.i138
  store i32 %add14.i139, ptr %s.i117, align 4
  %58 = and i32 %add14.i139, 3
  %cmp16.i141 = icmp eq i32 %58, 0
  %59 = load i32, ptr %s.i117, align 4
  %add20.i145 = add nsw i32 %59, 5
  %60 = load i32, ptr %s.i117, align 4
  %sub18.i143 = add nsw i32 %60, -3
  %storemerge166 = select i1 %cmp16.i141, i32 %sub18.i143, i32 %add20.i145
  store i32 %storemerge166, ptr %s.i117, align 4
  %61 = load i32, ptr %x.addr.i116, align 4
  %and22.i147 = and i32 %61, 6
  %mul23.i148 = mul nuw nsw i32 %and22.i147, 5
  %add24.i149 = add nsw i32 %storemerge166, %mul23.i148
  store i32 %add24.i149, ptr %s.i117, align 4
  %rem25.i150 = srem i32 %add24.i149, 5
  %cmp26.i151 = icmp eq i32 %rem25.i150, 0
  %62 = load i32, ptr %s.i117, align 4
  %add30.i155 = add nsw i32 %62, 7
  %63 = load i32, ptr %s.i117, align 4
  %sub28.i153 = add nsw i32 %63, -4
  %storemerge167 = select i1 %cmp26.i151, i32 %sub28.i153, i32 %add30.i155
  store i32 %storemerge167, ptr %s.i117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i117)
  %64 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %64, %storemerge167
  store i32 %add51, ptr %total, align 4
  ret i32 %add51
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_039_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %0, -1
  %call = call noundef i32 @_ZL20matrix_039_recursivei(i32 noundef %sub)
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
