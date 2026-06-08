; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_mibench_network_patricia_patricia.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/network/patricia/patricia.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }

; Function Attrs: nounwind ssp uwtable
define ptr @pat_insert(ptr noundef %n, ptr noundef %head) #0 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %pm = alloca ptr, align 8
  %i = alloca i32, align 4
  %copied = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  %tobool.not = icmp eq ptr %head, null
  %0 = load ptr, ptr %n.addr, align 8
  %tobool1.not = icmp eq ptr %0, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %p_m, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %n.addr, align 8
  %p_m4 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %p_m4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %and = and i64 %6, %5
  store i64 %and, ptr %3, align 8
  %7 = load ptr, ptr %head.addr, align 8
  store ptr %7, ptr %t, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  %8 = load ptr, ptr %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %8, i64 0, i32 3
  %9 = load i8, ptr %p_b, align 1
  %conv = sext i8 %9 to i32
  store i32 %conv, ptr %i, align 4
  %10 = load ptr, ptr %n.addr, align 8
  %11 = load i64, ptr %10, align 8
  %conv619 = zext i8 %9 to i32
  %shl.i = lshr i32 -2147483648, %conv619
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %11, %conv.i
  %tobool8.not = icmp eq i64 %and.i, 0
  %12 = load ptr, ptr %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %13, i64 0, i32 4
  %cond.in = select i1 %tobool8.not, ptr %p_left, ptr %p_right
  %cond = load ptr, ptr %cond.in, align 8
  store ptr %cond, ptr %t, align 8
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %t, align 8
  %p_b9 = getelementptr inbounds %struct.ptree, ptr %15, i64 0, i32 3
  %16 = load i8, ptr %p_b9, align 1
  %conv10 = sext i8 %16 to i32
  %cmp = icmp slt i32 %14, %conv10
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.body
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %t, align 8
  %20 = load i64, ptr %19, align 8
  %cmp14 = icmp eq i64 %18, %20
  br i1 %cmp14, label %for.cond, label %for.cond74

for.cond:                                         ; preds = %do.end, %for.inc
  %storemerge21 = phi i32 [ %inc, %for.inc ], [ 0, %do.end ]
  store i32 %storemerge21, ptr %i, align 4
  %21 = load ptr, ptr %t, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, ptr %21, i64 0, i32 2
  %22 = load i8, ptr %p_mlen, align 8
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp slt i32 %storemerge21, %conv17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %n.addr, align 8
  %p_m20 = getelementptr inbounds %struct.ptree, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %p_m20, align 8
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %t, align 8
  %p_m22 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 1
  %27 = load ptr, ptr %p_m22, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds %struct.ptree_mask, ptr %27, i64 %idxprom
  %29 = load i64, ptr %arrayidx, align 8
  %cmp24 = icmp eq i64 %25, %29
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body
  %30 = load ptr, ptr %n.addr, align 8
  %p_m27 = getelementptr inbounds %struct.ptree, ptr %30, i64 0, i32 1
  %31 = load ptr, ptr %p_m27, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, ptr %31, i64 0, i32 1
  %32 = load ptr, ptr %pm_data, align 8
  %33 = load ptr, ptr %t, align 8
  %p_m28 = getelementptr inbounds %struct.ptree, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %p_m28, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %35 to i64
  %pm_data31 = getelementptr inbounds %struct.ptree_mask, ptr %34, i64 %idxprom29, i32 1
  store ptr %32, ptr %pm_data31, align 8
  %36 = load ptr, ptr %n.addr, align 8
  %p_m32 = getelementptr inbounds %struct.ptree, ptr %36, i64 0, i32 1
  %37 = load ptr, ptr %p_m32, align 8
  call void @free(ptr noundef %37) #7
  call void @free(ptr noundef %36) #7
  store ptr null, ptr %n.addr, align 8
  %38 = load ptr, ptr %t, align 8
  store ptr %38, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %t, align 8
  %p_mlen34 = getelementptr inbounds %struct.ptree, ptr %40, i64 0, i32 2
  %41 = load i8, ptr %p_mlen34, align 8
  %conv35 = zext i8 %41 to i64
  %add = shl nuw nsw i64 %conv35, 4
  %mul = add nuw nsw i64 %add, 16
  %call37 = call ptr @malloc(i64 noundef %mul) #8
  store ptr %call37, ptr %buf, align 8
  store i32 0, ptr %copied, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc61, %for.end
  %storemerge22 = phi ptr [ %call37, %for.end ], [ %incdec.ptr, %for.inc61 ]
  store ptr %storemerge22, ptr %pm, align 8
  %42 = load i32, ptr %i, align 4
  %43 = load ptr, ptr %t, align 8
  %p_mlen39 = getelementptr inbounds %struct.ptree, ptr %43, i64 0, i32 2
  %44 = load i8, ptr %p_mlen39, align 8
  %conv40 = zext i8 %44 to i32
  %cmp41 = icmp slt i32 %42, %conv40
  br i1 %cmp41, label %for.body43, label %for.end62

