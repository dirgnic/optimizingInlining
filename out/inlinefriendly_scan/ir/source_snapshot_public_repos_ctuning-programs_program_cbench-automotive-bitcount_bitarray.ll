; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount/bitarray.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-automotive-bitcount/bitarray.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @alloc_bit_array(i64 noundef %bits) #0 {
entry:
  %bits.addr = alloca i64, align 8
  %set = alloca ptr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  %0 = load i64, ptr %bits.addr, align 8
  %add = add i64 %0, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %call = call ptr @calloc(i64 noundef %div, i64 noundef 1) #2
  store ptr %call, ptr %set, align 8
  %1 = load ptr, ptr %set, align 8
  ret ptr %1
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getbit(ptr noundef %set, i32 noundef %number) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store i32 %number, ptr %number.addr, align 4
  %0 = load i32, ptr %number.addr, align 4
  %div = sdiv i32 %0, 8
  %1 = load ptr, ptr %set.addr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %set.addr, align 8
  %2 = load ptr, ptr %set.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, ptr %number.addr, align 4
  %rem = srem i32 %4, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv, %shl
  %cmp = icmp ne i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setbit(ptr noundef %set, i32 noundef %number, i32 noundef %value) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store i32 %number, ptr %number.addr, align 4
  store i32 %value, ptr %value.addr, align 4
  %0 = load i32, ptr %number.addr, align 4
  %div = sdiv i32 %0, 8
  %1 = load ptr, ptr %set.addr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %set.addr, align 8
  %2 = load i32, ptr %value.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %number.addr, align 4
  %rem = srem i32 %3, 8
  %shl = shl i32 1, %rem
  %4 = load ptr, ptr %set.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  %or = or i32 %conv, %shl
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, ptr %4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %number.addr, align 4
  %rem2 = srem i32 %6, 8
  %shl3 = shl i32 1, %rem2
  %neg = xor i32 %shl3, -1
  %7 = load ptr, ptr %set.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv4 = sext i8 %8 to i32
  %and = and i32 %conv4, %neg
  %conv5 = trunc i32 %and to i8
  store i8 %conv5, ptr %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @flipbit(ptr noundef %set, i32 noundef %number) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store i32 %number, ptr %number.addr, align 4
  %0 = load i32, ptr %number.addr, align 4
  %div = sdiv i32 %0, 8
  %1 = load ptr, ptr %set.addr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %set.addr, align 8
  %2 = load i32, ptr %number.addr, align 4
  %rem = srem i32 %2, 8
  %shl = shl i32 1, %rem
  %3 = load ptr, ptr %set.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %xor = xor i32 %conv, %shl
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, ptr %3, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
