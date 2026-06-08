; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jchuff.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jchuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder, %struct.savable_state, i32, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jpeg_make_c_derived_tbl(ptr noundef %cinfo, ptr noundef %htbl, ptr noundef %pdtbl) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %htbl.addr = alloca ptr, align 8
  %pdtbl.addr = alloca ptr, align 8
  %dtbl = alloca ptr, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %lastp = alloca i32, align 4
  %si = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 1
  %huffcode = alloca [257 x i32], align 4
  %code = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %htbl, ptr %htbl.addr, align 8
  store ptr %pdtbl, ptr %pdtbl.addr, align 8
  %0 = load ptr, ptr %pdtbl, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %3 = load ptr, ptr %2, align 8
  %call = call ptr %3(ptr noundef %1, i32 noundef 1, i64 noundef 1280) #7
  %4 = load ptr, ptr %pdtbl.addr, align 8
  store ptr %call, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pdtbl.addr, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %dtbl, align 8
  store i32 0, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ %inc11, %for.inc10 ]
  store i32 %storemerge, ptr %l, align 4
  %cmp1 = icmp slt i32 %storemerge, 17
  br i1 %cmp1, label %for.cond2, label %for.end12

for.cond2:                                        ; preds = %for.cond, %for.body5
  %storemerge2 = phi i32 [ %inc9, %for.body5 ], [ 1, %for.cond ]
  store i32 %storemerge2, ptr %i, align 4
  %7 = load ptr, ptr %htbl.addr, align 8
  %8 = load i32, ptr %l, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp3.not = icmp sgt i32 %storemerge2, %conv
  br i1 %cmp3.not, label %for.inc10, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %10 = load i32, ptr %l, align 4
  %conv6 = trunc i32 %10 to i8
  %11 = load i32, ptr %p, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %p, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom7
  store i8 %conv6, ptr %arrayidx8, align 1
  %12 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %12, 1
  br label %for.cond2, !llvm.loop !6

for.inc10:                                        ; preds = %for.cond2
  %13 = load i32, ptr %l, align 4
  %inc11 = add nsw i32 %13, 1
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %14 = load i32, ptr %p, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  store i32 %14, ptr %lastp, align 4
  store i32 0, ptr %code, align 4
  %15 = load i8, ptr %huffsize, align 1
  %conv16 = sext i8 %15 to i32
  store i32 %conv16, ptr %si, align 4
  store i32 0, ptr %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end12
  %16 = load i32, ptr %p, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom17
  %17 = load i8, ptr %arrayidx18, align 1
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %while.end31, label %while.cond19

while.cond19:                                     ; preds = %while.cond, %while.body25
  %18 = load i32, ptr %p, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom20
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %20 = load i32, ptr %si, align 4
  %cmp23 = icmp eq i32 %20, %conv22
  br i1 %cmp23, label %while.body25, label %while.end

while.body25:                                     ; preds = %while.cond19
  %21 = load i32, ptr %code, align 4
  %22 = load i32, ptr %p, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, ptr %p, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom27
  store i32 %21, ptr %arrayidx28, align 4
  %23 = load i32, ptr %code, align 4
  %inc29 = add i32 %23, 1
  store i32 %inc29, ptr %code, align 4
  br label %while.cond19, !llvm.loop !9

while.end:                                        ; preds = %while.cond19
  %24 = load i32, ptr %code, align 4
  %shl = shl i32 %24, 1
  store i32 %shl, ptr %code, align 4
  %25 = load i32, ptr %si, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %si, align 4
  br label %while.cond, !llvm.loop !10

while.end31:                                      ; preds = %while.cond
  %26 = load ptr, ptr %dtbl, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, ptr %26, i64 0, i32 1
  %ehufsi32 = getelementptr inbounds %struct.c_derived_tbl, ptr %26, i64 0, i32 1
  %27 = call i64 @llvm.objectsize.i64.p0(ptr %ehufsi32, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memset_chk(ptr noundef nonnull %ehufsi, i32 noundef 0, i64 noundef 256, i64 noundef %27) #7
  br label %for.cond35

for.cond35:                                       ; preds = %for.body38, %while.end31
  %storemerge1 = phi i32 [ 0, %while.end31 ], [ %inc54, %for.body38 ]
  store i32 %storemerge1, ptr %p, align 4
  %28 = load i32, ptr %lastp, align 4
  %cmp36 = icmp slt i32 %storemerge1, %28
  br i1 %cmp36, label %for.body38, label %for.end55

for.body38:                                       ; preds = %for.cond35
  %29 = load i32, ptr %p, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom39
  %30 = load i32, ptr %arrayidx40, align 4
  %31 = load ptr, ptr %dtbl, align 8
  %32 = load ptr, ptr %htbl.addr, align 8
  %idxprom41 = sext i32 %29 to i64
  %arrayidx42 = getelementptr inbounds %struct.JHUFF_TBL, ptr %32, i64 0, i32 1, i64 %idxprom41
  %33 = load i8, ptr %arrayidx42, align 1
  %idxprom43 = zext i8 %33 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], ptr %31, i64 0, i64 %idxprom43
  store i32 %30, ptr %arrayidx44, align 4
  %34 = load i32, ptr %p, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom45
  %35 = load i8, ptr %arrayidx46, align 1
  %36 = load ptr, ptr %dtbl, align 8
  %37 = load ptr, ptr %htbl.addr, align 8
  %idxprom49 = sext i32 %34 to i64
  %arrayidx50 = getelementptr inbounds %struct.JHUFF_TBL, ptr %37, i64 0, i32 1, i64 %idxprom49
  %38 = load i8, ptr %arrayidx50, align 1
  %idxprom51 = zext i8 %38 to i64
  %arrayidx52 = getelementptr inbounds %struct.c_derived_tbl, ptr %36, i64 0, i32 1, i64 %idxprom51
  store i8 %35, ptr %arrayidx52, align 1
  %39 = load i32, ptr %p, align 4
  %inc54 = add nsw i32 %39, 1
  br label %for.cond35, !llvm.loop !11

