; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_generated_inlining_generated_043.prepared.ll'
source_filename = "./source_snapshot/DCMTK/generated_inlining/generated_043.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: mustprogress ssp uwtable
define i32 @matrix_043_step(i32 noundef %x) #0 {
entry:
  %mode.addr.i263 = alloca i32, align 4
  %out.i265 = alloca i32, align 4
  %x.addr.i188 = alloca i32, align 4
  %s.i189 = alloca i32, align 4
  %mode.addr.i176 = alloca i32, align 4
  %out.i178 = alloca i32, align 4
  %x.addr.i101 = alloca i32, align 4
  %s.i102 = alloca i32, align 4
  %mode.addr.i89 = alloca i32, align 4
  %out.i91 = alloca i32, align 4
  %x.addr.i14 = alloca i32, align 4
  %s.i15 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  %out.i = alloca i32, align 4
  %x.addr.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i)
  store i32 10, ptr %x.addr.i, align 4
  store i32 32, ptr %s.i, align 4
  %0 = load i32, ptr %s.i, align 4
  %sub.i = add nsw i32 %0, -3
  store i32 %sub.i, ptr %s.i, align 4
  %1 = load i32, ptr %x.addr.i, align 4
  %and2.i = and i32 %1, 4
  %mul3.i = mul nuw nsw i32 %and2.i, 12
  %add4.i = add nsw i32 %sub.i, %mul3.i
  store i32 %add4.i, ptr %s.i, align 4
  %rem5.i = srem i32 %add4.i, 3
  %cmp6.i = icmp eq i32 %rem5.i, 0
  %2 = load i32, ptr %s.i, align 4
  %add10.i = add nsw i32 %2, 3
  %3 = load i32, ptr %s.i, align 4
  %sub8.i = add nsw i32 %3, -4
  %storemerge275 = select i1 %cmp6.i, i32 %sub8.i, i32 %add10.i
  store i32 %storemerge275, ptr %s.i, align 4
  %4 = load i32, ptr %x.addr.i, align 4
  %and12.i = and i32 %4, 5
  %mul13.i = mul nuw nsw i32 %and12.i, 13
  %add14.i = add nsw i32 %storemerge275, %mul13.i
  store i32 %add14.i, ptr %s.i, align 4
  %5 = and i32 %add14.i, 3
  %cmp16.i = icmp eq i32 %5, 0
  %6 = load i32, ptr %s.i, align 4
  %add20.i = add nsw i32 %6, 5
  %7 = load i32, ptr %s.i, align 4
  %sub18.i = add nsw i32 %7, -5
  %storemerge276 = select i1 %cmp16.i, i32 %sub18.i, i32 %add20.i
  store i32 %storemerge276, ptr %s.i, align 4
  %8 = load i32, ptr %x.addr.i, align 4
  %and22.i = and i32 %8, 6
  %mul23.i = mul nuw nsw i32 %and22.i, 14
  %add24.i = add nsw i32 %storemerge276, %mul23.i
  store i32 %add24.i, ptr %s.i, align 4
  %rem25.i = srem i32 %add24.i, 5
  %cmp26.i = icmp eq i32 %rem25.i, 0
  %9 = load i32, ptr %s.i, align 4
  %add30.i = add nsw i32 %9, 7
  %10 = load i32, ptr %s.i, align 4
  %sub28.i = add nsw i32 %10, -6
  %storemerge277 = select i1 %cmp26.i, i32 %sub28.i, i32 %add30.i
  store i32 %storemerge277, ptr %s.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i)
  %11 = load i32, ptr %total, align 4
  %add = add nsw i32 %11, %storemerge277
  %add2 = add nsw i32 %add, 85065633
  store i32 %add2, ptr %total, align 4
  %12 = load i32, ptr %x.addr, align 4
  %and = and i32 %12, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i)
  store i32 2, ptr %mode.addr.i, align 4
  store i32 1, ptr %out.i, align 4
  %13 = load i32, ptr %mode.addr.i, align 4
  %and1.i = and i32 %13, 2
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.then
  %14 = load i32, ptr %out.i, align 4
  %xor.i13 = xor i32 %14, 8
  store i32 %xor.i13, ptr %out.i, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit: ; preds = %if.then, %if.then3.i
  %15 = load i32, ptr %out.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i)
  %16 = load i32, ptr %total, align 4
  %add5 = add nsw i32 %16, %15
  store i32 %add5, ptr %total, align 4
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_2.exit, %entry
  %call6 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %17 = load i32, ptr %total, align 4
  %add7 = add nsw i32 %17, %call6
  store i32 %add7, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i15)
  store i32 3, ptr %x.addr.i14, align 4
  store i32 36, ptr %s.i15, align 4
  %18 = load i32, ptr %s.i15, align 4
  %sub.i21 = add nsw i32 %18, -3
  store i32 %sub.i21, ptr %s.i15, align 4
  %19 = load i32, ptr %x.addr.i14, align 4
  %and2.i25 = and i32 %19, 4
  %mul3.i26 = mul nuw nsw i32 %and2.i25, 12
  %add4.i27 = add nsw i32 %sub.i21, %mul3.i26
  store i32 %add4.i27, ptr %s.i15, align 4
  %rem5.i28 = srem i32 %add4.i27, 3
  %cmp6.i29 = icmp eq i32 %rem5.i28, 0
  %20 = load i32, ptr %s.i15, align 4
  %add10.i33 = add nsw i32 %20, 3
  %21 = load i32, ptr %s.i15, align 4
  %sub8.i31 = add nsw i32 %21, -4
  %storemerge279 = select i1 %cmp6.i29, i32 %sub8.i31, i32 %add10.i33
  store i32 %storemerge279, ptr %s.i15, align 4
  %22 = load i32, ptr %x.addr.i14, align 4
  %and12.i35 = and i32 %22, 5
  %mul13.i36 = mul nuw nsw i32 %and12.i35, 13
  %add14.i37 = add nsw i32 %storemerge279, %mul13.i36
  store i32 %add14.i37, ptr %s.i15, align 4
  %23 = and i32 %add14.i37, 3
  %cmp16.i39 = icmp eq i32 %23, 0
  %24 = load i32, ptr %s.i15, align 4
  %add20.i43 = add nsw i32 %24, 5
  %25 = load i32, ptr %s.i15, align 4
  %sub18.i41 = add nsw i32 %25, -5
  %storemerge280 = select i1 %cmp16.i39, i32 %sub18.i41, i32 %add20.i43
  store i32 %storemerge280, ptr %s.i15, align 4
  %26 = load i32, ptr %x.addr.i14, align 4
  %and22.i45 = and i32 %26, 6
  %mul23.i46 = mul nuw nsw i32 %and22.i45, 14
  %add24.i47 = add nsw i32 %storemerge280, %mul23.i46
  store i32 %add24.i47, ptr %s.i15, align 4
  %rem25.i48 = srem i32 %add24.i47, 5
  %cmp26.i49 = icmp eq i32 %rem25.i48, 0
  %27 = load i32, ptr %s.i15, align 4
  %add30.i53 = add nsw i32 %27, 7
  %28 = load i32, ptr %s.i15, align 4
  %sub28.i51 = add nsw i32 %28, -6
  %storemerge281 = select i1 %cmp26.i49, i32 %sub28.i51, i32 %add30.i53
  store i32 %storemerge281, ptr %s.i15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i15)
  %29 = load i32, ptr %total, align 4
  %add9 = add nsw i32 %29, %storemerge281
  store i32 %add9, ptr %total, align 4
  %30 = load i32, ptr %x.addr, align 4
  %31 = and i32 %30, 1
  %tobool12.not.not = icmp eq i32 %31, 0
  br i1 %tobool12.not.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %32 = load i32, ptr %total, align 4
  %add15 = add nsw i32 %32, 66866842
  store i32 %add15, ptr %total, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i91)
  store i32 0, ptr %mode.addr.i89, align 4
  store i32 5, ptr %out.i91, align 4
  %33 = load i32, ptr %mode.addr.i89, align 4
  %and1.i96 = and i32 %33, 2
  %tobool2.i97.not = icmp eq i32 %and1.i96, 0
  br i1 %tobool2.i97.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6.exit, label %if.then3.i100

