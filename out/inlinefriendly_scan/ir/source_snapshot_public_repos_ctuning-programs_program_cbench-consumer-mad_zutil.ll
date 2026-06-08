; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/zutil.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/zutil.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stream end\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file error\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"incompatible version\00", align 1
@z_errmsg = constant [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.2], align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @zlibVersion() #0 {
entry:
  ret ptr @.str.9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @zlibCompileFlags() #0 {
entry:
  %flags = alloca i64, align 8
  store i64 0, ptr %flags, align 8
  %0 = load i64, ptr %flags, align 8
  %add = add i64 %0, 1
  store i64 %add, ptr %flags, align 8
  %1 = load i64, ptr %flags, align 8
  %add1 = add i64 %1, 8
  store i64 %add1, ptr %flags, align 8
  %2 = load i64, ptr %flags, align 8
  %add2 = add i64 %2, 32
  store i64 %add2, ptr %flags, align 8
  %3 = load i64, ptr %flags, align 8
  %add3 = add i64 %3, 128
  store i64 %add3, ptr %flags, align 8
  %4 = load i64, ptr %flags, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @zError(i32 noundef %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %0 = load i32, ptr %err.addr, align 4
  %sub = sub nsw i32 2, %0
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @z_errmsg, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @zcalloc(ptr noundef %opaque, i32 noundef %items, i32 noundef %size) #0 {
entry:
  %opaque.addr = alloca ptr, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store ptr %opaque, ptr %opaque.addr, align 8
  store i32 %items, ptr %items.addr, align 4
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %opaque.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4
  %2 = load i32, ptr %size.addr, align 4
  %sub = sub i32 %1, %2
  %3 = load i32, ptr %items.addr, align 4
  %add = add i32 %3, %sub
  store i32 %add, ptr %items.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %items.addr, align 4
  %5 = load i32, ptr %size.addr, align 4
  %mul = mul i32 %4, %5
  %conv = zext i32 %mul to i64
  %call = call ptr @malloc(i64 noundef %conv) #3
  ret ptr %call
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @zcfree(ptr noundef %opaque, ptr noundef %ptr) #0 {
entry:
  %opaque.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %opaque, ptr %opaque.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  call void @free(ptr noundef %0)
  %1 = load ptr, ptr %opaque.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