for.end55:                                        ; preds = %for.cond35
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define void @jpeg_gen_optimal_table(ptr noundef %cinfo, ptr noundef %htbl, ptr noundef %freq) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %htbl.addr = alloca ptr, align 8
  %freq.addr = alloca ptr, align 8
  %bits = alloca [33 x i8], align 1
  %codesize = alloca [257 x i32], align 4
  %others = alloca [257 x i32], align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %htbl, ptr %htbl.addr, align 8
  store ptr %freq, ptr %freq.addr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %bits, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %codesize, i8 0, i64 1028, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom
  store i32 -1, ptr %arrayidx, align 4
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %2 = load ptr, ptr %freq.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %2, i64 256
  store i64 1, ptr %arrayidx2, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %while.cond61, %for.end
  store i32 -1, ptr %c1, align 4
  store i64 1000000000, ptr %v, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.cond3
  %storemerge1 = phi i32 [ 0, %for.cond3 ], [ %inc15, %for.inc14 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp5 = icmp slt i32 %storemerge1, 257
  br i1 %cmp5, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond4
  %3 = load ptr, ptr %freq.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds i64, ptr %3, i64 %idxprom7
  %5 = load i64, ptr %arrayidx8, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %for.inc14, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body6
  %6 = load ptr, ptr %freq.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %6, i64 %idxprom9
  %8 = load i64, ptr %arrayidx10, align 8
  %9 = load i64, ptr %v, align 8
  %cmp11.not = icmp sgt i64 %8, %9
  br i1 %cmp11.not, label %for.inc14, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %freq.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %10, i64 %idxprom12
  %12 = load i64, ptr %arrayidx13, align 8
  store i64 %12, ptr %v, align 8
  store i32 %11, ptr %c1, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body6, %land.lhs.true, %if.then
  %13 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %13, 1
  br label %for.cond4, !llvm.loop !13

for.end16:                                        ; preds = %for.cond4
  store i32 -1, ptr %c2, align 4
  store i64 1000000000, ptr %v, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc33, %for.end16
  %storemerge2 = phi i32 [ 0, %for.end16 ], [ %inc34, %for.inc33 ]
  store i32 %storemerge2, ptr %i, align 4
  %cmp18 = icmp slt i32 %storemerge2, 257
  br i1 %cmp18, label %for.body19, label %for.end35

for.body19:                                       ; preds = %for.cond17
  %14 = load ptr, ptr %freq.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds i64, ptr %14, i64 %idxprom20
  %16 = load i64, ptr %arrayidx21, align 8
  %tobool22.not = icmp eq i64 %16, 0
  br i1 %tobool22.not, label %for.inc33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %for.body19
  %17 = load ptr, ptr %freq.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %17, i64 %idxprom24
  %19 = load i64, ptr %arrayidx25, align 8
  %20 = load i64, ptr %v, align 8
  %cmp26.not = icmp sgt i64 %19, %20
  br i1 %cmp26.not, label %for.inc33, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %c1, align 4
  %cmp28.not = icmp eq i32 %21, %22
  br i1 %cmp28.not, label %for.inc33, label %if.then29

if.then29:                                        ; preds = %land.lhs.true27
  %23 = load ptr, ptr %freq.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds i64, ptr %23, i64 %idxprom30
  %25 = load i64, ptr %arrayidx31, align 8
  store i64 %25, ptr %v, align 8
  store i32 %24, ptr %c2, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body19, %land.lhs.true23, %land.lhs.true27, %if.then29
  %26 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %26, 1
  br label %for.cond17, !llvm.loop !14

for.end35:                                        ; preds = %for.cond17
  %27 = load i32, ptr %c2, align 4
  %cmp36 = icmp slt i32 %27, 0
  br i1 %cmp36, label %for.cond73, label %if.end38

if.end38:                                         ; preds = %for.end35
  %28 = load ptr, ptr %freq.addr, align 8
  %29 = load i32, ptr %c2, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds i64, ptr %28, i64 %idxprom39
  %30 = load i64, ptr %arrayidx40, align 8
  %31 = load i32, ptr %c1, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds i64, ptr %28, i64 %idxprom41
  %32 = load i64, ptr %arrayidx42, align 8
  %add = add nsw i64 %32, %30
  store i64 %add, ptr %arrayidx42, align 8
  %33 = load ptr, ptr %freq.addr, align 8
  %34 = load i32, ptr %c2, align 4
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds i64, ptr %33, i64 %idxprom43
  store i64 0, ptr %arrayidx44, align 8
  %35 = load i32, ptr %c1, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom45
  %36 = load i32, ptr %arrayidx46, align 4
  %inc47 = add nsw i32 %36, 1
  store i32 %inc47, ptr %arrayidx46, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end38
  %37 = load i32, ptr %c1, align 4
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom48
  %38 = load i32, ptr %arrayidx49, align 4
  %cmp50 = icmp sgt i32 %38, -1
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, ptr %c1, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom51
  %40 = load i32, ptr %arrayidx52, align 4
  store i32 %40, ptr %c1, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom53
  %41 = load i32, ptr %arrayidx54, align 4
  %inc55 = add nsw i32 %41, 1
  store i32 %inc55, ptr %arrayidx54, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %42 = load i32, ptr %c2, align 4
  %43 = load i32, ptr %c1, align 4
  %idxprom56 = sext i32 %43 to i64
  %arrayidx57 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom56
  store i32 %42, ptr %arrayidx57, align 4
  %idxprom58 = sext i32 %42 to i64
  %arrayidx59 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom58
  %44 = load i32, ptr %arrayidx59, align 4
  %inc60 = add nsw i32 %44, 1
  store i32 %inc60, ptr %arrayidx59, align 4
  br label %while.cond61

while.cond61:                                     ; preds = %while.body65, %while.end
  %45 = load i32, ptr %c2, align 4
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom62
  %46 = load i32, ptr %arrayidx63, align 4
  %cmp64 = icmp sgt i32 %46, -1
  br i1 %cmp64, label %while.body65, label %for.cond3

while.body65:                                     ; preds = %while.cond61
  %47 = load i32, ptr %c2, align 4
  %idxprom66 = sext i32 %47 to i64
  %arrayidx67 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom66
  %48 = load i32, ptr %arrayidx67, align 4
  store i32 %48, ptr %c2, align 4
  %idxprom68 = sext i32 %48 to i64
  %arrayidx69 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom68
  %49 = load i32, ptr %arrayidx69, align 4
  %inc70 = add nsw i32 %49, 1
  store i32 %inc70, ptr %arrayidx69, align 4
  br label %while.cond61, !llvm.loop !16

for.cond73:                                       ; preds = %for.end35, %for.inc92
  %storemerge3 = phi i32 [ %inc93, %for.inc92 ], [ 0, %for.end35 ]
  store i32 %storemerge3, ptr %i, align 4
  %cmp74 = icmp slt i32 %storemerge3, 257
  br i1 %cmp74, label %for.body75, label %for.cond95

for.body75:                                       ; preds = %for.cond73
  %50 = load i32, ptr %i, align 4
  %idxprom76 = sext i32 %50 to i64
  %arrayidx77 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom76
  %51 = load i32, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq i32 %51, 0
  br i1 %tobool78.not, label %for.inc92, label %if.then79

if.then79:                                        ; preds = %for.body75
  %52 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom80
  %53 = load i32, ptr %arrayidx81, align 4
  %cmp82 = icmp sgt i32 %53, 32
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.then79
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load ptr, ptr %54, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 5
  store i32 38, ptr %msg_code, align 8
  %56 = load ptr, ptr %54, align 8
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull %54) #7
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then79
  %58 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %58 to i64
  %arrayidx87 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom86
  %59 = load i32, ptr %arrayidx87, align 4
  %idxprom88 = sext i32 %59 to i64
  %arrayidx89 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom88
  %60 = load i8, ptr %arrayidx89, align 1
  %inc90 = add i8 %60, 1
  store i8 %inc90, ptr %arrayidx89, align 1
  br label %for.inc92

for.inc92:                                        ; preds = %for.body75, %if.end85
  %61 = load i32, ptr %i, align 4
  %inc93 = add nsw i32 %61, 1
  br label %for.cond73, !llvm.loop !17

for.cond95:                                       ; preds = %for.cond73, %for.inc131
  %storemerge4 = phi i32 [ %dec132, %for.inc131 ], [ 32, %for.cond73 ]
  store i32 %storemerge4, ptr %i, align 4
  %cmp96 = icmp sgt i32 %storemerge4, 16
  br i1 %cmp96, label %while.cond98, label %while.cond134

while.cond98:                                     ; preds = %for.cond95, %while.end111
  %62 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %62 to i64
  %arrayidx100 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom99
  %63 = load i8, ptr %arrayidx100, align 1
  %cmp101.not = icmp eq i8 %63, 0
  br i1 %cmp101.not, label %for.inc131, label %while.body103

while.body103:                                    ; preds = %while.cond98
  %64 = load i32, ptr %i, align 4
  %sub = add nsw i32 %64, -2
  br label %while.cond104