if.then3.i100:                                    ; preds = %if.end16
  %34 = load i32, ptr %out.i91, align 4
  %xor.i99 = xor i32 %34, 8
  store i32 %xor.i99, ptr %out.i91, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6.exit: ; preds = %if.end16, %if.then3.i100
  %35 = load i32, ptr %out.i91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i89)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i91)
  %36 = load i32, ptr %total, align 4
  %add18 = add nsw i32 %36, %35
  store i32 %add18, ptr %total, align 4
  %call19 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %add20 = add nsw i32 %add18, %call19
  store i32 %add20, ptr %total, align 4
  %37 = load i32, ptr %x.addr, align 4
  %and22 = and i32 %37, 1
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i101)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i102)
  store i32 7, ptr %x.addr.i101, align 4
  store i32 40, ptr %s.i102, align 4
  %38 = load i32, ptr %s.i102, align 4
  %sub.i108 = add nsw i32 %38, -3
  store i32 %sub.i108, ptr %s.i102, align 4
  %39 = load i32, ptr %x.addr.i101, align 4
  %and2.i112 = and i32 %39, 4
  %mul3.i113 = mul nuw nsw i32 %and2.i112, 12
  %add4.i114 = add nsw i32 %sub.i108, %mul3.i113
  store i32 %add4.i114, ptr %s.i102, align 4
  %rem5.i115 = srem i32 %add4.i114, 3
  %cmp6.i116 = icmp eq i32 %rem5.i115, 0
  %40 = load i32, ptr %s.i102, align 4
  %add10.i120 = add nsw i32 %40, 3
  %41 = load i32, ptr %s.i102, align 4
  %sub8.i118 = add nsw i32 %41, -4
  %storemerge287 = select i1 %cmp6.i116, i32 %sub8.i118, i32 %add10.i120
  store i32 %storemerge287, ptr %s.i102, align 4
  %42 = load i32, ptr %x.addr.i101, align 4
  %and12.i122 = and i32 %42, 5
  %mul13.i123 = mul nuw nsw i32 %and12.i122, 13
  %add14.i124 = add nsw i32 %storemerge287, %mul13.i123
  store i32 %add14.i124, ptr %s.i102, align 4
  %43 = and i32 %add14.i124, 3
  %cmp16.i126 = icmp eq i32 %43, 0
  %44 = load i32, ptr %s.i102, align 4
  %add20.i130 = add nsw i32 %44, 5
  %45 = load i32, ptr %s.i102, align 4
  %sub18.i128 = add nsw i32 %45, -5
  %storemerge288 = select i1 %cmp16.i126, i32 %sub18.i128, i32 %add20.i130
  store i32 %storemerge288, ptr %s.i102, align 4
  %46 = load i32, ptr %x.addr.i101, align 4
  %and22.i132 = and i32 %46, 6
  %mul23.i133 = mul nuw nsw i32 %and22.i132, 14
  %add24.i134 = add nsw i32 %storemerge288, %mul23.i133
  store i32 %add24.i134, ptr %s.i102, align 4
  %rem25.i135 = srem i32 %add24.i134, 5
  %cmp26.i136 = icmp eq i32 %rem25.i135, 0
  %47 = load i32, ptr %s.i102, align 4
  %add30.i140 = add nsw i32 %47, 7
  %48 = load i32, ptr %s.i102, align 4
  %sub28.i138 = add nsw i32 %48, -6
  %storemerge289 = select i1 %cmp26.i136, i32 %sub28.i138, i32 %add30.i140
  store i32 %storemerge289, ptr %s.i102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i101)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i102)
  %49 = load i32, ptr %total, align 4
  %add26 = add nsw i32 %49, %storemerge289
  store i32 %add26, ptr %total, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_6.exit
  %50 = load i32, ptr %total, align 4
  %add29 = add nsw i32 %50, 209143396
  store i32 %add29, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i176)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i178)
  store i32 1, ptr %mode.addr.i176, align 4
  store i32 9, ptr %out.i178, align 4
  %51 = load i32, ptr %out.i178, align 4
  %add.i181 = add nsw i32 %51, 4
  store i32 %add.i181, ptr %out.i178, align 4
  %52 = load i32, ptr %mode.addr.i176, align 4
  %and1.i183 = and i32 %52, 2
  %tobool2.i184.not = icmp eq i32 %and1.i183, 0
  br i1 %tobool2.i184.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10.exit, label %if.then3.i187

