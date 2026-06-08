; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcinit.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcinit.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_compress_master(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_c_master_control(ptr noundef %0, i32 noundef 0)
  %1 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 23
  %2 = load i32, ptr %raw_data_in, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_color_converter(ptr noundef %3)
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_downsampler(ptr noundef %4)
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_c_prep_controller(ptr noundef %5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_forward_dct(ptr noundef %6)
  %7 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 24
  %8 = load i32, ptr %arith_code, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 1, ptr %msg_code, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void %13(ptr noundef %14)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 37
  %16 = load i32, ptr %progressive_mode, align 4
  %tobool4 = icmp ne i32 %16, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_phuff_encoder(ptr noundef %17)
  br label %if.end7

if.else6:                                         ; preds = %if.else
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_huff_encoder(ptr noundef %18)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 21
  %21 = load i32, ptr %num_scans, align 8
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 25
  %23 = load i32, ptr %optimize_coding, align 8
  %tobool9 = icmp ne i32 %23, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end8
  %24 = phi i1 [ true, %if.end8 ], [ %tobool9, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  call void @jinit_c_coef_controller(ptr noundef %19, i32 noundef %lor.ext)
  %25 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_c_main_controller(ptr noundef %25, i32 noundef 0)
  %26 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_marker_writer(ptr noundef %26)
  %27 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %mem, align 8
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %realize_virt_arrays, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  call void %29(ptr noundef %30)
  %31 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 55
  %32 = load ptr, ptr %marker, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %write_file_header, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  call void %33(ptr noundef %34)
  ret void
}

declare void @jinit_c_master_control(ptr noundef, i32 noundef) #1

declare void @jinit_color_converter(ptr noundef) #1

declare void @jinit_downsampler(ptr noundef) #1

declare void @jinit_c_prep_controller(ptr noundef, i32 noundef) #1

declare void @jinit_forward_dct(ptr noundef) #1

declare void @jinit_phuff_encoder(ptr noundef) #1

declare void @jinit_huff_encoder(ptr noundef) #1

declare void @jinit_c_coef_controller(ptr noundef, i32 noundef) #1

declare void @jinit_c_main_controller(ptr noundef, i32 noundef) #1

declare void @jinit_marker_writer(ptr noundef) #1

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
