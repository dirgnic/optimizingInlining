; ModuleID = 'SingleSource/Benchmarks/Misc/lowercase.c'
source_filename = "SingleSource/Benchmarks/Misc/lowercase.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@staticData = internal global [16 x i16] [i16 72, i16 69, i16 76, i16 76, i16 79, i16 32, i16 87, i16 79, i16 82, i16 76, i16 68, i16 33, i16 72, i16 69, i16 76, i16 76], align 2
@.str = private unnamed_addr constant [29 x i8] c"iterations (%ld characters)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  call void @doTest(i64 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @doTest(i64 noundef %numberOfIterations) #0 {
entry:
  %numberOfIterations.addr = alloca i64, align 8
  %numberOfCharacters = alloca i64, align 8
  %testDataLength = alloca i64, align 8
  %testData = alloca ptr, align 8
  %i = alloca i64, align 8
  %result = alloca ptr, align 8
  store i64 %numberOfIterations, ptr %numberOfIterations.addr, align 8
  %0 = load i64, ptr %numberOfIterations.addr, align 8
  store i64 %0, ptr %numberOfCharacters, align 8
  %1 = load i64, ptr %numberOfCharacters, align 8
  %add = add i64 %1, 16
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 16
  %mul = mul i64 %div, 16
  store i64 %mul, ptr %testDataLength, align 8
  %2 = load i64, ptr %testDataLength, align 8
  %mul1 = mul i64 2, %2
  %call = call ptr @malloc(i64 noundef %mul1) #5
  store ptr %call, ptr %testData, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8
  %4 = load i64, ptr %testDataLength, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %testData, align 8
  %6 = load i64, ptr %i, align 8
  %add.ptr = getelementptr inbounds nuw i16, ptr %5, i64 %6
  %7 = load ptr, ptr %testData, align 8
  %8 = load i64, ptr %i, align 8
  %add.ptr2 = getelementptr inbounds nuw i16, ptr %7, i64 %8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr2, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef @staticData, i64 noundef 32, i64 noundef %9) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8
  %add4 = add i64 %10, 16
  store i64 %add4, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %11 = load i64, ptr %testDataLength, align 8
  %mul5 = mul i64 2, %11
  %call6 = call ptr @malloc(i64 noundef %mul5) #5
  store ptr %call6, ptr %result, align 8
  %12 = load i64, ptr %numberOfIterations.addr, align 8
  %13 = load i64, ptr %numberOfCharacters, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %12, i64 noundef %13)
  %14 = load ptr, ptr %result, align 8
  %15 = load i64, ptr %testDataLength, align 8
  %mul8 = mul i64 2, %15
  %16 = load ptr, ptr %result, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call9 = call ptr @__memset_chk(ptr noundef %14, i32 noundef 0, i64 noundef %mul8, i64 noundef %17) #6
  store i64 0, ptr %i, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc14, %for.end
  %18 = load i64, ptr %i, align 8
  %cmp11 = icmp ult i64 %18, 10000000
  br i1 %cmp11, label %for.body12, label %for.end15

for.body12:                                       ; preds = %for.cond10
  %19 = load ptr, ptr %testData, align 8
  %20 = load i64, ptr %numberOfCharacters, align 8
  %21 = load ptr, ptr %result, align 8
  %call13 = call i64 @lower_StringImpl(ptr noundef %19, i64 noundef %20, ptr noundef %21)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %22 = load i64, ptr %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond10, !llvm.loop !9

for.end15:                                        ; preds = %for.cond10
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i64 @lower_StringImpl(ptr noalias noundef %data, i64 noundef %length, ptr noalias noundef %output) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %ored = alloca i16, align 2
  %i = alloca i64, align 8
  %c = alloca i16, align 2
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr %output, ptr %output.addr, align 8
  store i16 0, ptr %ored, align 2
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %length.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds nuw i16, ptr %2, i64 %3
  %4 = load i16, ptr %arrayidx, align 2
  store i16 %4, ptr %c, align 2
  %5 = load i16, ptr %c, align 2
  %conv = zext i16 %5 to i32
  %6 = load i16, ptr %ored, align 2
  %conv1 = zext i16 %6 to i32
  %or = or i32 %conv1, %conv
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, ptr %ored, align 2
  %7 = load i16, ptr %c, align 2
  %call = call zeroext i16 @toASCIILower(i16 noundef zeroext %7)
  %8 = load ptr, ptr %output.addr, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds nuw i16, ptr %8, i64 %9
  store i16 %call, ptr %arrayidx3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %11 = load i16, ptr %ored, align 2
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i16 @toASCIILower(i16 noundef zeroext %c) #0 {
entry:
  %c.addr = alloca i16, align 2
  store i16 %c, ptr %c.addr, align 2
  %0 = load i16, ptr %c.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %c.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sge i32 %conv1, 65
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i16, ptr %c.addr, align 2
  %conv3 = zext i16 %2 to i32
  %cmp4 = icmp sle i32 %conv3, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %shl = shl i32 %land.ext, 5
  %or = or i32 %conv, %shl
  %conv6 = trunc i32 %or to i16
  ret i16 %conv6
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
