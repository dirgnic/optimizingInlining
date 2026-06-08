; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_058.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_058.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_058_kernel(i32 noundef %x) #0 {
entry:
  %mode.addr.i95 = alloca i32, align 4
  %out.i97 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr.i48 = alloca i32, align 4
  %s.i49 = alloca i32, align 4
  %x.addr.i36 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 103, ptr %total, align 4
  %call5 = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef 3)
  %add12 = add nsw i32 %call5, 302
  store i32 %add12, ptr %total, align 4
  %call13 = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef 3)
  %add14 = add nsw i32 %add12, %call13
  store i32 %add14, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 0, ptr %x.addr.i36, align 4
  store i32 0, ptr %s.i, align 4
  %0 = load i32, ptr %s.i, align 4
  %sub.i39 = add nsw i32 %0, -3
  store i32 %sub.i39, ptr %s.i, align 4
  %1 = load i32, ptr %x.addr.i36, align 4
  %and2.i = and i32 %1, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 5
  %add4.i = add nsw i32 %sub.i39, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %2 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %2, 3
  %3 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %3, -4
  %storemerge107 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge107, ptr %s.i, align 4
  %4 = load i32, ptr %x.addr.i36, align 4
  %and12.i = and i32 %4, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 6
  %add14.i = add nsw i32 %storemerge107, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %5 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %5, 0
  %6 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %6, 5
  %7 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %7, -5
  %storemerge108 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge108, ptr %s.i, align 4
  %8 = load i32, ptr %x.addr.i36, align 4
  %and22.i = and i32 %8, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 7
  %add24.i = add nsw i32 %storemerge108, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %9 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %9, 7
  %10 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %10, -6
  %storemerge109 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge109, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %11 = load i32, ptr %total, align 4
  %add16 = add nsw i32 %11, %storemerge109
  %add19 = add nsw i32 %add16, 15
  store i32 %add19, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i49)
  store i32 2, ptr %x.addr.i48, align 4
  store i32 10, ptr %s.i49, align 4
  %12 = load i32, ptr %s.i49, align 4
  %sub.i55 = add nsw i32 %12, -3
  store i32 %sub.i55, ptr %s.i49, align 4
  %13 = load i32, ptr %x.addr.i48, align 4
  %and2.i59 = and i32 %13, 4
  %mul3.i60 = mul nuw nsw i32 %and2.i59, 5
  %add4.i61 = add nsw i32 %sub.i55, %mul3.i60
  store i32 %add4.i61, ptr %s.i49, align 4
  %rem5.i62 = srem i32 %add4.i61, 3
  %cmp6.i63 = icmp eq i32 %rem5.i62, 0
  %14 = load i32, ptr %s.i49, align 4
  %add10.i67 = add nsw i32 %14, 3
  %15 = load i32, ptr %s.i49, align 4
  %sub8.i65 = add nsw i32 %15, -4
  %storemerge111 = select i1 %cmp6.i63, i32 %sub8.i65, i32 %add10.i67
  store i32 %storemerge111, ptr %s.i49, align 4
  %16 = load i32, ptr %x.addr.i48, align 4
  %and12.i69 = and i32 %16, 5
  %mul13.i70 = mul nuw nsw i32 %and12.i69, 6
  %add14.i71 = add nsw i32 %storemerge111, %mul13.i70
  store i32 %add14.i71, ptr %s.i49, align 4
  %17 = and i32 %add14.i71, 3
  %cmp16.i73 = icmp eq i32 %17, 0
  %18 = load i32, ptr %s.i49, align 4
  %add20.i77 = add nsw i32 %18, 5
  %19 = load i32, ptr %s.i49, align 4
  %sub18.i75 = add nsw i32 %19, -5
  %storemerge112 = select i1 %cmp16.i73, i32 %sub18.i75, i32 %add20.i77
  store i32 %storemerge112, ptr %s.i49, align 4
  %20 = load i32, ptr %x.addr.i48, align 4
  %and22.i79 = and i32 %20, 6
  %mul23.i80 = mul nuw nsw i32 %and22.i79, 7
  %add24.i81 = add nsw i32 %storemerge112, %mul23.i80
  store i32 %add24.i81, ptr %s.i49, align 4
  %rem25.i82 = srem i32 %add24.i81, 5
  %cmp26.i83 = icmp eq i32 %rem25.i82, 0
  %21 = load i32, ptr %s.i49, align 4
  %add30.i87 = add nsw i32 %21, 7
  %22 = load i32, ptr %s.i49, align 4
  %sub28.i85 = add nsw i32 %22, -6
  %storemerge113 = select i1 %cmp26.i83, i32 %sub28.i85, i32 %add30.i87
  store i32 %storemerge113, ptr %s.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i49)
  %23 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %23, %storemerge113
  store i32 %add21, ptr %total, align 4
  %call22 = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef 3)
  %add23 = add nsw i32 %add21, %call22
  store i32 %add23, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 0, ptr %mode.addr.i, align 4
  store i32 4, ptr %out.i, align 4
  %24 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %24, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_12.exit, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  %25 = load i32, ptr %out.i, align 4
  %xor.i94 = xor i32 %25, 4
  store i32 %xor.i94, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_12.exit: ; preds = %entry, %if.then3.i
  %26 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %27 = load i32, ptr %total, align 4
  %add25 = add nsw i32 %27, %26
  store i32 %add25, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i97)
  store i32 1, ptr %mode.addr.i95, align 4
  store i32 5, ptr %out.i97, align 4
  %28 = load i32, ptr %out.i97, align 4
  %add.i100 = add nsw i32 %28, 3
  store i32 %add.i100, ptr %out.i97, align 4
  %29 = load i32, ptr %mode.addr.i95, align 4
  %and1.i102 = and i32 %29, 2
  %tobool2.i103.not = icmp eq i32 %and1.i102, 0
  br i1 %tobool2.i103.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_13.exit, label %if.then3.i106

if.then3.i106:                                    ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_12.exit
  %30 = load i32, ptr %out.i97, align 4
  %xor.i105 = xor i32 %30, 4
  store i32 %xor.i105, ptr %out.i97, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_13.exit: ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_058_12.exit, %if.then3.i106
  %31 = load i32, ptr %out.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i97)
  %32 = load i32, ptr %total, align 4
  %add27 = add nsw i32 %32, %31
  store i32 %add27, ptr %total, align 4
  %call28 = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef 2)
  %and29 = and i32 %call28, 255
  %add30 = add nsw i32 %add27, %and29
  store i32 %add30, ptr %total, align 4
  %call31 = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef 3)
  %add32 = add nsw i32 %add30, %call31
  store i32 %add32, ptr %total, align 4
  ret i32 %add32
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_058_recursivei(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %cmp = icmp slt i32 %x, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %1 = load i32, ptr %x.addr, align 4
  %sub = add nsw i32 %1, -2
  %call = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_058_recursivei(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add, %cond.true ], [ %call2, %cond.false ]
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