if.then3.i187:                                    ; preds = %if.end27
  %53 = load i32, ptr %out.i178, align 4
  %xor.i186 = xor i32 %53, 8
  store i32 %xor.i186, ptr %out.i178, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10.exit: ; preds = %if.end27, %if.then3.i187
  %54 = load i32, ptr %out.i178, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i176)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i178)
  %55 = load i32, ptr %total, align 4
  %add31 = add nsw i32 %55, %54
  store i32 %add31, ptr %total, align 4
  %56 = load i32, ptr %x.addr, align 4
  %57 = and i32 %56, 1
  %tobool34.not.not = icmp eq i32 %57, 0
  br i1 %tobool34.not.not, label %if.then35, label %if.end38

if.then35:                                        ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10.exit
  %call36 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %58 = load i32, ptr %total, align 4
  %add37 = add nsw i32 %58, %call36
  store i32 %add37, ptr %total, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_10.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i188)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i189)
  store i32 0, ptr %x.addr.i188, align 4
  store i32 0, ptr %s.i189, align 4
  %59 = load i32, ptr %s.i189, align 4
  %sub.i195 = add nsw i32 %59, -3
  store i32 %sub.i195, ptr %s.i189, align 4
  %60 = load i32, ptr %x.addr.i188, align 4
  %and2.i199 = and i32 %60, 4
  %mul3.i200 = mul nuw nsw i32 %and2.i199, 12
  %add4.i201 = add nsw i32 %sub.i195, %mul3.i200
  store i32 %add4.i201, ptr %s.i189, align 4
  %rem5.i202 = srem i32 %add4.i201, 3
  %cmp6.i203 = icmp eq i32 %rem5.i202, 0
  %61 = load i32, ptr %s.i189, align 4
  %add10.i207 = add nsw i32 %61, 3
  %62 = load i32, ptr %s.i189, align 4
  %sub8.i205 = add nsw i32 %62, -4
  %storemerge283 = select i1 %cmp6.i203, i32 %sub8.i205, i32 %add10.i207
  store i32 %storemerge283, ptr %s.i189, align 4
  %63 = load i32, ptr %x.addr.i188, align 4
  %and12.i209 = and i32 %63, 5
  %mul13.i210 = mul nuw nsw i32 %and12.i209, 13
  %add14.i211 = add nsw i32 %storemerge283, %mul13.i210
  store i32 %add14.i211, ptr %s.i189, align 4
  %64 = and i32 %add14.i211, 3
  %cmp16.i213 = icmp eq i32 %64, 0
  %65 = load i32, ptr %s.i189, align 4
  %add20.i217 = add nsw i32 %65, 5
  %66 = load i32, ptr %s.i189, align 4
  %sub18.i215 = add nsw i32 %66, -5
  %storemerge284 = select i1 %cmp16.i213, i32 %sub18.i215, i32 %add20.i217
  store i32 %storemerge284, ptr %s.i189, align 4
  %67 = load i32, ptr %x.addr.i188, align 4
  %and22.i219 = and i32 %67, 6
  %mul23.i220 = mul nuw nsw i32 %and22.i219, 14
  %add24.i221 = add nsw i32 %storemerge284, %mul23.i220
  store i32 %add24.i221, ptr %s.i189, align 4
  %rem25.i222 = srem i32 %add24.i221, 5
  %cmp26.i223 = icmp eq i32 %rem25.i222, 0
  %68 = load i32, ptr %s.i189, align 4
  %add30.i227 = add nsw i32 %68, 7
  %69 = load i32, ptr %s.i189, align 4
  %sub28.i225 = add nsw i32 %69, -6
  %storemerge285 = select i1 %cmp26.i223, i32 %sub28.i225, i32 %add30.i227
  store i32 %storemerge285, ptr %s.i189, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i188)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i189)
  %70 = load i32, ptr %total, align 4
  %add40 = add nsw i32 %70, %storemerge285
  %add42 = add nsw i32 %add40, 84030819
  store i32 %add42, ptr %total, align 4
  %71 = load i32, ptr %x.addr, align 4
  %and44 = and i32 %71, 1
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i263)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out.i265)
  store i32 2, ptr %mode.addr.i263, align 4
  store i32 2, ptr %out.i265, align 4
  %72 = load i32, ptr %mode.addr.i263, align 4
  %and1.i270 = and i32 %72, 2
  %tobool2.i271.not = icmp eq i32 %and1.i270, 0
  br i1 %tobool2.i271.not, label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_14.exit, label %if.then3.i274

if.then3.i274:                                    ; preds = %if.then46
  %73 = load i32, ptr %out.i265, align 4
  %xor.i273 = xor i32 %73, 8
  store i32 %xor.i273, ptr %out.i265, align 4
  br label %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_14.exit

pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_14.exit: ; preds = %if.then46, %if.then3.i274
  %74 = load i32, ptr %out.i265, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i263)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out.i265)
  %75 = load i32, ptr %total, align 4
  %add48 = add nsw i32 %75, %74
  store i32 %add48, ptr %total, align 4
  br label %if.end49

if.end49:                                         ; preds = %pc_inline_source_snapshot_DCMTK_generated_inlining_generated_043_14.exit, %if.end38
  %call50 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef 3)
  %76 = load i32, ptr %total, align 4
  %add51 = add nsw i32 %76, %call50
  store i32 %add51, ptr %total, align 4
  ret i32 %add51
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %x) #0 {
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
  %call = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %sub)
  %add = add nsw i32 %1, %call
  br label %return

cond.false:                                       ; preds = %if.end
  %2 = load i32, ptr %x.addr, align 4
  %sub1 = add nsw i32 %2, -1
  %call2 = call noundef i32 @_ZL20matrix_043_recursivei(i32 noundef %sub1)
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
