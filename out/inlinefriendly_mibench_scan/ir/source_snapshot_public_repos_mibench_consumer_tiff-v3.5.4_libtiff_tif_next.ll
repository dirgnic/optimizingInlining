; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_next.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_next.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@.str = private unnamed_addr constant [45 x i8] c"NeXTDecode: Not enough data for scanline %ld\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TIFFInitNeXT(ptr noundef %tif, i32 noundef %scheme) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %scheme.addr = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store i32 %scheme, ptr %scheme.addr, align 4
  %0 = load i32, ptr %scheme.addr, align 4
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_decoderow = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 26
  store ptr @NeXTDecode, ptr %tif_decoderow, align 8
  %2 = load ptr, ptr %tif.addr, align 8
  %tif_decodestrip = getelementptr inbounds %struct.tiff, ptr %2, i32 0, i32 28
  store ptr @NeXTDecode, ptr %tif_decodestrip, align 8
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_decodetile = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 30
  store ptr @NeXTDecode, ptr %tif_decodetile, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @NeXTDecode(ptr noundef %tif, ptr noundef %buf, i64 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i64, align 8
  %s.addr = alloca i16, align 2
  %bp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %cc = alloca i64, align 8
  %n = alloca i32, align 4
  %row = alloca ptr, align 8
  %scanline = alloca i64, align 8
  %off = alloca i32, align 4
  %npixels = alloca i32, align 4
  %grey = alloca i32, align 4
  %imagewidth = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %occ, ptr %occ.addr, align 8
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %buf.addr, align 8
  store ptr %1, ptr %op, align 8
  %2 = load i64, ptr %occ.addr, align 8
  store i64 %2, ptr %cc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i64, ptr %cc, align 8
  %dec = add nsw i64 %3, -1
  store i64 %dec, ptr %cc, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %op, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %op, align 8
  store i8 -1, ptr %4, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp = getelementptr inbounds %struct.tiff, ptr %5, i32 0, i32 42
  %6 = load ptr, ptr %tif_rawcp, align 8
  store ptr %6, ptr %bp, align 8
  %7 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc = getelementptr inbounds %struct.tiff, ptr %7, i32 0, i32 43
  %8 = load i64, ptr %tif_rawcc, align 8
  store i64 %8, ptr %cc, align 8
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 38
  %10 = load i64, ptr %tif_scanlinesize, align 8
  store i64 %10, ptr %scanline, align 8
  %11 = load ptr, ptr %buf.addr, align 8
  store ptr %11, ptr %row, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.end
  %12 = load i64, ptr %occ.addr, align 8
  %cmp2 = icmp sgt i64 %12, 0
  br i1 %cmp2, label %for.body3, label %for.end74

for.body3:                                        ; preds = %for.cond1
  %13 = load ptr, ptr %bp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr4, ptr %bp, align 8
  %14 = load i8, ptr %13, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, ptr %n, align 4
  %15 = load i64, ptr %cc, align 8
  %dec5 = add nsw i64 %15, -1
  store i64 %dec5, ptr %cc, align 8
  %16 = load i32, ptr %n, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 64, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body3
  %17 = load i64, ptr %cc, align 8
  %18 = load i64, ptr %scanline, align 8
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %bad

if.end:                                           ; preds = %sw.bb
  %19 = load ptr, ptr %row, align 8
  %20 = load ptr, ptr %bp, align 8
  %21 = load i64, ptr %scanline, align 8
  call void @_TIFFmemcpy(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %22 = load i64, ptr %scanline, align 8
  %23 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %add.ptr, ptr %bp, align 8
  %24 = load i64, ptr %scanline, align 8
  %25 = load i64, ptr %cc, align 8
  %sub = sub nsw i64 %25, %24
  store i64 %sub, ptr %cc, align 8
  br label %sw.epilog71

sw.bb8:                                           ; preds = %for.body3
  %26 = load ptr, ptr %bp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %27 to i32
  %mul = mul nsw i32 %conv9, 256
  %28 = load ptr, ptr %bp, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %29 to i32
  %add = add nsw i32 %mul, %conv11
  store i32 %add, ptr %off, align 4
  %30 = load ptr, ptr %bp, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %30, i64 2
  %31 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %31 to i32
  %mul14 = mul nsw i32 %conv13, 256
  %32 = load ptr, ptr %bp, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %32, i64 3
  %33 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %33 to i32
  %add17 = add nsw i32 %mul14, %conv16
  store i32 %add17, ptr %n, align 4
  %34 = load i64, ptr %cc, align 8
  %35 = load i32, ptr %n, align 4
  %add18 = add nsw i32 4, %35
  %conv19 = sext i32 %add18 to i64
  %cmp20 = icmp slt i64 %34, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb8
  br label %bad

if.end23:                                         ; preds = %sw.bb8
  %36 = load ptr, ptr %row, align 8
  %37 = load i32, ptr %off, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %36, i64 %idx.ext
  %38 = load ptr, ptr %bp, align 8
  %add.ptr25 = getelementptr inbounds i8, ptr %38, i64 4
  %39 = load i32, ptr %n, align 4
  %conv26 = sext i32 %39 to i64
  call void @_TIFFmemcpy(ptr noundef %add.ptr24, ptr noundef %add.ptr25, i64 noundef %conv26)
  %40 = load i32, ptr %n, align 4
  %add27 = add nsw i32 4, %40
  %41 = load ptr, ptr %bp, align 8
  %idx.ext28 = sext i32 %add27 to i64
  %add.ptr29 = getelementptr inbounds i8, ptr %41, i64 %idx.ext28
  store ptr %add.ptr29, ptr %bp, align 8
  %42 = load i32, ptr %n, align 4
  %add30 = add nsw i32 4, %42
  %conv31 = sext i32 %add30 to i64
  %43 = load i64, ptr %cc, align 8
  %sub32 = sub nsw i64 %43, %conv31
  store i64 %sub32, ptr %cc, align 8
  br label %sw.epilog71

sw.default:                                       ; preds = %for.body3
  store i32 0, ptr %npixels, align 4
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 6
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 1
  %45 = load i64, ptr %td_imagewidth, align 8
  store i64 %45, ptr %imagewidth, align 8
  %46 = load ptr, ptr %row, align 8
  store ptr %46, ptr %op, align 8
  br label %for.cond33

for.cond33:                                       ; preds = %if.end66, %sw.default
  %47 = load i32, ptr %n, align 4
  %shr = ashr i32 %47, 6
  %and = and i32 %shr, 3
  store i32 %and, ptr %grey, align 4
  %48 = load i32, ptr %n, align 4
  %and34 = and i32 %48, 63
  store i32 %and34, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.cond33
  %49 = load i32, ptr %n, align 4
  %dec35 = add nsw i32 %49, -1
  store i32 %dec35, ptr %n, align 4
  %cmp36 = icmp sgt i32 %49, 0
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32, ptr %npixels, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %npixels, align 4
  %and38 = and i32 %50, 3
  switch i32 %and38, label %sw.epilog [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb42
    i32 2, label %sw.bb47
    i32 3, label %sw.bb53
  ]

sw.bb39:                                          ; preds = %while.body
  %51 = load i32, ptr %grey, align 4
  %shl = shl i32 %51, 6
  %conv40 = trunc i32 %shl to i8
  %52 = load ptr, ptr %op, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %52, i64 0
  store i8 %conv40, ptr %arrayidx41, align 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %while.body
  %53 = load i32, ptr %grey, align 4
  %shl43 = shl i32 %53, 4
  %54 = load ptr, ptr %op, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %55 to i32
  %or = or i32 %conv45, %shl43
  %conv46 = trunc i32 %or to i8
  store i8 %conv46, ptr %arrayidx44, align 1
  br label %sw.epilog

sw.bb47:                                          ; preds = %while.body
  %56 = load i32, ptr %grey, align 4
  %shl48 = shl i32 %56, 2
  %57 = load ptr, ptr %op, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %58 to i32
  %or51 = or i32 %conv50, %shl48
  %conv52 = trunc i32 %or51 to i8
  store i8 %conv52, ptr %arrayidx49, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %while.body
  %59 = load i32, ptr %grey, align 4
  %60 = load ptr, ptr %op, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr54, ptr %op, align 8
  %61 = load i8, ptr %60, align 1
  %conv55 = zext i8 %61 to i32
  %or56 = or i32 %conv55, %59
  %conv57 = trunc i32 %or56 to i8
  store i8 %conv57, ptr %60, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb53, %sw.bb47, %sw.bb42, %sw.bb39
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %62 = load i32, ptr %npixels, align 4
  %63 = load i64, ptr %imagewidth, align 8
  %conv58 = trunc i64 %63 to i32
  %cmp59 = icmp sge i32 %62, %conv58
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %while.end
  br label %for.end70

if.end62:                                         ; preds = %while.end
  %64 = load i64, ptr %cc, align 8
  %cmp63 = icmp eq i64 %64, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  br label %bad

if.end66:                                         ; preds = %if.end62
  %65 = load ptr, ptr %bp, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr67, ptr %bp, align 8
  %66 = load i8, ptr %65, align 1
  %conv68 = zext i8 %66 to i32
  store i32 %conv68, ptr %n, align 4
  %67 = load i64, ptr %cc, align 8
  %dec69 = add nsw i64 %67, -1
  store i64 %dec69, ptr %cc, align 8
  br label %for.cond33

for.end70:                                        ; preds = %if.then61
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %for.end70, %if.end23, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog71
  %68 = load i64, ptr %scanline, align 8
  %69 = load i64, ptr %occ.addr, align 8
  %sub72 = sub nsw i64 %69, %68
  store i64 %sub72, ptr %occ.addr, align 8
  %70 = load i64, ptr %scanline, align 8
  %71 = load ptr, ptr %row, align 8
  %add.ptr73 = getelementptr inbounds i8, ptr %71, i64 %70
  store ptr %add.ptr73, ptr %row, align 8
  br label %for.cond1, !llvm.loop !9

for.end74:                                        ; preds = %for.cond1
  %72 = load ptr, ptr %bp, align 8
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp75 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 42
  store ptr %72, ptr %tif_rawcp75, align 8
  %74 = load i64, ptr %cc, align 8
  %75 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc76 = getelementptr inbounds %struct.tiff, ptr %75, i32 0, i32 43
  store i64 %74, ptr %tif_rawcc76, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then65, %if.then22, %if.then
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %tif_name, align 8
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 11
  %79 = load i64, ptr %tif_row, align 8
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %77, ptr noundef @.str, i64 noundef %79)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %for.end74
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
