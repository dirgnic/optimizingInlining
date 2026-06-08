; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jutils.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jutils.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@jpeg_natural_order = constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @jdiv_round_up(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %1 = load i64, ptr %b.addr, align 8
  %add = add nsw i64 %0, %1
  %sub = sub nsw i64 %add, 1
  %2 = load i64, ptr %b.addr, align 8
  %div = sdiv i64 %sub, %2
  ret i64 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @jround_up(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %b.addr, align 8
  %sub = sub nsw i64 %0, 1
  %1 = load i64, ptr %a.addr, align 8
  %add = add nsw i64 %1, %sub
  store i64 %add, ptr %a.addr, align 8
  %2 = load i64, ptr %a.addr, align 8
  %3 = load i64, ptr %a.addr, align 8
  %4 = load i64, ptr %b.addr, align 8
  %rem = srem i64 %3, %4
  %sub1 = sub nsw i64 %2, %rem
  ret i64 %sub1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jcopy_sample_rows(ptr noundef %input_array, i32 noundef %source_row, ptr noundef %output_array, i32 noundef %dest_row, i32 noundef %num_rows, i32 noundef %num_cols) #0 {
entry:
  %input_array.addr = alloca ptr, align 8
  %source_row.addr = alloca i32, align 4
  %output_array.addr = alloca ptr, align 8
  %dest_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %inptr = alloca ptr, align 8
  %outptr = alloca ptr, align 8
  %count = alloca i64, align 8
  %row = alloca i32, align 4
  store ptr %input_array, ptr %input_array.addr, align 8
  store i32 %source_row, ptr %source_row.addr, align 4
  store ptr %output_array, ptr %output_array.addr, align 8
  store i32 %dest_row, ptr %dest_row.addr, align 4
  store i32 %num_rows, ptr %num_rows.addr, align 4
  store i32 %num_cols, ptr %num_cols.addr, align 4
  %0 = load i32, ptr %num_cols.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 1
  store i64 %mul, ptr %count, align 8
  %1 = load i32, ptr %source_row.addr, align 4
  %2 = load ptr, ptr %input_array.addr, align 8
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %input_array.addr, align 8
  %3 = load i32, ptr %dest_row.addr, align 4
  %4 = load ptr, ptr %output_array.addr, align 8
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds ptr, ptr %4, i64 %idx.ext1
  store ptr %add.ptr2, ptr %output_array.addr, align 8
  %5 = load i32, ptr %num_rows.addr, align 4
  store i32 %5, ptr %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %row, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %input_array.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %input_array.addr, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %inptr, align 8
  %9 = load ptr, ptr %output_array.addr, align 8
  %incdec.ptr4 = getelementptr inbounds ptr, ptr %9, i32 1
  store ptr %incdec.ptr4, ptr %output_array.addr, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %outptr, align 8
  %11 = load ptr, ptr %outptr, align 8
  %12 = load ptr, ptr %inptr, align 8
  %13 = load i64, ptr %count, align 8
  %14 = load ptr, ptr %outptr, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %15) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %row, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %row, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jcopy_block_row(ptr noundef %input_row, ptr noundef %output_row, i32 noundef %num_blocks) #0 {
entry:
  %input_row.addr = alloca ptr, align 8
  %output_row.addr = alloca ptr, align 8
  %num_blocks.addr = alloca i32, align 4
  store ptr %input_row, ptr %input_row.addr, align 8
  store ptr %output_row, ptr %output_row.addr, align 8
  store i32 %num_blocks, ptr %num_blocks.addr, align 4
  %0 = load ptr, ptr %output_row.addr, align 8
  %1 = load ptr, ptr %input_row.addr, align 8
  %2 = load i32, ptr %num_blocks.addr, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 128
  %3 = load ptr, ptr %output_row.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %mul, i64 noundef %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jzero_far(ptr noundef %target, i64 noundef %bytestozero) #0 {
entry:
  %target.addr = alloca ptr, align 8
  %bytestozero.addr = alloca i64, align 8
  store ptr %target, ptr %target.addr, align 8
  store i64 %bytestozero, ptr %bytestozero.addr, align 8
  %0 = load ptr, ptr %target.addr, align 8
  %1 = load i64, ptr %bytestozero.addr, align 8
  %2 = load ptr, ptr %target.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %1, i64 noundef %3) #3
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
