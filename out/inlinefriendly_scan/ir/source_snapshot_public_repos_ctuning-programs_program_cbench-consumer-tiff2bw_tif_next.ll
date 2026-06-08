; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_next.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_next.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

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
define internal i32 @NeXTDecode(ptr noundef %tif, ptr noundef %buf, i32 noundef %occ, i16 noundef zeroext %s) #0 {
entry:
  %retval = alloca i32, align 4
  %tif.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %occ.addr = alloca i32, align 4
  %s.addr = alloca i16, align 2
  %bp = alloca ptr, align 8
  %op = alloca ptr, align 8
  %cc = alloca i32, align 4
  %n = alloca i32, align 4
  %row = alloca ptr, align 8
  %scanline = alloca i32, align 4
  %off = alloca i32, align 4
  %npixels = alloca i32, align 4
  %grey = alloca i32, align 4
  %imagewidth = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %occ, ptr %occ.addr, align 4
  store i16 %s, ptr %s.addr, align 2
  %0 = load i16, ptr %s.addr, align 2
  %1 = load ptr, ptr %buf.addr, align 8
  store ptr %1, ptr %op, align 8
  %2 = load i32, ptr %occ.addr, align 4
  store i32 %2, ptr %cc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i32, ptr %cc, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %cc, align 4
  %cmp = icmp sgt i32 %3, 0
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
  %8 = load i32, ptr %tif_rawcc, align 8
  store i32 %8, ptr %cc, align 4
  %9 = load ptr, ptr %tif.addr, align 8
  %tif_scanlinesize = getelementptr inbounds %struct.tiff, ptr %9, i32 0, i32 38
  %10 = load i32, ptr %tif_scanlinesize, align 8
  store i32 %10, ptr %scanline, align 4
  %11 = load ptr, ptr %buf.addr, align 8
  store ptr %11, ptr %row, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.end
  %12 = load i32, ptr %occ.addr, align 4
  %conv = sext i32 %12 to i64
  %cmp2 = icmp sgt i64 %conv, 0
  br i1 %cmp2, label %for.body4, label %for.end76

for.body4:                                        ; preds = %for.cond1
  %13 = load ptr, ptr %bp, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr5, ptr %bp, align 8
  %14 = load i8, ptr %13, align 1
  %conv6 = zext i8 %14 to i32
  store i32 %conv6, ptr %n, align 4
  %15 = load i32, ptr %cc, align 4
  %dec7 = add nsw i32 %15, -1
  store i32 %dec7, ptr %cc, align 4
  %16 = load i32, ptr %n, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 64, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body4
  %17 = load i32, ptr %cc, align 4
  %18 = load i32, ptr %scanline, align 4
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %bad