while.cond104:                                    ; preds = %while.body110, %while.body103
  %storemerge7 = phi i32 [ %sub, %while.body103 ], [ %dec, %while.body110 ]
  store i32 %storemerge7, ptr %j, align 4
  %idxprom105 = sext i32 %storemerge7 to i64
  %arrayidx106 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom105
  %65 = load i8, ptr %arrayidx106, align 1
  %cmp108 = icmp eq i8 %65, 0
  br i1 %cmp108, label %while.body110, label %while.end111

while.body110:                                    ; preds = %while.cond104
  %66 = load i32, ptr %j, align 4
  %dec = add nsw i32 %66, -1
  br label %while.cond104, !llvm.loop !18

while.end111:                                     ; preds = %while.cond104
  %67 = load i32, ptr %i, align 4
  %idxprom112 = sext i32 %67 to i64
  %arrayidx113 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom112
  %68 = load i8, ptr %arrayidx113, align 1
  %sub115 = add i8 %68, -2
  store i8 %sub115, ptr %arrayidx113, align 1
  %sub117 = add nsw i32 %67, -1
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom118
  %69 = load i8, ptr %arrayidx119, align 1
  %inc120 = add i8 %69, 1
  store i8 %inc120, ptr %arrayidx119, align 1
  %70 = load i32, ptr %j, align 4
  %add121 = add nsw i32 %70, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom122
  %71 = load i8, ptr %arrayidx123, align 1
  %add125 = add i8 %71, 2
  store i8 %add125, ptr %arrayidx123, align 1
  %72 = load i32, ptr %j, align 4
  %idxprom127 = sext i32 %72 to i64
  %arrayidx128 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom127
  %73 = load i8, ptr %arrayidx128, align 1
  %dec129 = add i8 %73, -1
  store i8 %dec129, ptr %arrayidx128, align 1
  br label %while.cond98, !llvm.loop !19

for.inc131:                                       ; preds = %while.cond98
  %74 = load i32, ptr %i, align 4
  %dec132 = add nsw i32 %74, -1
  br label %for.cond95, !llvm.loop !20

while.cond134:                                    ; preds = %for.cond95, %while.body140
  %75 = load i32, ptr %i, align 4
  %idxprom135 = sext i32 %75 to i64
  %arrayidx136 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom135
  %76 = load i8, ptr %arrayidx136, align 1
  %cmp138 = icmp eq i8 %76, 0
  br i1 %cmp138, label %while.body140, label %while.end142

while.body140:                                    ; preds = %while.cond134
  %77 = load i32, ptr %i, align 4
  %dec141 = add nsw i32 %77, -1
  store i32 %dec141, ptr %i, align 4
  br label %while.cond134, !llvm.loop !21

while.end142:                                     ; preds = %while.cond134
  %78 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %78 to i64
  %arrayidx144 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom143
  %79 = load i8, ptr %arrayidx144, align 1
  %dec145 = add i8 %79, -1
  store i8 %dec145, ptr %arrayidx144, align 1
  %80 = load ptr, ptr %htbl.addr, align 8
  %81 = call i64 @llvm.objectsize.i64.p0(ptr %80, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %80, ptr noundef nonnull %bits, i64 noundef 17, i64 noundef %81) #7
  store i32 0, ptr %p, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc172, %while.end142
  %storemerge5 = phi i32 [ 1, %while.end142 ], [ %inc173, %for.inc172 ]
  store i32 %storemerge5, ptr %i, align 4
  %cmp152 = icmp slt i32 %storemerge5, 33
  br i1 %cmp152, label %for.cond155, label %for.end174

for.cond155:                                      ; preds = %for.cond151, %for.inc169
  %storemerge6 = phi i32 [ %inc170, %for.inc169 ], [ 0, %for.cond151 ]
  store i32 %storemerge6, ptr %j, align 4
  %cmp156 = icmp slt i32 %storemerge6, 256
  br i1 %cmp156, label %for.body158, label %for.inc172

for.body158:                                      ; preds = %for.cond155
  %82 = load i32, ptr %j, align 4
  %idxprom159 = sext i32 %82 to i64
  %arrayidx160 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom159
  %83 = load i32, ptr %arrayidx160, align 4
  %84 = load i32, ptr %i, align 4
  %cmp161 = icmp eq i32 %83, %84
  br i1 %cmp161, label %if.then163, label %for.inc169

if.then163:                                       ; preds = %for.body158
  %85 = load i32, ptr %j, align 4
  %conv164 = trunc i32 %85 to i8
  %86 = load ptr, ptr %htbl.addr, align 8
  %87 = load i32, ptr %p, align 4
  %idxprom165 = sext i32 %87 to i64
  %arrayidx166 = getelementptr inbounds %struct.JHUFF_TBL, ptr %86, i64 0, i32 1, i64 %idxprom165
  store i8 %conv164, ptr %arrayidx166, align 1
  %inc167 = add nsw i32 %87, 1
  store i32 %inc167, ptr %p, align 4
  br label %for.inc169

for.inc169:                                       ; preds = %for.body158, %if.then163
  %88 = load i32, ptr %j, align 4
  %inc170 = add nsw i32 %88, 1
  br label %for.cond155, !llvm.loop !22

for.inc172:                                       ; preds = %for.cond155
  %89 = load i32, ptr %i, align 4
  %inc173 = add nsw i32 %89, 1
  br label %for.cond151, !llvm.loop !23

for.end174:                                       ; preds = %for.cond151
  %90 = load ptr, ptr %htbl.addr, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %90, i64 0, i32 2
  store i32 0, ptr %sent_table, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @jinit_huff_encoder(ptr noundef %cinfo) #0 {
entry:
  %entropy = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 192) #7
  store ptr %call, ptr %entropy, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  store ptr %call, ptr %entropy1, align 8
  store ptr @start_pass_huff, ptr %call, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %entropy, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.huff_entropy_encoder, ptr %2, i64 0, i32 5, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %2, i64 0, i32 4, i64 %idxprom2
  store ptr null, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %entropy, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %idxprom4
  store ptr null, ptr %arrayidx5, align 8
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %idxprom6
  store ptr null, ptr %arrayidx7, align 8
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_huff(ptr noundef %cinfo, i32 noundef %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca ptr, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %gather_statistics, ptr %gather_statistics.addr, align 4
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %tobool.not = icmp eq i32 %gather_statistics, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %1, i64 0, i32 1
  store ptr @encode_mcu_gather, ptr %encode_mcu, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %1, i64 0, i32 2
  store ptr @finish_pass_gather, ptr %finish_pass, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %entropy, align 8
  %encode_mcu4 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %2, i64 0, i32 1
  store ptr @encode_mcu_huff, ptr %encode_mcu4, align 8
  %finish_pass6 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %2, i64 0, i32 2
  store ptr @finish_pass_huff, ptr %finish_pass6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end83, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %if.end83 ]
  store i32 %storemerge, ptr %ci, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 41
  %4 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 42, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 5
  %8 = load i32, ptr %dc_tbl_no, align 4
  store i32 %8, ptr %dctbl, align 4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %ac_tbl_no, align 8
  store i32 %9, ptr %actbl, align 4
  %cmp7 = icmp slt i32 %8, 0
  %10 = load i32, ptr %dctbl, align 4
  %cmp8 = icmp sgt i32 %10, 3
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %for.body
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load i32, ptr %dctbl, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 16, i64 %idxprom10
  %13 = load ptr, ptr %arrayidx11, align 8
  %cmp12 = icmp eq ptr %13, null
  %14 = load i32, ptr %gather_statistics.addr, align 4
  %tobool13.not = icmp eq i32 %14, 0
  %or.cond1 = select i1 %cmp12, i1 %tobool13.not, i1 false
  br i1 %or.cond1, label %if.then14, label %if.end18

