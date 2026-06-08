; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_042.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_042.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @packet_042_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i95 = alloca i32, align 4
  %out.i97 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr.i48 = alloca i32, align 4
  %s.i49 = alloca i32, align 4
  %x.addr.i36 = alloca i32, align 4
  %s.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %add.i = shl i32 %x, 2
  %sub.i = add i32 %add.i, 45
  %and.i = and i32 %x, 15
  %xor.i = xor i32 %sub.i, %and.i
  store i32 %xor.i, ptr %total, align 4
  %add2 = add nsw i32 %x, 1
  %add.i3 = shl i32 %x, 2
  %sub.i5 = add i32 %add.i3, 52
  %and.i6 = and i32 %add2, 15
  %xor.i7 = xor i32 %sub.i5, %and.i6
  %add4 = add nsw i32 %xor.i, %xor.i7
  store i32 %add4, ptr %total, align 4
  %0 = load i32, ptr %x.addr, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %add6 = add nsw i32 %1, 2
  %add.i10 = shl i32 %1, 2
  %sub.i12 = add i32 %add.i10, 15
  %and.i13 = and i32 %add6, 15
  %xor.i14 = xor i32 %sub.i12, %and.i13
  %2 = load i32, ptr %total, align 4
  %add8 = add nsw i32 %2, %xor.i14
  store i32 %add8, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call9 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %3 = load i32, ptr %total, align 4
  %add10 = add nsw i32 %3, %call9
  store i32 %add10, ptr %total, align 4
  %4 = load i32, ptr %x.addr, align 4
  %add11 = add nsw i32 %4, 4
  %add.i17 = shl i32 %4, 2
  %sub.i19 = add i32 %add.i17, 29
  %and.i20 = and i32 %add11, 15
  %xor.i21 = xor i32 %sub.i19, %and.i20
  %5 = load i32, ptr %total, align 4
  %add13 = add nsw i32 %5, %xor.i21
  store i32 %add13, ptr %total, align 4
  %6 = load i32, ptr %x.addr, align 4
  %7 = and i32 %6, 1
  %tobool16.not.not = icmp eq i32 %7, 0
  br i1 %tobool16.not.not, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end
  %8 = load i32, ptr %x.addr, align 4
  %add18 = add nsw i32 %8, 5
  %add.i24 = shl i32 %8, 2
  %sub.i26 = add i32 %add.i24, 36
  %and.i27 = and i32 %add18, 15
  %xor.i28 = xor i32 %sub.i26, %and.i27
  %9 = load i32, ptr %total, align 4
  %add20 = add nsw i32 %9, %xor.i28
  store i32 %add20, ptr %total, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end
  %10 = load i32, ptr %x.addr, align 4
  %add22 = add nsw i32 %10, 6
  %add.i31 = shl i32 %10, 2
  %sub.i33 = add i32 %add.i31, 43
  %and.i34 = and i32 %add22, 15
  %xor.i35 = xor i32 %sub.i33, %and.i34
  %11 = load i32, ptr %total, align 4
  %add24 = add nsw i32 %11, %xor.i35
  store i32 %add24, ptr %total, align 4
  %call25 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %add26 = add nsw i32 %add24, %call25
  store i32 %add26, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and28 = and i32 %12, 1
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end21
  %13 = load i32, ptr %x.addr, align 4
  %add31 = add nsw i32 %13, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 %add31, ptr %x.addr.i36, align 4
  %and.i37 = and i32 %13, 3
  %mul.i = mul nuw nsw i32 %and.i37, 10
  %add.i38 = add nsw i32 %add31, %mul.i
  store i32 %add.i38, ptr %s.i, align 4
  %14 = and i32 %add.i38, 1
  %cmp.i = icmp eq i32 %14, 0
  %15 = load i32, ptr %s.i, align 4
  %add1.i = add nsw i32 %15, 1
  %16 = load i32, ptr %s.i, align 4
  %sub.i39 = add nsw i32 %16, -2
  %storemerge110 = select i1 %cmp.i, i32 %sub.i39, i32 %add1.i
  store i32 %storemerge110, ptr %s.i, align 4
  %17 = load i32, ptr %x.addr.i36, align 4
  %and2.i = and i32 %17, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 11
  %add4.i = add nsw i32 %storemerge110, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %18 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %18, 3
  %19 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %19, -3
  %storemerge111 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge111, ptr %s.i, align 4
  %20 = load i32, ptr %x.addr.i36, align 4
  %and12.i = and i32 %20, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 12
  %add14.i = add nsw i32 %storemerge111, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %21 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %21, 0
  %22 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %22, 5
  %23 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %23, -4
  %storemerge112 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge112, ptr %s.i, align 4
  %24 = load i32, ptr %x.addr.i36, align 4
  %and22.i = and i32 %24, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 13
  %add24.i = add nsw i32 %storemerge112, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %25 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %25, 7
  %26 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %26, -5
  %storemerge113 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge113, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %27 = load i32, ptr %total, align 4
  %add33 = add nsw i32 %27, %storemerge113
  store i32 %add33, ptr %total, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end21
  %28 = load i32, ptr %x.addr, align 4
  %29 = mul i32 %28, 3
  %add.i43 = add i32 %29, 86
  %shr.i = ashr i32 %add.i43, 1
  %xor.i44 = xor i32 %add.i43, %shr.i
  %mul1.i = shl nsw i32 %xor.i44, 2
  %add2.i = add nsw i32 %mul1.i, 60
  %shr3.i = ashr exact i32 %add2.i, 2
  %xor4.i = xor i32 %add2.i, %shr3.i
  %mul5.i = mul nsw i32 %xor4.i, 5
  %add6.i = add nsw i32 %mul5.i, 61
  %shr7.i = ashr i32 %add6.i, 3
  %xor8.i = xor i32 %add6.i, %shr7.i
  %mul9.i = mul nsw i32 %xor8.i, 6
  %add10.i45 = add nsw i32 %mul9.i, 62
  %shr11.i = ashr exact i32 %add10.i45, 1
  %xor12.i = xor i32 %add10.i45, %shr11.i
  %mul13.i46 = mul nsw i32 %xor12.i, 7
  %add14.i47 = add nsw i32 %mul13.i46, 63
  %shr15.i = ashr i32 %add14.i47, 2
  %xor16.i = xor i32 %add14.i47, %shr15.i
  %mul17.i = shl nsw i32 %xor16.i, 3
  %add18.i = add nsw i32 %mul17.i, 64
  %shr19.i = ashr exact i32 %add18.i, 3
  %xor20.i = xor i32 %add18.i, %shr19.i
  %mul21.i = mul nsw i32 %xor20.i, 9
  %add22.i = add nsw i32 %mul21.i, 65
  %shr23.i = ashr i32 %add22.i, 1
  %xor24.i = xor i32 %add22.i, %shr23.i
  %mul25.i = mul nsw i32 %xor24.i, 10
  %add26.i = add nsw i32 %mul25.i, 66
  %shr27.i = ashr i32 %add26.i, 2
  %xor28.i = xor i32 %add26.i, %shr27.i
  %30 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %30, %xor28.i
  store i32 %add37, ptr %total, align 4
  %31 = load i32, ptr %x.addr, align 4
  %add38 = add nsw i32 %31, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i49)
  store i32 %add38, ptr %x.addr.i48, align 4
  %and.i50 = and i32 %add38, 3
  %mul.i51 = mul nuw nsw i32 %and.i50, 10
  %add.i52 = add nsw i32 %add38, %mul.i51
  store i32 %add.i52, ptr %s.i49, align 4
  %32 = and i32 %add.i52, 1
  %cmp.i54 = icmp eq i32 %32, 0
  %33 = load i32, ptr %s.i49, align 4
  %add1.i57 = add nsw i32 %33, 1
  %34 = load i32, ptr %s.i49, align 4
  %sub.i55 = add nsw i32 %34, -2
  %storemerge = select i1 %cmp.i54, i32 %sub.i55, i32 %add1.i57
  store i32 %storemerge, ptr %s.i49, align 4
  %35 = load i32, ptr %x.addr.i48, align 4
  %and2.i59 = and i32 %35, 4
  %mul3.i60 = mul nuw nsw i32 %and2.i59, 11
  %add4.i61 = add nsw i32 %storemerge, %mul3.i60
  store i32 %add4.i61, ptr %s.i49, align 4
  %rem5.i62 = srem i32 %add4.i61, 3
  %cmp6.i63 = icmp eq i32 %rem5.i62, 0
  %36 = load i32, ptr %s.i49, align 4
  %add10.i67 = add nsw i32 %36, 3
  %37 = load i32, ptr %s.i49, align 4
  %sub8.i65 = add nsw i32 %37, -3
  %storemerge107 = select i1 %cmp6.i63, i32 %sub8.i65, i32 %add10.i67
  store i32 %storemerge107, ptr %s.i49, align 4
  %38 = load i32, ptr %x.addr.i48, align 4
  %and12.i69 = and i32 %38, 5
  %mul13.i70 = mul nuw nsw i32 %and12.i69, 12
  %add14.i71 = add nsw i32 %storemerge107, %mul13.i70
  store i32 %add14.i71, ptr %s.i49, align 4
  %39 = and i32 %add14.i71, 3
  %cmp16.i73 = icmp eq i32 %39, 0
  %40 = load i32, ptr %s.i49, align 4
  %add20.i77 = add nsw i32 %40, 5
  %41 = load i32, ptr %s.i49, align 4
  %sub18.i75 = add nsw i32 %41, -4
  %storemerge108 = select i1 %cmp16.i73, i32 %sub18.i75, i32 %add20.i77
  store i32 %storemerge108, ptr %s.i49, align 4
  %42 = load i32, ptr %x.addr.i48, align 4
  %and22.i79 = and i32 %42, 6
  %mul23.i80 = mul nuw nsw i32 %and22.i79, 13
  %add24.i81 = add nsw i32 %storemerge108, %mul23.i80
  store i32 %add24.i81, ptr %s.i49, align 4
  %rem25.i82 = srem i32 %add24.i81, 5
  %cmp26.i83 = icmp eq i32 %rem25.i82, 0
  %43 = load i32, ptr %s.i49, align 4
  %add30.i87 = add nsw i32 %43, 7
  %44 = load i32, ptr %s.i49, align 4
  %sub28.i85 = add nsw i32 %44, -5
  %storemerge109 = select i1 %cmp26.i83, i32 %sub28.i85, i32 %add30.i87
  store i32 %storemerge109, ptr %s.i49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i49)
  %45 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %45, %storemerge109
  store i32 %add40, ptr %total, align 4
  %46 = load i32, ptr %x.addr, align 4
  %47 = and i32 %46, 1
  %tobool43.not.not = icmp eq i32 %47, 0
  br i1 %tobool43.not.not, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end34
  %call45 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %48 = load i32, ptr %total, align 4
  %add46 = add nsw i32 %48, %call45
  store i32 %add46, ptr %total, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end34
  %49 = load i32, ptr %x.addr, align 4
  %and48 = and i32 %49, 3
  %add49 = add nsw i32 %49, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 %and48, ptr %mode.addr.i, align 4
  store i32 %add49, ptr %out.i, align 4
  %and.i90 = and i32 %49, 1
  %tobool.i.not = icmp eq i32 %and.i90, 0
  br i1 %tobool.i.not, label %if.end.i93, label %if.then.i92

