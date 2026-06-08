; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcomapi.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcomapi.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_abort(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %pool = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 1, ptr %pool, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %pool, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %mem, align 8
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %free_pool, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load i32, ptr %pool, align 4
  call void %3(ptr noundef %4, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %pool, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %pool, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_common_struct, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %is_decompressor, align 8
  %tobool = icmp ne i32 %8, 0
  %9 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 200, i32 100
  %10 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_common_struct, ptr %10, i32 0, i32 4
  store i32 %cond, ptr %global_state, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_destroy(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem1, align 8
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %self_destruct, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_common_struct, ptr %6, i32 0, i32 1
  store ptr null, ptr %mem2, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_common_struct, ptr %7, i32 0, i32 4
  store i32 0, ptr %global_state, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jpeg_alloc_quant_table(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 0, i64 noundef 132)
  store ptr %call, ptr %tbl, align 8
  %4 = load ptr, ptr %tbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %4, i32 0, i32 1
  store i32 0, ptr %sent_table, align 4
  %5 = load ptr, ptr %tbl, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @jpeg_alloc_huff_table(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %tbl = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 0, i64 noundef 280)
  store ptr %call, ptr %tbl, align 8
  %4 = load ptr, ptr %tbl, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %4, i32 0, i32 2
  store i32 0, ptr %sent_table, align 4
  %5 = load ptr, ptr %tbl, align 8
  ret ptr %5
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
