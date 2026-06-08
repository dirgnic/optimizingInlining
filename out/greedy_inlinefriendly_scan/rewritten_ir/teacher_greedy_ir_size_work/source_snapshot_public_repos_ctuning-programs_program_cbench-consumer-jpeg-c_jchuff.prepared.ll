; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jchuff.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jchuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
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
  %0 = load ptr, ptr %pdtbl.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 1280)
  %6 = load ptr, ptr %pdtbl.addr, align 8
  store ptr %call, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pdtbl.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %dtbl, align 8
  store i32 0, ptr %p, align 4
  store i32 1, ptr %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.end
  %9 = load i32, ptr %l, align 4
  %cmp1 = icmp sle i32 %9, 16
  br i1 %cmp1, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %htbl.addr, align 8
  %bits = getelementptr inbounds %struct.JHUFF_TBL, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %l, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp3 = icmp sle i32 %10, %conv
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %14 = load i32, ptr %l, align 4
  %conv6 = trunc i32 %14 to i8
  %15 = load i32, ptr %p, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %p, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom7
  store i8 %conv6, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %16 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %17 = load i32, ptr %l, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, ptr %l, align 4
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %18 = load i32, ptr %p, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom13
  store i8 0, ptr %arrayidx14, align 1
  %19 = load i32, ptr %p, align 4
  store i32 %19, ptr %lastp, align 4
  store i32 0, ptr %code, align 4
  %arrayidx15 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 0
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %20 to i32
  store i32 %conv16, ptr %si, align 4
  store i32 0, ptr %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end12
  %21 = load i32, ptr %p, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom17
  %22 = load i8, ptr %arrayidx18, align 1
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %while.body, label %while.end31

while.body:                                       ; preds = %while.cond
  br label %while.cond19

while.cond19:                                     ; preds = %while.body25, %while.body
  %23 = load i32, ptr %p, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom20
  %24 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %24 to i32
  %25 = load i32, ptr %si, align 4
  %cmp23 = icmp eq i32 %conv22, %25
  br i1 %cmp23, label %while.body25, label %while.end

while.body25:                                     ; preds = %while.cond19
  %26 = load i32, ptr %code, align 4
  %27 = load i32, ptr %p, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, ptr %p, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom27
  store i32 %26, ptr %arrayidx28, align 4
  %28 = load i32, ptr %code, align 4
  %inc29 = add i32 %28, 1
  store i32 %inc29, ptr %code, align 4
  br label %while.cond19, !llvm.loop !9

while.end:                                        ; preds = %while.cond19
  %29 = load i32, ptr %code, align 4
  %shl = shl i32 %29, 1
  store i32 %shl, ptr %code, align 4
  %30 = load i32, ptr %si, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, ptr %si, align 4
  br label %while.cond, !llvm.loop !10

while.end31:                                      ; preds = %while.cond
  %31 = load ptr, ptr %dtbl, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, ptr %31, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], ptr %ehufsi, i64 0, i64 0
  %32 = load ptr, ptr %dtbl, align 8
  %ehufsi32 = getelementptr inbounds %struct.c_derived_tbl, ptr %32, i32 0, i32 1
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %ehufsi32, i64 0, i64 0
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay33, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memset_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 256, i64 noundef %33) #6
  store i32 0, ptr %p, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc53, %while.end31
  %34 = load i32, ptr %p, align 4
  %35 = load i32, ptr %lastp, align 4
  %cmp36 = icmp slt i32 %34, %35
  br i1 %cmp36, label %for.body38, label %for.end55

for.body38:                                       ; preds = %for.cond35
  %36 = load i32, ptr %p, align 4
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds [257 x i32], ptr %huffcode, i64 0, i64 %idxprom39
  %37 = load i32, ptr %arrayidx40, align 4
  %38 = load ptr, ptr %dtbl, align 8
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %htbl.addr, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %p, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom41
  %41 = load i8, ptr %arrayidx42, align 1
  %idxprom43 = zext i8 %41 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], ptr %ehufco, i64 0, i64 %idxprom43
  store i32 %37, ptr %arrayidx44, align 4
  %42 = load i32, ptr %p, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [257 x i8], ptr %huffsize, i64 0, i64 %idxprom45
  %43 = load i8, ptr %arrayidx46, align 1
  %44 = load ptr, ptr %dtbl, align 8
  %ehufsi47 = getelementptr inbounds %struct.c_derived_tbl, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %htbl.addr, align 8
  %huffval48 = getelementptr inbounds %struct.JHUFF_TBL, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %p, align 4
  %idxprom49 = sext i32 %46 to i64
  %arrayidx50 = getelementptr inbounds [256 x i8], ptr %huffval48, i64 0, i64 %idxprom49
  %47 = load i8, ptr %arrayidx50, align 1
  %idxprom51 = zext i8 %47 to i64
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %ehufsi47, i64 0, i64 %idxprom51
  store i8 %43, ptr %arrayidx52, align 1
  br label %for.inc53

for.inc53:                                        ; preds = %for.body38
  %48 = load i32, ptr %p, align 4
  %inc54 = add nsw i32 %48, 1
  store i32 %inc54, ptr %p, align 4
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
  %arraydecay = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 33, i1 false)
  %arraydecay1 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay1, i8 0, i64 1028, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom
  store i32 -1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %freq.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, ptr %3, i64 256
  store i64 1, ptr %arrayidx2, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %while.end71, %for.end
  store i32 -1, ptr %c1, align 4
  store i64 1000000000, ptr %v, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.cond3
  %4 = load i32, ptr %i, align 4
  %cmp5 = icmp sle i32 %4, 256
  br i1 %cmp5, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond4
  %5 = load ptr, ptr %freq.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds i64, ptr %5, i64 %idxprom7
  %7 = load i64, ptr %arrayidx8, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %8 = load ptr, ptr %freq.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %8, i64 %idxprom9
  %10 = load i64, ptr %arrayidx10, align 8
  %11 = load i64, ptr %v, align 8
  %cmp11 = icmp sle i64 %10, %11
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %freq.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %12, i64 %idxprom12
  %14 = load i64, ptr %arrayidx13, align 8
  store i64 %14, ptr %v, align 8
  %15 = load i32, ptr %i, align 4
  store i32 %15, ptr %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body6
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond4, !llvm.loop !13

for.end16:                                        ; preds = %for.cond4
  store i32 -1, ptr %c2, align 4
  store i64 1000000000, ptr %v, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc33, %for.end16
  %17 = load i32, ptr %i, align 4
  %cmp18 = icmp sle i32 %17, 256
  br i1 %cmp18, label %for.body19, label %for.end35

for.body19:                                       ; preds = %for.cond17
  %18 = load ptr, ptr %freq.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i64, ptr %18, i64 %idxprom20
  %20 = load i64, ptr %arrayidx21, align 8
  %tobool22 = icmp ne i64 %20, 0
  br i1 %tobool22, label %land.lhs.true23, label %if.end32

land.lhs.true23:                                  ; preds = %for.body19
  %21 = load ptr, ptr %freq.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %21, i64 %idxprom24
  %23 = load i64, ptr %arrayidx25, align 8
  %24 = load i64, ptr %v, align 8
  %cmp26 = icmp sle i64 %23, %24
  br i1 %cmp26, label %land.lhs.true27, label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %c1, align 4
  %cmp28 = icmp ne i32 %25, %26
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %land.lhs.true27
  %27 = load ptr, ptr %freq.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds i64, ptr %27, i64 %idxprom30
  %29 = load i64, ptr %arrayidx31, align 8
  store i64 %29, ptr %v, align 8
  %30 = load i32, ptr %i, align 4
  store i32 %30, ptr %c2, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true27, %land.lhs.true23, %for.body19
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %31 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond17, !llvm.loop !14