if.then14:                                        ; preds = %lor.lhs.false9, %for.body
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 49, ptr %msg_code, align 8
  %17 = load i32, ptr %dctbl, align 4
  %18 = load ptr, ptr %15, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %17, ptr %msg_parm, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull %19) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %lor.lhs.false9
  %22 = load i32, ptr %actbl, align 4
  %cmp19 = icmp slt i32 %22, 0
  %23 = load i32, ptr %actbl, align 4
  %cmp21 = icmp sgt i32 %23, 3
  %or.cond2 = select i1 %cmp19, i1 true, i1 %cmp21
  br i1 %or.cond2, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end18
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load i32, ptr %actbl, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 17, i64 %idxprom23
  %26 = load ptr, ptr %arrayidx24, align 8
  %cmp25 = icmp eq ptr %26, null
  %27 = load i32, ptr %gather_statistics.addr, align 4
  %tobool27.not = icmp eq i32 %27, 0
  %or.cond3 = select i1 %cmp25, i1 %tobool27.not, i1 false
  br i1 %or.cond3, label %if.then28, label %if.end36

if.then28:                                        ; preds = %lor.lhs.false22, %if.end18
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load ptr, ptr %28, align 8
  %msg_code30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i64 0, i32 5
  store i32 49, ptr %msg_code30, align 8
  %30 = load i32, ptr %actbl, align 4
  %31 = load ptr, ptr %28, align 8
  %msg_parm32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %30, ptr %msg_parm32, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull %32) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %lor.lhs.false22
  %35 = load i32, ptr %gather_statistics.addr, align 4
  %tobool37.not = icmp eq i32 %35, 0
  br i1 %tobool37.not, label %if.else72, label %if.then38

if.then38:                                        ; preds = %if.end36
  %36 = load ptr, ptr %entropy, align 8
  %37 = load i32, ptr %dctbl, align 4
  %idxprom39 = sext i32 %37 to i64
  %arrayidx40 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %36, i64 0, i32 6, i64 %idxprom39
  %38 = load ptr, ptr %arrayidx40, align 8
  %cmp41 = icmp eq ptr %38, null
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.then38
  %39 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 1
  %40 = load ptr, ptr %mem, align 8
  %41 = load ptr, ptr %40, align 8
  %call = call ptr %41(ptr noundef %39, i32 noundef 1, i64 noundef 2056) #7
  %42 = load ptr, ptr %entropy, align 8
  %43 = load i32, ptr %dctbl, align 4
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %42, i64 0, i32 6, i64 %idxprom44
  store ptr %call, ptr %arrayidx45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then38
  %44 = load ptr, ptr %entropy, align 8
  %45 = load i32, ptr %dctbl, align 4
  %idxprom48 = sext i32 %45 to i64
  %arrayidx49 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %44, i64 0, i32 6, i64 %idxprom48
  %46 = load ptr, ptr %arrayidx49, align 8
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %44, i64 0, i32 6, i64 %idxprom51
  %47 = load ptr, ptr %arrayidx52, align 8
  %48 = call i64 @llvm.objectsize.i64.p0(ptr %47, i1 false, i1 true, i1 false)
  %call53 = call ptr @__memset_chk(ptr noundef %46, i32 noundef 0, i64 noundef 2056, i64 noundef %48) #7
  %49 = load ptr, ptr %entropy, align 8
  %50 = load i32, ptr %actbl, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %49, i64 0, i32 7, i64 %idxprom54
  %51 = load ptr, ptr %arrayidx55, align 8
  %cmp56 = icmp eq ptr %51, null
  br i1 %cmp56, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.end46
  %52 = load ptr, ptr %cinfo.addr, align 8
  %mem58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i64 0, i32 1
  %53 = load ptr, ptr %mem58, align 8
  %54 = load ptr, ptr %53, align 8
  %call60 = call ptr %54(ptr noundef %52, i32 noundef 1, i64 noundef 2056) #7
  %55 = load ptr, ptr %entropy, align 8
  %56 = load i32, ptr %actbl, align 4
  %idxprom62 = sext i32 %56 to i64
  %arrayidx63 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %55, i64 0, i32 7, i64 %idxprom62
  store ptr %call60, ptr %arrayidx63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.end46
  %57 = load ptr, ptr %entropy, align 8
  %58 = load i32, ptr %actbl, align 4
  %idxprom66 = sext i32 %58 to i64
  %arrayidx67 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %57, i64 0, i32 7, i64 %idxprom66
  %59 = load ptr, ptr %arrayidx67, align 8
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %57, i64 0, i32 7, i64 %idxprom69
  %60 = load ptr, ptr %arrayidx70, align 8
  %61 = call i64 @llvm.objectsize.i64.p0(ptr %60, i1 false, i1 true, i1 false)
  %call71 = call ptr @__memset_chk(ptr noundef %59, i32 noundef 0, i64 noundef 2056, i64 noundef %61) #7
  br label %if.end83

if.else72:                                        ; preds = %if.end36
  %62 = load ptr, ptr %cinfo.addr, align 8
  %63 = load i32, ptr %dctbl, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %62, i64 0, i32 16, i64 %idxprom74
  %64 = load ptr, ptr %arrayidx75, align 8
  %65 = load ptr, ptr %entropy, align 8
  %idxprom76 = sext i32 %63 to i64
  %arrayidx77 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %65, i64 0, i32 4, i64 %idxprom76
  call void @jpeg_make_c_derived_tbl(ptr noundef %62, ptr noundef %64, ptr noundef nonnull %arrayidx77)
  %66 = load ptr, ptr %cinfo.addr, align 8
  %67 = load i32, ptr %actbl, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i64 0, i32 17, i64 %idxprom79
  %68 = load ptr, ptr %arrayidx80, align 8
  %69 = load ptr, ptr %entropy, align 8
  %idxprom81 = sext i32 %67 to i64
  %arrayidx82 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %69, i64 0, i32 5, i64 %idxprom81
  call void @jpeg_make_c_derived_tbl(ptr noundef %66, ptr noundef %68, ptr noundef nonnull %arrayidx82)
  br label %if.end83

if.end83:                                         ; preds = %if.else72, %if.end64
  %70 = load ptr, ptr %entropy, align 8
  %71 = load i32, ptr %ci, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %70, i64 0, i32 1, i32 2, i64 %idxprom84
  store i32 0, ptr %arrayidx85, align 4
  %72 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %72, 1
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %73 = load ptr, ptr %entropy, align 8
  %saved86 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %73, i64 0, i32 1
  store i64 0, ptr %saved86, align 8
  %put_bits = getelementptr inbounds %struct.huff_entropy_encoder, ptr %73, i64 0, i32 1, i32 1
  store i32 0, ptr %put_bits, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %74, i64 0, i32 29
  %75 = load i32, ptr %restart_interval, align 8
  %76 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, ptr %76, i64 0, i32 2
  store i32 %75, ptr %restarts_to_go, align 8
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, ptr %76, i64 0, i32 3
  store i32 0, ptr %next_restart_num, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_gather(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 29
  %1 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, ptr %2, i64 0, i32 2
  %3 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %for.cond, label %if.end

for.cond:                                         ; preds = %if.then, %for.body
  %storemerge1 = phi i32 [ %inc, %for.body ], [ 0, %if.then ]
  store i32 %storemerge1, ptr %ci, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 41
  %5 = load i32, ptr %comps_in_scan, align 4
  %cmp3 = icmp slt i32 %storemerge1, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %entropy, align 8
  %7 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.huff_entropy_encoder, ptr %6, i64 0, i32 1, i32 2, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %8 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %8, 1
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 29
  %10 = load i32, ptr %restart_interval4, align 8
  %11 = load ptr, ptr %entropy, align 8
  %restarts_to_go5 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %11, i64 0, i32 2
  store i32 %10, ptr %restarts_to_go5, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %12 = load ptr, ptr %entropy, align 8
  %restarts_to_go6 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %12, i64 0, i32 2
  %13 = load i32, ptr %restarts_to_go6, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %restarts_to_go6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ %inc35, %for.body10 ]
  store i32 %storemerge, ptr %blkn, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 45
  %15 = load i32, ptr %blocks_in_MCU, align 8
  %cmp9 = icmp slt i32 %storemerge, %15
  br i1 %cmp9, label %for.body10, label %for.end36