for.body43:                                       ; preds = %for.cond38
  %45 = load ptr, ptr %n.addr, align 8
  %p_m44 = getelementptr inbounds %struct.ptree, ptr %45, i64 0, i32 1
  %46 = load ptr, ptr %p_m44, align 8
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %t, align 8
  %p_m46 = getelementptr inbounds %struct.ptree, ptr %48, i64 0, i32 1
  %49 = load ptr, ptr %p_m46, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %50 to i64
  %arrayidx48 = getelementptr inbounds %struct.ptree_mask, ptr %49, i64 %idxprom47
  %51 = load i64, ptr %arrayidx48, align 8
  %cmp50 = icmp ugt i64 %47, %51
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.body43
  %52 = load ptr, ptr %pm, align 8
  %53 = load ptr, ptr %t, align 8
  %p_m53 = getelementptr inbounds %struct.ptree, ptr %53, i64 0, i32 1
  %54 = load ptr, ptr %p_m53, align 8
  %55 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds %struct.ptree_mask, ptr %54, i64 %idx.ext
  %56 = load ptr, ptr %pm, align 8
  %57 = call i64 @llvm.objectsize.i64.p0(ptr %56, i1 false, i1 true, i1 false)
  %call54 = call ptr @__memmove_chk(ptr noundef %52, ptr noundef %add.ptr, i64 noundef 16, i64 noundef %57) #7
  %inc55 = add nsw i32 %55, 1
  store i32 %inc55, ptr %i, align 4
  br label %for.inc61

if.else:                                          ; preds = %for.body43
  %58 = load ptr, ptr %pm, align 8
  %59 = load ptr, ptr %n.addr, align 8
  %p_m56 = getelementptr inbounds %struct.ptree, ptr %59, i64 0, i32 1
  %60 = load ptr, ptr %p_m56, align 8
  %61 = call i64 @llvm.objectsize.i64.p0(ptr %58, i1 false, i1 true, i1 false)
  %call57 = call ptr @__memmove_chk(ptr noundef %58, ptr noundef %60, i64 noundef 16, i64 noundef %61) #7
  %p_m58 = getelementptr inbounds %struct.ptree, ptr %59, i64 0, i32 1
  %62 = load ptr, ptr %p_m58, align 8
  store i64 4294967295, ptr %62, align 8
  store i32 1, ptr %copied, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %if.then52, %if.else
  %63 = load ptr, ptr %pm, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, ptr %63, i64 1
  br label %for.cond38, !llvm.loop !9

for.end62:                                        ; preds = %for.cond38
  %64 = load i32, ptr %copied, align 4
  %tobool63.not = icmp eq i32 %64, 0
  br i1 %tobool63.not, label %if.then64, label %if.end67