for.end35:                                        ; preds = %for.cond17
  %32 = load i32, ptr %c2, align 4
  %cmp36 = icmp slt i32 %32, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.end35
  br label %for.end72

if.end38:                                         ; preds = %for.end35
  %33 = load ptr, ptr %freq.addr, align 8
  %34 = load i32, ptr %c2, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds i64, ptr %33, i64 %idxprom39
  %35 = load i64, ptr %arrayidx40, align 8
  %36 = load ptr, ptr %freq.addr, align 8
  %37 = load i32, ptr %c1, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds i64, ptr %36, i64 %idxprom41
  %38 = load i64, ptr %arrayidx42, align 8
  %add = add nsw i64 %38, %35
  store i64 %add, ptr %arrayidx42, align 8
  %39 = load ptr, ptr %freq.addr, align 8
  %40 = load i32, ptr %c2, align 4
  %idxprom43 = sext i32 %40 to i64
  %arrayidx44 = getelementptr inbounds i64, ptr %39, i64 %idxprom43
  store i64 0, ptr %arrayidx44, align 8
  %41 = load i32, ptr %c1, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom45
  %42 = load i32, ptr %arrayidx46, align 4
  %inc47 = add nsw i32 %42, 1
  store i32 %inc47, ptr %arrayidx46, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end38
  %43 = load i32, ptr %c1, align 4
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom48
  %44 = load i32, ptr %arrayidx49, align 4
  %cmp50 = icmp sge i32 %44, 0
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i32, ptr %c1, align 4
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom51
  %46 = load i32, ptr %arrayidx52, align 4
  store i32 %46, ptr %c1, align 4
  %47 = load i32, ptr %c1, align 4
  %idxprom53 = sext i32 %47 to i64
  %arrayidx54 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom53
  %48 = load i32, ptr %arrayidx54, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, ptr %arrayidx54, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %49 = load i32, ptr %c2, align 4
  %50 = load i32, ptr %c1, align 4
  %idxprom56 = sext i32 %50 to i64
  %arrayidx57 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom56
  store i32 %49, ptr %arrayidx57, align 4
  %51 = load i32, ptr %c2, align 4
  %idxprom58 = sext i32 %51 to i64
  %arrayidx59 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom58
  %52 = load i32, ptr %arrayidx59, align 4
  %inc60 = add nsw i32 %52, 1
  store i32 %inc60, ptr %arrayidx59, align 4
  br label %while.cond61

while.cond61:                                     ; preds = %while.body65, %while.end
  %53 = load i32, ptr %c2, align 4
  %idxprom62 = sext i32 %53 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom62
  %54 = load i32, ptr %arrayidx63, align 4
  %cmp64 = icmp sge i32 %54, 0
  br i1 %cmp64, label %while.body65, label %while.end71

while.body65:                                     ; preds = %while.cond61
  %55 = load i32, ptr %c2, align 4
  %idxprom66 = sext i32 %55 to i64
  %arrayidx67 = getelementptr inbounds [257 x i32], ptr %others, i64 0, i64 %idxprom66
  %56 = load i32, ptr %arrayidx67, align 4
  store i32 %56, ptr %c2, align 4
  %57 = load i32, ptr %c2, align 4
  %idxprom68 = sext i32 %57 to i64
  %arrayidx69 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom68
  %58 = load i32, ptr %arrayidx69, align 4
  %inc70 = add nsw i32 %58, 1
  store i32 %inc70, ptr %arrayidx69, align 4
  br label %while.cond61, !llvm.loop !16

while.end71:                                      ; preds = %while.cond61
  br label %for.cond3

for.end72:                                        ; preds = %if.then37
  store i32 0, ptr %i, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc92, %for.end72
  %59 = load i32, ptr %i, align 4
  %cmp74 = icmp sle i32 %59, 256
  br i1 %cmp74, label %for.body75, label %for.end94

for.body75:                                       ; preds = %for.cond73
  %60 = load i32, ptr %i, align 4
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom76
  %61 = load i32, ptr %arrayidx77, align 4
  %tobool78 = icmp ne i32 %61, 0
  br i1 %tobool78, label %if.then79, label %if.end91

if.then79:                                        ; preds = %for.body75
  %62 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %62 to i64
  %arrayidx81 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom80
  %63 = load i32, ptr %arrayidx81, align 4
  %cmp82 = icmp sgt i32 %63, 32
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.then79
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 5
  store i32 38, ptr %msg_code, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err84, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %error_exit, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  call void %68(ptr noundef %69)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then79
  %70 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %70 to i64
  %arrayidx87 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom86
  %71 = load i32, ptr %arrayidx87, align 4
  %idxprom88 = sext i32 %71 to i64
  %arrayidx89 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom88
  %72 = load i8, ptr %arrayidx89, align 1
  %inc90 = add i8 %72, 1
  store i8 %inc90, ptr %arrayidx89, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.end85, %for.body75
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %73 = load i32, ptr %i, align 4
  %inc93 = add nsw i32 %73, 1
  store i32 %inc93, ptr %i, align 4
  br label %for.cond73, !llvm.loop !17

for.end94:                                        ; preds = %for.cond73
  store i32 32, ptr %i, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc131, %for.end94
  %74 = load i32, ptr %i, align 4
  %cmp96 = icmp sgt i32 %74, 16
  br i1 %cmp96, label %for.body97, label %for.end133

for.body97:                                       ; preds = %for.cond95
  br label %while.cond98

while.cond98:                                     ; preds = %while.end111, %for.body97
  %75 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %75 to i64
  %arrayidx100 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom99
  %76 = load i8, ptr %arrayidx100, align 1
  %conv = zext i8 %76 to i32
  %cmp101 = icmp sgt i32 %conv, 0
  br i1 %cmp101, label %while.body103, label %while.end130

while.body103:                                    ; preds = %while.cond98
  %77 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %77, 2
  store i32 %sub, ptr %j, align 4
  br label %while.cond104

while.cond104:                                    ; preds = %while.body110, %while.body103
  %78 = load i32, ptr %j, align 4
  %idxprom105 = sext i32 %78 to i64
  %arrayidx106 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom105
  %79 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %79 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %while.body110, label %while.end111

while.body110:                                    ; preds = %while.cond104
  %80 = load i32, ptr %j, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond104, !llvm.loop !18

while.end111:                                     ; preds = %while.cond104
  %81 = load i32, ptr %i, align 4
  %idxprom112 = sext i32 %81 to i64
  %arrayidx113 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom112
  %82 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %82 to i32
  %sub115 = sub nsw i32 %conv114, 2
  %conv116 = trunc i32 %sub115 to i8
  store i8 %conv116, ptr %arrayidx113, align 1
  %83 = load i32, ptr %i, align 4
  %sub117 = sub nsw i32 %83, 1
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom118
  %84 = load i8, ptr %arrayidx119, align 1
  %inc120 = add i8 %84, 1
  store i8 %inc120, ptr %arrayidx119, align 1
  %85 = load i32, ptr %j, align 4
  %add121 = add nsw i32 %85, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom122
  %86 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %86 to i32
  %add125 = add nsw i32 %conv124, 2
  %conv126 = trunc i32 %add125 to i8
  store i8 %conv126, ptr %arrayidx123, align 1
  %87 = load i32, ptr %j, align 4
  %idxprom127 = sext i32 %87 to i64
  %arrayidx128 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom127
  %88 = load i8, ptr %arrayidx128, align 1
  %dec129 = add i8 %88, -1
  store i8 %dec129, ptr %arrayidx128, align 1
  br label %while.cond98, !llvm.loop !19

while.end130:                                     ; preds = %while.cond98
  br label %for.inc131

for.inc131:                                       ; preds = %while.end130
  %89 = load i32, ptr %i, align 4
  %dec132 = add nsw i32 %89, -1
  store i32 %dec132, ptr %i, align 4
  br label %for.cond95, !llvm.loop !20

