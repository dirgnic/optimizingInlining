; ModuleID = './source_snapshot/public_repos/mibench/network/patricia/patricia.c'
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
  %0 = load ptr, ptr %head.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %n.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %p_m, align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %n.addr, align 8
  %p_m4 = getelementptr inbounds %struct.ptree, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %p_m4, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %pm_mask, align 8
  %7 = load ptr, ptr %n.addr, align 8
  %p_key = getelementptr inbounds %struct.ptree, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %p_key, align 8
  %and = and i64 %8, %6
  store i64 %and, ptr %p_key, align 8
  %9 = load ptr, ptr %head.addr, align 8
  store ptr %9, ptr %t, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %10 = load ptr, ptr %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %10, i32 0, i32 3
  %11 = load i8, ptr %p_b, align 1
  %conv = sext i8 %11 to i32
  store i32 %conv, ptr %i, align 4
  %12 = load ptr, ptr %t, align 8
  %p_b5 = getelementptr inbounds %struct.ptree, ptr %12, i32 0, i32 3
  %13 = load i8, ptr %p_b5, align 1
  %conv6 = sext i8 %13 to i32
  %14 = load ptr, ptr %n.addr, align 8
  %p_key7 = getelementptr inbounds %struct.ptree, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %p_key7, align 8
  %call = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_0(i32 noundef %conv6, i64 noundef %15)
  %tobool8 = icmp ne i64 %call, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %16 = load ptr, ptr %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %p_right, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %18 = load ptr, ptr %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %p_left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ %19, %cond.false ]
  store ptr %cond, ptr %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %t, align 8
  %p_b9 = getelementptr inbounds %struct.ptree, ptr %21, i32 0, i32 3
  %22 = load i8, ptr %p_b9, align 1
  %conv10 = sext i8 %22 to i32
  %cmp = icmp slt i32 %20, %conv10
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %n.addr, align 8
  %p_key12 = getelementptr inbounds %struct.ptree, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %p_key12, align 8
  %25 = load ptr, ptr %t, align 8
  %p_key13 = getelementptr inbounds %struct.ptree, ptr %25, i32 0, i32 0
  %26 = load i64, ptr %p_key13, align 8
  %cmp14 = icmp eq i64 %24, %26
  br i1 %cmp14, label %if.then16, label %if.end73

if.then16:                                        ; preds = %do.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then16
  %27 = load i32, ptr %i, align 4
  %28 = load ptr, ptr %t, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, ptr %28, i32 0, i32 2
  %29 = load i8, ptr %p_mlen, align 8
  %conv17 = zext i8 %29 to i32
  %cmp18 = icmp slt i32 %27, %conv17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %n.addr, align 8
  %p_m20 = getelementptr inbounds %struct.ptree, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %p_m20, align 8
  %pm_mask21 = getelementptr inbounds %struct.ptree_mask, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %pm_mask21, align 8
  %33 = load ptr, ptr %t, align 8
  %p_m22 = getelementptr inbounds %struct.ptree, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %p_m22, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds %struct.ptree_mask, ptr %34, i64 %idxprom
  %pm_mask23 = getelementptr inbounds %struct.ptree_mask, ptr %arrayidx, i32 0, i32 0
  %36 = load i64, ptr %pm_mask23, align 8
  %cmp24 = icmp eq i64 %32, %36
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %for.body
  %37 = load ptr, ptr %n.addr, align 8
  %p_m27 = getelementptr inbounds %struct.ptree, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %p_m27, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %pm_data, align 8
  %40 = load ptr, ptr %t, align 8
  %p_m28 = getelementptr inbounds %struct.ptree, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %p_m28, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds %struct.ptree_mask, ptr %41, i64 %idxprom29
  %pm_data31 = getelementptr inbounds %struct.ptree_mask, ptr %arrayidx30, i32 0, i32 1
  store ptr %39, ptr %pm_data31, align 8
  %43 = load ptr, ptr %n.addr, align 8
  %p_m32 = getelementptr inbounds %struct.ptree, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %p_m32, align 8
  call void @free(ptr noundef %44)
  %45 = load ptr, ptr %n.addr, align 8
  call void @free(ptr noundef %45)
  store ptr null, ptr %n.addr, align 8
  %46 = load ptr, ptr %t, align 8
  store ptr %46, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %47 = load i32, ptr %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %t, align 8
  %p_mlen34 = getelementptr inbounds %struct.ptree, ptr %48, i32 0, i32 2
  %49 = load i8, ptr %p_mlen34, align 8
  %conv35 = zext i8 %49 to i32
  %add = add nsw i32 %conv35, 1
  %conv36 = sext i32 %add to i64
  %mul = mul i64 16, %conv36
  %call37 = call ptr @malloc(i64 noundef %mul) #6
  store ptr %call37, ptr %buf, align 8
  store i32 0, ptr %copied, align 4
  store i32 0, ptr %i, align 4
  %50 = load ptr, ptr %buf, align 8
  store ptr %50, ptr %pm, align 8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc61, %for.end
  %51 = load i32, ptr %i, align 4
  %52 = load ptr, ptr %t, align 8
  %p_mlen39 = getelementptr inbounds %struct.ptree, ptr %52, i32 0, i32 2
  %53 = load i8, ptr %p_mlen39, align 8
  %conv40 = zext i8 %53 to i32
  %cmp41 = icmp slt i32 %51, %conv40
  br i1 %cmp41, label %for.body43, label %for.end62