if.then64:                                        ; preds = %for.end62
  %65 = load ptr, ptr %pm, align 8
  %66 = load ptr, ptr %n.addr, align 8
  %p_m65 = getelementptr inbounds %struct.ptree, ptr %66, i64 0, i32 1
  %67 = load ptr, ptr %p_m65, align 8
  %68 = call i64 @llvm.objectsize.i64.p0(ptr %65, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memmove_chk(ptr noundef %65, ptr noundef %67, i64 noundef 16, i64 noundef %68) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %for.end62
  %69 = load ptr, ptr %n.addr, align 8
  %p_m68 = getelementptr inbounds %struct.ptree, ptr %69, i64 0, i32 1
  %70 = load ptr, ptr %p_m68, align 8
  call void @free(ptr noundef %70) #7
  call void @free(ptr noundef %69) #7
  store ptr null, ptr %n.addr, align 8
  %71 = load ptr, ptr %t, align 8
  %p_mlen69 = getelementptr inbounds %struct.ptree, ptr %71, i64 0, i32 2
  %72 = load i8, ptr %p_mlen69, align 8
  %inc70 = add i8 %72, 1
  store i8 %inc70, ptr %p_mlen69, align 8
  %p_m71 = getelementptr inbounds %struct.ptree, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %p_m71, align 8
  call void @free(ptr noundef %73) #7
  %74 = load ptr, ptr %buf, align 8
  %75 = load ptr, ptr %t, align 8
  %p_m72 = getelementptr inbounds %struct.ptree, ptr %75, i64 0, i32 1
  store ptr %74, ptr %p_m72, align 8
  store ptr %75, ptr %retval, align 8
  br label %return

for.cond74:                                       ; preds = %do.end, %for.inc84
  %storemerge = phi i32 [ %inc85, %for.inc84 ], [ 1, %do.end ]
  store i32 %storemerge, ptr %i, align 4
  %cmp75 = icmp slt i32 %storemerge, 32
  br i1 %cmp75, label %land.rhs, label %for.end86

land.rhs:                                         ; preds = %for.cond74
  %76 = load i32, ptr %i, align 4
  %77 = load ptr, ptr %n.addr, align 8
  %78 = load i64, ptr %77, align 8
  %shl.i4 = lshr i32 -2147483648, %76
  %conv.i5 = sext i32 %shl.i4 to i64
  %and.i6 = and i64 %78, %conv.i5
  %79 = load ptr, ptr %t, align 8
  %80 = load i64, ptr %79, align 8
  %shl.i10 = lshr i32 -2147483648, %76
  %conv.i11 = sext i32 %shl.i10 to i64
  %and.i12 = and i64 %80, %conv.i11
  %cmp81 = icmp eq i64 %and.i6, %and.i12
  br i1 %cmp81, label %for.inc84, label %for.end86

for.inc84:                                        ; preds = %land.rhs
  %81 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %81, 1
  br label %for.cond74, !llvm.loop !10

for.end86:                                        ; preds = %for.cond74, %land.rhs
  %82 = load ptr, ptr %head.addr, align 8
  %p_b87 = getelementptr inbounds %struct.ptree, ptr %82, i64 0, i32 3
  %83 = load i8, ptr %p_b87, align 1
  %84 = load ptr, ptr %n.addr, align 8
  %85 = load i64, ptr %84, align 8
  %conv8820 = zext i8 %83 to i32
  %shl.i16 = lshr i32 -2147483648, %conv8820
  %conv.i17 = sext i32 %shl.i16 to i64
  %and.i18 = and i64 %85, %conv.i17
  %tobool91.not = icmp eq i64 %and.i18, 0
  br i1 %tobool91.not, label %if.else96, label %if.then92

if.then92:                                        ; preds = %for.end86
  %86 = load ptr, ptr %head.addr, align 8
  %p_right93 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 5
  %87 = load ptr, ptr %p_right93, align 8
  %88 = load ptr, ptr %n.addr, align 8
  %89 = load i32, ptr %i, align 4
  %call94 = call ptr @insertR(ptr noundef %87, ptr noundef %88, i32 noundef %89, ptr noundef %86)
  %p_right95 = getelementptr inbounds %struct.ptree, ptr %86, i64 0, i32 5
  store ptr %call94, ptr %p_right95, align 8
  br label %if.end100

if.else96:                                        ; preds = %for.end86
  %90 = load ptr, ptr %head.addr, align 8
  %p_left97 = getelementptr inbounds %struct.ptree, ptr %90, i64 0, i32 4
  %91 = load ptr, ptr %p_left97, align 8
  %92 = load ptr, ptr %n.addr, align 8
  %93 = load i32, ptr %i, align 4
  %call98 = call ptr @insertR(ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %90)
  %p_left99 = getelementptr inbounds %struct.ptree, ptr %90, i64 0, i32 4
  store ptr %call98, ptr %p_left99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.else96, %if.then92
  %94 = load ptr, ptr %n.addr, align 8
  store ptr %94, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end100, %if.end67, %if.then26, %if.then
  %95 = load ptr, ptr %retval, align 8
  ret ptr %95
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @bit(i32 noundef %i, i64 noundef %key) #0 {
entry:
  %shl = lshr i32 -2147483648, %i
  %conv = sext i32 %shl to i64
  %and = and i64 %conv, %key
  ret i64 %and
}