for.body10:                                       ; preds = %for.cond8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %blkn, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 46, i64 %idxprom11
  %18 = load i32, ptr %arrayidx12, align 4
  store i32 %18, ptr %ci, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 42, i64 %idxprom13
  %19 = load ptr, ptr %arrayidx14, align 8
  store ptr %19, ptr %compptr, align 8
  %20 = load ptr, ptr %MCU_data.addr, align 8
  %21 = load i32, ptr %blkn, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %20, i64 %idxprom15
  %22 = load ptr, ptr %arrayidx16, align 8
  %23 = load ptr, ptr %entropy, align 8
  %24 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %23, i64 0, i32 1, i32 2, i64 %idxprom20
  %25 = load i32, ptr %arrayidx21, align 4
  %26 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 5
  %27 = load i32, ptr %dc_tbl_no, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %23, i64 0, i32 6, i64 %idxprom22
  %28 = load ptr, ptr %arrayidx23, align 8
  %29 = load ptr, ptr %entropy, align 8
  %30 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i64 0, i32 6
  %31 = load i32, ptr %ac_tbl_no, align 8
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %29, i64 0, i32 7, i64 %idxprom24
  %32 = load ptr, ptr %arrayidx25, align 8
  call void @htest_one_block(ptr noundef %22, i32 noundef %25, ptr noundef %28, ptr noundef %32)
  %33 = load ptr, ptr %MCU_data.addr, align 8
  %34 = load i32, ptr %blkn, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %33, i64 %idxprom26
  %35 = load ptr, ptr %arrayidx27, align 8
  %36 = load i16, ptr %35, align 2
  %conv = sext i16 %36 to i32
  %37 = load ptr, ptr %entropy, align 8
  %38 = load i32, ptr %ci, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %37, i64 0, i32 1, i32 2, i64 %idxprom32
  store i32 %conv, ptr %arrayidx33, align 4
  %39 = load i32, ptr %blkn, align 4
  %inc35 = add nsw i32 %39, 1
  br label %for.cond8, !llvm.loop !27

for.end36:                                        ; preds = %for.cond8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_gather(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %htblptr = alloca ptr, align 8
  %did_dc = alloca [4 x i32], align 4
  %did_ac = alloca [4 x i32], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %did_dc, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %did_ac, i8 0, i64 16, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 41
  %2 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 42, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 0, i32 5
  %6 = load i32, ptr %dc_tbl_no, align 4
  store i32 %6, ptr %dctbl, align 4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %ac_tbl_no, align 8
  store i32 %7, ptr %actbl, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %did_dc, i64 0, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load i32, ptr %dctbl, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 16, i64 %idxprom5
  store ptr %arrayidx6, ptr %htblptr, align 8
  %11 = load ptr, ptr %arrayidx6, align 8
  %cmp7 = icmp eq ptr %11, null
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %12 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_huff_table(ptr noundef %12) #7
  %13 = load ptr, ptr %htblptr, align 8
  store ptr %call, ptr %13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %htblptr, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %entropy, align 8
  %18 = load i32, ptr %dctbl, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %17, i64 0, i32 6, i64 %idxprom9
  %19 = load ptr, ptr %arrayidx10, align 8
  call void @jpeg_gen_optimal_table(ptr noundef %14, ptr noundef %16, ptr noundef %19)
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %did_dc, i64 0, i64 %idxprom11
  store i32 1, ptr %arrayidx12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  %20 = load i32, ptr %actbl, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %did_ac, i64 0, i64 %idxprom14
  %21 = load i32, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.then17, label %for.inc

if.then17:                                        ; preds = %if.end13
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load i32, ptr %actbl, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i64 0, i32 17, i64 %idxprom18
  store ptr %arrayidx19, ptr %htblptr, align 8
  %24 = load ptr, ptr %arrayidx19, align 8
  %cmp20 = icmp eq ptr %24, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then17
  %25 = load ptr, ptr %cinfo.addr, align 8
  %call22 = call ptr @jpeg_alloc_huff_table(ptr noundef %25) #7
  %26 = load ptr, ptr %htblptr, align 8
  store ptr %call22, ptr %26, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then17
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %htblptr, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %entropy, align 8
  %31 = load i32, ptr %actbl, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %30, i64 0, i32 7, i64 %idxprom24
  %32 = load ptr, ptr %arrayidx25, align 8
  call void @jpeg_gen_optimal_table(ptr noundef %27, ptr noundef %29, ptr noundef %32)
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %did_ac, i64 0, i64 %idxprom26
  store i32 1, ptr %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.end23
  %33 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %33, 1
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_huff(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %state = alloca %struct.working_state, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %1 = load ptr, ptr %dest, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 1
  %5 = load i64, ptr %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 1
  store i64 %5, ptr %free_in_buffer4, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2
  %6 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %cur, ptr noundef nonnull align 8 dereferenceable(32) %saved, i64 32, i1 false)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 3
  store ptr %7, ptr %cinfo5, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 29
  %8 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, ptr %9, i64 0, i32 2
  %10 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %next_restart_num, align 4
  %call = call i32 @emit_restart(ptr noundef nonnull %state, i32 noundef %12)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then, %if.then6, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end27, %if.end10
  %storemerge = phi i32 [ 0, %if.end10 ], [ %inc, %if.end27 ]
  store i32 %storemerge, ptr %blkn, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 45
  %14 = load i32, ptr %blocks_in_MCU, align 8
  %cmp11 = icmp slt i32 %storemerge, %14
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i64 0, i32 46, i64 %idxprom
  %17 = load i32, ptr %arrayidx, align 4
  store i32 %17, ptr %ci, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i64 0, i32 42, i64 %idxprom12
  %18 = load ptr, ptr %arrayidx13, align 8
  store ptr %18, ptr %compptr, align 8
  %19 = load ptr, ptr %MCU_data.addr, align 8
  %20 = load i32, ptr %blkn, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %19, i64 %idxprom14
  %21 = load ptr, ptr %arrayidx15, align 8
  %22 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2, i32 2, i64 %idxprom18
  %23 = load i32, ptr %arrayidx19, align 4
  %24 = load ptr, ptr %entropy, align 8
  %25 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 0, i32 5
  %26 = load i32, ptr %dc_tbl_no, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %24, i64 0, i32 4, i64 %idxprom20
  %27 = load ptr, ptr %arrayidx21, align 8
  %28 = load ptr, ptr %entropy, align 8
  %29 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i64 0, i32 6
  %30 = load i32, ptr %ac_tbl_no, align 8
  %idxprom22 = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %28, i64 0, i32 5, i64 %idxprom22
  %31 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 @encode_one_block(ptr noundef nonnull %state, ptr noundef %21, i32 noundef %23, ptr noundef %27, ptr noundef %31)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %for.body
  %32 = load ptr, ptr %MCU_data.addr, align 8
  %33 = load i32, ptr %blkn, align 4
  %idxprom28 = sext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %32, i64 %idxprom28
  %34 = load ptr, ptr %arrayidx29, align 8
  %35 = load i16, ptr %34, align 2
  %conv = sext i16 %35 to i32
  %36 = load i32, ptr %ci, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2, i32 2, i64 %idxprom34
  store i32 %conv, ptr %arrayidx35, align 4
  %37 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %37, 1
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %state, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %dest37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 5
  %40 = load ptr, ptr %dest37, align 8
  store ptr %38, ptr %40, align 8
  %free_in_buffer39 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 1
  %41 = load i64, ptr %free_in_buffer39, align 8
  %dest40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 5
  %42 = load ptr, ptr %dest40, align 8
  %free_in_buffer41 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %42, i64 0, i32 1
  store i64 %41, ptr %free_in_buffer41, align 8
  %43 = load ptr, ptr %entropy, align 8
  %saved42 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %43, i64 0, i32 1
  %cur43 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %saved42, ptr noundef nonnull align 8 dereferenceable(32) %cur43, i64 32, i1 false)
  %44 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i64 0, i32 29
  %45 = load i32, ptr %restart_interval44, align 8
  %tobool45.not = icmp eq i32 %45, 0
  br i1 %tobool45.not, label %if.end58, label %if.then46

