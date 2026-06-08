; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdatadst.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jdatadst.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_stdio_dest(ptr noundef %cinfo, ptr noundef %outfile) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %outfile.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %outfile, ptr %outfile.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 0, i64 noundef 56)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dest2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5
  store ptr %call, ptr %dest2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %dest3, align 8
  store ptr %8, ptr %dest, align 8
  %9 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, ptr %9, i32 0, i32 0
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub, i32 0, i32 2
  store ptr @init_destination, ptr %init_destination, align 8
  %10 = load ptr, ptr %dest, align 8
  %pub4 = getelementptr inbounds %struct.my_destination_mgr, ptr %10, i32 0, i32 0
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub4, i32 0, i32 3
  store ptr @empty_output_buffer, ptr %empty_output_buffer, align 8
  %11 = load ptr, ptr %dest, align 8
  %pub5 = getelementptr inbounds %struct.my_destination_mgr, ptr %11, i32 0, i32 0
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub5, i32 0, i32 4
  store ptr @term_destination, ptr %term_destination, align 8
  %12 = load ptr, ptr %outfile.addr, align 8
  %13 = load ptr, ptr %dest, align 8
  %outfile6 = getelementptr inbounds %struct.my_destination_mgr, ptr %13, i32 0, i32 1
  store ptr %12, ptr %outfile6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @init_destination(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  store ptr %1, ptr %dest, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %alloc_small, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %4(ptr noundef %5, i32 noundef 1, i64 noundef 4096)
  %6 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.my_destination_mgr, ptr %6, i32 0, i32 2
  store ptr %call, ptr %buffer, align 8
  %7 = load ptr, ptr %dest, align 8
  %buffer2 = getelementptr inbounds %struct.my_destination_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %buffer2, align 8
  %9 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, ptr %9, i32 0, i32 0
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub, i32 0, i32 0
  store ptr %8, ptr %next_output_byte, align 8
  %10 = load ptr, ptr %dest, align 8
  %pub3 = getelementptr inbounds %struct.my_destination_mgr, ptr %10, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub3, i32 0, i32 1
  store i64 4096, ptr %free_in_buffer, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @empty_output_buffer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  store ptr %1, ptr %dest, align 8
  %2 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.my_destination_mgr, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %buffer, align 8
  %4 = load ptr, ptr %dest, align 8
  %outfile = getelementptr inbounds %struct.my_destination_mgr, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %outfile, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %3, i64 noundef 1, i64 noundef 4096, ptr noundef %5)
  %cmp = icmp ne i64 %call, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %dest, align 8
  %buffer3 = getelementptr inbounds %struct.my_destination_mgr, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %buffer3, align 8
  %14 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, ptr %14, i32 0, i32 0
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub, i32 0, i32 0
  store ptr %13, ptr %next_output_byte, align 8
  %15 = load ptr, ptr %dest, align 8
  %pub4 = getelementptr inbounds %struct.my_destination_mgr, ptr %15, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub4, i32 0, i32 1
  store i64 4096, ptr %free_in_buffer, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @term_destination(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %datacount = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  store ptr %1, ptr %dest, align 8
  %2 = load ptr, ptr %dest, align 8
  %pub = getelementptr inbounds %struct.my_destination_mgr, ptr %2, i32 0, i32 0
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %pub, i32 0, i32 1
  %3 = load i64, ptr %free_in_buffer, align 8
  %sub = sub i64 4096, %3
  store i64 %sub, ptr %datacount, align 8
  %4 = load i64, ptr %datacount, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dest, align 8
  %buffer = getelementptr inbounds %struct.my_destination_mgr, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %buffer, align 8
  %7 = load i64, ptr %datacount, align 8
  %8 = load ptr, ptr %dest, align 8
  %outfile = getelementptr inbounds %struct.my_destination_mgr, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %outfile, align 8
  %call = call i64 @"\01_fwrite"(ptr noundef %6, i64 noundef 1, i64 noundef %7, ptr noundef %9)
  %10 = load i64, ptr %datacount, align 8
  %cmp2 = icmp ne i64 %call, %10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 36, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %17 = load ptr, ptr %dest, align 8
  %outfile6 = getelementptr inbounds %struct.my_destination_mgr, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %outfile6, align 8
  %call7 = call i32 @fflush(ptr noundef %18)
  %19 = load ptr, ptr %dest, align 8
  %outfile8 = getelementptr inbounds %struct.my_destination_mgr, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %outfile8, align 8
  %call9 = call i32 @ferror(ptr noundef %20)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end5
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err11, align 8
  %msg_code12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 5
  store i32 36, ptr %msg_code12, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %error_exit14, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  call void %25(ptr noundef %26)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end5
  ret void
}

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @ferror(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