declare void @free(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal ptr @insertR(ptr noundef %h, ptr noundef %n, i32 noundef %d, ptr noundef %p) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store i32 %d, ptr %d.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %h, i64 0, i32 3
  %0 = load i8, ptr %p_b, align 1
  %conv = sext i8 %0 to i32
  %cmp.not = icmp slt i32 %conv, %d
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8
  %p_b2 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %2 = load i8, ptr %p_b2, align 1
  %3 = load ptr, ptr %p.addr, align 8
  %p_b4 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %4 = load i8, ptr %p_b4, align 1
  %cmp6.not = icmp sgt i8 %2, %4
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, ptr %d.addr, align 4
  %conv8 = trunc i32 %5 to i8
  %6 = load ptr, ptr %n.addr, align 8
  %p_b9 = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 3
  store i8 %conv8, ptr %p_b9, align 1
  %7 = load i64, ptr %6, align 8
  %shl.i = lshr i32 -2147483648, %5
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %7, %conv.i
  %tobool.not = icmp eq i64 %and.i, 0
  %8 = load ptr, ptr %h.addr, align 8
  %9 = load ptr, ptr %n.addr, align 8
  %cond = select i1 %tobool.not, ptr %9, ptr %8
  %10 = load ptr, ptr %n.addr, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %10, i64 0, i32 4
  store ptr %cond, ptr %p_left, align 8
  %11 = load i32, ptr %d.addr, align 4
  %12 = load i64, ptr %10, align 8
  %shl.i4 = lshr i32 -2147483648, %11
  %conv.i5 = sext i32 %shl.i4 to i64
  %and.i6 = and i64 %12, %conv.i5
  %tobool12.not = icmp eq i64 %and.i6, 0
  %13 = load ptr, ptr %n.addr, align 8
  %14 = load ptr, ptr %h.addr, align 8
  %cond16 = select i1 %tobool12.not, ptr %14, ptr %13
  %15 = load ptr, ptr %n.addr, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %15, i64 0, i32 5
  store ptr %cond16, ptr %p_right, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %16 = load ptr, ptr %h.addr, align 8
  %p_b17 = getelementptr inbounds %struct.ptree, ptr %16, i64 0, i32 3
  %17 = load i8, ptr %p_b17, align 1
  %18 = load ptr, ptr %n.addr, align 8
  %19 = load i64, ptr %18, align 8
  %conv1813 = zext i8 %17 to i32
  %shl.i10 = lshr i32 -2147483648, %conv1813
  %conv.i11 = sext i32 %shl.i10 to i64
  %and.i12 = and i64 %19, %conv.i11
  %tobool21.not = icmp eq i64 %and.i12, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %20 = load ptr, ptr %h.addr, align 8
  %p_right23 = getelementptr inbounds %struct.ptree, ptr %20, i64 0, i32 5
  %21 = load ptr, ptr %p_right23, align 8
  %22 = load ptr, ptr %n.addr, align 8
  %23 = load i32, ptr %d.addr, align 4
  %call24 = call ptr @insertR(ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %20)
  %p_right25 = getelementptr inbounds %struct.ptree, ptr %20, i64 0, i32 5
  store ptr %call24, ptr %p_right25, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end
  %24 = load ptr, ptr %h.addr, align 8
  %p_left26 = getelementptr inbounds %struct.ptree, ptr %24, i64 0, i32 4
  %25 = load ptr, ptr %p_left26, align 8
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %d.addr, align 4
  %call27 = call ptr @insertR(ptr noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %24)
  %p_left28 = getelementptr inbounds %struct.ptree, ptr %24, i64 0, i32 4
  store ptr %call27, ptr %p_left28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  %28 = load ptr, ptr %h.addr, align 8
  br label %return

return:                                           ; preds = %if.end29, %if.then
  %storemerge = phi ptr [ %28, %if.end29 ], [ %15, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @pat_remove(ptr noundef %n, ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %g = alloca ptr, align 8
  %pt = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %t = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %pm = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  %tobool.not = icmp eq ptr %n, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %n.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %p_m, align 8
  %tobool1.not = icmp eq ptr %1, null
  %2 = load ptr, ptr %t, align 8
  %tobool3.not = icmp eq ptr %2, null
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %head.addr, align 8
  store ptr %3, ptr %t, align 8
  store ptr %3, ptr %p, align 8
  store ptr %3, ptr %g, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  %4 = load ptr, ptr %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %4, i64 0, i32 3
  %5 = load i8, ptr %p_b, align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, ptr %i, align 4
  %6 = load ptr, ptr %p, align 8
  store ptr %6, ptr %g, align 8
  %7 = load ptr, ptr %t, align 8
  store ptr %7, ptr %p, align 8
  %p_b4 = getelementptr inbounds %struct.ptree, ptr %7, i64 0, i32 3
  %8 = load i8, ptr %p_b4, align 1
  %conv5 = sext i8 %8 to i32
  %9 = load ptr, ptr %n.addr, align 8
  %10 = load i64, ptr %9, align 8
  %call = call i64 @bit(i32 noundef %conv5, i64 noundef %10)
  %tobool6.not = icmp eq i64 %call, 0
  %11 = load ptr, ptr %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %11, i64 0, i32 5
  %12 = load ptr, ptr %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %12, i64 0, i32 4
  %cond.in = select i1 %tobool6.not, ptr %p_left, ptr %p_right
  %cond = load ptr, ptr %cond.in, align 8
  store ptr %cond, ptr %t, align 8
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %t, align 8
  %p_b7 = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 3
  %15 = load i8, ptr %p_b7, align 1
  %conv8 = sext i8 %15 to i32
  %cmp = icmp slt i32 %13, %conv8
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.body
  %16 = load ptr, ptr %t, align 8
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %n.addr, align 8
  %19 = load i64, ptr %18, align 8
  %cmp12.not = icmp eq i64 %17, %19
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %do.end
  %20 = load ptr, ptr %t, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, ptr %20, i64 0, i32 2
  %21 = load i8, ptr %p_mlen, align 8
  %cmp17 = icmp eq i8 %21, 1
  br i1 %cmp17, label %if.then19, label %for.cond

if.then19:                                        ; preds = %if.end15
  %22 = load ptr, ptr %t, align 8
  %p_b20 = getelementptr inbounds %struct.ptree, ptr %22, i64 0, i32 3
  %23 = load i8, ptr %p_b20, align 1
  %cmp22 = icmp eq i8 %23, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then19
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then19
  %24 = load ptr, ptr %t, align 8
  %p_m26 = getelementptr inbounds %struct.ptree, ptr %24, i64 0, i32 1
  %25 = load ptr, ptr %p_m26, align 8
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %n.addr, align 8
  %p_m27 = getelementptr inbounds %struct.ptree, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %p_m27, align 8
  %29 = load i64, ptr %28, align 8
  %cmp29.not = icmp eq i64 %26, %29
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %30 = load ptr, ptr %p, align 8
  store ptr %30, ptr %pt, align 8
  store ptr %30, ptr %pp, align 8
  br label %do.body33

do.body33:                                        ; preds = %do.body33, %if.end32
  %31 = load ptr, ptr %pt, align 8
  %p_b34 = getelementptr inbounds %struct.ptree, ptr %31, i64 0, i32 3
  %32 = load i8, ptr %p_b34, align 1
  %conv35 = sext i8 %32 to i32
  store i32 %conv35, ptr %i, align 4
  store ptr %31, ptr %pp, align 8
  %conv37 = sext i8 %32 to i32
  %33 = load ptr, ptr %p, align 8
  %34 = load i64, ptr %33, align 8
  %call39 = call i64 @bit(i32 noundef %conv37, i64 noundef %34)
  %tobool40.not = icmp eq i64 %call39, 0
  %35 = load ptr, ptr %pt, align 8
  %p_right42 = getelementptr inbounds %struct.ptree, ptr %35, i64 0, i32 5
  %36 = load ptr, ptr %pt, align 8
  %p_left44 = getelementptr inbounds %struct.ptree, ptr %36, i64 0, i32 4
  %cond46.in = select i1 %tobool40.not, ptr %p_left44, ptr %p_right42
  %cond46 = load ptr, ptr %cond46.in, align 8
  store ptr %cond46, ptr %pt, align 8
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %pt, align 8
  %p_b48 = getelementptr inbounds %struct.ptree, ptr %38, i64 0, i32 3
  %39 = load i8, ptr %p_b48, align 1
  %conv49 = sext i8 %39 to i32
  %cmp50 = icmp slt i32 %37, %conv49
  br i1 %cmp50, label %do.body33, label %do.end52, !llvm.loop !12

do.end52:                                         ; preds = %do.body33
  %40 = load ptr, ptr %pp, align 8
  %p_b53 = getelementptr inbounds %struct.ptree, ptr %40, i64 0, i32 3
  %41 = load i8, ptr %p_b53, align 1
  %conv54 = sext i8 %41 to i32
  %42 = load ptr, ptr %p, align 8
  %43 = load i64, ptr %42, align 8
  %call56 = call i64 @bit(i32 noundef %conv54, i64 noundef %43)
  %tobool57.not = icmp eq i64 %call56, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %do.end52
  %44 = load ptr, ptr %t, align 8
  %45 = load ptr, ptr %pp, align 8
  %p_right59 = getelementptr inbounds %struct.ptree, ptr %45, i64 0, i32 5
  store ptr %44, ptr %p_right59, align 8
  br label %if.end61

if.else:                                          ; preds = %do.end52
  %46 = load ptr, ptr %t, align 8
  %47 = load ptr, ptr %pp, align 8
  %p_left60 = getelementptr inbounds %struct.ptree, ptr %47, i64 0, i32 4
  store ptr %46, ptr %p_left60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then58
  %48 = load ptr, ptr %g, align 8
  %p_b62 = getelementptr inbounds %struct.ptree, ptr %48, i64 0, i32 3
  %49 = load i8, ptr %p_b62, align 1
  %conv63 = sext i8 %49 to i32
  %50 = load ptr, ptr %n.addr, align 8
  %51 = load i64, ptr %50, align 8
  %call65 = call i64 @bit(i32 noundef %conv63, i64 noundef %51)
  %tobool66.not = icmp eq i64 %call65, 0
  br i1 %tobool66.not, label %if.else80, label %if.then67

if.then67:                                        ; preds = %if.end61
  %52 = load ptr, ptr %p, align 8
  %p_b68 = getelementptr inbounds %struct.ptree, ptr %52, i64 0, i32 3
  %53 = load i8, ptr %p_b68, align 1
  %conv69 = sext i8 %53 to i32
  %54 = load ptr, ptr %n.addr, align 8
  %55 = load i64, ptr %54, align 8
  %call71 = call i64 @bit(i32 noundef %conv69, i64 noundef %55)
  %tobool72.not = icmp eq i64 %call71, 0
  %56 = load ptr, ptr %p, align 8
  %p_left74 = getelementptr inbounds %struct.ptree, ptr %56, i64 0, i32 4
  %57 = load ptr, ptr %p, align 8
  %p_right76 = getelementptr inbounds %struct.ptree, ptr %57, i64 0, i32 5
  %cond78.in = select i1 %tobool72.not, ptr %p_right76, ptr %p_left74
  %cond78 = load ptr, ptr %cond78.in, align 8
  %58 = load ptr, ptr %g, align 8
  %p_right79 = getelementptr inbounds %struct.ptree, ptr %58, i64 0, i32 5
  store ptr %cond78, ptr %p_right79, align 8
  br label %if.end93

if.else80:                                        ; preds = %if.end61
  %59 = load ptr, ptr %p, align 8
  %p_b81 = getelementptr inbounds %struct.ptree, ptr %59, i64 0, i32 3
  %60 = load i8, ptr %p_b81, align 1
  %conv82 = sext i8 %60 to i32
  %61 = load ptr, ptr %n.addr, align 8
  %62 = load i64, ptr %61, align 8
  %call84 = call i64 @bit(i32 noundef %conv82, i64 noundef %62)
  %tobool85.not = icmp eq i64 %call84, 0
  %63 = load ptr, ptr %p, align 8
  %p_left87 = getelementptr inbounds %struct.ptree, ptr %63, i64 0, i32 4
  %64 = load ptr, ptr %p, align 8
  %p_right89 = getelementptr inbounds %struct.ptree, ptr %64, i64 0, i32 5
  %cond91.in = select i1 %tobool85.not, ptr %p_right89, ptr %p_left87
  %cond91 = load ptr, ptr %cond91.in, align 8
  %65 = load ptr, ptr %g, align 8
  %p_left92 = getelementptr inbounds %struct.ptree, ptr %65, i64 0, i32 4
  store ptr %cond91, ptr %p_left92, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.else80, %if.then67
  %66 = load ptr, ptr %t, align 8
  %p_m94 = getelementptr inbounds %struct.ptree, ptr %66, i64 0, i32 1
  %67 = load ptr, ptr %p_m94, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, ptr %67, i64 0, i32 1
  %68 = load ptr, ptr %pm_data, align 8
  %tobool95.not = icmp eq ptr %68, null
  br i1 %tobool95.not, label %if.end99, label %if.then96

if.then96:                                        ; preds = %if.end93
  %69 = load ptr, ptr %t, align 8
  %p_m97 = getelementptr inbounds %struct.ptree, ptr %69, i64 0, i32 1
  %70 = load ptr, ptr %p_m97, align 8
  %pm_data98 = getelementptr inbounds %struct.ptree_mask, ptr %70, i64 0, i32 1
  %71 = load ptr, ptr %pm_data98, align 8
  call void @free(ptr noundef %71) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end93
  %72 = load ptr, ptr %t, align 8
  %p_m100 = getelementptr inbounds %struct.ptree, ptr %72, i64 0, i32 1
  %73 = load ptr, ptr %p_m100, align 8
  call void @free(ptr noundef %73) #7
  %74 = load ptr, ptr %p, align 8
  %cmp101.not = icmp eq ptr %72, %74
  br i1 %cmp101.not, label %if.end110, label %if.then103

if.then103:                                       ; preds = %if.end99
  %75 = load ptr, ptr %p, align 8
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %t, align 8
  store i64 %76, ptr %77, align 8
  %p_m106 = getelementptr inbounds %struct.ptree, ptr %75, i64 0, i32 1
  %78 = load ptr, ptr %p_m106, align 8
  %p_m107 = getelementptr inbounds %struct.ptree, ptr %77, i64 0, i32 1
  store ptr %78, ptr %p_m107, align 8
  %79 = load ptr, ptr %p, align 8
  %p_mlen108 = getelementptr inbounds %struct.ptree, ptr %79, i64 0, i32 2
  %80 = load i8, ptr %p_mlen108, align 8
  %81 = load ptr, ptr %t, align 8
  %p_mlen109 = getelementptr inbounds %struct.ptree, ptr %81, i64 0, i32 2
  store i8 %80, ptr %p_mlen109, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %if.end99
  %82 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %82) #7
  store i32 1, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.end15, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %if.end15 ]
  store i32 %storemerge, ptr %i, align 4
  %83 = load ptr, ptr %t, align 8
  %p_mlen112 = getelementptr inbounds %struct.ptree, ptr %83, i64 0, i32 2
  %84 = load i8, ptr %p_mlen112, align 8
  %conv113 = zext i8 %84 to i32
  %cmp114 = icmp slt i32 %storemerge, %conv113
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load ptr, ptr %n.addr, align 8
  %p_m116 = getelementptr inbounds %struct.ptree, ptr %85, i64 0, i32 1
  %86 = load ptr, ptr %p_m116, align 8
  %87 = load i64, ptr %86, align 8
  %88 = load ptr, ptr %t, align 8
  %p_m118 = getelementptr inbounds %struct.ptree, ptr %88, i64 0, i32 1
  %89 = load ptr, ptr %p_m118, align 8
  %90 = load i32, ptr %i, align 4
  %idxprom = sext i32 %90 to i64
  %arrayidx = getelementptr inbounds %struct.ptree_mask, ptr %89, i64 %idxprom
  %91 = load i64, ptr %arrayidx, align 8
  %cmp120 = icmp eq i64 %87, %91
  br i1 %cmp120, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %92 = load i32, ptr %i, align 4
  %inc = add nsw i32 %92, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.body, %for.cond
  %93 = load i32, ptr %i, align 4
  %94 = load ptr, ptr %t, align 8
  %p_mlen124 = getelementptr inbounds %struct.ptree, ptr %94, i64 0, i32 2
  %95 = load i8, ptr %p_mlen124, align 8
  %conv125 = zext i8 %95 to i32
  %cmp126.not = icmp slt i32 %93, %conv125
  br i1 %cmp126.not, label %if.end129, label %if.then128

if.then128:                                       ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end129:                                        ; preds = %for.end
  %96 = load ptr, ptr %t, align 8
  %p_mlen130 = getelementptr inbounds %struct.ptree, ptr %96, i64 0, i32 2
  %97 = load i8, ptr %p_mlen130, align 8
  %conv131 = zext i8 %97 to i64
  %sub = shl nuw nsw i64 %conv131, 4
  %mul = add nsw i64 %sub, -16
  %call133 = call ptr @malloc(i64 noundef %mul) #8
  store ptr %call133, ptr %buf, align 8
  store i32 0, ptr %i, align 4
  store ptr %call133, ptr %pm, align 8
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc151, %if.end129
  %98 = load i32, ptr %i, align 4
  %99 = load ptr, ptr %t, align 8
  %p_mlen135 = getelementptr inbounds %struct.ptree, ptr %99, i64 0, i32 2
  %100 = load i8, ptr %p_mlen135, align 8
  %conv136 = zext i8 %100 to i32
  %cmp137 = icmp slt i32 %98, %conv136
  br i1 %cmp137, label %for.body139, label %for.end153

for.body139:                                      ; preds = %for.cond134
  %101 = load ptr, ptr %n.addr, align 8
  %p_m140 = getelementptr inbounds %struct.ptree, ptr %101, i64 0, i32 1
  %102 = load ptr, ptr %p_m140, align 8
  %103 = load i64, ptr %102, align 8
  %104 = load ptr, ptr %t, align 8
  %p_m142 = getelementptr inbounds %struct.ptree, ptr %104, i64 0, i32 1
  %105 = load ptr, ptr %p_m142, align 8
  %106 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %106 to i64
  %arrayidx144 = getelementptr inbounds %struct.ptree_mask, ptr %105, i64 %idxprom143
  %107 = load i64, ptr %arrayidx144, align 8
  %cmp146.not = icmp eq i64 %103, %107
  br i1 %cmp146.not, label %for.inc151, label %if.then148

if.then148:                                       ; preds = %for.body139
  %108 = load ptr, ptr %pm, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, ptr %108, i64 1
  store ptr %incdec.ptr, ptr %pm, align 8
  %109 = load ptr, ptr %t, align 8
  %p_m149 = getelementptr inbounds %struct.ptree, ptr %109, i64 0, i32 1
  %110 = load ptr, ptr %p_m149, align 8
  %111 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %111 to i64
  %add.ptr = getelementptr inbounds %struct.ptree_mask, ptr %110, i64 %idx.ext
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %108, ptr noundef nonnull align 8 dereferenceable(16) %add.ptr, i64 16, i1 false)
  br label %for.inc151