if.end:                                           ; preds = %sw.bb
  %19 = load ptr, ptr %row, align 8
  %20 = load ptr, ptr %bp, align 8
  %21 = load i32, ptr %scanline, align 4
  call void @_TIFFmemcpy(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load i32, ptr %scanline, align 4
  %23 = load ptr, ptr %bp, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %idx.ext
  store ptr %add.ptr, ptr %bp, align 8
  %24 = load i32, ptr %scanline, align 4
  %25 = load i32, ptr %cc, align 4
  %sub = sub nsw i32 %25, %24
  store i32 %sub, ptr %cc, align 4
  br label %sw.epilog72

sw.bb10:                                          ; preds = %for.body4
  %26 = load ptr, ptr %bp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %27 to i32
  %mul = mul nsw i32 %conv11, 256
  %28 = load ptr, ptr %bp, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %29 to i32
  %add = add nsw i32 %mul, %conv13
  store i32 %add, ptr %off, align 4
  %30 = load ptr, ptr %bp, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %30, i64 2
  %31 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %31 to i32
  %mul16 = mul nsw i32 %conv15, 256
  %32 = load ptr, ptr %bp, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %32, i64 3
  %33 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %33 to i32
  %add19 = add nsw i32 %mul16, %conv18
  store i32 %add19, ptr %n, align 4
  %34 = load i32, ptr %cc, align 4
  %35 = load i32, ptr %n, align 4
  %add20 = add nsw i32 4, %35
  %cmp21 = icmp slt i32 %34, %add20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb10
  br label %bad

if.end24:                                         ; preds = %sw.bb10
  %36 = load ptr, ptr %row, align 8
  %37 = load i32, ptr %off, align 4
  %idx.ext25 = sext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %36, i64 %idx.ext25
  %38 = load ptr, ptr %bp, align 8
  %add.ptr27 = getelementptr inbounds i8, ptr %38, i64 4
  %39 = load i32, ptr %n, align 4
  call void @_TIFFmemcpy(ptr noundef %add.ptr26, ptr noundef %add.ptr27, i32 noundef %39)
  %40 = load i32, ptr %n, align 4
  %add28 = add nsw i32 4, %40
  %41 = load ptr, ptr %bp, align 8
  %idx.ext29 = sext i32 %add28 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %41, i64 %idx.ext29
  store ptr %add.ptr30, ptr %bp, align 8
  %42 = load i32, ptr %n, align 4
  %add31 = add nsw i32 4, %42
  %43 = load i32, ptr %cc, align 4
  %sub32 = sub nsw i32 %43, %add31
  store i32 %sub32, ptr %cc, align 4
  br label %sw.epilog72

sw.default:                                       ; preds = %for.body4
  store i32 0, ptr %npixels, align 4
  %44 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %44, i32 0, i32 6
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir, i32 0, i32 1
  %45 = load i32, ptr %td_imagewidth, align 8
  %conv33 = zext i32 %45 to i64
  store i64 %conv33, ptr %imagewidth, align 8
  %46 = load ptr, ptr %row, align 8
  store ptr %46, ptr %op, align 8
  br label %for.cond34

for.cond34:                                       ; preds = %if.end67, %sw.default
  %47 = load i32, ptr %n, align 4
  %shr = ashr i32 %47, 6
  %and = and i32 %shr, 3
  store i32 %and, ptr %grey, align 4
  %48 = load i32, ptr %n, align 4
  %and35 = and i32 %48, 63
  store i32 %and35, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.cond34
  %49 = load i32, ptr %n, align 4
  %dec36 = add nsw i32 %49, -1
  store i32 %dec36, ptr %n, align 4
  %cmp37 = icmp sgt i32 %49, 0
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32, ptr %npixels, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %npixels, align 4
  %and39 = and i32 %50, 3
  switch i32 %and39, label %sw.epilog [
    i32 0, label %sw.bb40
    i32 1, label %sw.bb43
    i32 2, label %sw.bb48
    i32 3, label %sw.bb54
  ]

sw.bb40:                                          ; preds = %while.body
  %51 = load i32, ptr %grey, align 4
  %shl = shl i32 %51, 6
  %conv41 = trunc i32 %shl to i8
  %52 = load ptr, ptr %op, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %52, i64 0
  store i8 %conv41, ptr %arrayidx42, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %while.body
  %53 = load i32, ptr %grey, align 4
  %shl44 = shl i32 %53, 4
  %54 = load ptr, ptr %op, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %55 to i32
  %or = or i32 %conv46, %shl44
  %conv47 = trunc i32 %or to i8
  store i8 %conv47, ptr %arrayidx45, align 1
  br label %sw.epilog

sw.bb48:                                          ; preds = %while.body
  %56 = load i32, ptr %grey, align 4
  %shl49 = shl i32 %56, 2
  %57 = load ptr, ptr %op, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %58 to i32
  %or52 = or i32 %conv51, %shl49
  %conv53 = trunc i32 %or52 to i8
  store i8 %conv53, ptr %arrayidx50, align 1
  br label %sw.epilog

sw.bb54:                                          ; preds = %while.body
  %59 = load i32, ptr %grey, align 4
  %60 = load ptr, ptr %op, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr55, ptr %op, align 8
  %61 = load i8, ptr %60, align 1
  %conv56 = zext i8 %61 to i32
  %or57 = or i32 %conv56, %59
  %conv58 = trunc i32 %or57 to i8
  store i8 %conv58, ptr %60, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb54, %sw.bb48, %sw.bb43, %sw.bb40
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %62 = load i32, ptr %npixels, align 4
  %63 = load i64, ptr %imagewidth, align 8
  %conv59 = trunc i64 %63 to i32
  %cmp60 = icmp sge i32 %62, %conv59
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.end
  br label %for.end71

if.end63:                                         ; preds = %while.end
  %64 = load i32, ptr %cc, align 4
  %cmp64 = icmp eq i32 %64, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end63
  br label %bad

if.end67:                                         ; preds = %if.end63
  %65 = load ptr, ptr %bp, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr68, ptr %bp, align 8
  %66 = load i8, ptr %65, align 1
  %conv69 = zext i8 %66 to i32
  store i32 %conv69, ptr %n, align 4
  %67 = load i32, ptr %cc, align 4
  %dec70 = add nsw i32 %67, -1
  store i32 %dec70, ptr %cc, align 4
  br label %for.cond34

for.end71:                                        ; preds = %if.then62
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %for.end71, %if.end24, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog72
  %68 = load i32, ptr %scanline, align 4
  %69 = load i32, ptr %occ.addr, align 4
  %sub73 = sub nsw i32 %69, %68
  store i32 %sub73, ptr %occ.addr, align 4
  %70 = load i32, ptr %scanline, align 4
  %71 = load ptr, ptr %row, align 8
  %idx.ext74 = sext i32 %70 to i64
  %add.ptr75 = getelementptr inbounds i8, ptr %71, i64 %idx.ext74
  store ptr %add.ptr75, ptr %row, align 8
  br label %for.cond1, !llvm.loop !9

for.end76:                                        ; preds = %for.cond1
  %72 = load ptr, ptr %bp, align 8
  %73 = load ptr, ptr %tif.addr, align 8
  %tif_rawcp77 = getelementptr inbounds %struct.tiff, ptr %73, i32 0, i32 42
  store ptr %72, ptr %tif_rawcp77, align 8
  %74 = load i32, ptr %cc, align 4
  %75 = load ptr, ptr %tif.addr, align 8
  %tif_rawcc78 = getelementptr inbounds %struct.tiff, ptr %75, i32 0, i32 43
  store i32 %74, ptr %tif_rawcc78, align 8
  store i32 1, ptr %retval, align 4
  br label %return

bad:                                              ; preds = %if.then66, %if.then23, %if.then
  %76 = load ptr, ptr %tif.addr, align 8
  %tif_name = getelementptr inbounds %struct.tiff, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %tif_name, align 8
  %78 = load ptr, ptr %tif.addr, align 8
  %tif_row = getelementptr inbounds %struct.tiff, ptr %78, i32 0, i32 11
  %79 = load i32, ptr %tif_row, align 8
  %conv79 = zext i32 %79 to i64
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %77, ptr noundef @.str, i64 noundef %conv79)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bad, %for.end76
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

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
