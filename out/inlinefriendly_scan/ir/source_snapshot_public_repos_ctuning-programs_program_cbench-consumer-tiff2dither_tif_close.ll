; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_close.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_close.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @TIFFClose(ptr noundef %tif) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_mode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tif_mode, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlush(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_cleanup = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 34
  %4 = load ptr, ptr %tif_cleanup, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %tif.addr, align 8
  call void @TIFFFreeDirectory(ptr noundef %6)
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 40
  %8 = load ptr, ptr %tif_rawdata, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tif_flags, align 8
  %and = and i32 %10, 512
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %tif.addr, align 8
  %tif_rawdata3 = getelementptr inbounds %struct.tiff, ptr %11, i32 0, i32 40
  %12 = load ptr, ptr %tif_rawdata3, align 8
  call void @_TIFFfree(ptr noundef %12)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %13 = load ptr, ptr %tif.addr, align 8
  %tif_flags5 = getelementptr inbounds %struct.tiff, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %tif_flags5, align 8
  %and6 = and i32 %14, 2048
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_unmapproc = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 47
  %16 = load ptr, ptr %tif_unmapproc, align 8
  %17 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata = getelementptr inbounds %struct.tiff, ptr %17, i32 0, i32 48
  %18 = load ptr, ptr %tif_clientdata, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_base = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 44
  %20 = load ptr, ptr %tif_base, align 8
  %21 = load ptr, ptr %tif.addr, align 8
  %tif_size = getelementptr inbounds %struct.tiff, ptr %21, i32 0, i32 45
  %22 = load i32, ptr %tif_size, align 8
  call void %16(ptr noundef %18, ptr noundef %20, i32 noundef %22)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_closeproc = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 52
  %24 = load ptr, ptr %tif_closeproc, align 8
  %25 = load ptr, ptr %tif.addr, align 8
  %tif_clientdata10 = getelementptr inbounds %struct.tiff, ptr %25, i32 0, i32 48
  %26 = load ptr, ptr %tif_clientdata10, align 8
  %call11 = call i32 %24(ptr noundef %26)
  %27 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo = getelementptr inbounds %struct.tiff, ptr %27, i32 0, i32 55
  %28 = load ptr, ptr %tif_fieldinfo, align 8
  %tobool12 = icmp ne ptr %28, null
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_fieldinfo14 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 55
  %30 = load ptr, ptr %tif_fieldinfo14, align 8
  call void @_TIFFfree(ptr noundef %30)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9
  %31 = load ptr, ptr %tif.addr, align 8
  call void @_TIFFfree(ptr noundef %31)
  ret void
}

declare i32 @TIFFFlush(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare void @_TIFFfree(ptr noundef) #1

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