for.inc151:                                       ; preds = %for.body139, %if.then148
  %112 = load i32, ptr %i, align 4
  %inc152 = add nsw i32 %112, 1
  store i32 %inc152, ptr %i, align 4
  br label %for.cond134, !llvm.loop !14

for.end153:                                       ; preds = %for.cond134
  %113 = load ptr, ptr %t, align 8
  %p_mlen154 = getelementptr inbounds %struct.ptree, ptr %113, i64 0, i32 2
  %114 = load i8, ptr %p_mlen154, align 8
  %dec = add i8 %114, -1
  store i8 %dec, ptr %p_mlen154, align 8
  %p_m155 = getelementptr inbounds %struct.ptree, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %p_m155, align 8
  call void @free(ptr noundef %115) #7
  %116 = load ptr, ptr %buf, align 8
  %117 = load ptr, ptr %t, align 8
  %p_m156 = getelementptr inbounds %struct.ptree, ptr %117, i64 0, i32 1
  store ptr %116, ptr %p_m156, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end153, %if.then128, %if.end110, %if.then31, %if.then24, %if.then14, %if.then
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define ptr @pat_search(i64 noundef %key, ptr noundef %head) #0 {
entry:
  %key.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  store i64 %key, ptr %key.addr, align 8
  store ptr null, ptr %p, align 8
  store ptr %head, ptr %t, align 8
  %tobool.not = icmp eq ptr %head, null
  br i1 %tobool.not, label %return, label %do.body