for.body43:                                       ; preds = %for.cond38
  %54 = load ptr, ptr %n.addr, align 8
  %p_m44 = getelementptr inbounds %struct.ptree, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %p_m44, align 8
  %pm_mask45 = getelementptr inbounds %struct.ptree_mask, ptr %55, i32 0, i32 0
  %56 = load i64, ptr %pm_mask45, align 8
  %57 = load ptr, ptr %t, align 8
  %p_m46 = getelementptr inbounds %struct.ptree, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %p_m46, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %59 to i64
  %arrayidx48 = getelementptr inbounds %struct.ptree_mask, ptr %58, i64 %idxprom47
  %pm_mask49 = getelementptr inbounds %struct.ptree_mask, ptr %arrayidx48, i32 0, i32 0
  %60 = load i64, ptr %pm_mask49, align 8
  %cmp50 = icmp ugt i64 %56, %60
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.body43
  %61 = load ptr, ptr %pm, align 8
  %62 = load ptr, ptr %t, align 8
  %p_m53 = getelementptr inbounds %struct.ptree, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %p_m53, align 8
  %64 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds %struct.ptree_mask, ptr %63, i64 %idx.ext
  %65 = load ptr, ptr %pm, align 8
  %66 = call i64 @llvm.objectsize.i64.p0(ptr %65, i1 false, i1 true, i1 false)
  %call54 = call ptr @__memmove_chk(ptr noundef %61, ptr noundef %add.ptr, i64 noundef 16, i64 noundef %66) #7
  %67 = load i32, ptr %i, align 4
  %inc55 = add nsw i32 %67, 1
  store i32 %inc55, ptr %i, align 4
  br label %if.end60

if.else:                                          ; preds = %for.body43
  %68 = load ptr, ptr %pm, align 8
  %69 = load ptr, ptr %n.addr, align 8
  %p_m56 = getelementptr inbounds %struct.ptree, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %p_m56, align 8
  %71 = load ptr, ptr %pm, align 8
  %72 = call i64 @llvm.objectsize.i64.p0(ptr %71, i1 false, i1 true, i1 false)
  %call57 = call ptr @__memmove_chk(ptr noundef %68, ptr noundef %70, i64 noundef 16, i64 noundef %72) #7
  %73 = load ptr, ptr %n.addr, align 8
  %p_m58 = getelementptr inbounds %struct.ptree, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %p_m58, align 8
  %pm_mask59 = getelementptr inbounds %struct.ptree_mask, ptr %74, i32 0, i32 0
  store i64 4294967295, ptr %pm_mask59, align 8
  store i32 1, ptr %copied, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then52
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %75 = load ptr, ptr %pm, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, ptr %75, i32 1
  store ptr %incdec.ptr, ptr %pm, align 8
  br label %for.cond38, !llvm.loop !9

for.end62:                                        ; preds = %for.cond38
  %76 = load i32, ptr %copied, align 4
  %tobool63 = icmp ne i32 %76, 0
  br i1 %tobool63, label %if.end67, label %if.then64

if.then64:                                        ; preds = %for.end62
  %77 = load ptr, ptr %pm, align 8
  %78 = load ptr, ptr %n.addr, align 8
  %p_m65 = getelementptr inbounds %struct.ptree, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %p_m65, align 8
  %80 = load ptr, ptr %pm, align 8
  %81 = call i64 @llvm.objectsize.i64.p0(ptr %80, i1 false, i1 true, i1 false)
  %call66 = call ptr @__memmove_chk(ptr noundef %77, ptr noundef %79, i64 noundef 16, i64 noundef %81) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %for.end62
  %82 = load ptr, ptr %n.addr, align 8
  %p_m68 = getelementptr inbounds %struct.ptree, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %p_m68, align 8
  call void @free(ptr noundef %83)
  %84 = load ptr, ptr %n.addr, align 8
  call void @free(ptr noundef %84)
  store ptr null, ptr %n.addr, align 8
  %85 = load ptr, ptr %t, align 8
  %p_mlen69 = getelementptr inbounds %struct.ptree, ptr %85, i32 0, i32 2
  %86 = load i8, ptr %p_mlen69, align 8
  %inc70 = add i8 %86, 1
  store i8 %inc70, ptr %p_mlen69, align 8
  %87 = load ptr, ptr %t, align 8
  %p_m71 = getelementptr inbounds %struct.ptree, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %p_m71, align 8
  call void @free(ptr noundef %88)
  %89 = load ptr, ptr %buf, align 8
  %90 = load ptr, ptr %t, align 8
  %p_m72 = getelementptr inbounds %struct.ptree, ptr %90, i32 0, i32 1
  store ptr %89, ptr %p_m72, align 8
  %91 = load ptr, ptr %t, align 8
  store ptr %91, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %do.end
  store i32 1, ptr %i, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc84, %if.end73
  %92 = load i32, ptr %i, align 4
  %cmp75 = icmp slt i32 %92, 32
  br i1 %cmp75, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond74
  %93 = load i32, ptr %i, align 4
  %94 = load ptr, ptr %n.addr, align 8
  %p_key77 = getelementptr inbounds %struct.ptree, ptr %94, i32 0, i32 0
  %95 = load i64, ptr %p_key77, align 8
  %call78 = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_1(i32 noundef %93, i64 noundef %95)
  %96 = load i32, ptr %i, align 4
  %97 = load ptr, ptr %t, align 8
  %p_key79 = getelementptr inbounds %struct.ptree, ptr %97, i32 0, i32 0
  %98 = load i64, ptr %p_key79, align 8
  %call80 = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_2(i32 noundef %96, i64 noundef %98)
  %cmp81 = icmp eq i64 %call78, %call80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond74
  %99 = phi i1 [ false, %for.cond74 ], [ %cmp81, %land.rhs ]
  br i1 %99, label %for.body83, label %for.end86

