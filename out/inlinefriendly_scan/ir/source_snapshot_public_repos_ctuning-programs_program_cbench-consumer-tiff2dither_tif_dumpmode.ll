; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_dumpmode.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_dumpmode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

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
define internal i32 @DumpModeDecode(ptr noundef %tif, ptr noundef %buf, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 43
  %2 = load i32, ptr %tif_rawcc, align 8
  %3 = load i32, ptr %cc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tif_name, align 8
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef @.str, i32 noundef %7)
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
  %14 = load i32, ptr %cc.addr, align 4
  call void @_TIFFmemcpy(ptr noundef %11, ptr noundef %13, i32 noundef %14)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %15 = load i32, ptr %cc.addr, align 4
  %16 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp5 = getelementptr inbounds %struct.tiff, ptr %16, i32 0, i32 42
  %17 = load ptr, ptr %tif_rawcp5, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %tif_rawcp5, align 8
  %18 = load i32, ptr %cc.addr, align 4
  %19 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc6 = getelementptr inbounds %struct.tiff, ptr %19, i32 0, i32 43
  %20 = load i32, ptr %tif_rawcc6, align 8
  %sub = sub nsw i32 %20, %18
  store i32 %sub, ptr %tif_rawcc6, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @DumpModeEncode(ptr noundef %tif, ptr noundef %pp, i32 noundef %cc, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %cc.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %n = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %cc, ptr %cc.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %entry
  %1 = load i32, ptr %cc.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %cc.addr, align 4
  store i32 %2, ptr %n, align 4
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 43
  %4 = load i32, ptr %tif_rawcc, align 8
  %5 = load i32, ptr %n, align 4
  %add = add nsw i32 %4, %5
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 41
  %7 = load i32, ptr %tif_rawdatasize, align 8
  %cmp1 = icmp sgt i32 %add, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize2 = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 41
  %9 = load i32, ptr %tif_rawdatasize2, align 8
  %10 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc3 = getelementptr inbounds %struct.tiff, ptr %10, i32 0, i32 43
  %11 = load i32, ptr %tif_rawcc3, align 8
  %sub = sub nsw i32 %9, %11
  store i32 %sub, ptr %n, align 4
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
  %18 = load i32, ptr %n, align 4
  call void @_TIFFmemcpy(ptr noundef %16, ptr noundef %17, i32 noundef %18)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %19 = load i32, ptr %n, align 4
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp8 = getelementptr inbounds %struct.tiff, ptr %20, i32 0, i32 42
  %21 = load ptr, ptr %tif_rawcp8, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %tif_rawcp8, align 8
  %22 = load i32, ptr %n, align 4
  %23 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc9 = getelementptr inbounds %struct.tiff, ptr %23, i32 0, i32 43
  %24 = load i32, ptr %tif_rawcc9, align 8
  %add10 = add nsw i32 %24, %22
  store i32 %add10, ptr %tif_rawcc9, align 8
  %25 = load i32, ptr %n, align 4
  %26 = load ptr, ptr %pp.addr, align 8
  %idx.ext11 = sext i32 %25 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %26, i64 %idx.ext11
  store ptr %add.ptr12, ptr %pp.addr, align 8
  %27 = load i32, ptr %n, align 4
  %28 = load i32, ptr %cc.addr, align 4
  %sub13 = sub nsw i32 %28, %27
  store i32 %sub13, ptr %cc.addr, align 4
  %29 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc14 = getelementptr inbounds %struct.tiff, ptr %29, i32 0, i32 43
  %30 = load i32, ptr %tif_rawcc14, align 8
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_rawdatasize15 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 41
  %32 = load i32, ptr %tif_rawdatasize15, align 8
  %cmp16 = icmp sge i32 %30, %32
  br i1 %cmp16, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %33 = load ptr, ptr %tif.addr, align 8
  %call = call i32 @TIFFFlushData1(ptr noundef %33)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %if.end7
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @DumpModeSeek(ptr noundef %tif, i32 noundef %nrows) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %nrows.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %nrows, ptr %nrows.addr, align 4
  %0 = load i32, ptr %nrows.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 38
  %2 = load i32, ptr %tif_scanlinesize, align 8
  %mul = mul i32 %0, %2
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 42
  %4 = load ptr, ptr %tif_rawcp, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %tif_rawcp, align 8
  %5 = load i32, ptr %nrows.addr, align 4
  %6 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize1 = getelementptr inbounds %struct.tiff, ptr %6, i32 0, i32 38
  %7 = load i32, ptr %tif_scanlinesize1, align 8
  %mul2 = mul i32 %5, %7
  %8 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %8, i32 0, i32 43
  %9 = load i32, ptr %tif_rawcc, align 8
  %sub = sub i32 %9, %mul2
  store i32 %sub, ptr %tif_rawcc, align 8
  ret i32 1
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

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