for.end133:                                       ; preds = %for.cond95
  br label %while.cond134

while.cond134:                                    ; preds = %while.body140, %for.end133
  %90 = load i32, ptr %i, align 4
  %idxprom135 = sext i32 %90 to i64
  %arrayidx136 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom135
  %91 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %91 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %while.body140, label %while.end142

while.body140:                                    ; preds = %while.cond134
  %92 = load i32, ptr %i, align 4
  %dec141 = add nsw i32 %92, -1
  store i32 %dec141, ptr %i, align 4
  br label %while.cond134, !llvm.loop !21

while.end142:                                     ; preds = %while.cond134
  %93 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %93 to i64
  %arrayidx144 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 %idxprom143
  %94 = load i8, ptr %arrayidx144, align 1
  %dec145 = add i8 %94, -1
  store i8 %dec145, ptr %arrayidx144, align 1
  %95 = load ptr, ptr %htbl.addr, align 8
  %bits146 = getelementptr inbounds %struct.JHUFF_TBL, ptr %95, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [17 x i8], ptr %bits146, i64 0, i64 0
  %arraydecay148 = getelementptr inbounds [33 x i8], ptr %bits, i64 0, i64 0
  %96 = load ptr, ptr %htbl.addr, align 8
  %bits149 = getelementptr inbounds %struct.JHUFF_TBL, ptr %96, i32 0, i32 0
  %arraydecay150 = getelementptr inbounds [17 x i8], ptr %bits149, i64 0, i64 0
  %97 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay150, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %arraydecay147, ptr noundef %arraydecay148, i64 noundef 17, i64 noundef %97) #6
  store i32 0, ptr %p, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc172, %while.end142
  %98 = load i32, ptr %i, align 4
  %cmp152 = icmp sle i32 %98, 32
  br i1 %cmp152, label %for.body154, label %for.end174

for.body154:                                      ; preds = %for.cond151
  store i32 0, ptr %j, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc169, %for.body154
  %99 = load i32, ptr %j, align 4
  %cmp156 = icmp sle i32 %99, 255
  br i1 %cmp156, label %for.body158, label %for.end171

for.body158:                                      ; preds = %for.cond155
  %100 = load i32, ptr %j, align 4
  %idxprom159 = sext i32 %100 to i64
  %arrayidx160 = getelementptr inbounds [257 x i32], ptr %codesize, i64 0, i64 %idxprom159
  %101 = load i32, ptr %arrayidx160, align 4
  %102 = load i32, ptr %i, align 4
  %cmp161 = icmp eq i32 %101, %102
  br i1 %cmp161, label %if.then163, label %if.end168

if.then163:                                       ; preds = %for.body158
  %103 = load i32, ptr %j, align 4
  %conv164 = trunc i32 %103 to i8
  %104 = load ptr, ptr %htbl.addr, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %p, align 4
  %idxprom165 = sext i32 %105 to i64
  %arrayidx166 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom165
  store i8 %conv164, ptr %arrayidx166, align 1
  %106 = load i32, ptr %p, align 4
  %inc167 = add nsw i32 %106, 1
  store i32 %inc167, ptr %p, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %for.body158
  br label %for.inc169

for.inc169:                                       ; preds = %if.end168
  %107 = load i32, ptr %j, align 4
  %inc170 = add nsw i32 %107, 1
  store i32 %inc170, ptr %j, align 4
  br label %for.cond155, !llvm.loop !22

for.end171:                                       ; preds = %for.cond155
  br label %for.inc172

for.inc172:                                       ; preds = %for.end171
  %108 = load i32, ptr %i, align 4
  %inc173 = add nsw i32 %108, 1
  store i32 %inc173, ptr %i, align 4
  br label %for.cond151, !llvm.loop !23

for.end174:                                       ; preds = %for.cond151
  %109 = load ptr, ptr %htbl.addr, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %109, i32 0, i32 2
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
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 192)
  store ptr %call, ptr %entropy, align 8
  %4 = load ptr, ptr %entropy, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 59
  store ptr %4, ptr %entropy1, align 8
  %6 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub, i32 0, i32 0
  store ptr @start_pass_huff, ptr %start_pass, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ac_derived_tbls, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %10 = load ptr, ptr %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds [4 x ptr], ptr %dc_derived_tbls, i64 0, i64 %idxprom2
  store ptr null, ptr %arrayidx3, align 8
  %12 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs, i64 0, i64 %idxprom4
  store ptr null, ptr %arrayidx5, align 8
  %14 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs, i64 0, i64 %idxprom6
  store ptr null, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
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
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %gather_statistics, ptr %gather_statistics.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load i32, ptr %gather_statistics.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, ptr %3, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub, i32 0, i32 1
  store ptr @encode_mcu_gather, ptr %encode_mcu, align 8
  %4 = load ptr, ptr %entropy, align 8
  %pub2 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub2, i32 0, i32 2
  store ptr @finish_pass_gather, ptr %finish_pass, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %entropy, align 8
  %pub3 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i32 0, i32 0
  %encode_mcu4 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub3, i32 0, i32 1
  store ptr @encode_mcu_huff, ptr %encode_mcu4, align 8
  %6 = load ptr, ptr %entropy, align 8
  %pub5 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %6, i32 0, i32 0
  %finish_pass6 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub5, i32 0, i32 2
  store ptr @finish_pass_huff, ptr %finish_pass6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %ci, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 41
  %9 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 42
  %11 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %compptr, align 8
  %13 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %dc_tbl_no, align 4
  store i32 %14, ptr %dctbl, align 4
  %15 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %ac_tbl_no, align 8
  store i32 %16, ptr %actbl, align 4
  %17 = load i32, ptr %dctbl, align 4
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i32, ptr %dctbl, align 4
  %cmp8 = icmp sge i32 %18, 4
  br i1 %cmp8, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %19 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %dctbl, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom10
  %21 = load ptr, ptr %arrayidx11, align 8
  %cmp12 = icmp eq ptr %21, null
  br i1 %cmp12, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %22 = load i32, ptr %gather_statistics.addr, align 4
  %tobool13 = icmp ne i32 %22, 0
  br i1 %tobool13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %land.lhs.true, %lor.lhs.false, %for.body
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5
  store i32 49, ptr %msg_code, align 8
  %25 = load i32, ptr %dctbl, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err15, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %25, ptr %arrayidx16, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err17, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %error_exit, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true, %lor.lhs.false9
  %32 = load i32, ptr %actbl, align 4
  %cmp19 = icmp slt i32 %32, 0
  br i1 %cmp19, label %if.then28, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end18
  %33 = load i32, ptr %actbl, align 4
  %cmp21 = icmp sge i32 %33, 4
  br i1 %cmp21, label %if.then28, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %34 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 17
  %35 = load i32, ptr %actbl, align 4
  %idxprom23 = sext i32 %35 to i64
  %arrayidx24 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom23
  %36 = load ptr, ptr %arrayidx24, align 8
  %cmp25 = icmp eq ptr %36, null
  br i1 %cmp25, label %land.lhs.true26, label %if.end36

land.lhs.true26:                                  ; preds = %lor.lhs.false22
  %37 = load i32, ptr %gather_statistics.addr, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %if.end36, label %if.then28

if.then28:                                        ; preds = %land.lhs.true26, %lor.lhs.false20, %if.end18
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err29, align 8
  %msg_code30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 5
  store i32 49, ptr %msg_code30, align 8
  %40 = load i32, ptr %actbl, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %err31, align 8
  %msg_parm32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [8 x i32], ptr %msg_parm32, i64 0, i64 0
  store i32 %40, ptr %arrayidx33, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %err34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %err34, align 8
  %error_exit35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %error_exit35, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  call void %45(ptr noundef %46)
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %land.lhs.true26, %lor.lhs.false22
  %47 = load i32, ptr %gather_statistics.addr, align 4
  %tobool37 = icmp ne i32 %47, 0
  br i1 %tobool37, label %if.then38, label %if.else72