for.body83:                                       ; preds = %land.end
  br label %for.inc84

for.inc84:                                        ; preds = %for.body83
  %100 = load i32, ptr %i, align 4
  %inc85 = add nsw i32 %100, 1
  store i32 %inc85, ptr %i, align 4
  br label %for.cond74, !llvm.loop !10

for.end86:                                        ; preds = %land.end
  %101 = load ptr, ptr %head.addr, align 8
  %p_b87 = getelementptr inbounds %struct.ptree, ptr %101, i32 0, i32 3
  %102 = load i8, ptr %p_b87, align 1
  %conv88 = sext i8 %102 to i32
  %103 = load ptr, ptr %n.addr, align 8
  %p_key89 = getelementptr inbounds %struct.ptree, ptr %103, i32 0, i32 0
  %104 = load i64, ptr %p_key89, align 8
  %call90 = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_3(i32 noundef %conv88, i64 noundef %104)
  %tobool91 = icmp ne i64 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.else96

if.then92:                                        ; preds = %for.end86
  %105 = load ptr, ptr %head.addr, align 8
  %p_right93 = getelementptr inbounds %struct.ptree, ptr %105, i32 0, i32 5
  %106 = load ptr, ptr %p_right93, align 8
  %107 = load ptr, ptr %n.addr, align 8
  %108 = load i32, ptr %i, align 4
  %109 = load ptr, ptr %head.addr, align 8
  %call94 = call ptr @insertR(ptr noundef %106, ptr noundef %107, i32 noundef %108, ptr noundef %109)
  %110 = load ptr, ptr %head.addr, align 8
  %p_right95 = getelementptr inbounds %struct.ptree, ptr %110, i32 0, i32 5
  store ptr %call94, ptr %p_right95, align 8
  br label %if.end100

