; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_codec.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_codec.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.TIFFCodec = type { ptr, i16, ptr }
%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LZW\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PackBits\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ThunderScan\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NeXT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Old-style JPEG\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CCITT RLE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"CCITT RLE/W\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"CCITT Group 3\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"CCITT Group 4\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ISO JBIG\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Deflate\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"AdobeDeflate\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"PixarLog\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SGILog\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SGILog24\00", align 1
@_TIFFBuiltinCODECS = global [18 x %struct.TIFFCodec] [%struct.TIFFCodec { ptr @.str, i16 1, ptr @TIFFInitDumpMode }, %struct.TIFFCodec { ptr @.str.1, i16 5, ptr @TIFFInitLZW }, %struct.TIFFCodec { ptr @.str.2, i16 -32763, ptr @TIFFInitPackBits }, %struct.TIFFCodec { ptr @.str.3, i16 -32727, ptr @TIFFInitThunderScan }, %struct.TIFFCodec { ptr @.str.4, i16 32766, ptr @TIFFInitNeXT }, %struct.TIFFCodec { ptr @.str.5, i16 7, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.6, i16 6, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.7, i16 2, ptr @TIFFInitCCITTRLE }, %struct.TIFFCodec { ptr @.str.8, i16 -32765, ptr @TIFFInitCCITTRLEW }, %struct.TIFFCodec { ptr @.str.9, i16 3, ptr @TIFFInitCCITTFax3 }, %struct.TIFFCodec { ptr @.str.10, i16 4, ptr @TIFFInitCCITTFax4 }, %struct.TIFFCodec { ptr @.str.11, i16 -30875, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.12, i16 -32590, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.13, i16 8, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.14, i16 -32627, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.15, i16 -30860, ptr @TIFFInitSGILog }, %struct.TIFFCodec { ptr @.str.16, i16 -30859, ptr @TIFFInitSGILog }, %struct.TIFFCodec zeroinitializer], align 8
@.str.17 = private unnamed_addr constant [41 x i8] c"%s compression support is not configured\00", align 1

declare i32 @TIFFInitDumpMode(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitLZW(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitPackBits(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitThunderScan(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitNeXT(ptr noundef, i32 noundef) #0

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @NotConfigured(ptr noundef %tif, i32 noundef %scheme) #1 {
entry:
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_setupdecode = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 21
  store ptr @_notConfigured, ptr %tif_setupdecode, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_setupencode = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 23
  store ptr @_notConfigured, ptr %tif_setupencode, align 8
  ret i32 1
}

declare i32 @TIFFInitCCITTRLE(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitCCITTRLEW(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitCCITTFax3(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitCCITTFax4(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitSGILog(ptr noundef, i32 noundef) #0

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @_notConfigured(ptr noundef %tif) #1 {
entry:
  %tif.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %tif, ptr %tif.addr, align 8
  %0 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %0, i32 0, i32 6
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 10
  %1 = load i16, ptr %td_compression, align 4
  %call = call ptr @TIFFFindCODEC(i16 noundef zeroext %1)
  store ptr %call, ptr %c, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %tif_name, align 8
  %4 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %3, ptr noundef @.str.17, ptr noundef %5)
  ret i32 0
}

declare ptr @TIFFFindCODEC(i16 noundef zeroext) #0

declare void @TIFFError(ptr noundef, ptr noundef, ...) #0

attributes #0 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