if.then38:                                        ; preds = %if.end36
  %48 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %48, i32 0, i32 6
  %49 = load i32, ptr %dctbl, align 4
  %idxprom39 = sext i32 %49 to i64
  %arrayidx40 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs, i64 0, i64 %idxprom39
  %50 = load ptr, ptr %arrayidx40, align 8
  %cmp41 = icmp eq ptr %50, null
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.then38
  %51 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %alloc_small, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %53(ptr noundef %54, i32 noundef 1, i64 noundef 2056)
  %55 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs43 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %55, i32 0, i32 6
  %56 = load i32, ptr %dctbl, align 4
  %idxprom44 = sext i32 %56 to i64
  %arrayidx45 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs43, i64 0, i64 %idxprom44
  store ptr %call, ptr %arrayidx45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then38
  %57 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs47 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %57, i32 0, i32 6
  %58 = load i32, ptr %dctbl, align 4
  %idxprom48 = sext i32 %58 to i64
  %arrayidx49 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs47, i64 0, i64 %idxprom48
  %59 = load ptr, ptr %arrayidx49, align 8
  %60 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs50 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %60, i32 0, i32 6
  %61 = load i32, ptr %dctbl, align 4
  %idxprom51 = sext i32 %61 to i64
  %arrayidx52 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs50, i64 0, i64 %idxprom51
  %62 = load ptr, ptr %arrayidx52, align 8
  %63 = call i64 @llvm.objectsize.i64.p0(ptr %62, i1 false, i1 true, i1 false)
  %call53 = call ptr @__memset_chk(ptr noundef %59, i32 noundef 0, i64 noundef 2056, i64 noundef %63) #6
  %64 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %64, i32 0, i32 7
  %65 = load i32, ptr %actbl, align 4
  %idxprom54 = sext i32 %65 to i64
  %arrayidx55 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs, i64 0, i64 %idxprom54
  %66 = load ptr, ptr %arrayidx55, align 8
  %cmp56 = icmp eq ptr %66, null
  br i1 %cmp56, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.end46
  %67 = load ptr, ptr %cinfo.addr, align 8
  %mem58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %mem58, align 8
  %alloc_small59 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %alloc_small59, align 8
  %70 = load ptr, ptr %cinfo.addr, align 8
  %call60 = call ptr %69(ptr noundef %70, i32 noundef 1, i64 noundef 2056)
  %71 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs61 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %71, i32 0, i32 7
  %72 = load i32, ptr %actbl, align 4
  %idxprom62 = sext i32 %72 to i64
  %arrayidx63 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs61, i64 0, i64 %idxprom62
  store ptr %call60, ptr %arrayidx63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.end46
  %73 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs65 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %73, i32 0, i32 7
  %74 = load i32, ptr %actbl, align 4
  %idxprom66 = sext i32 %74 to i64
  %arrayidx67 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs65, i64 0, i64 %idxprom66
  %75 = load ptr, ptr %arrayidx67, align 8
  %76 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs68 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %76, i32 0, i32 7
  %77 = load i32, ptr %actbl, align 4
  %idxprom69 = sext i32 %77 to i64
  %arrayidx70 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs68, i64 0, i64 %idxprom69
  %78 = load ptr, ptr %arrayidx70, align 8
  %79 = call i64 @llvm.objectsize.i64.p0(ptr %78, i1 false, i1 true, i1 false)
  %call71 = call ptr @__memset_chk(ptr noundef %75, i32 noundef 0, i64 noundef 2056, i64 noundef %79) #6
  br label %if.end83

if.else72:                                        ; preds = %if.end36
  %80 = load ptr, ptr %cinfo.addr, align 8
  %81 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs73 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %81, i32 0, i32 16
  %82 = load i32, ptr %dctbl, align 4
  %idxprom74 = sext i32 %82 to i64
  %arrayidx75 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs73, i64 0, i64 %idxprom74
  %83 = load ptr, ptr %arrayidx75, align 8
  %84 = load ptr, ptr %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, ptr %84, i32 0, i32 4
  %85 = load i32, ptr %dctbl, align 4
  %idxprom76 = sext i32 %85 to i64
  %arrayidx77 = getelementptr inbounds [4 x ptr], ptr %dc_derived_tbls, i64 0, i64 %idxprom76
  call void @jpeg_make_c_derived_tbl(ptr noundef %80, ptr noundef %83, ptr noundef %arrayidx77)
  %86 = load ptr, ptr %cinfo.addr, align 8
  %87 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs78 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %87, i32 0, i32 17
  %88 = load i32, ptr %actbl, align 4
  %idxprom79 = sext i32 %88 to i64
  %arrayidx80 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs78, i64 0, i64 %idxprom79
  %89 = load ptr, ptr %arrayidx80, align 8
  %90 = load ptr, ptr %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, ptr %90, i32 0, i32 5
  %91 = load i32, ptr %actbl, align 4
  %idxprom81 = sext i32 %91 to i64
  %arrayidx82 = getelementptr inbounds [4 x ptr], ptr %ac_derived_tbls, i64 0, i64 %idxprom81
  call void @jpeg_make_c_derived_tbl(ptr noundef %86, ptr noundef %89, ptr noundef %arrayidx82)
  br label %if.end83

if.end83:                                         ; preds = %if.else72, %if.end64
  %92 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, ptr %92, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 2
  %93 = load i32, ptr %ci, align 4
  %idxprom84 = sext i32 %93 to i64
  %arrayidx85 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom84
  store i32 0, ptr %arrayidx85, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end83
  %94 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %95 = load ptr, ptr %entropy, align 8
  %saved86 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %95, i32 0, i32 1
  %put_buffer = getelementptr inbounds %struct.savable_state, ptr %saved86, i32 0, i32 0
  store i64 0, ptr %put_buffer, align 8
  %96 = load ptr, ptr %entropy, align 8
  %saved87 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %96, i32 0, i32 1
  %put_bits = getelementptr inbounds %struct.savable_state, ptr %saved87, i32 0, i32 1
  store i32 0, ptr %put_bits, align 8
  %97 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %97, i32 0, i32 29
  %98 = load i32, ptr %restart_interval, align 8
  %99 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, ptr %99, i32 0, i32 2
  store i32 %98, ptr %restarts_to_go, align 8
  %100 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, ptr %100, i32 0, i32 3
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 29
  %3 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i32, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 41
  %8 = load i32, ptr %comps_in_scan, align 4
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, ptr %9, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %saved, i32 0, i32 2
  %10 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 29
  %13 = load i32, ptr %restart_interval4, align 8
  %14 = load ptr, ptr %entropy, align 8
  %restarts_to_go5 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %14, i32 0, i32 2
  store i32 %13, ptr %restarts_to_go5, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %15 = load ptr, ptr %entropy, align 8
  %restarts_to_go6 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %restarts_to_go6, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %restarts_to_go6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  store i32 0, ptr %blkn, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc34, %if.end7
  %17 = load i32, ptr %blkn, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 45
  %19 = load i32, ptr %blocks_in_MCU, align 8
  %cmp9 = icmp slt i32 %17, %19
  br i1 %cmp9, label %for.body10, label %for.end36