if.then46:                                        ; preds = %for.end
  %46 = load ptr, ptr %entropy, align 8
  %restarts_to_go47 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %46, i64 0, i32 2
  %47 = load i32, ptr %restarts_to_go47, align 8
  %cmp48 = icmp eq i32 %47, 0
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.then46
  %48 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 29
  %49 = load i32, ptr %restart_interval51, align 8
  %50 = load ptr, ptr %entropy, align 8
  %restarts_to_go52 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %50, i64 0, i32 2
  store i32 %49, ptr %restarts_to_go52, align 8
  %next_restart_num53 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %50, i64 0, i32 3
  %51 = load i32, ptr %next_restart_num53, align 4
  %inc54 = add nsw i32 %51, 1
  store i32 %inc54, ptr %next_restart_num53, align 4
  %52 = load ptr, ptr %entropy, align 8
  %next_restart_num55 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %52, i64 0, i32 3
  %53 = load i32, ptr %next_restart_num55, align 4
  %and = and i32 %53, 7
  store i32 %and, ptr %next_restart_num55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.then46
  %54 = load ptr, ptr %entropy, align 8
  %restarts_to_go57 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %54, i64 0, i32 2
  %55 = load i32, ptr %restarts_to_go57, align 8
  %dec = add i32 %55, -1
  store i32 %dec, ptr %restarts_to_go57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then26, %if.then8
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_huff(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %state = alloca %struct.working_state, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %1 = load ptr, ptr %dest, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %state, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 1
  %5 = load i64, ptr %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 1
  store i64 %5, ptr %free_in_buffer4, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2
  %6 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %cur, ptr noundef nonnull align 8 dereferenceable(32) %saved, i64 32, i1 false)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 3
  store ptr %7, ptr %cinfo5, align 8
  %call = call i32 @flush_bits(ptr noundef nonnull %state)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr noundef nonnull %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %state, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %dest8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 5
  %14 = load ptr, ptr %dest8, align 8
  store ptr %12, ptr %14, align 8
  %free_in_buffer10 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 1
  %15 = load i64, ptr %free_in_buffer10, align 8
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 5
  %16 = load ptr, ptr %dest11, align 8
  %free_in_buffer12 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %16, i64 0, i32 1
  store i64 %15, ptr %free_in_buffer12, align 8
  %17 = load ptr, ptr %entropy, align 8
  %saved13 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %17, i64 0, i32 1
  %cur14 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %saved13, ptr noundef nonnull align 8 dereferenceable(32) %cur14, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @htest_one_block(ptr noundef %block, i32 noundef %last_dc_val, ptr noundef %dc_counts, ptr noundef %ac_counts) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %dc_counts.addr = alloca ptr, align 8
  %ac_counts.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %block, ptr %block.addr, align 8
  store ptr %dc_counts, ptr %dc_counts.addr, align 8
  store ptr %ac_counts, ptr %ac_counts.addr, align 8
  %0 = load i16, ptr %block, align 2
  %conv = sext i16 %0 to i32
  %sub = sub nsw i32 %conv, %last_dc_val
  store i32 %sub, ptr %temp, align 4
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %temp, align 4
  %sub2 = sub nsw i32 0, %1
  store i32 %sub2, ptr %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, ptr %temp, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nbits, align 4
  %4 = load i32, ptr %temp, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, ptr %temp, align 4
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %dc_counts.addr, align 8
  %6 = load i32, ptr %nbits, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i64, ptr %5, i64 %idxprom
  %7 = load i64, ptr %arrayidx3, align 8
  %inc4 = add nsw i64 %7, 1
  store i64 %inc4, ptr %arrayidx3, align 8
  store i32 0, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %while.end
  %storemerge = phi i32 [ 1, %while.end ], [ %inc39, %if.end38 ]
  store i32 %storemerge, ptr %k, align 4
  %cmp5 = icmp slt i32 %storemerge, 64
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %block.addr, align 8
  %9 = load i32, ptr %k, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom7
  %10 = load i32, ptr %arrayidx8, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %8, i64 %idxprom9
  %11 = load i16, ptr %arrayidx10, align 2
  %conv11 = sext i16 %11 to i32
  store i32 %conv11, ptr %temp, align 4
  %cmp12 = icmp eq i16 %11, 0
  br i1 %cmp12, label %if.then14, label %while.cond16

if.then14:                                        ; preds = %for.body
  %12 = load i32, ptr %r, align 4
  %inc15 = add nsw i32 %12, 1
  br label %if.end38

while.cond16:                                     ; preds = %for.body, %while.body19
  %13 = load i32, ptr %r, align 4
  %cmp17 = icmp sgt i32 %13, 15
  br i1 %cmp17, label %while.body19, label %while.end23

while.body19:                                     ; preds = %while.cond16
  %14 = load ptr, ptr %ac_counts.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %14, i64 240
  %15 = load i64, ptr %arrayidx20, align 8
  %inc21 = add nsw i64 %15, 1
  store i64 %inc21, ptr %arrayidx20, align 8
  %16 = load i32, ptr %r, align 4
  %sub22 = add nsw i32 %16, -16
  store i32 %sub22, ptr %r, align 4
  br label %while.cond16, !llvm.loop !31

while.end23:                                      ; preds = %while.cond16
  %17 = load i32, ptr %temp, align 4
  %cmp24 = icmp slt i32 %17, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.end23
  %18 = load i32, ptr %temp, align 4
  %sub27 = sub nsw i32 0, %18
  store i32 %sub27, ptr %temp, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.end23
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %if.end28
  %storemerge1 = phi i32 [ 1, %if.end28 ], [ %inc33, %while.body32 ]
  store i32 %storemerge1, ptr %nbits, align 4
  %19 = load i32, ptr %temp, align 4
  %shr30 = ashr i32 %19, 1
  store i32 %shr30, ptr %temp, align 4
  %tobool31.not = icmp ult i32 %19, 2
  br i1 %tobool31.not, label %while.end34, label %while.body32

while.body32:                                     ; preds = %while.cond29
  %20 = load i32, ptr %nbits, align 4
  %inc33 = add nsw i32 %20, 1
  br label %while.cond29, !llvm.loop !32

