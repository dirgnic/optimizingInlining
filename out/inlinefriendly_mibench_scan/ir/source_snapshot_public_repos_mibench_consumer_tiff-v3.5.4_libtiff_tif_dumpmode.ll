; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dumpmode.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_dumpmode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@.str = private unnamed_addr constant [48 x i8] c"DumpModeDecode: Not enough data for scanline %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFInitDumpMode(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 26
  store ptr @DumpModeDecode, ptr %tif_decoderow, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 28
  store ptr @DumpModeDecode, ptr %tif_decodestrip, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 30
  store ptr @DumpModeDecode, ptr %tif_decodetile, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_encoderow = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 27
  store ptr @DumpModeEncode, ptr %tif_encoderow, align 8
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_encodestrip = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 29
  store ptr @DumpModeEncode, ptr %tif_encodestrip, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_encodetile = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 31
  store ptr @DumpModeEncode, ptr %tif_encodetile, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_seek = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 33
  store ptr @DumpModeSeek, ptr %tif_seek, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @DumpModeDecode(ptr noundef %tif, ptr noundef %buf, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 43
  %2 = load i64, ptr %tif_rawcc, align 8
  %3 = load i64, ptr %cc.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tif_name, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 11
  %7 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef @.str, i64 noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 42
  %9 = load ptr, ptr %tif_rawcp, align 8
  %10 = load ptr, ptr %buf.addr, align 8
  %cmp1 = icmp ne ptr %9, %10
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %buf.addr, align 8
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp3 = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 42
  %13 = load ptr, ptr %tif_rawcp3, align 8
  %14 = load i64, ptr %cc.addr, align 8
  call void @_TIFFmemcpy(ptr noundef %11, ptr noundef %13, i64 noundef %14)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %15 = load i64, ptr %cc.addr, align 8
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp5 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 42
  %17 = load ptr, ptr %tif_rawcp5, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %15
  store ptr %add.ptr, ptr %tif_rawcp5, align 8
  %18 = load i64, ptr %cc.addr, align 8
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc6 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 43
  %20 = load i64, ptr %tif_rawcc6, align 8
  %sub = sub nsw i64 %20, %18
  store i64 %sub, ptr %tif_rawcc6, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @DumpModeEncode(ptr noundef %tif, ptr noundef %pp, i64 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %n = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i64 %cc, ptr %cc.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %1 = load i64, ptr %cc.addr, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %cc.addr, align 8
  store i64 %2, ptr %n, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 43
  %4 = load i64, ptr %tif_rawcc, align 8
  %5 = load i64, ptr %n, align 8
  %add = add nsw i64 %4, %5
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 41
  %7 = load i64, ptr %tif_rawdatasize, align 8
  %cmp1 = icmp sgt i64 %add, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize2 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 41
  %9 = load i64, ptr %tif_rawdatasize2, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc3 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 43
  %11 = load i64, ptr %tif_rawcc3, align 8
  %sub = sub nsw i64 %9, %11
  store i64 %sub, ptr %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %12, i32 0, i32 42
  %13 = load ptr, ptr %tif_rawcp, align 8
  %14 = load ptr, ptr %pp.addr, align 8
  %cmp4 = icmp ne ptr %13, %14
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %15 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp6 = getelementptr inbounds %struct.tiff, ptr %15, i32 0, i32 42
  %16 = load ptr, ptr %tif_rawcp6, align 8
  %17 = load ptr, ptr %pp.addr, align 8
  %18 = load i64, ptr %n, align 8
  call void @_TIFFmemcpy(ptr noundef %16, ptr noundef %17, i64 noundef %18)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %19 = load i64, ptr %n, align 8
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp8 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 42
  %21 = load ptr, ptr %tif_rawcp8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %19
  store ptr %add.ptr, ptr %tif_rawcp8, align 8
  %22 = load i64, ptr %n, align 8
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc9 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 43
  %24 = load i64, ptr %tif_rawcc9, align 8
  %add10 = add nsw i64 %24, %22
  store i64 %add10, ptr %tif_rawcc9, align 8
  %25 = load i64, ptr %n, align 8
  %26 = load ptr, ptr %pp.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %add.ptr11, ptr %pp.addr, align 8
  %27 = load i64, ptr %n, align 8
  %28 = load i64, ptr %cc.addr, align 8
  %sub12 = sub nsw i64 %28, %27
  store i64 %sub12, ptr %cc.addr, align 8
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc13 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 43
  %30 = load i64, ptr %tif_rawcc13, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize14 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 41
  %32 = load i64, ptr %tif_rawdatasize14, align 8
  %cmp15 = icmp sge i64 %30, %32
  br i1 %cmp15, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end7
  %33 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %33)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true, %if.end7
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then16
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @DumpModeSeek(ptr noundef %tif, i64 noundef %nrows) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store i64 %nrows, ptr %nrows.addr, align 8
  %0 = load i64, ptr %nrows.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 38
  %2 = load i64, ptr %tif_scanlinesize, align 8
  %mul = mul i64 %0, %2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 42
  %4 = load ptr, ptr %tif_rawcp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  store ptr %add.ptr, ptr %tif_rawcp, align 8
  %5 = load i64, ptr %nrows.addr, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize1 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 38
  %7 = load i64, ptr %tif_scanlinesize1, align 8
  %mul2 = mul i64 %5, %7
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 43
  %9 = load i64, ptr %tif_rawcc, align 8
  %sub = sub i64 %9, %mul2
  store i64 %sub, ptr %tif_rawcc, align 8
  ret i32 1
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