if.else96:                                        ; preds = %for.end86
  %111 = load ptr, ptr %head.addr, align 8
  %p_left97 = getelementptr inbounds %struct.ptree, ptr %111, i32 0, i32 4
  %112 = load ptr, ptr %p_left97, align 8
  %113 = load ptr, ptr %n.addr, align 8
  %114 = load i32, ptr %i, align 4
  %115 = load ptr, ptr %head.addr, align 8
  %call98 = call ptr @insertR(ptr noundef %112, ptr noundef %113, i32 noundef %114, ptr noundef %115)
  %116 = load ptr, ptr %head.addr, align 8
  %p_left99 = getelementptr inbounds %struct.ptree, ptr %116, i32 0, i32 4
  store ptr %call98, ptr %p_left99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.else96, %if.then92
  %117 = load ptr, ptr %n.addr, align 8
  store ptr %117, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end100, %if.end67, %if.then26, %if.then
  %118 = load ptr, ptr %retval, align 8
  ret ptr %118
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @bit(i32 noundef %i, i64 noundef %key) #0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
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
  %retval = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store i32 %d, ptr %d.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %h.addr, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %0, i32 0, i32 3
  %1 = load i8, ptr %p_b, align 1
  %conv = sext i8 %1 to i32
  %2 = load i32, ptr %d.addr, align 4
  %cmp = icmp sge i32 %conv, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8
  %p_b2 = getelementptr inbounds %struct.ptree, ptr %3, i32 0, i32 3
  %4 = load i8, ptr %p_b2, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load ptr, ptr %p.addr, align 8
  %p_b4 = getelementptr inbounds %struct.ptree, ptr %5, i32 0, i32 3
  %6 = load i8, ptr %p_b4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp sle i32 %conv3, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i32, ptr %d.addr, align 4
  %conv8 = trunc i32 %7 to i8
  %8 = load ptr, ptr %n.addr, align 8
  %p_b9 = getelementptr inbounds %struct.ptree, ptr %8, i32 0, i32 3
  store i8 %conv8, ptr %p_b9, align 1
  %9 = load i32, ptr %d.addr, align 4
  %10 = load ptr, ptr %n.addr, align 8
  %p_key = getelementptr inbounds %struct.ptree, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %p_key, align 8
  %call = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_4(i32 noundef %9, i64 noundef %11)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load ptr, ptr %h.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load ptr, ptr %n.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load ptr, ptr %n.addr, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %14, i32 0, i32 4
  store ptr %cond, ptr %p_left, align 8
  %15 = load i32, ptr %d.addr, align 4
  %16 = load ptr, ptr %n.addr, align 8
  %p_key10 = getelementptr inbounds %struct.ptree, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %p_key10, align 8
  %call11 = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_5(i32 noundef %15, i64 noundef %17)
  %tobool12 = icmp ne i64 %call11, 0
  br i1 %tobool12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end
  %18 = load ptr, ptr %n.addr, align 8
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  %19 = load ptr, ptr %h.addr, align 8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi ptr [ %18, %cond.true13 ], [ %19, %cond.false14 ]
  %20 = load ptr, ptr %n.addr, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %20, i32 0, i32 5
  store ptr %cond16, ptr %p_right, align 8
  %21 = load ptr, ptr %n.addr, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %22 = load ptr, ptr %h.addr, align 8
  %p_b17 = getelementptr inbounds %struct.ptree, ptr %22, i32 0, i32 3
  %23 = load i8, ptr %p_b17, align 1
  %conv18 = sext i8 %23 to i32
  %24 = load ptr, ptr %n.addr, align 8
  %p_key19 = getelementptr inbounds %struct.ptree, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %p_key19, align 8
  %call20 = call i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_6(i32 noundef %conv18, i64 noundef %25)
  %tobool21 = icmp ne i64 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %26 = load ptr, ptr %h.addr, align 8
  %p_right23 = getelementptr inbounds %struct.ptree, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %p_right23, align 8
  %28 = load ptr, ptr %n.addr, align 8
  %29 = load i32, ptr %d.addr, align 4
  %30 = load ptr, ptr %h.addr, align 8
  %call24 = call ptr @insertR(ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %h.addr, align 8
  %p_right25 = getelementptr inbounds %struct.ptree, ptr %31, i32 0, i32 5
  store ptr %call24, ptr %p_right25, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end
  %32 = load ptr, ptr %h.addr, align 8
  %p_left26 = getelementptr inbounds %struct.ptree, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %p_left26, align 8
  %34 = load ptr, ptr %n.addr, align 8
  %35 = load i32, ptr %d.addr, align 4
  %36 = load ptr, ptr %h.addr, align 8
  %call27 = call ptr @insertR(ptr noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %h.addr, align 8
  %p_left28 = getelementptr inbounds %struct.ptree, ptr %37, i32 0, i32 4
  store ptr %call27, ptr %p_left28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  %38 = load ptr, ptr %h.addr, align 8
  store ptr %38, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end29, %cond.end15
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
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
  %0 = load ptr, ptr %n.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %p_m, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %t, align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %head.addr, align 8
  store ptr %4, ptr %t, align 8
  store ptr %4, ptr %p, align 8
  store ptr %4, ptr %g, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load ptr, ptr %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %5, i32 0, i32 3
  %6 = load i8, ptr %p_b, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, ptr %i, align 4
  %7 = load ptr, ptr %p, align 8
  store ptr %7, ptr %g, align 8
  %8 = load ptr, ptr %t, align 8
  store ptr %8, ptr %p, align 8
  %9 = load ptr, ptr %t, align 8
  %p_b4 = getelementptr inbounds %struct.ptree, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %p_b4, align 1
  %conv5 = sext i8 %10 to i32
  %11 = load ptr, ptr %n.addr, align 8
  %p_key = getelementptr inbounds %struct.ptree, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %p_key, align 8
  %call = call i64 @bit(i32 noundef %conv5, i64 noundef %12)
  %tobool6 = icmp ne i64 %call, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %13 = load ptr, ptr %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %p_right, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %15 = load ptr, ptr %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %p_left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %14, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %t, align 8
  %p_b7 = getelementptr inbounds %struct.ptree, ptr %18, i32 0, i32 3
  %19 = load i8, ptr %p_b7, align 1
  %conv8 = sext i8 %19 to i32
  %cmp = icmp slt i32 %17, %conv8
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %t, align 8
  %p_key10 = getelementptr inbounds %struct.ptree, ptr %20, i32 0, i32 0
  %21 = load i64, ptr %p_key10, align 8
  %22 = load ptr, ptr %n.addr, align 8
  %p_key11 = getelementptr inbounds %struct.ptree, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %p_key11, align 8
  %cmp12 = icmp ne i64 %21, %23
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %do.end
  %24 = load ptr, ptr %t, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, ptr %24, i32 0, i32 2
  %25 = load i8, ptr %p_mlen, align 8
  %conv16 = zext i8 %25 to i32
  %cmp17 = icmp eq i32 %conv16, 1
  br i1 %cmp17, label %if.then19, label %if.end111

if.then19:                                        ; preds = %if.end15
  %26 = load ptr, ptr %t, align 8
  %p_b20 = getelementptr inbounds %struct.ptree, ptr %26, i32 0, i32 3
  %27 = load i8, ptr %p_b20, align 1
  %conv21 = sext i8 %27 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then19
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then19
  %28 = load ptr, ptr %t, align 8
  %p_m26 = getelementptr inbounds %struct.ptree, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %p_m26, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %pm_mask, align 8
  %31 = load ptr, ptr %n.addr, align 8
  %p_m27 = getelementptr inbounds %struct.ptree, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %p_m27, align 8
  %pm_mask28 = getelementptr inbounds %struct.ptree_mask, ptr %32, i32 0, i32 0
  %33 = load i64, ptr %pm_mask28, align 8
  %cmp29 = icmp ne i64 %30, %33
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end25
  %34 = load ptr, ptr %p, align 8
  store ptr %34, ptr %pt, align 8
  store ptr %34, ptr %pp, align 8
  br label %do.body33

do.body33:                                        ; preds = %do.cond47, %if.end32
  %35 = load ptr, ptr %pt, align 8
  %p_b34 = getelementptr inbounds %struct.ptree, ptr %35, i32 0, i32 3
  %36 = load i8, ptr %p_b34, align 1
  %conv35 = sext i8 %36 to i32
  store i32 %conv35, ptr %i, align 4
  %37 = load ptr, ptr %pt, align 8
  store ptr %37, ptr %pp, align 8
  %38 = load ptr, ptr %pt, align 8
  %p_b36 = getelementptr inbounds %struct.ptree, ptr %38, i32 0, i32 3
  %39 = load i8, ptr %p_b36, align 1
  %conv37 = sext i8 %39 to i32
  %40 = load ptr, ptr %p, align 8
  %p_key38 = getelementptr inbounds %struct.ptree, ptr %40, i32 0, i32 0
  %41 = load i64, ptr %p_key38, align 8
  %call39 = call i64 @bit(i32 noundef %conv37, i64 noundef %41)
  %tobool40 = icmp ne i64 %call39, 0
  br i1 %tobool40, label %cond.true41, label %cond.false43

cond.true41:                                      ; preds = %do.body33
  %42 = load ptr, ptr %pt, align 8
  %p_right42 = getelementptr inbounds %struct.ptree, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %p_right42, align 8
  br label %cond.end45

cond.false43:                                     ; preds = %do.body33
  %44 = load ptr, ptr %pt, align 8
  %p_left44 = getelementptr inbounds %struct.ptree, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %p_left44, align 8
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false43, %cond.true41
  %cond46 = phi ptr [ %43, %cond.true41 ], [ %45, %cond.false43 ]
  store ptr %cond46, ptr %pt, align 8
  br label %do.cond47

do.cond47:                                        ; preds = %cond.end45
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %pt, align 8
  %p_b48 = getelementptr inbounds %struct.ptree, ptr %47, i32 0, i32 3
  %48 = load i8, ptr %p_b48, align 1
  %conv49 = sext i8 %48 to i32
  %cmp50 = icmp slt i32 %46, %conv49
  br i1 %cmp50, label %do.body33, label %do.end52, !llvm.loop !12

do.end52:                                         ; preds = %do.cond47
  %49 = load ptr, ptr %pp, align 8
  %p_b53 = getelementptr inbounds %struct.ptree, ptr %49, i32 0, i32 3
  %50 = load i8, ptr %p_b53, align 1
  %conv54 = sext i8 %50 to i32
  %51 = load ptr, ptr %p, align 8
  %p_key55 = getelementptr inbounds %struct.ptree, ptr %51, i32 0, i32 0
  %52 = load i64, ptr %p_key55, align 8
  %call56 = call i64 @bit(i32 noundef %conv54, i64 noundef %52)
  %tobool57 = icmp ne i64 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.else

if.then58:                                        ; preds = %do.end52
  %53 = load ptr, ptr %t, align 8
  %54 = load ptr, ptr %pp, align 8
  %p_right59 = getelementptr inbounds %struct.ptree, ptr %54, i32 0, i32 5
  store ptr %53, ptr %p_right59, align 8
  br label %if.end61

if.else:                                          ; preds = %do.end52
  %55 = load ptr, ptr %t, align 8
  %56 = load ptr, ptr %pp, align 8
  %p_left60 = getelementptr inbounds %struct.ptree, ptr %56, i32 0, i32 4
  store ptr %55, ptr %p_left60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then58
  %57 = load ptr, ptr %g, align 8
  %p_b62 = getelementptr inbounds %struct.ptree, ptr %57, i32 0, i32 3
  %58 = load i8, ptr %p_b62, align 1
  %conv63 = sext i8 %58 to i32
  %59 = load ptr, ptr %n.addr, align 8
  %p_key64 = getelementptr inbounds %struct.ptree, ptr %59, i32 0, i32 0
  %60 = load i64, ptr %p_key64, align 8
  %call65 = call i64 @bit(i32 noundef %conv63, i64 noundef %60)
  %tobool66 = icmp ne i64 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.else80

if.then67:                                        ; preds = %if.end61
  %61 = load ptr, ptr %p, align 8
  %p_b68 = getelementptr inbounds %struct.ptree, ptr %61, i32 0, i32 3
  %62 = load i8, ptr %p_b68, align 1
  %conv69 = sext i8 %62 to i32
  %63 = load ptr, ptr %n.addr, align 8
  %p_key70 = getelementptr inbounds %struct.ptree, ptr %63, i32 0, i32 0
  %64 = load i64, ptr %p_key70, align 8
  %call71 = call i64 @bit(i32 noundef %conv69, i64 noundef %64)
  %tobool72 = icmp ne i64 %call71, 0
  br i1 %tobool72, label %cond.true73, label %cond.false75

cond.true73:                                      ; preds = %if.then67
  %65 = load ptr, ptr %p, align 8
  %p_left74 = getelementptr inbounds %struct.ptree, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %p_left74, align 8
  br label %cond.end77

cond.false75:                                     ; preds = %if.then67
  %67 = load ptr, ptr %p, align 8
  %p_right76 = getelementptr inbounds %struct.ptree, ptr %67, i32 0, i32 5
  %68 = load ptr, ptr %p_right76, align 8
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false75, %cond.true73
  %cond78 = phi ptr [ %66, %cond.true73 ], [ %68, %cond.false75 ]
  %69 = load ptr, ptr %g, align 8
  %p_right79 = getelementptr inbounds %struct.ptree, ptr %69, i32 0, i32 5
  store ptr %cond78, ptr %p_right79, align 8
  br label %if.end93

if.else80:                                        ; preds = %if.end61
  %70 = load ptr, ptr %p, align 8
  %p_b81 = getelementptr inbounds %struct.ptree, ptr %70, i32 0, i32 3
  %71 = load i8, ptr %p_b81, align 1
  %conv82 = sext i8 %71 to i32
  %72 = load ptr, ptr %n.addr, align 8
  %p_key83 = getelementptr inbounds %struct.ptree, ptr %72, i32 0, i32 0
  %73 = load i64, ptr %p_key83, align 8
  %call84 = call i64 @bit(i32 noundef %conv82, i64 noundef %73)
  %tobool85 = icmp ne i64 %call84, 0
  br i1 %tobool85, label %cond.true86, label %cond.false88

cond.true86:                                      ; preds = %if.else80
  %74 = load ptr, ptr %p, align 8
  %p_left87 = getelementptr inbounds %struct.ptree, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %p_left87, align 8
  br label %cond.end90

cond.false88:                                     ; preds = %if.else80
  %76 = load ptr, ptr %p, align 8
  %p_right89 = getelementptr inbounds %struct.ptree, ptr %76, i32 0, i32 5
  %77 = load ptr, ptr %p_right89, align 8
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false88, %cond.true86
  %cond91 = phi ptr [ %75, %cond.true86 ], [ %77, %cond.false88 ]
  %78 = load ptr, ptr %g, align 8
  %p_left92 = getelementptr inbounds %struct.ptree, ptr %78, i32 0, i32 4
  store ptr %cond91, ptr %p_left92, align 8
  br label %if.end93

if.end93:                                         ; preds = %cond.end90, %cond.end77
  %79 = load ptr, ptr %t, align 8
  %p_m94 = getelementptr inbounds %struct.ptree, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %p_m94, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %pm_data, align 8
  %tobool95 = icmp ne ptr %81, null
  br i1 %tobool95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end93
  %82 = load ptr, ptr %t, align 8
  %p_m97 = getelementptr inbounds %struct.ptree, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %p_m97, align 8
  %pm_data98 = getelementptr inbounds %struct.ptree_mask, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %pm_data98, align 8
  call void @free(ptr noundef %84)
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end93
  %85 = load ptr, ptr %t, align 8
  %p_m100 = getelementptr inbounds %struct.ptree, ptr %85, i32 0, i32 1
  %86 = load ptr, ptr %p_m100, align 8
  call void @free(ptr noundef %86)
  %87 = load ptr, ptr %t, align 8
  %88 = load ptr, ptr %p, align 8
  %cmp101 = icmp ne ptr %87, %88
  br i1 %cmp101, label %if.then103, label %if.end110

if.then103:                                       ; preds = %if.end99
  %89 = load ptr, ptr %p, align 8
  %p_key104 = getelementptr inbounds %struct.ptree, ptr %89, i32 0, i32 0
  %90 = load i64, ptr %p_key104, align 8
  %91 = load ptr, ptr %t, align 8
  %p_key105 = getelementptr inbounds %struct.ptree, ptr %91, i32 0, i32 0
  store i64 %90, ptr %p_key105, align 8
  %92 = load ptr, ptr %p, align 8
  %p_m106 = getelementptr inbounds %struct.ptree, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %p_m106, align 8
  %94 = load ptr, ptr %t, align 8
  %p_m107 = getelementptr inbounds %struct.ptree, ptr %94, i32 0, i32 1
  store ptr %93, ptr %p_m107, align 8
  %95 = load ptr, ptr %p, align 8
  %p_mlen108 = getelementptr inbounds %struct.ptree, ptr %95, i32 0, i32 2
  %96 = load i8, ptr %p_mlen108, align 8
  %97 = load ptr, ptr %t, align 8
  %p_mlen109 = getelementptr inbounds %struct.ptree, ptr %97, i32 0, i32 2
  store i8 %96, ptr %p_mlen109, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %if.end99
  %98 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %98)
  store i32 1, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.end15
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end111
  %99 = load i32, ptr %i, align 4
  %100 = load ptr, ptr %t, align 8
  %p_mlen112 = getelementptr inbounds %struct.ptree, ptr %100, i32 0, i32 2
  %101 = load i8, ptr %p_mlen112, align 8
  %conv113 = zext i8 %101 to i32
  %cmp114 = icmp slt i32 %99, %conv113
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load ptr, ptr %n.addr, align 8
  %p_m116 = getelementptr inbounds %struct.ptree, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %p_m116, align 8
  %pm_mask117 = getelementptr inbounds %struct.ptree_mask, ptr %103, i32 0, i32 0
  %104 = load i64, ptr %pm_mask117, align 8
  %105 = load ptr, ptr %t, align 8
  %p_m118 = getelementptr inbounds %struct.ptree, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %p_m118, align 8
  %107 = load i32, ptr %i, align 4
  %idxprom = sext i32 %107 to i64
  %arrayidx = getelementptr inbounds %struct.ptree_mask, ptr %106, i64 %idxprom
  %pm_mask119 = getelementptr inbounds %struct.ptree_mask, ptr %arrayidx, i32 0, i32 0
  %108 = load i64, ptr %pm_mask119, align 8
  %cmp120 = icmp eq i64 %104, %108
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.body
  br label %for.end

if.end123:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end123
  %109 = load i32, ptr %i, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then122, %for.cond
  %110 = load i32, ptr %i, align 4
  %111 = load ptr, ptr %t, align 8
  %p_mlen124 = getelementptr inbounds %struct.ptree, ptr %111, i32 0, i32 2
  %112 = load i8, ptr %p_mlen124, align 8
  %conv125 = zext i8 %112 to i32
  %cmp126 = icmp sge i32 %110, %conv125
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end129:                                        ; preds = %for.end
  %113 = load ptr, ptr %t, align 8
  %p_mlen130 = getelementptr inbounds %struct.ptree, ptr %113, i32 0, i32 2
  %114 = load i8, ptr %p_mlen130, align 8
  %conv131 = zext i8 %114 to i32
  %sub = sub nsw i32 %conv131, 1
  %conv132 = sext i32 %sub to i64
  %mul = mul i64 16, %conv132
  %call133 = call ptr @malloc(i64 noundef %mul) #6
  store ptr %call133, ptr %buf, align 8
  store i32 0, ptr %i, align 4
  %115 = load ptr, ptr %buf, align 8
  store ptr %115, ptr %pm, align 8
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc151, %if.end129
  %116 = load i32, ptr %i, align 4
  %117 = load ptr, ptr %t, align 8
  %p_mlen135 = getelementptr inbounds %struct.ptree, ptr %117, i32 0, i32 2
  %118 = load i8, ptr %p_mlen135, align 8
  %conv136 = zext i8 %118 to i32
  %cmp137 = icmp slt i32 %116, %conv136
  br i1 %cmp137, label %for.body139, label %for.end153

for.body139:                                      ; preds = %for.cond134
  %119 = load ptr, ptr %n.addr, align 8
  %p_m140 = getelementptr inbounds %struct.ptree, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %p_m140, align 8
  %pm_mask141 = getelementptr inbounds %struct.ptree_mask, ptr %120, i32 0, i32 0
  %121 = load i64, ptr %pm_mask141, align 8
  %122 = load ptr, ptr %t, align 8
  %p_m142 = getelementptr inbounds %struct.ptree, ptr %122, i32 0, i32 1
  %123 = load ptr, ptr %p_m142, align 8
  %124 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %124 to i64
  %arrayidx144 = getelementptr inbounds %struct.ptree_mask, ptr %123, i64 %idxprom143
  %pm_mask145 = getelementptr inbounds %struct.ptree_mask, ptr %arrayidx144, i32 0, i32 0
  %125 = load i64, ptr %pm_mask145, align 8
  %cmp146 = icmp ne i64 %121, %125
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %for.body139
  %126 = load ptr, ptr %pm, align 8
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, ptr %126, i32 1
  store ptr %incdec.ptr, ptr %pm, align 8
  %127 = load ptr, ptr %t, align 8
  %p_m149 = getelementptr inbounds %struct.ptree, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %p_m149, align 8
  %129 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %129 to i64
  %add.ptr = getelementptr inbounds %struct.ptree_mask, ptr %128, i64 %idx.ext
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %126, ptr align 8 %add.ptr, i64 16, i1 false)
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %for.body139
  br label %for.inc151