if.then.i92:                                      ; preds = %if.end47
  %50 = load i32, ptr %out.i, align 4
  %add.i91 = add nsw i32 %50, 3
  store i32 %add.i91, ptr %out.i, align 4
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.then.i92, %if.end47
  %51 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %51, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_12.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i93
  %52 = load i32, ptr %out.i, align 4
  %xor.i94 = xor i32 %52, 7
  store i32 %xor.i94, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_12.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_12.exit: ; preds = %if.end.i93, %if.then3.i
  %53 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %54 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %54, %53
  store i32 %add51, ptr %total, align 4
  %55 = load i32, ptr %x.addr, align 4
  %and52 = and i32 %55, 3
  %add53 = add nsw i32 %55, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i97)
  store i32 %and52, ptr %mode.addr.i95, align 4
  store i32 %add53, ptr %out.i97, align 4
  %and.i98 = and i32 %55, 1
  %tobool.i99.not = icmp eq i32 %and.i98, 0
  br i1 %tobool.i99.not, label %if.end.i104, label %if.then.i101

if.then.i101:                                     ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_12.exit
  %56 = load i32, ptr %out.i97, align 4
  %add.i100 = add nsw i32 %56, 3
  store i32 %add.i100, ptr %out.i97, align 4
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.then.i101, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_12.exit
  %57 = load i32, ptr %mode.addr.i95, align 4
  %and1.i102 = and i32 %57, 2
  %tobool2.i103.not = icmp eq i32 %and1.i102, 0
  br i1 %tobool2.i103.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_13.exit, label %if.then3.i106

if.then3.i106:                                    ; preds = %if.end.i104
  %58 = load i32, ptr %out.i97, align 4
  %xor.i105 = xor i32 %58, 7
  store i32 %xor.i105, ptr %out.i97, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_13.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_13.exit: ; preds = %if.end.i104, %if.then3.i106
  %59 = load i32, ptr %out.i97, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i95)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i97)
  %60 = load i32, ptr %total, align 4
  %add55 = add nsw i32 %60, %59
  store i32 %add55, ptr %total, align 4
  %61 = load i32, ptr %x.addr, align 4
  %and57 = and i32 %61, 1
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end62, label %if.then59

if.then59:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_13.exit
  %call60 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 2)
  %62 = load i32, ptr %total, align 4
  %add61 = add nsw i32 %62, %call60
  store i32 %add61, ptr %total, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_042_13.exit
  %call63 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef 3)
  %63 = load i32, ptr %total, align 4
  %add64 = add nsw i32 %63, %call63
  store i32 %add64, ptr %total, align 4
  ret i32 %add64
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20packet_042_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20packet_042_recursivei(i32 noundef %sub1)
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