while.end34:                                      ; preds = %while.cond29
  %21 = load ptr, ptr %ac_counts.addr, align 8
  %22 = load i32, ptr %r, align 4
  %shl = shl i32 %22, 4
  %23 = load i32, ptr %nbits, align 4
  %add = add nsw i32 %shl, %23
  %idxprom35 = sext i32 %add to i64
  %arrayidx36 = getelementptr inbounds i64, ptr %21, i64 %idxprom35
  %24 = load i64, ptr %arrayidx36, align 8
  %inc37 = add nsw i64 %24, 1
  store i64 %inc37, ptr %arrayidx36, align 8
  br label %if.end38

if.end38:                                         ; preds = %while.end34, %if.then14
  %storemerge2 = phi i32 [ 0, %while.end34 ], [ %inc15, %if.then14 ]
  store i32 %storemerge2, ptr %r, align 4
  %25 = load i32, ptr %k, align 4
  %inc39 = add nsw i32 %25, 1
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %r, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %for.end
  %27 = load ptr, ptr %ac_counts.addr, align 8
  %28 = load i64, ptr %27, align 8
  %inc44 = add nsw i64 %28, 1
  store i64 %inc44, ptr %27, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %for.end
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_restart(ptr noundef %state, i32 noundef %restart_num) #0 {
entry:
  %state.addr.i = alloca ptr, align 8
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store i32 %restart_num, ptr %restart_num.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state.addr.i)
  store ptr %state, ptr %state.addr.i, align 8
  %call.i = call i32 @emit_bits(ptr noundef %state, i32 noundef 127, i32 noundef 7)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then.critedge, label %if.end.i

if.end.i:                                         ; preds = %entry
  %0 = load ptr, ptr %state.addr.i, align 8
  %cur.i = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2
  store i64 0, ptr %cur.i, align 8
  %put_bits.i = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2, i32 1
  store i32 0, ptr %put_bits.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i)
  %1 = load ptr, ptr %state.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 -1, ptr %2, align 1
  %free_in_buffer = getelementptr inbounds %struct.working_state, ptr %1, i64 0, i32 1
  %3 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end6

if.then.critedge:                                 ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state.addr.i)
  store i32 0, ptr %retval, align 4
  br label %return

if.then1:                                         ; preds = %if.end.i
  %4 = load ptr, ptr %state.addr, align 8
  %call2 = call i32 @dump_buffer(ptr noundef %4)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then1
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then1, %if.end.i
  %5 = load i32, ptr %restart_num.addr, align 4
  %6 = trunc i32 %5 to i8
  %conv = add i8 %6, -48
  %7 = load ptr, ptr %state.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr8, ptr %7, align 8
  store i8 %conv, ptr %8, align 1
  %free_in_buffer9 = getelementptr inbounds %struct.working_state, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %free_in_buffer9, align 8
  %dec10 = add i64 %9, -1
  store i64 %dec10, ptr %free_in_buffer9, align 8
  %cmp11 = icmp eq i64 %dec10, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end6
  %10 = load ptr, ptr %state.addr, align 8
  %call14 = call i32 @dump_buffer(ptr noundef %10)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13, %if.end6
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end18
  %storemerge = phi i32 [ 0, %if.end18 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %ci, align 4
  %11 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %cinfo, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 41
  %13 = load i32, ptr %comps_in_scan, align 4
  %cmp19 = icmp slt i32 %storemerge, %13
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %state.addr, align 8
  %15 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.working_state, ptr %14, i64 0, i32 2, i32 2, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %16 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then16, %if.then4, %if.then.critedge
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_one_block(ptr noundef %state, ptr noundef %block, i32 noundef %last_dc_val, ptr noundef %dctbl, ptr noundef %actbl) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %dctbl.addr = alloca ptr, align 8
  %actbl.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %dctbl, ptr %dctbl.addr, align 8
  store ptr %actbl, ptr %actbl.addr, align 8
  %0 = load i16, ptr %block, align 2
  %conv = sext i16 %0 to i32
  %sub = sub nsw i32 %conv, %last_dc_val
  store i32 %sub, ptr %temp2, align 4
  store i32 %sub, ptr %temp, align 4
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %temp, align 4
  %sub2 = sub nsw i32 0, %1
  store i32 %sub2, ptr %temp, align 4
  %2 = load i32, ptr %temp2, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %temp2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %temp, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %nbits, align 4
  %5 = load i32, ptr %temp, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, ptr %temp, align 4
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %state.addr, align 8
  %7 = load ptr, ptr %dctbl.addr, align 8
  %8 = load i32, ptr %nbits, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx3, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.c_derived_tbl, ptr %7, i64 0, i32 1, i64 %idxprom4
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %call = call i32 @emit_bits(ptr noundef %6, i32 noundef %9, i32 noundef %conv6)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %11 = load i32, ptr %nbits, align 4
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end9
  %12 = load ptr, ptr %state.addr, align 8
  %13 = load i32, ptr %temp2, align 4
  %14 = load i32, ptr %nbits, align 4
  %call12 = call i32 @emit_bits(ptr noundef %12, i32 noundef %13, i32 noundef %14)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end70, %if.end16
  %storemerge = phi i32 [ 1, %if.end16 ], [ %inc71, %if.end70 ]
  store i32 %storemerge, ptr %k, align 4
  %cmp17 = icmp slt i32 %storemerge, 64
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %block.addr, align 8
  %16 = load i32, ptr %k, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom19
  %17 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %15, i64 %idxprom21
  %18 = load i16, ptr %arrayidx22, align 2
  %conv23 = sext i16 %18 to i32
  store i32 %conv23, ptr %temp, align 4
  %cmp24 = icmp eq i16 %18, 0
  br i1 %cmp24, label %if.then26, label %while.cond28

if.then26:                                        ; preds = %for.body
  %19 = load i32, ptr %r, align 4
  %inc27 = add nsw i32 %19, 1
  br label %if.end70

while.cond28:                                     ; preds = %for.body, %if.end40
  %20 = load i32, ptr %r, align 4
  %cmp29 = icmp sgt i32 %20, 15
  br i1 %cmp29, label %while.body31, label %while.end42

while.body31:                                     ; preds = %while.cond28
  %21 = load ptr, ptr %state.addr, align 8
  %22 = load ptr, ptr %actbl.addr, align 8
  %arrayidx33 = getelementptr inbounds [256 x i32], ptr %22, i64 0, i64 240
  %23 = load i32, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr inbounds %struct.c_derived_tbl, ptr %22, i64 0, i32 1, i64 240
  %24 = load i8, ptr %arrayidx35, align 4
  %conv36 = sext i8 %24 to i32
  %call37 = call i32 @emit_bits(ptr noundef %21, i32 noundef %23, i32 noundef %conv36)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.body31
  store i32 0, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %while.body31
  %25 = load i32, ptr %r, align 4
  %sub41 = add nsw i32 %25, -16
  store i32 %sub41, ptr %r, align 4
  br label %while.cond28, !llvm.loop !36

while.end42:                                      ; preds = %while.cond28
  %26 = load i32, ptr %temp, align 4
  store i32 %26, ptr %temp2, align 4
  %cmp43 = icmp slt i32 %26, 0
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %while.end42
  %27 = load i32, ptr %temp, align 4
  %sub46 = sub nsw i32 0, %27
  store i32 %sub46, ptr %temp, align 4
  %28 = load i32, ptr %temp2, align 4
  %dec47 = add nsw i32 %28, -1
  store i32 %dec47, ptr %temp2, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %while.end42
  br label %while.cond49

while.cond49:                                     ; preds = %while.body52, %if.end48
  %storemerge1 = phi i32 [ 1, %if.end48 ], [ %inc53, %while.body52 ]
  store i32 %storemerge1, ptr %nbits, align 4
  %29 = load i32, ptr %temp, align 4
  %shr50 = ashr i32 %29, 1
  store i32 %shr50, ptr %temp, align 4
  %tobool51.not = icmp ult i32 %29, 2
  br i1 %tobool51.not, label %while.end54, label %while.body52

while.body52:                                     ; preds = %while.cond49
  %30 = load i32, ptr %nbits, align 4
  %inc53 = add nsw i32 %30, 1
  br label %while.cond49, !llvm.loop !37

while.end54:                                      ; preds = %while.cond49
  %31 = load i32, ptr %r, align 4
  %shl = shl i32 %31, 4
  %32 = load i32, ptr %nbits, align 4
  %add = add nsw i32 %shl, %32
  %33 = load ptr, ptr %state.addr, align 8
  %34 = load ptr, ptr %actbl.addr, align 8
  %idxprom56 = sext i32 %add to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], ptr %34, i64 0, i64 %idxprom56
  %35 = load i32, ptr %arrayidx57, align 4
  %idxprom59 = sext i32 %add to i64
  %arrayidx60 = getelementptr inbounds %struct.c_derived_tbl, ptr %34, i64 0, i32 1, i64 %idxprom59
  %36 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %36 to i32
  %call62 = call i32 @emit_bits(ptr noundef %33, i32 noundef %35, i32 noundef %conv61)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %while.end54
  store i32 0, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.end54
  %37 = load ptr, ptr %state.addr, align 8
  %38 = load i32, ptr %temp2, align 4
  %39 = load i32, ptr %nbits, align 4
  %call66 = call i32 @emit_bits(ptr noundef %37, i32 noundef %38, i32 noundef %39)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end65, %if.then26
  %storemerge2 = phi i32 [ %inc27, %if.then26 ], [ 0, %if.end65 ]
  store i32 %storemerge2, ptr %r, align 4
  %40 = load i32, ptr %k, align 4
  %inc71 = add nsw i32 %40, 1
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %r, align 4
  %cmp72 = icmp sgt i32 %41, 0
  br i1 %cmp72, label %if.then74, label %if.end84