do.body:                                          ; preds = %entry, %if.end2
  %0 = load ptr, ptr %t, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i64, ptr %key.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %p_m, align 8
  %4 = load i64, ptr %3, align 8
  %and = and i64 %2, %4
  %cmp = icmp eq i64 %1, %and
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %do.body
  %5 = load ptr, ptr %t, align 8
  store ptr %5, ptr %p, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %do.body
  %6 = load ptr, ptr %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 3
  %7 = load i8, ptr %p_b, align 1
  %conv = sext i8 %7 to i32
  store i32 %conv, ptr %i, align 4
  %conv4 = sext i8 %7 to i32
  %8 = load i64, ptr %key.addr, align 8
  %call = call i64 @bit(i32 noundef %conv4, i64 noundef %8)
  %tobool5.not = icmp eq i64 %call, 0
  %9 = load ptr, ptr %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %9, i64 0, i32 5
  %10 = load ptr, ptr %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %10, i64 0, i32 4
  %cond.in = select i1 %tobool5.not, ptr %p_left, ptr %p_right
  %cond = load ptr, ptr %cond.in, align 8
  store ptr %cond, ptr %t, align 8
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %t, align 8
  %p_b6 = getelementptr inbounds %struct.ptree, ptr %12, i64 0, i32 3
  %13 = load i8, ptr %p_b6, align 1
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp slt i32 %11, %conv7
  br i1 %cmp8, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %if.end2
  %14 = load ptr, ptr %t, align 8
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %key.addr, align 8
  %p_m11 = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %p_m11, align 8
  %18 = load i64, ptr %17, align 8
  %and13 = and i64 %16, %18
  %cmp14 = icmp eq i64 %15, %and13
  %19 = load ptr, ptr %t, align 8
  %20 = load ptr, ptr %p, align 8
  %cond19 = select i1 %cmp14, ptr %19, ptr %20
  br label %return

return:                                           ; preds = %entry, %do.end
  %storemerge = phi ptr [ %cond19, %do.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
