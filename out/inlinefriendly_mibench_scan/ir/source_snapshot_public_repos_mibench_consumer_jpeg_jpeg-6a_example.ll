; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/example.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/example.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.my_error_mgr = type { %struct.jpeg_error_mgr, [48 x i32] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@image_width = external global i32, align 4
@image_height = external global i32, align 4
@image_buffer = external global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @write_JPEG_file(ptr noundef %filename, i32 noundef %quality) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %quality.addr = alloca i32, align 4
  %cinfo = alloca %struct.jpeg_compress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %outfile = alloca ptr, align 8
  %row_pointer = alloca [1 x ptr], align 8
  %row_stride = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %quality, ptr %quality.addr, align 4
  %call = call ptr @jpeg_std_error(ptr noundef %jerr)
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 0
  store ptr %call, ptr %err, align 8
  call void @jpeg_CreateCompress(ptr noundef %cinfo, i32 noundef 61, i64 noundef 496)
  %0 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str)
  store ptr %call1, ptr %outfile, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %outfile, align 8
  call void @jpeg_stdio_dest(ptr noundef %cinfo, ptr noundef %3)
  %4 = load i32, ptr @image_width, align 4
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 6
  store i32 %4, ptr %image_width, align 8
  %5 = load i32, ptr @image_height, align 4
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 7
  store i32 %5, ptr %image_height, align 4
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 8
  store i32 3, ptr %input_components, align 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  call void @jpeg_set_defaults(ptr noundef %cinfo)
  %6 = load i32, ptr %quality.addr, align 4
  call void @jpeg_set_quality(ptr noundef %cinfo, i32 noundef %6, i32 noundef 1)
  call void @jpeg_start_compress(ptr noundef %cinfo, i32 noundef 1)
  %7 = load i32, ptr @image_width, align 4
  %mul = mul nsw i32 %7, 3
  store i32 %mul, ptr %row_stride, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 36
  %8 = load i32, ptr %next_scanline, align 8
  %image_height3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 7
  %9 = load i32, ptr %image_height3, align 4
  %cmp4 = icmp ult i32 %8, %9
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr @image_buffer, align 8
  %next_scanline5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 36
  %11 = load i32, ptr %next_scanline5, align 8
  %12 = load i32, ptr %row_stride, align 4
  %mul6 = mul i32 %11, %12
  %idxprom = zext i32 %mul6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %arrayidx7 = getelementptr inbounds [1 x ptr], ptr %row_pointer, i64 0, i64 0
  store ptr %arrayidx, ptr %arrayidx7, align 8
  %arraydecay = getelementptr inbounds [1 x ptr], ptr %row_pointer, i64 0, i64 0
  %call8 = call i32 @jpeg_write_scanlines(ptr noundef %cinfo, ptr noundef %arraydecay, i32 noundef 1)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  call void @jpeg_finish_compress(ptr noundef %cinfo)
  %13 = load ptr, ptr %outfile, align 8
  %call9 = call i32 @fclose(ptr noundef %13)
  call void @jpeg_destroy_compress(ptr noundef %cinfo)
  ret void
}

declare ptr @jpeg_std_error(ptr noundef) #1

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare void @jpeg_stdio_dest(ptr noundef, ptr noundef) #1

declare void @jpeg_set_defaults(ptr noundef) #1

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) #1

declare void @jpeg_start_compress(ptr noundef, i32 noundef) #1

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jpeg_finish_compress(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare void @jpeg_destroy_compress(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @read_JPEG_file(ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %cinfo = alloca %struct.jpeg_decompress_struct, align 8
  %jerr = alloca %struct.my_error_mgr, align 8
  %infile = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %row_stride = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.2)
  store ptr %call, ptr %infile, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %pub = getelementptr inbounds %struct.my_error_mgr, ptr %jerr, i32 0, i32 0
  %call2 = call ptr @jpeg_std_error(ptr noundef %pub)
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 0
  store ptr %call2, ptr %err, align 8
  %pub3 = getelementptr inbounds %struct.my_error_mgr, ptr %jerr, i32 0, i32 0
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %pub3, i32 0, i32 0
  store ptr @my_error_exit, ptr %error_exit, align 8
  %setjmp_buffer = getelementptr inbounds %struct.my_error_mgr, ptr %jerr, i32 0, i32 1
  %arraydecay = getelementptr inbounds [48 x i32], ptr %setjmp_buffer, i64 0, i64 0
  %call4 = call i32 @setjmp(ptr noundef %arraydecay) #5
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @jpeg_destroy_decompress(ptr noundef %cinfo)
  %3 = load ptr, ptr %infile, align 8
  %call6 = call i32 @fclose(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  call void @jpeg_CreateDecompress(ptr noundef %cinfo, i32 noundef 61, i64 noundef 616)
  %4 = load ptr, ptr %infile, align 8
  call void @jpeg_stdio_src(ptr noundef %cinfo, ptr noundef %4)
  %call8 = call i32 @jpeg_read_header(ptr noundef %cinfo, i32 noundef 1)
  %call9 = call i32 @jpeg_start_decompress(ptr noundef %cinfo)
  %output_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 26
  %5 = load i32, ptr %output_width, align 8
  %output_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 29
  %6 = load i32, ptr %output_components, align 4
  %mul = mul i32 %5, %6
  store i32 %mul, ptr %row_stride, align 4
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 1
  %7 = load ptr, ptr %mem, align 8
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %alloc_sarray, align 8
  %9 = load i32, ptr %row_stride, align 4
  %call10 = call ptr %8(ptr noundef %cinfo, i32 noundef 1, i32 noundef %9, i32 noundef 1)
  store ptr %call10, ptr %buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 33
  %10 = load i32, ptr %output_scanline, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 27
  %11 = load i32, ptr %output_height, align 4
  %cmp11 = icmp ult i32 %10, %11
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %buffer, align 8
  %call12 = call i32 @jpeg_read_scanlines(ptr noundef %cinfo, ptr noundef %12, i32 noundef 1)
  %13 = load ptr, ptr %buffer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = load i32, ptr %row_stride, align 4
  %call13 = call i32 @put_scanline_someplace(ptr noundef %14, i32 noundef %15)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call14 = call i32 @jpeg_finish_decompress(ptr noundef %cinfo)
  call void @jpeg_destroy_decompress(ptr noundef %cinfo)
  %16 = load ptr, ptr %infile, align 8
  %call15 = call i32 @fclose(ptr noundef %16)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @my_error_exit(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %myerr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  store ptr %1, ptr %myerr, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %output_message, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %myerr, align 8
  %setjmp_buffer = getelementptr inbounds %struct.my_error_mgr, ptr %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [48 x i32], ptr %setjmp_buffer, i64 0, i64 0
  call void @longjmp(ptr noundef %arraydecay, i32 noundef 1) #4
  unreachable
}

; Function Attrs: returns_twice
declare i32 @setjmp(ptr noundef) #3

declare void @jpeg_destroy_decompress(ptr noundef) #1

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) #1

declare void @jpeg_stdio_src(ptr noundef, ptr noundef) #1

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) #1

declare i32 @jpeg_start_decompress(ptr noundef) #1

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @put_scanline_someplace(...) #1

declare i32 @jpeg_finish_decompress(ptr noundef) #1

; Function Attrs: noreturn
declare void @longjmp(ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { returns_twice }

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