if.then74:                                        ; preds = %for.end
  %42 = load ptr, ptr %state.addr, align 8
  %43 = load ptr, ptr %actbl.addr, align 8
  %44 = load i32, ptr %43, align 4
  %ehufsi77 = getelementptr inbounds %struct.c_derived_tbl, ptr %43, i64 0, i32 1
  %45 = load i8, ptr %ehufsi77, align 4
  %conv79 = sext i8 %45 to i32
  %call80 = call i32 @emit_bits(ptr noundef %42, i32 noundef %44, i32 noundef %conv79)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then74, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.then82, %if.then68, %if.then64, %if.then39, %if.then14, %if.then8
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @flush_bits(ptr noundef %state) #0 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %call = call i32 @emit_bits(ptr noundef %state, i32 noundef 127, i32 noundef 7)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2
  store i64 0, ptr %cur, align 8
  %put_bits = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2, i32 1
  store i32 0, ptr %put_bits, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @dump_buffer(ptr noundef %state) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 3
  %0 = load ptr, ptr %cinfo, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  store ptr %1, ptr %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %empty_output_buffer, align 8
  %3 = load ptr, ptr %state.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %cinfo2, align 8
  %call = call i32 %2(ptr noundef %4) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dest, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %state.addr, align 8
  store ptr %6, ptr %7, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 1
  %8 = load i64, ptr %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, ptr %7, i64 0, i32 1
  store i64 %8, ptr %free_in_buffer4, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_bits(ptr noundef %state, i32 noundef %code, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %conv = zext i32 %code to i64
  store i64 %conv, ptr %put_buffer, align 8
  %put_bits1 = getelementptr inbounds %struct.working_state, ptr %state, i64 0, i32 2, i32 1
  %0 = load i32, ptr %put_bits1, align 8
  store i32 %0, ptr %put_bits, align 4
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %cinfo, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 39, ptr %msg_code, align 8
  %cinfo3 = getelementptr inbounds %struct.working_state, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %cinfo3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %state.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %cinfo5, align 8
  call void %6(ptr noundef %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %size.addr, align 4
  %sh_prom = zext i32 %9 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %10 = load i64, ptr %put_buffer, align 8
  %and = and i64 %10, %sub
  store i64 %and, ptr %put_buffer, align 8
  %11 = load i32, ptr %size.addr, align 4
  %12 = load i32, ptr %put_bits, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, ptr %put_bits, align 4
  %sub6 = sub nsw i32 24, %add
  %sh_prom7 = zext i32 %sub6 to i64
  %shl8 = shl i64 %and, %sh_prom7
  store i64 %shl8, ptr %put_buffer, align 8
  %13 = load ptr, ptr %state.addr, align 8
  %cur9 = getelementptr inbounds %struct.working_state, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %cur9, align 8
  %or = or i64 %shl8, %14
  store i64 %or, ptr %put_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end
  %15 = load i32, ptr %put_bits, align 4
  %cmp11 = icmp sgt i32 %15, 7
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i64, ptr %put_buffer, align 8
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 16
  %conv14 = and i32 %18, 255
  store i32 %conv14, ptr %c, align 4
  %conv15 = trunc i32 %18 to i8
  %19 = load ptr, ptr %state.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %19, align 8
  store i8 %conv15, ptr %20, align 1
  %free_in_buffer = getelementptr inbounds %struct.working_state, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %21, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp16 = icmp eq i64 %dec, 0
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %while.body
  %22 = load ptr, ptr %state.addr, align 8
  %call = call i32 @dump_buffer(ptr noundef %22)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then18, %while.body
  %23 = load i32, ptr %c, align 4
  %cmp22 = icmp eq i32 %23, 255
  br i1 %cmp22, label %if.then24, label %if.end37

if.then24:                                        ; preds = %if.end21
  %24 = load ptr, ptr %state.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr26, ptr %24, align 8
  store i8 0, ptr %25, align 1
  %free_in_buffer27 = getelementptr inbounds %struct.working_state, ptr %24, i64 0, i32 1
  %26 = load i64, ptr %free_in_buffer27, align 8
  %dec28 = add i64 %26, -1
  store i64 %dec28, ptr %free_in_buffer27, align 8
  %cmp29 = icmp eq i64 %dec28, 0
  br i1 %cmp29, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.then24
  %27 = load ptr, ptr %state.addr, align 8
  %call32 = call i32 @dump_buffer(ptr noundef %27)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then31
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then24, %if.then31, %if.end21
  %28 = load i64, ptr %put_buffer, align 8
  %shl38 = shl i64 %28, 8
  store i64 %shl38, ptr %put_buffer, align 8
  %29 = load i32, ptr %put_bits, align 4
  %sub39 = add nsw i32 %29, -8
  store i32 %sub39, ptr %put_bits, align 4
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  %30 = load i64, ptr %put_buffer, align 8
  %31 = load ptr, ptr %state.addr, align 8
  %cur40 = getelementptr inbounds %struct.working_state, ptr %31, i64 0, i32 2
  store i64 %30, ptr %cur40, align 8
  %32 = load i32, ptr %put_bits, align 4
  %put_bits43 = getelementptr inbounds %struct.working_state, ptr %31, i64 0, i32 2, i32 1
  store i32 %32, ptr %put_bits43, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then34, %if.then19
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