for.body10:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 46
  %21 = load i32, ptr %blkn, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 %idxprom11
  %22 = load i32, ptr %arrayidx12, align 4
  store i32 %22, ptr %ci, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 42
  %24 = load i32, ptr %ci, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom13
  %25 = load ptr, ptr %arrayidx14, align 8
  store ptr %25, ptr %compptr, align 8
  %26 = load ptr, ptr %MCU_data.addr, align 8
  %27 = load i32, ptr %blkn, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %26, i64 %idxprom15
  %28 = load ptr, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [64 x i16], ptr %28, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], ptr %arrayidx17, i64 0, i64 0
  %29 = load ptr, ptr %entropy, align 8
  %saved18 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %29, i32 0, i32 1
  %last_dc_val19 = getelementptr inbounds %struct.savable_state, ptr %saved18, i32 0, i32 2
  %30 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], ptr %last_dc_val19, i64 0, i64 %idxprom20
  %31 = load i32, ptr %arrayidx21, align 4
  %32 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %dc_tbl_no, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs, i64 0, i64 %idxprom22
  %35 = load ptr, ptr %arrayidx23, align 8
  %36 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %ac_tbl_no, align 8
  %idxprom24 = sext i32 %38 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs, i64 0, i64 %idxprom24
  %39 = load ptr, ptr %arrayidx25, align 8
  call void @htest_one_block(ptr noundef %arraydecay, i32 noundef %31, ptr noundef %35, ptr noundef %39)
  %40 = load ptr, ptr %MCU_data.addr, align 8
  %41 = load i32, ptr %blkn, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %40, i64 %idxprom26
  %42 = load ptr, ptr %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [64 x i16], ptr %42, i64 0
  %arrayidx29 = getelementptr inbounds [64 x i16], ptr %arrayidx28, i64 0, i64 0
  %43 = load i16, ptr %arrayidx29, align 2
  %conv = sext i16 %43 to i32
  %44 = load ptr, ptr %entropy, align 8
  %saved30 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %44, i32 0, i32 1
  %last_dc_val31 = getelementptr inbounds %struct.savable_state, ptr %saved30, i32 0, i32 2
  %45 = load i32, ptr %ci, align 4
  %idxprom32 = sext i32 %45 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], ptr %last_dc_val31, i64 0, i64 %idxprom32
  store i32 %conv, ptr %arrayidx33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body10
  %46 = load i32, ptr %blkn, align 4
  %inc35 = add nsw i32 %46, 1
  store i32 %inc35, ptr %blkn, align 4
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
  %compptr = alloca ptr, align 8
  %htblptr = alloca ptr, align 8
  %did_dc = alloca [4 x i32], align 4
  %did_ac = alloca [4 x i32], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %arraydecay = getelementptr inbounds [4 x i32], ptr %did_dc, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay, i8 0, i64 16, i1 false)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %did_ac, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay2, i8 0, i64 16, i1 false)
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ci, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 42
  %6 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %compptr, align 8
  %8 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %dc_tbl_no, align 4
  store i32 %9, ptr %dctbl, align 4
  %10 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %ac_tbl_no, align 8
  store i32 %11, ptr %actbl, align 4
  %12 = load i32, ptr %dctbl, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %did_dc, i64 0, i64 %idxprom3
  %13 = load i32, ptr %arrayidx4, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %dctbl, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom5
  store ptr %arrayidx6, ptr %htblptr, align 8
  %16 = load ptr, ptr %htblptr, align 8
  %17 = load ptr, ptr %16, align 8
  %cmp7 = icmp eq ptr %17, null
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %18 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_huff_table(ptr noundef %18)
  %19 = load ptr, ptr %htblptr, align 8
  store ptr %call, ptr %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %htblptr, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %dctbl, align 4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds [4 x ptr], ptr %dc_count_ptrs, i64 0, i64 %idxprom9
  %25 = load ptr, ptr %arrayidx10, align 8
  call void @jpeg_gen_optimal_table(ptr noundef %20, ptr noundef %22, ptr noundef %25)
  %26 = load i32, ptr %dctbl, align 4
  %idxprom11 = sext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %did_dc, i64 0, i64 %idxprom11
  store i32 1, ptr %arrayidx12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  %27 = load i32, ptr %actbl, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %did_ac, i64 0, i64 %idxprom14
  %28 = load i32, ptr %arrayidx15, align 4
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.end28, label %if.then17

if.then17:                                        ; preds = %if.end13
  %29 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 17
  %30 = load i32, ptr %actbl, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom18
  store ptr %arrayidx19, ptr %htblptr, align 8
  %31 = load ptr, ptr %htblptr, align 8
  %32 = load ptr, ptr %31, align 8
  %cmp20 = icmp eq ptr %32, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then17
  %33 = load ptr, ptr %cinfo.addr, align 8
  %call22 = call ptr @jpeg_alloc_huff_table(ptr noundef %33)
  %34 = load ptr, ptr %htblptr, align 8
  store ptr %call22, ptr %34, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then17
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load ptr, ptr %htblptr, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, ptr %38, i32 0, i32 7
  %39 = load i32, ptr %actbl, align 4
  %idxprom24 = sext i32 %39 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %ac_count_ptrs, i64 0, i64 %idxprom24
  %40 = load ptr, ptr %arrayidx25, align 8
  call void @jpeg_gen_optimal_table(ptr noundef %35, ptr noundef %37, ptr noundef %40)
  %41 = load i32, ptr %actbl, align 4
  %idxprom26 = sext i32 %41 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %did_ac, i64 0, i64 %idxprom26
  store i32 1, ptr %arrayidx27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %42 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %ci, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_output_byte, align 8
  %next_output_byte2 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 0
  store ptr %4, ptr %next_output_byte2, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 1
  store i64 %7, ptr %free_in_buffer4, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 2
  %8 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur, ptr align 8 %saved, i64 32, i1 false)
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 3
  store ptr %9, ptr %cinfo5, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 29
  %11 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %next_restart_num, align 4
  %call = call i32 @emit_restart(ptr noundef %state, i32 noundef %15)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  store i32 0, ptr %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %16 = load i32, ptr %blkn, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 45
  %18 = load i32, ptr %blocks_in_MCU, align 8
  %cmp11 = icmp slt i32 %16, %18
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 46
  %20 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  store i32 %21, ptr %ci, align 4
  %22 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 42
  %23 = load i32, ptr %ci, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom12
  %24 = load ptr, ptr %arrayidx13, align 8
  store ptr %24, ptr %compptr, align 8
  %25 = load ptr, ptr %MCU_data.addr, align 8
  %26 = load i32, ptr %blkn, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %25, i64 %idxprom14
  %27 = load ptr, ptr %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [64 x i16], ptr %27, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], ptr %arrayidx16, i64 0, i64 0
  %cur17 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %cur17, i32 0, i32 2
  %28 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom18
  %29 = load i32, ptr %arrayidx19, align 4
  %30 = load ptr, ptr %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %dc_tbl_no, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %dc_derived_tbls, i64 0, i64 %idxprom20
  %33 = load ptr, ptr %arrayidx21, align 8
  %34 = load ptr, ptr %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %ac_tbl_no, align 8
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds [4 x ptr], ptr %ac_derived_tbls, i64 0, i64 %idxprom22
  %37 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 @encode_one_block(ptr noundef %state, ptr noundef %arraydecay, i32 noundef %29, ptr noundef %33, ptr noundef %37)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %for.body
  %38 = load ptr, ptr %MCU_data.addr, align 8
  %39 = load i32, ptr %blkn, align 4
  %idxprom28 = sext i32 %39 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %38, i64 %idxprom28
  %40 = load ptr, ptr %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [64 x i16], ptr %40, i64 0
  %arrayidx31 = getelementptr inbounds [64 x i16], ptr %arrayidx30, i64 0, i64 0
  %41 = load i16, ptr %arrayidx31, align 2
  %conv = sext i16 %41 to i32
  %cur32 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 2
  %last_dc_val33 = getelementptr inbounds %struct.savable_state, ptr %cur32, i32 0, i32 2
  %42 = load i32, ptr %ci, align 4
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds [4 x i32], ptr %last_dc_val33, i64 0, i64 %idxprom34
  store i32 %conv, ptr %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %43 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %blkn, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %next_output_byte36 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 0
  %44 = load ptr, ptr %next_output_byte36, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %dest37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %dest37, align 8
  %next_output_byte38 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %46, i32 0, i32 0
  store ptr %44, ptr %next_output_byte38, align 8
  %free_in_buffer39 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 1
  %47 = load i64, ptr %free_in_buffer39, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %dest40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %dest40, align 8
  %free_in_buffer41 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i32 0, i32 1
  store i64 %47, ptr %free_in_buffer41, align 8
  %50 = load ptr, ptr %entropy, align 8
  %saved42 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %50, i32 0, i32 1
  %cur43 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %saved42, ptr align 8 %cur43, i64 32, i1 false)
  %51 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 29
  %52 = load i32, ptr %restart_interval44, align 8
  %tobool45 = icmp ne i32 %52, 0
  br i1 %tobool45, label %if.then46, label %if.end58