for.inc151:                                       ; preds = %if.end150
  %130 = load i32, ptr %i, align 4
  %inc152 = add nsw i32 %130, 1
  store i32 %inc152, ptr %i, align 4
  br label %for.cond134, !llvm.loop !14

for.end153:                                       ; preds = %for.cond134
  %131 = load ptr, ptr %t, align 8
  %p_mlen154 = getelementptr inbounds %struct.ptree, ptr %131, i32 0, i32 2
  %132 = load i8, ptr %p_mlen154, align 8
  %dec = add i8 %132, -1
  store i8 %dec, ptr %p_mlen154, align 8
  %133 = load ptr, ptr %t, align 8
  %p_m155 = getelementptr inbounds %struct.ptree, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %p_m155, align 8
  call void @free(ptr noundef %134)
  %135 = load ptr, ptr %buf, align 8
  %136 = load ptr, ptr %t, align 8
  %p_m156 = getelementptr inbounds %struct.ptree, ptr %136, i32 0, i32 1
  store ptr %135, ptr %p_m156, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end153, %if.then128, %if.end110, %if.then31, %if.then24, %if.then14, %if.then
  %137 = load i32, ptr %retval, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind ssp uwtable
define ptr @pat_search(i64 noundef %key, ptr noundef %head) #0 {
entry:
  %retval = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %head.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  store i64 %key, ptr %key.addr, align 8
  store ptr %head, ptr %head.addr, align 8
  store ptr null, ptr %p, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %t, align 8
  %1 = load ptr, ptr %t, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load ptr, ptr %t, align 8
  %p_key = getelementptr inbounds %struct.ptree, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %p_key, align 8
  %4 = load i64, ptr %key.addr, align 8
  %5 = load ptr, ptr %t, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %p_m, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %pm_mask, align 8
  %and = and i64 %4, %7
  %cmp = icmp eq i64 %3, %and
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %do.body
  %8 = load ptr, ptr %t, align 8
  store ptr %8, ptr %p, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %do.body
  %9 = load ptr, ptr %t, align 8
  %p_b = getelementptr inbounds %struct.ptree, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %p_b, align 1
  %conv = sext i8 %10 to i32
  store i32 %conv, ptr %i, align 4
  %11 = load ptr, ptr %t, align 8
  %p_b3 = getelementptr inbounds %struct.ptree, ptr %11, i32 0, i32 3
  %12 = load i8, ptr %p_b3, align 1
  %conv4 = sext i8 %12 to i32
  %13 = load i64, ptr %key.addr, align 8
  %call = call i64 @bit(i32 noundef %conv4, i64 noundef %13)
  %tobool5 = icmp ne i64 %call, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end2
  %14 = load ptr, ptr %t, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %p_right, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end2
  %16 = load ptr, ptr %t, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %p_left, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ %17, %cond.false ]
  store ptr %cond, ptr %t, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %18 = load i32, ptr %i, align 4
  %19 = load ptr, ptr %t, align 8
  %p_b6 = getelementptr inbounds %struct.ptree, ptr %19, i32 0, i32 3
  %20 = load i8, ptr %p_b6, align 1
  %conv7 = sext i8 %20 to i32
  %cmp8 = icmp slt i32 %18, %conv7
  br i1 %cmp8, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %t, align 8
  %p_key10 = getelementptr inbounds %struct.ptree, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %p_key10, align 8
  %23 = load i64, ptr %key.addr, align 8
  %24 = load ptr, ptr %t, align 8
  %p_m11 = getelementptr inbounds %struct.ptree, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %p_m11, align 8
  %pm_mask12 = getelementptr inbounds %struct.ptree_mask, ptr %25, i32 0, i32 0
  %26 = load i64, ptr %pm_mask12, align 8
  %and13 = and i64 %23, %26
  %cmp14 = icmp eq i64 %22, %and13
  br i1 %cmp14, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %do.end
  %27 = load ptr, ptr %t, align 8
  br label %cond.end18

cond.false17:                                     ; preds = %do.end
  %28 = load ptr, ptr %p, align 8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi ptr [ %27, %cond.true16 ], [ %28, %cond.false17 ]
  store ptr %cond19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end18, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_0(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_1(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_2(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_3(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_4(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_5(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
}

define internal i64 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_6(i32 noundef %i, i64 noundef %key)  alwaysinline#0 {
entry:
  %i.addr = alloca i32, align 4
  %key.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %key, ptr %key.addr, align 8
  %0 = load i64, ptr %key.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 31, %1
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  ret i64 %and
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