if.then46:                                        ; preds = %for.end
  %53 = load ptr, ptr %entropy, align 8
  %restarts_to_go47 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %restarts_to_go47, align 8
  %cmp48 = icmp eq i32 %54, 0
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.then46
  %55 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 29
  %56 = load i32, ptr %restart_interval51, align 8
  %57 = load ptr, ptr %entropy, align 8
  %restarts_to_go52 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %57, i32 0, i32 2
  store i32 %56, ptr %restarts_to_go52, align 8
  %58 = load ptr, ptr %entropy, align 8
  %next_restart_num53 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %58, i32 0, i32 3
  %59 = load i32, ptr %next_restart_num53, align 4
  %inc54 = add nsw i32 %59, 1
  store i32 %inc54, ptr %next_restart_num53, align 4
  %60 = load ptr, ptr %entropy, align 8
  %next_restart_num55 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %next_restart_num55, align 4
  %and = and i32 %61, 7
  store i32 %and, ptr %next_restart_num55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.then46
  %62 = load ptr, ptr %entropy, align 8
  %restarts_to_go57 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %restarts_to_go57, align 8
  %dec = add i32 %63, -1
  store i32 %dec, ptr %restarts_to_go57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then26, %if.then8
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_huff(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %state = alloca %struct.working_state, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_output_byte, align 8
  %next_output_byte2 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 0
  store ptr %4, ptr %next_output_byte2, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 1
  store i64 %7, ptr %free_in_buffer4, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 2
  %8 = load ptr, ptr %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur, ptr align 8 %saved, i64 32, i1 false)
  %9 = load ptr, ptr %cinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 3
  store ptr %9, ptr %cinfo5, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jchuff_0(ptr noundef %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next_output_byte7 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 0
  %16 = load ptr, ptr %next_output_byte7, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %dest8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %dest8, align 8
  %next_output_byte9 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %18, i32 0, i32 0
  store ptr %16, ptr %next_output_byte9, align 8
  %free_in_buffer10 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 1
  %19 = load i64, ptr %free_in_buffer10, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %dest11, align 8
  %free_in_buffer12 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %21, i32 0, i32 1
  store i64 %19, ptr %free_in_buffer12, align 8
  %22 = load ptr, ptr %entropy, align 8
  %saved13 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %22, i32 0, i32 1
  %cur14 = getelementptr inbounds %struct.working_state, ptr %state, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %saved13, ptr align 8 %cur14, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @htest_one_block(ptr noundef %block, i32 noundef %last_dc_val, ptr noundef %dc_counts, ptr noundef %ac_counts) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dc_counts.addr = alloca ptr, align 8
  %ac_counts.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %block, ptr %block.addr, align 8
  store i32 %last_dc_val, ptr %last_dc_val.addr, align 4
  store ptr %dc_counts, ptr %dc_counts.addr, align 8
  store ptr %ac_counts, ptr %ac_counts.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 0
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, ptr %last_dc_val.addr, align 4
  %sub = sub nsw i32 %conv, %2
  store i32 %sub, ptr %temp, align 4
  %3 = load i32, ptr %temp, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %temp, align 4
  %sub2 = sub nsw i32 0, %4
  store i32 %sub2, ptr %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %temp, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %nbits, align 4
  %7 = load i32, ptr %temp, align 4
  %shr = ashr i32 %7, 1
  store i32 %shr, ptr %temp, align 4
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %dc_counts.addr, align 8
  %9 = load i32, ptr %nbits, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 %idxprom
  %10 = load i64, ptr %arrayidx3, align 8
  %inc4 = add nsw i64 %10, 1
  store i64 %inc4, ptr %arrayidx3, align 8
  store i32 0, ptr %r, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %11 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %11, 64
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %block.addr, align 8
  %13 = load i32, ptr %k, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom7
  %14 = load i32, ptr %arrayidx8, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i16, ptr %12, i64 %idxprom9
  %15 = load i16, ptr %arrayidx10, align 2
  %conv11 = sext i16 %15 to i32
  store i32 %conv11, ptr %temp, align 4
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body
  %16 = load i32, ptr %r, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, ptr %r, align 4
  br label %if.end38

if.else:                                          ; preds = %for.body
  br label %while.cond16

while.cond16:                                     ; preds = %while.body19, %if.else
  %17 = load i32, ptr %r, align 4
  %cmp17 = icmp sgt i32 %17, 15
  br i1 %cmp17, label %while.body19, label %while.end23

while.body19:                                     ; preds = %while.cond16
  %18 = load ptr, ptr %ac_counts.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, ptr %18, i64 240
  %19 = load i64, ptr %arrayidx20, align 8
  %inc21 = add nsw i64 %19, 1
  store i64 %inc21, ptr %arrayidx20, align 8
  %20 = load i32, ptr %r, align 4
  %sub22 = sub nsw i32 %20, 16
  store i32 %sub22, ptr %r, align 4
  br label %while.cond16, !llvm.loop !31

while.end23:                                      ; preds = %while.cond16
  %21 = load i32, ptr %temp, align 4
  %cmp24 = icmp slt i32 %21, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.end23
  %22 = load i32, ptr %temp, align 4
  %sub27 = sub nsw i32 0, %22
  store i32 %sub27, ptr %temp, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.end23
  store i32 1, ptr %nbits, align 4
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %if.end28
  %23 = load i32, ptr %temp, align 4
  %shr30 = ashr i32 %23, 1
  store i32 %shr30, ptr %temp, align 4
  %tobool31 = icmp ne i32 %shr30, 0
  br i1 %tobool31, label %while.body32, label %while.end34

while.body32:                                     ; preds = %while.cond29
  %24 = load i32, ptr %nbits, align 4
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %nbits, align 4
  br label %while.cond29, !llvm.loop !32

while.end34:                                      ; preds = %while.cond29
  %25 = load ptr, ptr %ac_counts.addr, align 8
  %26 = load i32, ptr %r, align 4
  %shl = shl i32 %26, 4
  %27 = load i32, ptr %nbits, align 4
  %add = add nsw i32 %shl, %27
  %idxprom35 = sext i32 %add to i64
  %arrayidx36 = getelementptr inbounds i64, ptr %25, i64 %idxprom35
  %28 = load i64, ptr %arrayidx36, align 8
  %inc37 = add nsw i64 %28, 1
  store i64 %inc37, ptr %arrayidx36, align 8
  store i32 0, ptr %r, align 4
  br label %if.end38

if.end38:                                         ; preds = %while.end34, %if.then14
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %29 = load i32, ptr %k, align 4
  %inc39 = add nsw i32 %29, 1
  store i32 %inc39, ptr %k, align 4
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %r, align 4
  %cmp40 = icmp sgt i32 %30, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %for.end
  %31 = load ptr, ptr %ac_counts.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %31, i64 0
  %32 = load i64, ptr %arrayidx43, align 8
  %inc44 = add nsw i64 %32, 1
  store i64 %inc44, ptr %arrayidx43, align 8
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
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store i32 %restart_num, ptr %restart_num.addr, align 4
  %0 = load ptr, ptr %state.addr, align 8
  %call = call i32 @flush_bits(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.working_state, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 -1, ptr %2, align 1
  %3 = load ptr, ptr %state.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.working_state, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %state.addr, align 8
  %call2 = call i32 @dump_buffer(ptr noundef %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then1
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then1
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load i32, ptr %restart_num.addr, align 4
  %add = add nsw i32 208, %6
  %conv = trunc i32 %add to i8
  %7 = load ptr, ptr %state.addr, align 8
  %next_output_byte7 = getelementptr inbounds %struct.working_state, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next_output_byte7, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr8, ptr %next_output_byte7, align 8
  store i8 %conv, ptr %8, align 1
  %9 = load ptr, ptr %state.addr, align 8
  %free_in_buffer9 = getelementptr inbounds %struct.working_state, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %free_in_buffer9, align 8
  %dec10 = add i64 %10, -1
  store i64 %dec10, ptr %free_in_buffer9, align 8
  %cmp11 = icmp eq i64 %dec10, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end6
  %11 = load ptr, ptr %state.addr, align 8
  %call14 = call i32 @dump_buffer(ptr noundef %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then13
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end6
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %12 = load i32, ptr %ci, align 4
  %13 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %cinfo, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 41
  %15 = load i32, ptr %comps_in_scan, align 4
  %cmp19 = icmp slt i32 %12, %15
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %16, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, ptr %cur, i32 0, i32 2
  %17 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then16, %if.then4, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_one_block(ptr noundef %state, ptr noundef %block, i32 noundef %last_dc_val, ptr noundef %dctbl, ptr noundef %actbl) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dctbl.addr = alloca ptr, align 8
  %actbl.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store i32 %last_dc_val, ptr %last_dc_val.addr, align 4
  store ptr %dctbl, ptr %dctbl.addr, align 8
  store ptr %actbl, ptr %actbl.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 0
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, ptr %last_dc_val.addr, align 4
  %sub = sub nsw i32 %conv, %2
  store i32 %sub, ptr %temp2, align 4
  store i32 %sub, ptr %temp, align 4
  %3 = load i32, ptr %temp, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %temp, align 4
  %sub2 = sub nsw i32 0, %4
  store i32 %sub2, ptr %temp, align 4
  %5 = load i32, ptr %temp2, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %temp2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, ptr %temp, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %nbits, align 4
  %8 = load i32, ptr %temp, align 4
  %shr = ashr i32 %8, 1
  store i32 %shr, ptr %temp, align 4
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %state.addr, align 8
  %10 = load ptr, ptr %dctbl.addr, align 8
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nbits, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], ptr %ehufco, i64 0, i64 %idxprom
  %12 = load i32, ptr %arrayidx3, align 4
  %13 = load ptr, ptr %dctbl.addr, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nbits, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr %ehufsi, i64 0, i64 %idxprom4
  %15 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %15 to i32
  %call = call i32 @emit_bits(ptr noundef %9, i32 noundef %12, i32 noundef %conv6)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %16 = load i32, ptr %nbits, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end9
  %17 = load ptr, ptr %state.addr, align 8
  %18 = load i32, ptr %temp2, align 4
  %19 = load i32, ptr %nbits, align 4
  %call12 = call i32 @emit_bits(ptr noundef %17, i32 noundef %18, i32 noundef %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end9
  store i32 0, ptr %r, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %20 = load i32, ptr %k, align 4
  %cmp17 = icmp slt i32 %20, 64
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %block.addr, align 8
  %22 = load i32, ptr %k, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom19
  %23 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %21, i64 %idxprom21
  %24 = load i16, ptr %arrayidx22, align 2
  %conv23 = sext i16 %24 to i32
  store i32 %conv23, ptr %temp, align 4
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.body
  %25 = load i32, ptr %r, align 4
  %inc27 = add nsw i32 %25, 1
  store i32 %inc27, ptr %r, align 4
  br label %if.end70

if.else:                                          ; preds = %for.body
  br label %while.cond28

while.cond28:                                     ; preds = %if.end40, %if.else
  %26 = load i32, ptr %r, align 4
  %cmp29 = icmp sgt i32 %26, 15
  br i1 %cmp29, label %while.body31, label %while.end42

while.body31:                                     ; preds = %while.cond28
  %27 = load ptr, ptr %state.addr, align 8
  %28 = load ptr, ptr %actbl.addr, align 8
  %ehufco32 = getelementptr inbounds %struct.c_derived_tbl, ptr %28, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [256 x i32], ptr %ehufco32, i64 0, i64 240
  %29 = load i32, ptr %arrayidx33, align 4
  %30 = load ptr, ptr %actbl.addr, align 8
  %ehufsi34 = getelementptr inbounds %struct.c_derived_tbl, ptr %30, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [256 x i8], ptr %ehufsi34, i64 0, i64 240
  %31 = load i8, ptr %arrayidx35, align 4
  %conv36 = sext i8 %31 to i32
  %call37 = call i32 @emit_bits(ptr noundef %27, i32 noundef %29, i32 noundef %conv36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %while.body31
  store i32 0, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %while.body31
  %32 = load i32, ptr %r, align 4
  %sub41 = sub nsw i32 %32, 16
  store i32 %sub41, ptr %r, align 4
  br label %while.cond28, !llvm.loop !36

while.end42:                                      ; preds = %while.cond28
  %33 = load i32, ptr %temp, align 4
  store i32 %33, ptr %temp2, align 4
  %34 = load i32, ptr %temp, align 4
  %cmp43 = icmp slt i32 %34, 0
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %while.end42
  %35 = load i32, ptr %temp, align 4
  %sub46 = sub nsw i32 0, %35
  store i32 %sub46, ptr %temp, align 4
  %36 = load i32, ptr %temp2, align 4
  %dec47 = add nsw i32 %36, -1
  store i32 %dec47, ptr %temp2, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %while.end42
  store i32 1, ptr %nbits, align 4
  br label %while.cond49

while.cond49:                                     ; preds = %while.body52, %if.end48
  %37 = load i32, ptr %temp, align 4
  %shr50 = ashr i32 %37, 1
  store i32 %shr50, ptr %temp, align 4
  %tobool51 = icmp ne i32 %shr50, 0
  br i1 %tobool51, label %while.body52, label %while.end54

while.body52:                                     ; preds = %while.cond49
  %38 = load i32, ptr %nbits, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, ptr %nbits, align 4
  br label %while.cond49, !llvm.loop !37

while.end54:                                      ; preds = %while.cond49
  %39 = load i32, ptr %r, align 4
  %shl = shl i32 %39, 4
  %40 = load i32, ptr %nbits, align 4
  %add = add nsw i32 %shl, %40
  store i32 %add, ptr %i, align 4
  %41 = load ptr, ptr %state.addr, align 8
  %42 = load ptr, ptr %actbl.addr, align 8
  %ehufco55 = getelementptr inbounds %struct.c_derived_tbl, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %43 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], ptr %ehufco55, i64 0, i64 %idxprom56
  %44 = load i32, ptr %arrayidx57, align 4
  %45 = load ptr, ptr %actbl.addr, align 8
  %ehufsi58 = getelementptr inbounds %struct.c_derived_tbl, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8], ptr %ehufsi58, i64 0, i64 %idxprom59
  %47 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %47 to i32
  %call62 = call i32 @emit_bits(ptr noundef %41, i32 noundef %44, i32 noundef %conv61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %while.end54
  store i32 0, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.end54
  %48 = load ptr, ptr %state.addr, align 8
  %49 = load i32, ptr %temp2, align 4
  %50 = load i32, ptr %nbits, align 4
  %call66 = call i32 @emit_bits(ptr noundef %48, i32 noundef %49, i32 noundef %50)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end65
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end65
  store i32 0, ptr %r, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then26
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %51 = load i32, ptr %k, align 4
  %inc71 = add nsw i32 %51, 1
  store i32 %inc71, ptr %k, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  %52 = load i32, ptr %r, align 4
  %cmp72 = icmp sgt i32 %52, 0
  br i1 %cmp72, label %if.then74, label %if.end84

if.then74:                                        ; preds = %for.end
  %53 = load ptr, ptr %state.addr, align 8
  %54 = load ptr, ptr %actbl.addr, align 8
  %ehufco75 = getelementptr inbounds %struct.c_derived_tbl, ptr %54, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [256 x i32], ptr %ehufco75, i64 0, i64 0
  %55 = load i32, ptr %arrayidx76, align 4
  %56 = load ptr, ptr %actbl.addr, align 8
  %ehufsi77 = getelementptr inbounds %struct.c_derived_tbl, ptr %56, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [256 x i8], ptr %ehufsi77, i64 0, i64 0
  %57 = load i8, ptr %arrayidx78, align 4
  %conv79 = sext i8 %57 to i32
  %call80 = call i32 @emit_bits(ptr noundef %53, i32 noundef %55, i32 noundef %conv79)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.then74
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %for.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.then82, %if.then68, %if.then64, %if.then39, %if.then14, %if.then8
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @flush_bits(ptr noundef %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %call = call i32 @emit_bits(ptr noundef %0, i32 noundef 127, i32 noundef 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %1, i32 0, i32 2
  %put_buffer = getelementptr inbounds %struct.savable_state, ptr %cur, i32 0, i32 0
  store i64 0, ptr %put_buffer, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %cur1 = getelementptr inbounds %struct.working_state, ptr %2, i32 0, i32 2
  %put_bits = getelementptr inbounds %struct.savable_state, ptr %cur1, i32 0, i32 1
  store i32 0, ptr %put_bits, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @dump_buffer(ptr noundef %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %cinfo, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %dest1, align 8
  store ptr %2, ptr %dest, align 8
  %3 = load ptr, ptr %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %empty_output_buffer, align 8
  %5 = load ptr, ptr %state.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.working_state, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %cinfo2, align 8
  %call = call i32 %4(ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next_output_byte, align 8
  %9 = load ptr, ptr %state.addr, align 8
  %next_output_byte3 = getelementptr inbounds %struct.working_state, ptr %9, i32 0, i32 0
  store ptr %8, ptr %next_output_byte3, align 8
  %10 = load ptr, ptr %dest, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %free_in_buffer, align 8
  %12 = load ptr, ptr %state.addr, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, ptr %12, i32 0, i32 1
  store i64 %11, ptr %free_in_buffer4, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_bits(ptr noundef %state, i32 noundef %code, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  store i32 %code, ptr %code.addr, align 4
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, ptr %put_buffer, align 8
  %1 = load ptr, ptr %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %1, i32 0, i32 2
  %put_bits1 = getelementptr inbounds %struct.savable_state, ptr %cur, i32 0, i32 1
  %2 = load i32, ptr %put_bits1, align 8
  store i32 %2, ptr %put_bits, align 4
  %3 = load i32, ptr %size.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 5
  store i32 39, ptr %msg_code, align 8
  %7 = load ptr, ptr %state.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.working_state, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %cinfo3, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %state.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %cinfo5, align 8
  call void %10(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, ptr %size.addr, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %14 = load i64, ptr %put_buffer, align 8
  %and = and i64 %14, %sub
  store i64 %and, ptr %put_buffer, align 8
  %15 = load i32, ptr %size.addr, align 4
  %16 = load i32, ptr %put_bits, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %put_bits, align 4
  %17 = load i32, ptr %put_bits, align 4
  %sub6 = sub nsw i32 24, %17
  %18 = load i64, ptr %put_buffer, align 8
  %sh_prom7 = zext i32 %sub6 to i64
  %shl8 = shl i64 %18, %sh_prom7
  store i64 %shl8, ptr %put_buffer, align 8
  %19 = load ptr, ptr %state.addr, align 8
  %cur9 = getelementptr inbounds %struct.working_state, ptr %19, i32 0, i32 2
  %put_buffer10 = getelementptr inbounds %struct.savable_state, ptr %cur9, i32 0, i32 0
  %20 = load i64, ptr %put_buffer10, align 8
  %21 = load i64, ptr %put_buffer, align 8
  %or = or i64 %21, %20
  store i64 %or, ptr %put_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end
  %22 = load i32, ptr %put_bits, align 4
  %cmp11 = icmp sge i32 %22, 8
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i64, ptr %put_buffer, align 8
  %shr = ashr i64 %23, 16
  %and13 = and i64 %shr, 255
  %conv14 = trunc i64 %and13 to i32
  store i32 %conv14, ptr %c, align 4
  %24 = load i32, ptr %c, align 4
  %conv15 = trunc i32 %24 to i8
  %25 = load ptr, ptr %state.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.working_state, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 %conv15, ptr %26, align 1
  %27 = load ptr, ptr %state.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.working_state, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %28, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp16 = icmp eq i64 %dec, 0
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %while.body
  %29 = load ptr, ptr %state.addr, align 8
  %call = call i32 @dump_buffer(ptr noundef %29)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.body
  %30 = load i32, ptr %c, align 4
  %cmp22 = icmp eq i32 %30, 255
  br i1 %cmp22, label %if.then24, label %if.end37

if.then24:                                        ; preds = %if.end21
  %31 = load ptr, ptr %state.addr, align 8
  %next_output_byte25 = getelementptr inbounds %struct.working_state, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %next_output_byte25, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr26, ptr %next_output_byte25, align 8
  store i8 0, ptr %32, align 1
  %33 = load ptr, ptr %state.addr, align 8
  %free_in_buffer27 = getelementptr inbounds %struct.working_state, ptr %33, i32 0, i32 1
  %34 = load i64, ptr %free_in_buffer27, align 8
  %dec28 = add i64 %34, -1
  store i64 %dec28, ptr %free_in_buffer27, align 8
  %cmp29 = icmp eq i64 %dec28, 0
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.then24
  %35 = load ptr, ptr %state.addr, align 8
  %call32 = call i32 @dump_buffer(ptr noundef %35)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then31
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then31
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end21
  %36 = load i64, ptr %put_buffer, align 8
  %shl38 = shl i64 %36, 8
  store i64 %shl38, ptr %put_buffer, align 8
  %37 = load i32, ptr %put_bits, align 4
  %sub39 = sub nsw i32 %37, 8
  store i32 %sub39, ptr %put_bits, align 4
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  %38 = load i64, ptr %put_buffer, align 8
  %39 = load ptr, ptr %state.addr, align 8
  %cur40 = getelementptr inbounds %struct.working_state, ptr %39, i32 0, i32 2
  %put_buffer41 = getelementptr inbounds %struct.savable_state, ptr %cur40, i32 0, i32 0
  store i64 %38, ptr %put_buffer41, align 8
  %40 = load i32, ptr %put_bits, align 4
  %41 = load ptr, ptr %state.addr, align 8
  %cur42 = getelementptr inbounds %struct.working_state, ptr %41, i32 0, i32 2
  %put_bits43 = getelementptr inbounds %struct.savable_state, ptr %cur42, i32 0, i32 1
  store i32 %40, ptr %put_bits43, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then34, %if.then19
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jchuff_0(ptr noundef %state)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  %0 = load ptr, ptr %state.addr, align 8
  %call = call i32 @emit_bits(ptr noundef %0, i32 noundef 127, i32 noundef 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, ptr %1, i32 0, i32 2
  %put_buffer = getelementptr inbounds %struct.savable_state, ptr %cur, i32 0, i32 0
  store i64 0, ptr %put_buffer, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %cur1 = getelementptr inbounds %struct.working_state, ptr %2, i32 0, i32 2
  %put_bits = getelementptr inbounds %struct.savable_state, ptr %cur1, i32 0, i32 1
  store i32 0, ptr %put_bits, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

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
