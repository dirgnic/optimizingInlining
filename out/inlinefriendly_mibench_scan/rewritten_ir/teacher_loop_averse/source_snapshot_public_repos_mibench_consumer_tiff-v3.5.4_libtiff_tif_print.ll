; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_tif_print.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_print.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }

@.str = private unnamed_addr constant [32 x i8] c"TIFF Directory at offset 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  Subfile Type:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%sreduced-resolution image\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%smulti-page document\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%stransparency mask\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" (%lu = 0x%lx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"  Image Width: %lu Image Length: %lu\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c" Image Depth: %lu\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"  Pixar Full Image Width: %lu Full Image Length: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Texture Format\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Texture Wrap Modes\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"  Field of View Cotangent: %g\0A\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"  Matrix NP:\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"  Matrix Nl:\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\09%g %g %g %g\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"  Tile Width: %lu Tile Length: %lu\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c" Tile Depth: %lu\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"  Resolution: %g, %g\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" (unitless)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c" pixels/inch\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c" pixels/cm\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c" (unit %u = 0x%x)\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"  Position: %g, %g\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"  Bits/Sample: %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"  Sample Format: \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"void\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"signed integer\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"unsigned integer\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"IEEE floating point\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"%u (0x%x)\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"  Compression Scheme: \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"  Photometric Interpretation: \00", align 1
@photoNames = internal global [9 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], align 8
@.str.35 = private unnamed_addr constant [13 x i8] c"CIE Log2(L)\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"CIE Log2(L) (u',v')\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"  Extra Samples: %u<\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"%sunspecified\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"%sassoc-alpha\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"%sunassoc-alpha\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"%s%u (0x%x)\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"  Sample to Nits conversion factor: %.4e\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"  Ink Set: \00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"CMYK\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"  Ink Names: \00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c" Number of Inks: %u\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"  Dot Range: %u-%u\0A\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Target Printer\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"  Thresholding: \00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"bilevel art scan\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"halftone or dithered scan\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"error diffused\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"  FillOrder: \00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"msb-to-lsb\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"lsb-to-msb\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"  YCbCr Subsampling: %u, %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"  YCbCr Positioning: \00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"centered\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"cosited\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"  YCbCr Coefficients: %g, %g, %g\0A\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"  Halftone Hints: light %u dark %u\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Date & Time\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Host Computer\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Document Name\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Image Description\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"Make\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"Model\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"  Orientation: \00", align 1
@orientNames = internal global [9 x ptr] [ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], align 8
@.str.75 = private unnamed_addr constant [21 x i8] c"  Samples/Pixel: %u\0A\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"  Rows/Strip: \00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"(infinite)\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"  Min Sample Value: %u\0A\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"  Max Sample Value: %u\0A\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"  SMin Sample Value: %g\0A\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"  SMax Sample Value: %g\0A\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"  Planar Configuration: \00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"single image plane\0A\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"separate image planes\0A\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"Page Name\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"  Page Number: %u-%u\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"  Color Map: \00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"   %5lu: %5u %5u %5u\0A\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"(present)\0A\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"  White Point: %g-%g\0A\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"  Primary Chromaticities: %g,%g %g,%g %g,%g\0A\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"  Reference Black/White:\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"    %2d: %5g %5g\0A\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"  Transfer Function: \00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"    %2lu: %5u\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" %5u\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"  ICC Profile: <present>, %lu bytes\0A\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"  Photoshop Data: <present>, %lu bytes\0A\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"  RichTIFFIPTC Data: <present>, %lu bytes\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"  SubIFD Offsets:\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c" %5lu\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"  %lu %s:\0A\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Tiles\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Strips\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"    %3lu: [%8lu, %8lu]\0A\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"\09t\08b\0Dr\0An\0Bv\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"  %s: \22\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"min-is-white\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"min-is-black\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"RGB color\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"palette color (RGB from colormap)\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"transparency mask\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"separated\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"7 (0x7)\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"CIE L*a*b*\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"0 (0x0)\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"row 0 top, col 0 lhs\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"row 0 top, col 0 rhs\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"row 0 bottom, col 0 rhs\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"row 0 bottom, col 0 lhs\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"row 0 lhs, col 0 top\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"row 0 rhs, col 0 top\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"row 0 rhs, col 0 bottom\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"row 0 lhs, col 0 bottom\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @TIFFPrintDirectory(ptr noundef %tif, ptr noundef %fd, i64 noundef %flags) #0 {
entry:
  %tif.addr = alloca ptr, align 8
  %fd.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %td = alloca ptr, align 8
  %sep = alloca ptr, align 8
  %i = alloca i16, align 2
  %l = alloca i64, align 8
  %n = alloca i64, align 8
  %m = alloca ptr, align 8
  %m137 = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %s = alloca i64, align 8
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store i64 %flags, ptr %flags.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 4
  %0 = load i64, ptr %tif_diroff, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str, i64 noundef %0) #8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6
  %2 = load i64, ptr %tif_dir1, align 8
  %and = and i64 %2, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %fd.addr, align 8
  %4 = call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %3)
  store ptr @.str.2, ptr %sep, align 8
  %5 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 7
  %6 = load i64, ptr %td_subfiletype, align 8
  %and3 = and i64 %6, 1
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %fd.addr, align 8
  %8 = load ptr, ptr %sep, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %8) #8
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %9 = load ptr, ptr %td, align 8
  %td_subfiletype7 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 7
  %10 = load i64, ptr %td_subfiletype7, align 8
  %and8 = and i64 %10, 2
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %fd.addr, align 8
  %12 = load ptr, ptr %sep, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %12) #8
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %13 = load ptr, ptr %td, align 8
  %td_subfiletype13 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 7
  %14 = load i64, ptr %td_subfiletype13, align 8
  %and14 = and i64 %14, 4
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end12
  %15 = load ptr, ptr %fd.addr, align 8
  %16 = load ptr, ptr %sep, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef %16) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12
  %17 = load ptr, ptr %fd.addr, align 8
  %18 = load ptr, ptr %td, align 8
  %td_subfiletype19 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 7
  %19 = load i64, ptr %td_subfiletype19, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, i64 noundef %19, i64 noundef %19) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %entry
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_dir23 = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 6
  %21 = load i64, ptr %tif_dir23, align 8
  %and26 = and i64 %21, 2
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.end39, label %if.then28

if.then28:                                        ; preds = %if.end22
  %22 = load ptr, ptr %fd.addr, align 8
  %23 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 1
  %24 = load i64, ptr %td_imagewidth, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %td_imagelength, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.8, i64 noundef %24, i64 noundef %25) #8
  %26 = load ptr, ptr %tif.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 6, i32 0, i64 1
  %27 = load i64, ptr %arrayidx32, align 8
  %and33 = and i64 %27, 8
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.then28
  %28 = load ptr, ptr %fd.addr, align 8
  %29 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 3
  %30 = load i64, ptr %td_imagedepth, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.9, i64 noundef %30) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then28
  %31 = load ptr, ptr %fd.addr, align 8
  %fputc65 = call i32 @fputc(i32 10, ptr %31)
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end22
  %32 = load ptr, ptr %tif.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 6, i32 0, i64 1
  %33 = load i64, ptr %arrayidx42, align 8
  %and43 = and i64 %33, 8388608
  %tobool44.not = icmp eq i64 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false, label %if.then50

lor.lhs.false:                                    ; preds = %if.end39
  %34 = load ptr, ptr %tif.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 6, i32 0, i64 1
  %35 = load i64, ptr %arrayidx47, align 8
  %and48 = and i64 %35, 16777216
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %lor.lhs.false, %if.end39
  %36 = load ptr, ptr %fd.addr, align 8
  %37 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 67
  %38 = load i64, ptr %td_imagefullwidth, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 68
  %39 = load i64, ptr %td_imagefulllength, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.11, i64 noundef %38, i64 noundef %39) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %lor.lhs.false
  %40 = load ptr, ptr %tif.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 6, i32 0, i64 1
  %41 = load i64, ptr %arrayidx55, align 8
  %and56 = and i64 %41, 33554432
  %tobool57.not = icmp eq i64 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end52
  %42 = load ptr, ptr %fd.addr, align 8
  %43 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 69
  %44 = load ptr, ptr %td_textureformat, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.12) #8
  call void @_TIFFprintAscii(ptr noundef %42, ptr noundef %44)
  %45 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %42)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end52
  %46 = load ptr, ptr %tif.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.tiff, ptr %46, i64 0, i32 6, i32 0, i64 1
  %47 = load i64, ptr %arrayidx62, align 8
  %and63 = and i64 %47, 67108864
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end59
  %48 = load ptr, ptr %fd.addr, align 8
  %49 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i64 0, i32 70
  %50 = load ptr, ptr %td_wrapmodes, align 8
  %call.i4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.13) #8
  call void @_TIFFprintAscii(ptr noundef %48, ptr noundef %50)
  %51 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %48)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end59
  %52 = load ptr, ptr %tif.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.tiff, ptr %52, i64 0, i32 6, i32 0, i64 1
  %53 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %53, 134217728
  %tobool71.not = icmp eq i64 %and70, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end66
  %54 = load ptr, ptr %fd.addr, align 8
  %55 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %55, i64 0, i32 71
  %56 = load float, ptr %td_fovcot, align 8
  %conv = fpext float %56 to double
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.14, double noundef %conv) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end66
  %57 = load ptr, ptr %tif.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.tiff, ptr %57, i64 0, i32 6, i32 0, i64 1
  %58 = load i64, ptr %arrayidx77, align 8
  %and78 = and i64 %58, 268435456
  %tobool79.not = icmp eq i64 %and78, 0
  br i1 %tobool79.not, label %if.end130, label %if.then80

if.then80:                                        ; preds = %if.end74
  %59 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i64 0, i32 72
  %60 = load ptr, ptr %td_matrixWorldToScreen, align 8
  store ptr %60, ptr %m, align 8
  %61 = load ptr, ptr %fd.addr, align 8
  %62 = load float, ptr %60, align 4
  %conv83 = fpext float %62 to double
  %arrayidx85 = getelementptr inbounds [4 x float], ptr %60, i64 0, i64 1
  %63 = load float, ptr %arrayidx85, align 4
  %conv86 = fpext float %63 to double
  %64 = load ptr, ptr %m, align 8
  %arrayidx88 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 2
  %65 = load float, ptr %arrayidx88, align 4
  %conv89 = fpext float %65 to double
  %arrayidx91 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 3
  %66 = load float, ptr %arrayidx91, align 4
  %conv92 = fpext float %66 to double
  %67 = load ptr, ptr %m, align 8
  %arrayidx93 = getelementptr inbounds [4 x [4 x float]], ptr %67, i64 0, i64 1
  %68 = load float, ptr %arrayidx93, align 4
  %conv95 = fpext float %68 to double
  %arrayidx97 = getelementptr inbounds [4 x [4 x float]], ptr %67, i64 0, i64 1, i64 1
  %69 = load float, ptr %arrayidx97, align 4
  %conv98 = fpext float %69 to double
  %70 = load ptr, ptr %m, align 8
  %arrayidx100 = getelementptr inbounds [4 x [4 x float]], ptr %70, i64 0, i64 1, i64 2
  %71 = load float, ptr %arrayidx100, align 4
  %conv101 = fpext float %71 to double
  %arrayidx103 = getelementptr inbounds [4 x [4 x float]], ptr %70, i64 0, i64 1, i64 3
  %72 = load float, ptr %arrayidx103, align 4
  %conv104 = fpext float %72 to double
  %73 = load ptr, ptr %m, align 8
  %arrayidx105 = getelementptr inbounds [4 x [4 x float]], ptr %73, i64 0, i64 2
  %74 = load float, ptr %arrayidx105, align 4
  %conv107 = fpext float %74 to double
  %arrayidx109 = getelementptr inbounds [4 x [4 x float]], ptr %73, i64 0, i64 2, i64 1
  %75 = load float, ptr %arrayidx109, align 4
  %conv110 = fpext float %75 to double
  %76 = load ptr, ptr %m, align 8
  %arrayidx112 = getelementptr inbounds [4 x [4 x float]], ptr %76, i64 0, i64 2, i64 2
  %77 = load float, ptr %arrayidx112, align 4
  %conv113 = fpext float %77 to double
  %arrayidx115 = getelementptr inbounds [4 x [4 x float]], ptr %76, i64 0, i64 2, i64 3
  %78 = load float, ptr %arrayidx115, align 4
  %conv116 = fpext float %78 to double
  %79 = load ptr, ptr %m, align 8
  %arrayidx117 = getelementptr inbounds [4 x [4 x float]], ptr %79, i64 0, i64 3
  %80 = load float, ptr %arrayidx117, align 4
  %conv119 = fpext float %80 to double
  %arrayidx121 = getelementptr inbounds [4 x [4 x float]], ptr %79, i64 0, i64 3, i64 1
  %81 = load float, ptr %arrayidx121, align 4
  %conv122 = fpext float %81 to double
  %82 = load ptr, ptr %m, align 8
  %arrayidx124 = getelementptr inbounds [4 x [4 x float]], ptr %82, i64 0, i64 3, i64 2
  %83 = load float, ptr %arrayidx124, align 4
  %conv125 = fpext float %83 to double
  %arrayidx127 = getelementptr inbounds [4 x [4 x float]], ptr %82, i64 0, i64 3, i64 3
  %84 = load float, ptr %arrayidx127, align 4
  %conv128 = fpext float %84 to double
  %call129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.15, double noundef %conv83, double noundef %conv86, double noundef %conv89, double noundef %conv92, double noundef %conv95, double noundef %conv98, double noundef %conv101, double noundef %conv104, double noundef %conv107, double noundef %conv110, double noundef %conv113, double noundef %conv116, double noundef %conv119, double noundef %conv122, double noundef %conv125, double noundef %conv128) #8
  br label %if.end130

if.end130:                                        ; preds = %if.then80, %if.end74
  %85 = load ptr, ptr %tif.addr, align 8
  %arrayidx133 = getelementptr inbounds %struct.tiff, ptr %85, i64 0, i32 6, i32 0, i64 1
  %86 = load i64, ptr %arrayidx133, align 8
  %and134 = and i64 %86, 536870912
  %tobool135.not = icmp eq i64 %and134, 0
  br i1 %tobool135.not, label %if.end187, label %if.then136

if.then136:                                       ; preds = %if.end130
  %87 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %87, i64 0, i32 73
  %88 = load ptr, ptr %td_matrixWorldToCamera, align 8
  store ptr %88, ptr %m137, align 8
  %89 = load ptr, ptr %fd.addr, align 8
  %90 = load float, ptr %88, align 4
  %conv140 = fpext float %90 to double
  %arrayidx142 = getelementptr inbounds [4 x float], ptr %88, i64 0, i64 1
  %91 = load float, ptr %arrayidx142, align 4
  %conv143 = fpext float %91 to double
  %92 = load ptr, ptr %m137, align 8
  %arrayidx145 = getelementptr inbounds [4 x float], ptr %92, i64 0, i64 2
  %93 = load float, ptr %arrayidx145, align 4
  %conv146 = fpext float %93 to double
  %arrayidx148 = getelementptr inbounds [4 x float], ptr %92, i64 0, i64 3
  %94 = load float, ptr %arrayidx148, align 4
  %conv149 = fpext float %94 to double
  %95 = load ptr, ptr %m137, align 8
  %arrayidx150 = getelementptr inbounds [4 x [4 x float]], ptr %95, i64 0, i64 1
  %96 = load float, ptr %arrayidx150, align 4
  %conv152 = fpext float %96 to double
  %arrayidx154 = getelementptr inbounds [4 x [4 x float]], ptr %95, i64 0, i64 1, i64 1
  %97 = load float, ptr %arrayidx154, align 4
  %conv155 = fpext float %97 to double
  %98 = load ptr, ptr %m137, align 8
  %arrayidx157 = getelementptr inbounds [4 x [4 x float]], ptr %98, i64 0, i64 1, i64 2
  %99 = load float, ptr %arrayidx157, align 4
  %conv158 = fpext float %99 to double
  %arrayidx160 = getelementptr inbounds [4 x [4 x float]], ptr %98, i64 0, i64 1, i64 3
  %100 = load float, ptr %arrayidx160, align 4
  %conv161 = fpext float %100 to double
  %101 = load ptr, ptr %m137, align 8
  %arrayidx162 = getelementptr inbounds [4 x [4 x float]], ptr %101, i64 0, i64 2
  %102 = load float, ptr %arrayidx162, align 4
  %conv164 = fpext float %102 to double
  %arrayidx166 = getelementptr inbounds [4 x [4 x float]], ptr %101, i64 0, i64 2, i64 1
  %103 = load float, ptr %arrayidx166, align 4
  %conv167 = fpext float %103 to double
  %104 = load ptr, ptr %m137, align 8
  %arrayidx169 = getelementptr inbounds [4 x [4 x float]], ptr %104, i64 0, i64 2, i64 2
  %105 = load float, ptr %arrayidx169, align 4
  %conv170 = fpext float %105 to double
  %arrayidx172 = getelementptr inbounds [4 x [4 x float]], ptr %104, i64 0, i64 2, i64 3
  %106 = load float, ptr %arrayidx172, align 4
  %conv173 = fpext float %106 to double
  %107 = load ptr, ptr %m137, align 8
  %arrayidx174 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 3
  %108 = load float, ptr %arrayidx174, align 4
  %conv176 = fpext float %108 to double
  %arrayidx178 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 3, i64 1
  %109 = load float, ptr %arrayidx178, align 4
  %conv179 = fpext float %109 to double
  %110 = load ptr, ptr %m137, align 8
  %arrayidx181 = getelementptr inbounds [4 x [4 x float]], ptr %110, i64 0, i64 3, i64 2
  %111 = load float, ptr %arrayidx181, align 4
  %conv182 = fpext float %111 to double
  %arrayidx184 = getelementptr inbounds [4 x [4 x float]], ptr %110, i64 0, i64 3, i64 3
  %112 = load float, ptr %arrayidx184, align 4
  %conv185 = fpext float %112 to double
  %call186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.16, double noundef %conv140, double noundef %conv143, double noundef %conv146, double noundef %conv149, double noundef %conv152, double noundef %conv155, double noundef %conv158, double noundef %conv161, double noundef %conv164, double noundef %conv167, double noundef %conv170, double noundef %conv173, double noundef %conv176, double noundef %conv179, double noundef %conv182, double noundef %conv185) #8
  br label %if.end187

if.end187:                                        ; preds = %if.then136, %if.end130
  %113 = load ptr, ptr %tif.addr, align 8
  %tif_dir188 = getelementptr inbounds %struct.tiff, ptr %113, i64 0, i32 6
  %114 = load i64, ptr %tif_dir188, align 8
  %and191 = and i64 %114, 4
  %tobool192.not = icmp eq i64 %and191, 0
  br i1 %tobool192.not, label %if.end204, label %if.then193

if.then193:                                       ; preds = %if.end187
  %115 = load ptr, ptr %fd.addr, align 8
  %116 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %116, i64 0, i32 4
  %117 = load i64, ptr %td_tilewidth, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %116, i64 0, i32 5
  %118 = load i64, ptr %td_tilelength, align 8
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.17, i64 noundef %117, i64 noundef %118) #8
  %119 = load ptr, ptr %tif.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct.tiff, ptr %119, i64 0, i32 6, i32 0, i64 1
  %120 = load i64, ptr %arrayidx197, align 8
  %and198 = and i64 %120, 16
  %tobool199.not = icmp eq i64 %and198, 0
  br i1 %tobool199.not, label %if.end202, label %if.then200

if.then200:                                       ; preds = %if.then193
  %121 = load ptr, ptr %fd.addr, align 8
  %122 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %122, i64 0, i32 6
  %123 = load i64, ptr %td_tiledepth, align 8
  %call201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.18, i64 noundef %123) #8
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then193
  %124 = load ptr, ptr %fd.addr, align 8
  %fputc64 = call i32 @fputc(i32 10, ptr %124)
  br label %if.end204

if.end204:                                        ; preds = %if.end202, %if.end187
  %125 = load ptr, ptr %tif.addr, align 8
  %tif_dir205 = getelementptr inbounds %struct.tiff, ptr %125, i64 0, i32 6
  %126 = load i64, ptr %tif_dir205, align 8
  %and208 = and i64 %126, 8
  %tobool209.not = icmp eq i64 %and208, 0
  br i1 %tobool209.not, label %if.end233, label %if.then210

if.then210:                                       ; preds = %if.end204
  %127 = load ptr, ptr %fd.addr, align 8
  %128 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %128, i64 0, i32 21
  %129 = load float, ptr %td_xresolution, align 8
  %conv211 = fpext float %129 to double
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %128, i64 0, i32 22
  %130 = load float, ptr %td_yresolution, align 4
  %conv212 = fpext float %130 to double
  %call213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.19, double noundef %conv211, double noundef %conv212) #8
  %131 = load ptr, ptr %tif.addr, align 8
  %tif_dir214 = getelementptr inbounds %struct.tiff, ptr %131, i64 0, i32 6
  %132 = load i64, ptr %tif_dir214, align 8
  %and217 = and i64 %132, 4194304
  %tobool218.not = icmp eq i64 %and217, 0
  br i1 %tobool218.not, label %if.end231, label %if.then219

if.then219:                                       ; preds = %if.then210
  %133 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %133, i64 0, i32 23
  %134 = load i16, ptr %td_resolutionunit, align 8
  switch i16 %134, label %sw.default [
    i16 1, label %sw.bb
    i16 2, label %sw.bb222
    i16 3, label %sw.bb224
  ]

sw.bb:                                            ; preds = %if.then219
  %135 = load ptr, ptr %fd.addr, align 8
  %136 = call i64 @fwrite(ptr nonnull @.str.20, i64 11, i64 1, ptr %135)
  br label %if.end231

sw.bb222:                                         ; preds = %if.then219
  %137 = load ptr, ptr %fd.addr, align 8
  %138 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %137)
  br label %if.end231

sw.bb224:                                         ; preds = %if.then219
  %139 = load ptr, ptr %fd.addr, align 8
  %140 = call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr %139)
  br label %if.end231

sw.default:                                       ; preds = %if.then219
  %141 = load ptr, ptr %fd.addr, align 8
  %142 = load ptr, ptr %td, align 8
  %td_resolutionunit226 = getelementptr inbounds %struct.TIFFDirectory, ptr %142, i64 0, i32 23
  %143 = load i16, ptr %td_resolutionunit226, align 8
  %conv227 = zext i16 %143 to i32
  %conv229 = zext i16 %143 to i32
  %call230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.23, i32 noundef %conv227, i32 noundef %conv229) #8
  br label %if.end231

if.end231:                                        ; preds = %sw.bb, %sw.bb222, %sw.bb224, %sw.default, %if.then210
  %144 = load ptr, ptr %fd.addr, align 8
  %fputc63 = call i32 @fputc(i32 10, ptr %144)
  br label %if.end233

if.end233:                                        ; preds = %if.end231, %if.end204
  %145 = load ptr, ptr %tif.addr, align 8
  %tif_dir234 = getelementptr inbounds %struct.tiff, ptr %145, i64 0, i32 6
  %146 = load i64, ptr %tif_dir234, align 8
  %and237 = and i64 %146, 16
  %tobool238.not = icmp eq i64 %and237, 0
  br i1 %tobool238.not, label %if.end243, label %if.then239

if.then239:                                       ; preds = %if.end233
  %147 = load ptr, ptr %fd.addr, align 8
  %148 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %148, i64 0, i32 25
  %149 = load float, ptr %td_xposition, align 4
  %conv240 = fpext float %149 to double
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %148, i64 0, i32 26
  %150 = load float, ptr %td_yposition, align 8
  %conv241 = fpext float %150 to double
  %call242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef nonnull @.str.24, double noundef %conv240, double noundef %conv241) #8
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %if.end233
  %151 = load ptr, ptr %tif.addr, align 8
  %tif_dir244 = getelementptr inbounds %struct.tiff, ptr %151, i64 0, i32 6
  %152 = load i64, ptr %tif_dir244, align 8
  %and247 = and i64 %152, 64
  %tobool248.not = icmp eq i64 %and247, 0
  br i1 %tobool248.not, label %if.end252, label %if.then249

if.then249:                                       ; preds = %if.end243
  %153 = load ptr, ptr %fd.addr, align 8
  %154 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %154, i64 0, i32 8
  %155 = load i16, ptr %td_bitspersample, align 8
  %conv250 = zext i16 %155 to i32
  %call251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str.25, i32 noundef %conv250) #8
  br label %if.end252

if.end252:                                        ; preds = %if.then249, %if.end243
  %156 = load ptr, ptr %tif.addr, align 8
  %arrayidx255 = getelementptr inbounds %struct.tiff, ptr %156, i64 0, i32 6, i32 0, i64 1
  %157 = load i64, ptr %arrayidx255, align 8
  %and256 = and i64 %157, 1
  %tobool257.not = icmp eq i64 %and256, 0
  br i1 %tobool257.not, label %if.end276, label %if.then258

if.then258:                                       ; preds = %if.end252
  %158 = load ptr, ptr %fd.addr, align 8
  %159 = call i64 @fwrite(ptr nonnull @.str.26, i64 17, i64 1, ptr %158)
  %160 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %160, i64 0, i32 9
  %161 = load i16, ptr %td_sampleformat, align 2
  switch i16 %161, label %sw.default269 [
    i16 4, label %sw.bb261
    i16 2, label %sw.bb263
    i16 1, label %sw.bb265
    i16 3, label %sw.bb267
  ]

sw.bb261:                                         ; preds = %if.then258
  %162 = load ptr, ptr %fd.addr, align 8
  %163 = call i64 @fwrite(ptr nonnull @.str.27, i64 5, i64 1, ptr %162)
  br label %if.end276

sw.bb263:                                         ; preds = %if.then258
  %164 = load ptr, ptr %fd.addr, align 8
  %165 = call i64 @fwrite(ptr nonnull @.str.28, i64 15, i64 1, ptr %164)
  br label %if.end276

sw.bb265:                                         ; preds = %if.then258
  %166 = load ptr, ptr %fd.addr, align 8
  %167 = call i64 @fwrite(ptr nonnull @.str.29, i64 17, i64 1, ptr %166)
  br label %if.end276

sw.bb267:                                         ; preds = %if.then258
  %168 = load ptr, ptr %fd.addr, align 8
  %169 = call i64 @fwrite(ptr nonnull @.str.30, i64 20, i64 1, ptr %168)
  br label %if.end276

sw.default269:                                    ; preds = %if.then258
  %170 = load ptr, ptr %fd.addr, align 8
  %171 = load ptr, ptr %td, align 8
  %td_sampleformat270 = getelementptr inbounds %struct.TIFFDirectory, ptr %171, i64 0, i32 9
  %172 = load i16, ptr %td_sampleformat270, align 2
  %conv271 = zext i16 %172 to i32
  %conv273 = zext i16 %172 to i32
  %call274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.31, i32 noundef %conv271, i32 noundef %conv273) #8
  br label %if.end276

if.end276:                                        ; preds = %sw.bb261, %sw.bb263, %sw.bb265, %sw.bb267, %sw.default269, %if.end252
  %173 = load ptr, ptr %tif.addr, align 8
  %tif_dir277 = getelementptr inbounds %struct.tiff, ptr %173, i64 0, i32 6
  %174 = load i64, ptr %tif_dir277, align 8
  %and280 = and i64 %174, 128
  %tobool281.not = icmp eq i64 %and280, 0
  br i1 %tobool281.not, label %if.end294, label %if.then282

if.then282:                                       ; preds = %if.end276
  %175 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %175, i64 0, i32 10
  %176 = load i16, ptr %td_compression, align 4
  %call283 = call ptr @TIFFFindCODEC(i16 noundef zeroext %176) #8
  store ptr %call283, ptr %c, align 8
  %177 = load ptr, ptr %fd.addr, align 8
  %178 = call i64 @fwrite(ptr nonnull @.str.32, i64 22, i64 1, ptr %177)
  %tobool285.not = icmp eq ptr %call283, null
  br i1 %tobool285.not, label %if.else, label %if.then286

if.then286:                                       ; preds = %if.then282
  %179 = load ptr, ptr %fd.addr, align 8
  %180 = load ptr, ptr %c, align 8
  %181 = load ptr, ptr %180, align 8
  %call287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.33, ptr noundef %181) #8
  br label %if.end294

if.else:                                          ; preds = %if.then282
  %182 = load ptr, ptr %fd.addr, align 8
  %183 = load ptr, ptr %td, align 8
  %td_compression288 = getelementptr inbounds %struct.TIFFDirectory, ptr %183, i64 0, i32 10
  %184 = load i16, ptr %td_compression288, align 4
  %conv289 = zext i16 %184 to i32
  %conv291 = zext i16 %184 to i32
  %call292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.31, i32 noundef %conv289, i32 noundef %conv291) #8
  br label %if.end294

if.end294:                                        ; preds = %if.then286, %if.else, %if.end276
  %185 = load ptr, ptr %tif.addr, align 8
  %tif_dir295 = getelementptr inbounds %struct.tiff, ptr %185, i64 0, i32 6
  %186 = load i64, ptr %tif_dir295, align 8
  %and298 = and i64 %186, 256
  %tobool299.not = icmp eq i64 %and298, 0
  br i1 %tobool299.not, label %if.end323, label %if.then300

if.then300:                                       ; preds = %if.end294
  %187 = load ptr, ptr %fd.addr, align 8
  %188 = call i64 @fwrite(ptr nonnull @.str.34, i64 30, i64 1, ptr %187)
  %189 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %189, i64 0, i32 11
  %190 = load i16, ptr %td_photometric, align 2
  %cmp = icmp ult i16 %190, 9
  br i1 %cmp, label %if.then304, label %if.else308

if.then304:                                       ; preds = %if.then300
  %191 = load ptr, ptr %fd.addr, align 8
  %192 = load ptr, ptr %td, align 8
  %td_photometric305 = getelementptr inbounds %struct.TIFFDirectory, ptr %192, i64 0, i32 11
  %193 = load i16, ptr %td_photometric305, align 2
  %idxprom = zext i16 %193 to i64
  %arrayidx306 = getelementptr inbounds [9 x ptr], ptr @photoNames, i64 0, i64 %idxprom
  %194 = load ptr, ptr %arrayidx306, align 8
  %call307 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.33, ptr noundef %194) #8
  br label %if.end323

if.else308:                                       ; preds = %if.then300
  %195 = load ptr, ptr %td, align 8
  %td_photometric309 = getelementptr inbounds %struct.TIFFDirectory, ptr %195, i64 0, i32 11
  %196 = load i16, ptr %td_photometric309, align 2
  switch i16 %196, label %sw.default315 [
    i16 -32692, label %sw.bb311
    i16 -32691, label %sw.bb313
  ]

sw.bb311:                                         ; preds = %if.else308
  %197 = load ptr, ptr %fd.addr, align 8
  %198 = call i64 @fwrite(ptr nonnull @.str.35, i64 12, i64 1, ptr %197)
  br label %if.end323

sw.bb313:                                         ; preds = %if.else308
  %199 = load ptr, ptr %fd.addr, align 8
  %200 = call i64 @fwrite(ptr nonnull @.str.36, i64 20, i64 1, ptr %199)
  br label %if.end323

sw.default315:                                    ; preds = %if.else308
  %201 = load ptr, ptr %fd.addr, align 8
  %202 = load ptr, ptr %td, align 8
  %td_photometric316 = getelementptr inbounds %struct.TIFFDirectory, ptr %202, i64 0, i32 11
  %203 = load i16, ptr %td_photometric316, align 2
  %conv317 = zext i16 %203 to i32
  %conv319 = zext i16 %203 to i32
  %call320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.31, i32 noundef %conv317, i32 noundef %conv319) #8
  br label %if.end323

if.end323:                                        ; preds = %if.then304, %sw.default315, %sw.bb313, %sw.bb311, %if.end294
  %204 = load ptr, ptr %tif.addr, align 8
  %tif_dir324 = getelementptr inbounds %struct.tiff, ptr %204, i64 0, i32 6
  %205 = load i64, ptr %tif_dir324, align 8
  %and327 = and i64 %205, 2147483648
  %tobool328.not = icmp eq i64 %and327, 0
  br i1 %tobool328.not, label %if.end361, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end323
  %206 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %206, i64 0, i32 30
  %207 = load i16, ptr %td_extrasamples, align 4
  %tobool330.not = icmp eq i16 %207, 0
  br i1 %tobool330.not, label %if.end361, label %if.then331

if.then331:                                       ; preds = %land.lhs.true
  %208 = load ptr, ptr %fd.addr, align 8
  %209 = load ptr, ptr %td, align 8
  %td_extrasamples332 = getelementptr inbounds %struct.TIFFDirectory, ptr %209, i64 0, i32 30
  %210 = load i16, ptr %td_extrasamples332, align 4
  %conv333 = zext i16 %210 to i32
  %call334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.37, i32 noundef %conv333) #8
  store ptr @.str.38, ptr %sep, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog359, %if.then331
  %storemerge62 = phi i16 [ 0, %if.then331 ], [ %inc, %sw.epilog359 ]
  store i16 %storemerge62, ptr %i, align 2
  %211 = load ptr, ptr %td, align 8
  %td_extrasamples336 = getelementptr inbounds %struct.TIFFDirectory, ptr %211, i64 0, i32 30
  %212 = load i16, ptr %td_extrasamples336, align 4
  %cmp338 = icmp ult i16 %storemerge62, %212
  br i1 %cmp338, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %213 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %213, i64 0, i32 31
  %214 = load ptr, ptr %td_sampleinfo, align 8
  %215 = load i16, ptr %i, align 2
  %idxprom340 = zext i16 %215 to i64
  %arrayidx341 = getelementptr inbounds i16, ptr %214, i64 %idxprom340
  %216 = load i16, ptr %arrayidx341, align 2
  switch i16 %216, label %sw.default349 [
    i16 0, label %sw.bb343
    i16 1, label %sw.bb345
    i16 2, label %sw.bb347
  ]

sw.bb343:                                         ; preds = %for.body
  %217 = load ptr, ptr %fd.addr, align 8
  %218 = load ptr, ptr %sep, align 8
  %call344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.39, ptr noundef %218) #8
  br label %sw.epilog359

sw.bb345:                                         ; preds = %for.body
  %219 = load ptr, ptr %fd.addr, align 8
  %220 = load ptr, ptr %sep, align 8
  %call346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.40, ptr noundef %220) #8
  br label %sw.epilog359

sw.bb347:                                         ; preds = %for.body
  %221 = load ptr, ptr %fd.addr, align 8
  %222 = load ptr, ptr %sep, align 8
  %call348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef nonnull @.str.41, ptr noundef %222) #8
  br label %sw.epilog359

sw.default349:                                    ; preds = %for.body
  %223 = load ptr, ptr %fd.addr, align 8
  %224 = load ptr, ptr %sep, align 8
  %225 = load ptr, ptr %td, align 8
  %td_sampleinfo350 = getelementptr inbounds %struct.TIFFDirectory, ptr %225, i64 0, i32 31
  %226 = load ptr, ptr %td_sampleinfo350, align 8
  %227 = load i16, ptr %i, align 2
  %idxprom351 = zext i16 %227 to i64
  %arrayidx352 = getelementptr inbounds i16, ptr %226, i64 %idxprom351
  %228 = load i16, ptr %arrayidx352, align 2
  %conv353 = zext i16 %228 to i32
  %229 = load ptr, ptr %td, align 8
  %td_sampleinfo354 = getelementptr inbounds %struct.TIFFDirectory, ptr %229, i64 0, i32 31
  %230 = load ptr, ptr %td_sampleinfo354, align 8
  %231 = load i16, ptr %i, align 2
  %idxprom355 = zext i16 %231 to i64
  %arrayidx356 = getelementptr inbounds i16, ptr %230, i64 %idxprom355
  %232 = load i16, ptr %arrayidx356, align 2
  %conv357 = zext i16 %232 to i32
  %call358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.42, ptr noundef %224, i32 noundef %conv353, i32 noundef %conv357) #8
  br label %sw.epilog359

sw.epilog359:                                     ; preds = %sw.default349, %sw.bb347, %sw.bb345, %sw.bb343
  store ptr @.str.43, ptr %sep, align 8
  %233 = load i16, ptr %i, align 2
  %inc = add i16 %233, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %234 = load ptr, ptr %fd.addr, align 8
  %235 = call i64 @fwrite(ptr nonnull @.str.44, i64 2, i64 1, ptr %234)
  br label %if.end361

if.end361:                                        ; preds = %for.end, %land.lhs.true, %if.end323
  %236 = load ptr, ptr %tif.addr, align 8
  %arrayidx364 = getelementptr inbounds %struct.tiff, ptr %236, i64 0, i32 6, i32 0, i64 1
  %237 = load i64, ptr %arrayidx364, align 8
  %and365 = and i64 %237, 4194304
  %tobool366.not = icmp eq i64 %and365, 0
  br i1 %tobool366.not, label %if.end369, label %if.then367

if.then367:                                       ; preds = %if.end361
  %238 = load ptr, ptr %fd.addr, align 8
  %239 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %239, i64 0, i32 32
  %240 = load double, ptr %td_stonits, align 8
  %call368 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef nonnull @.str.45, double noundef %240) #8
  br label %if.end369

if.end369:                                        ; preds = %if.then367, %if.end361
  %241 = load ptr, ptr %tif.addr, align 8
  %arrayidx372 = getelementptr inbounds %struct.tiff, ptr %241, i64 0, i32 6, i32 0, i64 1
  %242 = load i64, ptr %arrayidx372, align 8
  %and373 = and i64 %242, 8192
  %tobool374.not = icmp eq i64 %and373, 0
  br i1 %tobool374.not, label %if.end387, label %if.then375

if.then375:                                       ; preds = %if.end369
  %243 = load ptr, ptr %fd.addr, align 8
  %244 = call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %243)
  %245 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %245, i64 0, i32 55
  %246 = load i16, ptr %td_inkset, align 8
  %cond66 = icmp eq i16 %246, 1
  br i1 %cond66, label %sw.bb378, label %sw.default380

sw.bb378:                                         ; preds = %if.then375
  %247 = load ptr, ptr %fd.addr, align 8
  %248 = call i64 @fwrite(ptr nonnull @.str.47, i64 5, i64 1, ptr %247)
  br label %if.end387

sw.default380:                                    ; preds = %if.then375
  %249 = load ptr, ptr %fd.addr, align 8
  %250 = load ptr, ptr %td, align 8
  %td_inkset381 = getelementptr inbounds %struct.TIFFDirectory, ptr %250, i64 0, i32 55
  %251 = load i16, ptr %td_inkset381, align 8
  %conv382 = zext i16 %251 to i32
  %conv384 = zext i16 %251 to i32
  %call385 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %249, ptr noundef nonnull @.str.31, i32 noundef %conv382, i32 noundef %conv384) #8
  br label %if.end387

if.end387:                                        ; preds = %sw.bb378, %sw.default380, %if.end369
  %252 = load ptr, ptr %tif.addr, align 8
  %arrayidx390 = getelementptr inbounds %struct.tiff, ptr %252, i64 0, i32 6, i32 0, i64 1
  %253 = load i64, ptr %arrayidx390, align 8
  %and391 = and i64 %253, 16384
  %tobool392.not = icmp eq i64 %and391, 0
  br i1 %tobool392.not, label %if.end404, label %if.then393

if.then393:                                       ; preds = %if.end387
  %254 = load ptr, ptr %fd.addr, align 8
  %255 = call i64 @fwrite(ptr nonnull @.str.48, i64 13, i64 1, ptr %254)
  %256 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %256, i64 0, i32 15
  %257 = load i16, ptr %td_samplesperpixel, align 2
  store i16 %257, ptr %i, align 2
  store ptr @.str.38, ptr %sep, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %256, i64 0, i32 59
  %258 = load ptr, ptr %td_inknames, align 8
  store ptr %258, ptr %cp, align 8
  br label %for.cond395

for.cond395:                                      ; preds = %for.body399, %if.then393
  %259 = load i16, ptr %i, align 2
  %cmp397.not = icmp eq i16 %259, 0
  br i1 %cmp397.not, label %if.end404, label %for.body399

for.body399:                                      ; preds = %for.cond395
  %260 = load ptr, ptr %fd.addr, align 8
  %261 = load ptr, ptr %sep, align 8
  %fputs = call i32 @fputs(ptr %261, ptr %260)
  %262 = load ptr, ptr %fd.addr, align 8
  %263 = load ptr, ptr %cp, align 8
  call void @_TIFFprintAscii(ptr noundef %262, ptr noundef %263)
  store ptr @.str.43, ptr %sep, align 8
  %264 = load ptr, ptr %cp, align 8
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %264)
  %strchr = getelementptr inbounds i8, ptr %264, i64 %strlen
  %add.ptr = getelementptr inbounds i8, ptr %strchr, i64 1
  store ptr %add.ptr, ptr %cp, align 8
  %265 = load i16, ptr %i, align 2
  %dec = add i16 %265, -1
  store i16 %dec, ptr %i, align 2
  br label %for.cond395, !llvm.loop !8

if.end404:                                        ; preds = %for.cond395, %if.end387
  %266 = load ptr, ptr %tif.addr, align 8
  %arrayidx407 = getelementptr inbounds %struct.tiff, ptr %266, i64 0, i32 6, i32 0, i64 1
  %267 = load i64, ptr %arrayidx407, align 8
  %and408 = and i64 %267, 262144
  %tobool409.not = icmp eq i64 %and408, 0
  br i1 %tobool409.not, label %if.end413, label %if.then410

if.then410:                                       ; preds = %if.end404
  %268 = load ptr, ptr %fd.addr, align 8
  %269 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %269, i64 0, i32 56
  %270 = load i16, ptr %td_ninks, align 2
  %conv411 = zext i16 %270 to i32
  %call412 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef nonnull @.str.50, i32 noundef %conv411) #8
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %if.end404
  %271 = load ptr, ptr %tif.addr, align 8
  %arrayidx416 = getelementptr inbounds %struct.tiff, ptr %271, i64 0, i32 6, i32 0, i64 1
  %272 = load i64, ptr %arrayidx416, align 8
  %and417 = and i64 %272, 32768
  %tobool418.not = icmp eq i64 %and417, 0
  br i1 %tobool418.not, label %if.end426, label %if.then419

if.then419:                                       ; preds = %if.end413
  %273 = load ptr, ptr %fd.addr, align 8
  %274 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %274, i64 0, i32 57
  %275 = load i16, ptr %td_dotrange, align 4
  %conv421 = zext i16 %275 to i32
  %arrayidx423 = getelementptr inbounds %struct.TIFFDirectory, ptr %274, i64 0, i32 57, i64 1
  %276 = load i16, ptr %arrayidx423, align 2
  %conv424 = zext i16 %276 to i32
  %call425 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.51, i32 noundef %conv421, i32 noundef %conv424) #8
  br label %if.end426

if.end426:                                        ; preds = %if.then419, %if.end413
  %277 = load ptr, ptr %tif.addr, align 8
  %arrayidx429 = getelementptr inbounds %struct.tiff, ptr %277, i64 0, i32 6, i32 0, i64 1
  %278 = load i64, ptr %arrayidx429, align 8
  %and430 = and i64 %278, 65536
  %tobool431.not = icmp eq i64 %and430, 0
  br i1 %tobool431.not, label %if.end433, label %if.then432

if.then432:                                       ; preds = %if.end426
  %279 = load ptr, ptr %fd.addr, align 8
  %280 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %280, i64 0, i32 60
  %281 = load ptr, ptr %td_targetprinter, align 8
  %call.i9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %279, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.52) #8
  call void @_TIFFprintAscii(ptr noundef %279, ptr noundef %281)
  %282 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %279)
  br label %if.end433

if.end433:                                        ; preds = %if.then432, %if.end426
  %283 = load ptr, ptr %tif.addr, align 8
  %tif_dir434 = getelementptr inbounds %struct.tiff, ptr %283, i64 0, i32 6
  %284 = load i64, ptr %tif_dir434, align 8
  %and437 = and i64 %284, 512
  %tobool438.not = icmp eq i64 %and437, 0
  br i1 %tobool438.not, label %if.end455, label %if.then439

if.then439:                                       ; preds = %if.end433
  %285 = load ptr, ptr %fd.addr, align 8
  %286 = call i64 @fwrite(ptr nonnull @.str.53, i64 16, i64 1, ptr %285)
  %287 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %287, i64 0, i32 12
  %288 = load i16, ptr %td_threshholding, align 8
  switch i16 %288, label %sw.default448 [
    i16 1, label %sw.bb442
    i16 2, label %sw.bb444
    i16 3, label %sw.bb446
  ]

sw.bb442:                                         ; preds = %if.then439
  %289 = load ptr, ptr %fd.addr, align 8
  %290 = call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr %289)
  br label %if.end455

sw.bb444:                                         ; preds = %if.then439
  %291 = load ptr, ptr %fd.addr, align 8
  %292 = call i64 @fwrite(ptr nonnull @.str.55, i64 26, i64 1, ptr %291)
  br label %if.end455

sw.bb446:                                         ; preds = %if.then439
  %293 = load ptr, ptr %fd.addr, align 8
  %294 = call i64 @fwrite(ptr nonnull @.str.56, i64 15, i64 1, ptr %293)
  br label %if.end455

sw.default448:                                    ; preds = %if.then439
  %295 = load ptr, ptr %fd.addr, align 8
  %296 = load ptr, ptr %td, align 8
  %td_threshholding449 = getelementptr inbounds %struct.TIFFDirectory, ptr %296, i64 0, i32 12
  %297 = load i16, ptr %td_threshholding449, align 8
  %conv450 = zext i16 %297 to i32
  %conv452 = zext i16 %297 to i32
  %call453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef nonnull @.str.31, i32 noundef %conv450, i32 noundef %conv452) #8
  br label %if.end455

if.end455:                                        ; preds = %sw.bb442, %sw.bb444, %sw.bb446, %sw.default448, %if.end433
  %298 = load ptr, ptr %tif.addr, align 8
  %tif_dir456 = getelementptr inbounds %struct.tiff, ptr %298, i64 0, i32 6
  %299 = load i64, ptr %tif_dir456, align 8
  %and459 = and i64 %299, 1024
  %tobool460.not = icmp eq i64 %and459, 0
  br i1 %tobool460.not, label %if.end475, label %if.then461

if.then461:                                       ; preds = %if.end455
  %300 = load ptr, ptr %fd.addr, align 8
  %301 = call i64 @fwrite(ptr nonnull @.str.57, i64 13, i64 1, ptr %300)
  %302 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %302, i64 0, i32 13
  %303 = load i16, ptr %td_fillorder, align 2
  switch i16 %303, label %sw.default468 [
    i16 1, label %sw.bb464
    i16 2, label %sw.bb466
  ]

sw.bb464:                                         ; preds = %if.then461
  %304 = load ptr, ptr %fd.addr, align 8
  %305 = call i64 @fwrite(ptr nonnull @.str.58, i64 11, i64 1, ptr %304)
  br label %if.end475

sw.bb466:                                         ; preds = %if.then461
  %306 = load ptr, ptr %fd.addr, align 8
  %307 = call i64 @fwrite(ptr nonnull @.str.59, i64 11, i64 1, ptr %306)
  br label %if.end475

sw.default468:                                    ; preds = %if.then461
  %308 = load ptr, ptr %fd.addr, align 8
  %309 = load ptr, ptr %td, align 8
  %td_fillorder469 = getelementptr inbounds %struct.TIFFDirectory, ptr %309, i64 0, i32 13
  %310 = load i16, ptr %td_fillorder469, align 2
  %conv470 = zext i16 %310 to i32
  %conv472 = zext i16 %310 to i32
  %call473 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef nonnull @.str.31, i32 noundef %conv470, i32 noundef %conv472) #8
  br label %if.end475

if.end475:                                        ; preds = %sw.bb464, %sw.bb466, %sw.default468, %if.end455
  %311 = load ptr, ptr %tif.addr, align 8
  %arrayidx478 = getelementptr inbounds %struct.tiff, ptr %311, i64 0, i32 6, i32 0, i64 1
  %312 = load i64, ptr %arrayidx478, align 8
  %and479 = and i64 %312, 128
  %tobool480.not = icmp eq i64 %and479, 0
  br i1 %tobool480.not, label %if.end488, label %if.then481

if.then481:                                       ; preds = %if.end475
  %313 = load ptr, ptr %fd.addr, align 8
  %314 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %314, i64 0, i32 49
  %315 = load i16, ptr %td_ycbcrsubsampling, align 8
  %conv483 = zext i16 %315 to i32
  %arrayidx485 = getelementptr inbounds %struct.TIFFDirectory, ptr %314, i64 0, i32 49, i64 1
  %316 = load i16, ptr %arrayidx485, align 2
  %conv486 = zext i16 %316 to i32
  %call487 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %313, ptr noundef nonnull @.str.60, i32 noundef %conv483, i32 noundef %conv486) #8
  br label %if.end488

if.end488:                                        ; preds = %if.then481, %if.end475
  %317 = load ptr, ptr %tif.addr, align 8
  %arrayidx491 = getelementptr inbounds %struct.tiff, ptr %317, i64 0, i32 6, i32 0, i64 1
  %318 = load i64, ptr %arrayidx491, align 8
  %and492 = and i64 %318, 256
  %tobool493.not = icmp eq i64 %and492, 0
  br i1 %tobool493.not, label %if.end508, label %if.then494

if.then494:                                       ; preds = %if.end488
  %319 = load ptr, ptr %fd.addr, align 8
  %320 = call i64 @fwrite(ptr nonnull @.str.61, i64 21, i64 1, ptr %319)
  %321 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %321, i64 0, i32 50
  %322 = load i16, ptr %td_ycbcrpositioning, align 4
  switch i16 %322, label %sw.default501 [
    i16 1, label %sw.bb497
    i16 2, label %sw.bb499
  ]

sw.bb497:                                         ; preds = %if.then494
  %323 = load ptr, ptr %fd.addr, align 8
  %324 = call i64 @fwrite(ptr nonnull @.str.62, i64 9, i64 1, ptr %323)
  br label %if.end508

sw.bb499:                                         ; preds = %if.then494
  %325 = load ptr, ptr %fd.addr, align 8
  %326 = call i64 @fwrite(ptr nonnull @.str.63, i64 8, i64 1, ptr %325)
  br label %if.end508

sw.default501:                                    ; preds = %if.then494
  %327 = load ptr, ptr %fd.addr, align 8
  %328 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning502 = getelementptr inbounds %struct.TIFFDirectory, ptr %328, i64 0, i32 50
  %329 = load i16, ptr %td_ycbcrpositioning502, align 4
  %conv503 = zext i16 %329 to i32
  %conv505 = zext i16 %329 to i32
  %call506 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %327, ptr noundef nonnull @.str.31, i32 noundef %conv503, i32 noundef %conv505) #8
  br label %if.end508

if.end508:                                        ; preds = %sw.bb497, %sw.bb499, %sw.default501, %if.end488
  %330 = load ptr, ptr %tif.addr, align 8
  %arrayidx511 = getelementptr inbounds %struct.tiff, ptr %330, i64 0, i32 6, i32 0, i64 1
  %331 = load i64, ptr %arrayidx511, align 8
  %and512 = and i64 %331, 64
  %tobool513.not = icmp eq i64 %and512, 0
  br i1 %tobool513.not, label %if.end524, label %if.then514

if.then514:                                       ; preds = %if.end508
  %332 = load ptr, ptr %fd.addr, align 8
  %333 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %333, i64 0, i32 48
  %334 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %335 = load float, ptr %334, align 4
  %conv516 = fpext float %335 to double
  %arrayidx518 = getelementptr inbounds float, ptr %334, i64 1
  %336 = load float, ptr %arrayidx518, align 4
  %conv519 = fpext float %336 to double
  %337 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs520 = getelementptr inbounds %struct.TIFFDirectory, ptr %337, i64 0, i32 48
  %338 = load ptr, ptr %td_ycbcrcoeffs520, align 8
  %arrayidx521 = getelementptr inbounds float, ptr %338, i64 2
  %339 = load float, ptr %arrayidx521, align 4
  %conv522 = fpext float %339 to double
  %call523 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef nonnull @.str.64, double noundef %conv516, double noundef %conv519, double noundef %conv522) #8
  br label %if.end524

if.end524:                                        ; preds = %if.then514, %if.end508
  %340 = load ptr, ptr %tif.addr, align 8
  %arrayidx527 = getelementptr inbounds %struct.tiff, ptr %340, i64 0, i32 6, i32 0, i64 1
  %341 = load i64, ptr %arrayidx527, align 8
  %and528 = and i64 %341, 32
  %tobool529.not = icmp eq i64 %and528, 0
  br i1 %tobool529.not, label %if.end537, label %if.then530

if.then530:                                       ; preds = %if.end524
  %342 = load ptr, ptr %fd.addr, align 8
  %343 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %343, i64 0, i32 29
  %344 = load i16, ptr %td_halftonehints, align 8
  %conv532 = zext i16 %344 to i32
  %arrayidx534 = getelementptr inbounds %struct.TIFFDirectory, ptr %343, i64 0, i32 29, i64 1
  %345 = load i16, ptr %arrayidx534, align 2
  %conv535 = zext i16 %345 to i32
  %call536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %342, ptr noundef nonnull @.str.65, i32 noundef %conv532, i32 noundef %conv535) #8
  br label %if.end537

if.end537:                                        ; preds = %if.then530, %if.end524
  %346 = load ptr, ptr %tif.addr, align 8
  %tif_dir538 = getelementptr inbounds %struct.tiff, ptr %346, i64 0, i32 6
  %347 = load i64, ptr %tif_dir538, align 8
  %and541 = and i64 %347, 134217728
  %tobool542.not = icmp eq i64 %and541, 0
  br i1 %tobool542.not, label %if.end544, label %if.then543

if.then543:                                       ; preds = %if.end537
  %348 = load ptr, ptr %fd.addr, align 8
  %349 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %349, i64 0, i32 34
  %350 = load ptr, ptr %td_artist, align 8
  %call.i14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %348, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.66) #8
  call void @_TIFFprintAscii(ptr noundef %348, ptr noundef %350)
  %351 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %348)
  br label %if.end544

if.end544:                                        ; preds = %if.then543, %if.end537
  %352 = load ptr, ptr %tif.addr, align 8
  %tif_dir545 = getelementptr inbounds %struct.tiff, ptr %352, i64 0, i32 6
  %353 = load i64, ptr %tif_dir545, align 8
  %and548 = and i64 %353, 268435456
  %tobool549.not = icmp eq i64 %and548, 0
  br i1 %tobool549.not, label %if.end551, label %if.then550

if.then550:                                       ; preds = %if.end544
  %354 = load ptr, ptr %fd.addr, align 8
  %355 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %355, i64 0, i32 35
  %356 = load ptr, ptr %td_datetime, align 8
  %call.i19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %354, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.67) #8
  call void @_TIFFprintAscii(ptr noundef %354, ptr noundef %356)
  %357 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %354)
  br label %if.end551

if.end551:                                        ; preds = %if.then550, %if.end544
  %358 = load ptr, ptr %tif.addr, align 8
  %tif_dir552 = getelementptr inbounds %struct.tiff, ptr %358, i64 0, i32 6
  %359 = load i64, ptr %tif_dir552, align 8
  %and555 = and i64 %359, 536870912
  %tobool556.not = icmp eq i64 %and555, 0
  br i1 %tobool556.not, label %if.end558, label %if.then557

if.then557:                                       ; preds = %if.end551
  %360 = load ptr, ptr %fd.addr, align 8
  %361 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %361, i64 0, i32 36
  %362 = load ptr, ptr %td_hostcomputer, align 8
  %call.i24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %360, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.68) #8
  call void @_TIFFprintAscii(ptr noundef %360, ptr noundef %362)
  %363 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %360)
  br label %if.end558

if.end558:                                        ; preds = %if.then557, %if.end551
  %364 = load ptr, ptr %tif.addr, align 8
  %tif_dir559 = getelementptr inbounds %struct.tiff, ptr %364, i64 0, i32 6
  %365 = load i64, ptr %tif_dir559, align 8
  %and562 = and i64 %365, 1073741824
  %tobool563.not = icmp eq i64 %and562, 0
  br i1 %tobool563.not, label %if.end565, label %if.then564

if.then564:                                       ; preds = %if.end558
  %366 = load ptr, ptr %fd.addr, align 8
  %367 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %367, i64 0, i32 40
  %368 = load ptr, ptr %td_software, align 8
  %call.i29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.69) #8
  call void @_TIFFprintAscii(ptr noundef %366, ptr noundef %368)
  %369 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %366)
  br label %if.end565

if.end565:                                        ; preds = %if.then564, %if.end558
  %370 = load ptr, ptr %tif.addr, align 8
  %tif_dir566 = getelementptr inbounds %struct.tiff, ptr %370, i64 0, i32 6
  %371 = load i64, ptr %tif_dir566, align 8
  %and569 = and i64 %371, 2048
  %tobool570.not = icmp eq i64 %and569, 0
  br i1 %tobool570.not, label %if.end572, label %if.then571

if.then571:                                       ; preds = %if.end565
  %372 = load ptr, ptr %fd.addr, align 8
  %373 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %373, i64 0, i32 33
  %374 = load ptr, ptr %td_documentname, align 8
  %call.i34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %372, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.70) #8
  call void @_TIFFprintAscii(ptr noundef %372, ptr noundef %374)
  %375 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %372)
  br label %if.end572

if.end572:                                        ; preds = %if.then571, %if.end565
  %376 = load ptr, ptr %tif.addr, align 8
  %tif_dir573 = getelementptr inbounds %struct.tiff, ptr %376, i64 0, i32 6
  %377 = load i64, ptr %tif_dir573, align 8
  %and576 = and i64 %377, 4096
  %tobool577.not = icmp eq i64 %and576, 0
  br i1 %tobool577.not, label %if.end579, label %if.then578

if.then578:                                       ; preds = %if.end572
  %378 = load ptr, ptr %fd.addr, align 8
  %379 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %379, i64 0, i32 37
  %380 = load ptr, ptr %td_imagedescription, align 8
  %call.i39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %378, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.71) #8
  call void @_TIFFprintAscii(ptr noundef %378, ptr noundef %380)
  %381 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %378)
  br label %if.end579

if.end579:                                        ; preds = %if.then578, %if.end572
  %382 = load ptr, ptr %tif.addr, align 8
  %tif_dir580 = getelementptr inbounds %struct.tiff, ptr %382, i64 0, i32 6
  %383 = load i64, ptr %tif_dir580, align 8
  %and583 = and i64 %383, 8192
  %tobool584.not = icmp eq i64 %and583, 0
  br i1 %tobool584.not, label %if.end586, label %if.then585

if.then585:                                       ; preds = %if.end579
  %384 = load ptr, ptr %fd.addr, align 8
  %385 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %385, i64 0, i32 38
  %386 = load ptr, ptr %td_make, align 8
  %call.i44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.72) #8
  call void @_TIFFprintAscii(ptr noundef %384, ptr noundef %386)
  %387 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %384)
  br label %if.end586

if.end586:                                        ; preds = %if.then585, %if.end579
  %388 = load ptr, ptr %tif.addr, align 8
  %tif_dir587 = getelementptr inbounds %struct.tiff, ptr %388, i64 0, i32 6
  %389 = load i64, ptr %tif_dir587, align 8
  %and590 = and i64 %389, 16384
  %tobool591.not = icmp eq i64 %and590, 0
  br i1 %tobool591.not, label %if.end593, label %if.then592

if.then592:                                       ; preds = %if.end586
  %390 = load ptr, ptr %fd.addr, align 8
  %391 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %391, i64 0, i32 39
  %392 = load ptr, ptr %td_model, align 8
  %call.i49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %390, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.73) #8
  call void @_TIFFprintAscii(ptr noundef %390, ptr noundef %392)
  %393 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %390)
  br label %if.end593

if.end593:                                        ; preds = %if.then592, %if.end586
  %394 = load ptr, ptr %tif.addr, align 8
  %tif_dir594 = getelementptr inbounds %struct.tiff, ptr %394, i64 0, i32 6
  %395 = load i64, ptr %tif_dir594, align 8
  %and597 = and i64 %395, 32768
  %tobool598.not = icmp eq i64 %and597, 0
  br i1 %tobool598.not, label %if.end616, label %if.then599

if.then599:                                       ; preds = %if.end593
  %396 = load ptr, ptr %fd.addr, align 8
  %397 = call i64 @fwrite(ptr nonnull @.str.74, i64 15, i64 1, ptr %396)
  %398 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %398, i64 0, i32 14
  %399 = load i16, ptr %td_orientation, align 4
  %cmp602 = icmp ult i16 %399, 9
  br i1 %cmp602, label %if.then604, label %if.else609

if.then604:                                       ; preds = %if.then599
  %400 = load ptr, ptr %fd.addr, align 8
  %401 = load ptr, ptr %td, align 8
  %td_orientation605 = getelementptr inbounds %struct.TIFFDirectory, ptr %401, i64 0, i32 14
  %402 = load i16, ptr %td_orientation605, align 4
  %idxprom606 = zext i16 %402 to i64
  %arrayidx607 = getelementptr inbounds [9 x ptr], ptr @orientNames, i64 0, i64 %idxprom606
  %403 = load ptr, ptr %arrayidx607, align 8
  %call608 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef nonnull @.str.33, ptr noundef %403) #8
  br label %if.end616

if.else609:                                       ; preds = %if.then599
  %404 = load ptr, ptr %fd.addr, align 8
  %405 = load ptr, ptr %td, align 8
  %td_orientation610 = getelementptr inbounds %struct.TIFFDirectory, ptr %405, i64 0, i32 14
  %406 = load i16, ptr %td_orientation610, align 4
  %conv611 = zext i16 %406 to i32
  %conv613 = zext i16 %406 to i32
  %call614 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %404, ptr noundef nonnull @.str.31, i32 noundef %conv611, i32 noundef %conv613) #8
  br label %if.end616

if.end616:                                        ; preds = %if.then604, %if.else609, %if.end593
  %407 = load ptr, ptr %tif.addr, align 8
  %tif_dir617 = getelementptr inbounds %struct.tiff, ptr %407, i64 0, i32 6
  %408 = load i64, ptr %tif_dir617, align 8
  %and620 = and i64 %408, 65536
  %tobool621.not = icmp eq i64 %and620, 0
  br i1 %tobool621.not, label %if.end626, label %if.then622

if.then622:                                       ; preds = %if.end616
  %409 = load ptr, ptr %fd.addr, align 8
  %410 = load ptr, ptr %td, align 8
  %td_samplesperpixel623 = getelementptr inbounds %struct.TIFFDirectory, ptr %410, i64 0, i32 15
  %411 = load i16, ptr %td_samplesperpixel623, align 2
  %conv624 = zext i16 %411 to i32
  %call625 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %409, ptr noundef nonnull @.str.75, i32 noundef %conv624) #8
  br label %if.end626

if.end626:                                        ; preds = %if.then622, %if.end616
  %412 = load ptr, ptr %tif.addr, align 8
  %tif_dir627 = getelementptr inbounds %struct.tiff, ptr %412, i64 0, i32 6
  %413 = load i64, ptr %tif_dir627, align 8
  %and630 = and i64 %413, 131072
  %tobool631.not = icmp eq i64 %and630, 0
  br i1 %tobool631.not, label %if.end642, label %if.then632

if.then632:                                       ; preds = %if.end626
  %414 = load ptr, ptr %fd.addr, align 8
  %415 = call i64 @fwrite(ptr nonnull @.str.76, i64 14, i64 1, ptr %414)
  %416 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %416, i64 0, i32 16
  %417 = load i64, ptr %td_rowsperstrip, align 8
  %cmp634 = icmp eq i64 %417, -1
  br i1 %cmp634, label %if.then636, label %if.else638

if.then636:                                       ; preds = %if.then632
  %418 = load ptr, ptr %fd.addr, align 8
  %419 = call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr %418)
  br label %if.end642

if.else638:                                       ; preds = %if.then632
  %420 = load ptr, ptr %fd.addr, align 8
  %421 = load ptr, ptr %td, align 8
  %td_rowsperstrip639 = getelementptr inbounds %struct.TIFFDirectory, ptr %421, i64 0, i32 16
  %422 = load i64, ptr %td_rowsperstrip639, align 8
  %call640 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef nonnull @.str.78, i64 noundef %422) #8
  br label %if.end642

if.end642:                                        ; preds = %if.then636, %if.else638, %if.end626
  %423 = load ptr, ptr %tif.addr, align 8
  %tif_dir643 = getelementptr inbounds %struct.tiff, ptr %423, i64 0, i32 6
  %424 = load i64, ptr %tif_dir643, align 8
  %and646 = and i64 %424, 262144
  %tobool647.not = icmp eq i64 %and646, 0
  br i1 %tobool647.not, label %if.end651, label %if.then648

if.then648:                                       ; preds = %if.end642
  %425 = load ptr, ptr %fd.addr, align 8
  %426 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %426, i64 0, i32 17
  %427 = load i16, ptr %td_minsamplevalue, align 8
  %conv649 = zext i16 %427 to i32
  %call650 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %425, ptr noundef nonnull @.str.79, i32 noundef %conv649) #8
  br label %if.end651

if.end651:                                        ; preds = %if.then648, %if.end642
  %428 = load ptr, ptr %tif.addr, align 8
  %tif_dir652 = getelementptr inbounds %struct.tiff, ptr %428, i64 0, i32 6
  %429 = load i64, ptr %tif_dir652, align 8
  %and655 = and i64 %429, 524288
  %tobool656.not = icmp eq i64 %and655, 0
  br i1 %tobool656.not, label %if.end660, label %if.then657

if.then657:                                       ; preds = %if.end651
  %430 = load ptr, ptr %fd.addr, align 8
  %431 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %431, i64 0, i32 18
  %432 = load i16, ptr %td_maxsamplevalue, align 2
  %conv658 = zext i16 %432 to i32
  %call659 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.80, i32 noundef %conv658) #8
  br label %if.end660

if.end660:                                        ; preds = %if.then657, %if.end651
  %433 = load ptr, ptr %tif.addr, align 8
  %arrayidx663 = getelementptr inbounds %struct.tiff, ptr %433, i64 0, i32 6, i32 0, i64 1
  %434 = load i64, ptr %arrayidx663, align 8
  %and664 = and i64 %434, 2
  %tobool665.not = icmp eq i64 %and664, 0
  br i1 %tobool665.not, label %if.end668, label %if.then666

if.then666:                                       ; preds = %if.end660
  %435 = load ptr, ptr %fd.addr, align 8
  %436 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %436, i64 0, i32 19
  %437 = load double, ptr %td_sminsamplevalue, align 8
  %call667 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %435, ptr noundef nonnull @.str.81, double noundef %437) #8
  br label %if.end668

if.end668:                                        ; preds = %if.then666, %if.end660
  %438 = load ptr, ptr %tif.addr, align 8
  %arrayidx671 = getelementptr inbounds %struct.tiff, ptr %438, i64 0, i32 6, i32 0, i64 1
  %439 = load i64, ptr %arrayidx671, align 8
  %and672 = and i64 %439, 4
  %tobool673.not = icmp eq i64 %and672, 0
  br i1 %tobool673.not, label %if.end676, label %if.then674

if.then674:                                       ; preds = %if.end668
  %440 = load ptr, ptr %fd.addr, align 8
  %441 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %441, i64 0, i32 20
  %442 = load double, ptr %td_smaxsamplevalue, align 8
  %call675 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %440, ptr noundef nonnull @.str.82, double noundef %442) #8
  br label %if.end676

if.end676:                                        ; preds = %if.then674, %if.end668
  %443 = load ptr, ptr %tif.addr, align 8
  %tif_dir677 = getelementptr inbounds %struct.tiff, ptr %443, i64 0, i32 6
  %444 = load i64, ptr %tif_dir677, align 8
  %and680 = and i64 %444, 1048576
  %tobool681.not = icmp eq i64 %and680, 0
  br i1 %tobool681.not, label %if.end696, label %if.then682

if.then682:                                       ; preds = %if.end676
  %445 = load ptr, ptr %fd.addr, align 8
  %446 = call i64 @fwrite(ptr nonnull @.str.83, i64 24, i64 1, ptr %445)
  %447 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %447, i64 0, i32 24
  %448 = load i16, ptr %td_planarconfig, align 2
  switch i16 %448, label %sw.default689 [
    i16 1, label %sw.bb685
    i16 2, label %sw.bb687
  ]

sw.bb685:                                         ; preds = %if.then682
  %449 = load ptr, ptr %fd.addr, align 8
  %450 = call i64 @fwrite(ptr nonnull @.str.84, i64 19, i64 1, ptr %449)
  br label %if.end696

sw.bb687:                                         ; preds = %if.then682
  %451 = load ptr, ptr %fd.addr, align 8
  %452 = call i64 @fwrite(ptr nonnull @.str.85, i64 22, i64 1, ptr %451)
  br label %if.end696

sw.default689:                                    ; preds = %if.then682
  %453 = load ptr, ptr %fd.addr, align 8
  %454 = load ptr, ptr %td, align 8
  %td_planarconfig690 = getelementptr inbounds %struct.TIFFDirectory, ptr %454, i64 0, i32 24
  %455 = load i16, ptr %td_planarconfig690, align 2
  %conv691 = zext i16 %455 to i32
  %conv693 = zext i16 %455 to i32
  %call694 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %453, ptr noundef nonnull @.str.31, i32 noundef %conv691, i32 noundef %conv693) #8
  br label %if.end696

if.end696:                                        ; preds = %sw.bb685, %sw.bb687, %sw.default689, %if.end676
  %456 = load ptr, ptr %tif.addr, align 8
  %tif_dir697 = getelementptr inbounds %struct.tiff, ptr %456, i64 0, i32 6
  %457 = load i64, ptr %tif_dir697, align 8
  %and700 = and i64 %457, 2097152
  %tobool701.not = icmp eq i64 %and700, 0
  br i1 %tobool701.not, label %if.end703, label %if.then702

if.then702:                                       ; preds = %if.end696
  %458 = load ptr, ptr %fd.addr, align 8
  %459 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %459, i64 0, i32 41
  %460 = load ptr, ptr %td_pagename, align 8
  %call.i54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %458, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.86) #8
  call void @_TIFFprintAscii(ptr noundef %458, ptr noundef %460)
  %461 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %458)
  br label %if.end703

if.end703:                                        ; preds = %if.then702, %if.end696
  %462 = load ptr, ptr %tif.addr, align 8
  %tif_dir704 = getelementptr inbounds %struct.tiff, ptr %462, i64 0, i32 6
  %463 = load i64, ptr %tif_dir704, align 8
  %and707 = and i64 %463, 8388608
  %tobool708.not = icmp eq i64 %and707, 0
  br i1 %tobool708.not, label %if.end716, label %if.then709

if.then709:                                       ; preds = %if.end703
  %464 = load ptr, ptr %fd.addr, align 8
  %465 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %465, i64 0, i32 27
  %466 = load i16, ptr %td_pagenumber, align 4
  %conv711 = zext i16 %466 to i32
  %arrayidx713 = getelementptr inbounds %struct.TIFFDirectory, ptr %465, i64 0, i32 27, i64 1
  %467 = load i16, ptr %arrayidx713, align 2
  %conv714 = zext i16 %467 to i32
  %call715 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %464, ptr noundef nonnull @.str.87, i32 noundef %conv711, i32 noundef %conv714) #8
  br label %if.end716

if.end716:                                        ; preds = %if.then709, %if.end703
  %468 = load ptr, ptr %tif.addr, align 8
  %tif_dir717 = getelementptr inbounds %struct.tiff, ptr %468, i64 0, i32 6
  %469 = load i64, ptr %tif_dir717, align 8
  %and720 = and i64 %469, 67108864
  %tobool721.not = icmp eq i64 %and720, 0
  br i1 %tobool721.not, label %if.end752, label %if.then722

if.then722:                                       ; preds = %if.end716
  %470 = load ptr, ptr %fd.addr, align 8
  %471 = call i64 @fwrite(ptr nonnull @.str.88, i64 13, i64 1, ptr %470)
  %472 = load i64, ptr %flags.addr, align 8
  %and724 = and i64 %472, 4
  %tobool725.not = icmp eq i64 %and724, 0
  br i1 %tobool725.not, label %if.else749, label %if.then726

if.then726:                                       ; preds = %if.then722
  %473 = load ptr, ptr %fd.addr, align 8
  %fputc60 = call i32 @fputc(i32 10, ptr %473)
  %474 = load ptr, ptr %td, align 8
  %td_bitspersample728 = getelementptr inbounds %struct.TIFFDirectory, ptr %474, i64 0, i32 8
  %475 = load i16, ptr %td_bitspersample728, align 8
  %sh_prom = zext i16 %475 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %n, align 8
  br label %for.cond730

for.cond730:                                      ; preds = %for.body733, %if.then726
  %storemerge61 = phi i64 [ 0, %if.then726 ], [ %inc747, %for.body733 ]
  store i64 %storemerge61, ptr %l, align 8
  %476 = load i64, ptr %n, align 8
  %cmp731 = icmp slt i64 %storemerge61, %476
  br i1 %cmp731, label %for.body733, label %if.end752

for.body733:                                      ; preds = %for.cond730
  %477 = load ptr, ptr %fd.addr, align 8
  %478 = load i64, ptr %l, align 8
  %479 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %479, i64 0, i32 28
  %480 = load ptr, ptr %td_colormap, align 8
  %arrayidx735 = getelementptr inbounds i16, ptr %480, i64 %478
  %481 = load i16, ptr %arrayidx735, align 2
  %conv736 = zext i16 %481 to i32
  %arrayidx738 = getelementptr inbounds %struct.TIFFDirectory, ptr %479, i64 0, i32 28, i64 1
  %482 = load ptr, ptr %arrayidx738, align 8
  %483 = load i64, ptr %l, align 8
  %arrayidx739 = getelementptr inbounds i16, ptr %482, i64 %483
  %484 = load i16, ptr %arrayidx739, align 2
  %conv740 = zext i16 %484 to i32
  %485 = load ptr, ptr %td, align 8
  %arrayidx742 = getelementptr inbounds %struct.TIFFDirectory, ptr %485, i64 0, i32 28, i64 2
  %486 = load ptr, ptr %arrayidx742, align 8
  %487 = load i64, ptr %l, align 8
  %arrayidx743 = getelementptr inbounds i16, ptr %486, i64 %487
  %488 = load i16, ptr %arrayidx743, align 2
  %conv744 = zext i16 %488 to i32
  %call745 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %477, ptr noundef nonnull @.str.89, i64 noundef %478, i32 noundef %conv736, i32 noundef %conv740, i32 noundef %conv744) #8
  %489 = load i64, ptr %l, align 8
  %inc747 = add nsw i64 %489, 1
  br label %for.cond730, !llvm.loop !9

if.else749:                                       ; preds = %if.then722
  %490 = load ptr, ptr %fd.addr, align 8
  %491 = call i64 @fwrite(ptr nonnull @.str.90, i64 10, i64 1, ptr %490)
  br label %if.end752

if.end752:                                        ; preds = %if.else749, %for.cond730, %if.end716
  %492 = load ptr, ptr %tif.addr, align 8
  %arrayidx755 = getelementptr inbounds %struct.tiff, ptr %492, i64 0, i32 6, i32 0, i64 1
  %493 = load i64, ptr %arrayidx755, align 8
  %and756 = and i64 %493, 1024
  %tobool757.not = icmp eq i64 %and756, 0
  br i1 %tobool757.not, label %if.end765, label %if.then758

if.then758:                                       ; preds = %if.end752
  %494 = load ptr, ptr %fd.addr, align 8
  %495 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %495, i64 0, i32 51
  %496 = load ptr, ptr %td_whitepoint, align 8
  %497 = load float, ptr %496, align 4
  %conv760 = fpext float %497 to double
  %arrayidx762 = getelementptr inbounds float, ptr %496, i64 1
  %498 = load float, ptr %arrayidx762, align 4
  %conv763 = fpext float %498 to double
  %call764 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %494, ptr noundef nonnull @.str.91, double noundef %conv760, double noundef %conv763) #8
  br label %if.end765

if.end765:                                        ; preds = %if.then758, %if.end752
  %499 = load ptr, ptr %tif.addr, align 8
  %arrayidx768 = getelementptr inbounds %struct.tiff, ptr %499, i64 0, i32 6, i32 0, i64 1
  %500 = load i64, ptr %arrayidx768, align 8
  %and769 = and i64 %500, 2048
  %tobool770.not = icmp eq i64 %and769, 0
  br i1 %tobool770.not, label %if.end790, label %if.then771

if.then771:                                       ; preds = %if.end765
  %501 = load ptr, ptr %fd.addr, align 8
  %502 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %502, i64 0, i32 52
  %503 = load ptr, ptr %td_primarychromas, align 8
  %504 = load float, ptr %503, align 4
  %conv773 = fpext float %504 to double
  %arrayidx775 = getelementptr inbounds float, ptr %503, i64 1
  %505 = load float, ptr %arrayidx775, align 4
  %conv776 = fpext float %505 to double
  %506 = load ptr, ptr %td, align 8
  %td_primarychromas777 = getelementptr inbounds %struct.TIFFDirectory, ptr %506, i64 0, i32 52
  %507 = load ptr, ptr %td_primarychromas777, align 8
  %arrayidx778 = getelementptr inbounds float, ptr %507, i64 2
  %508 = load float, ptr %arrayidx778, align 4
  %conv779 = fpext float %508 to double
  %arrayidx781 = getelementptr inbounds float, ptr %507, i64 3
  %509 = load float, ptr %arrayidx781, align 4
  %conv782 = fpext float %509 to double
  %510 = load ptr, ptr %td, align 8
  %td_primarychromas783 = getelementptr inbounds %struct.TIFFDirectory, ptr %510, i64 0, i32 52
  %511 = load ptr, ptr %td_primarychromas783, align 8
  %arrayidx784 = getelementptr inbounds float, ptr %511, i64 4
  %512 = load float, ptr %arrayidx784, align 4
  %conv785 = fpext float %512 to double
  %arrayidx787 = getelementptr inbounds float, ptr %511, i64 5
  %513 = load float, ptr %arrayidx787, align 4
  %conv788 = fpext float %513 to double
  %call789 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %501, ptr noundef nonnull @.str.92, double noundef %conv773, double noundef %conv776, double noundef %conv779, double noundef %conv782, double noundef %conv785, double noundef %conv788) #8
  br label %if.end790

if.end790:                                        ; preds = %if.then771, %if.end765
  %514 = load ptr, ptr %tif.addr, align 8
  %arrayidx793 = getelementptr inbounds %struct.tiff, ptr %514, i64 0, i32 6, i32 0, i64 1
  %515 = load i64, ptr %arrayidx793, align 8
  %and794 = and i64 %515, 512
  %tobool795.not = icmp eq i64 %and794, 0
  br i1 %tobool795.not, label %if.end821, label %if.then796

if.then796:                                       ; preds = %if.end790
  %516 = load ptr, ptr %fd.addr, align 8
  %517 = call i64 @fwrite(ptr nonnull @.str.93, i64 25, i64 1, ptr %516)
  br label %for.cond798

for.cond798:                                      ; preds = %for.body804, %if.then796
  %storemerge59 = phi i16 [ 0, %if.then796 ], [ %inc819, %for.body804 ]
  store i16 %storemerge59, ptr %i, align 2
  %518 = load ptr, ptr %td, align 8
  %td_samplesperpixel800 = getelementptr inbounds %struct.TIFFDirectory, ptr %518, i64 0, i32 15
  %519 = load i16, ptr %td_samplesperpixel800, align 2
  %cmp802 = icmp ult i16 %storemerge59, %519
  br i1 %cmp802, label %for.body804, label %if.end821

for.body804:                                      ; preds = %for.cond798
  %520 = load ptr, ptr %fd.addr, align 8
  %521 = load i16, ptr %i, align 2
  %conv805 = zext i16 %521 to i32
  %522 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %522, i64 0, i32 53
  %523 = load ptr, ptr %td_refblackwhite, align 8
  %conv806 = zext i16 %521 to i64
  %mul = shl nuw nsw i64 %conv806, 1
  %arrayidx808 = getelementptr inbounds float, ptr %523, i64 %mul
  %524 = load float, ptr %arrayidx808, align 4
  %conv809 = fpext float %524 to double
  %525 = load ptr, ptr %td, align 8
  %td_refblackwhite810 = getelementptr inbounds %struct.TIFFDirectory, ptr %525, i64 0, i32 53
  %526 = load ptr, ptr %td_refblackwhite810, align 8
  %527 = load i16, ptr %i, align 2
  %conv811 = zext i16 %527 to i64
  %mul812 = shl nuw nsw i64 %conv811, 1
  %add813 = or i64 %mul812, 1
  %arrayidx815 = getelementptr inbounds float, ptr %526, i64 %add813
  %528 = load float, ptr %arrayidx815, align 4
  %conv816 = fpext float %528 to double
  %call817 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %520, ptr noundef nonnull @.str.94, i32 noundef %conv805, double noundef %conv809, double noundef %conv816) #8
  %529 = load i16, ptr %i, align 2
  %inc819 = add i16 %529, 1
  br label %for.cond798, !llvm.loop !10

if.end821:                                        ; preds = %for.cond798, %if.end790
  %530 = load ptr, ptr %tif.addr, align 8
  %arrayidx824 = getelementptr inbounds %struct.tiff, ptr %530, i64 0, i32 6, i32 0, i64 1
  %531 = load i64, ptr %arrayidx824, align 8
  %and825 = and i64 %531, 4096
  %tobool826.not = icmp eq i64 %and825, 0
  br i1 %tobool826.not, label %if.end868, label %if.then827

if.then827:                                       ; preds = %if.end821
  %532 = load ptr, ptr %fd.addr, align 8
  %533 = call i64 @fwrite(ptr nonnull @.str.95, i64 21, i64 1, ptr %532)
  %534 = load i64, ptr %flags.addr, align 8
  %and829 = and i64 %534, 2
  %tobool830.not = icmp eq i64 %and829, 0
  br i1 %tobool830.not, label %if.else865, label %if.then831

if.then831:                                       ; preds = %if.then827
  %535 = load ptr, ptr %fd.addr, align 8
  %fputc = call i32 @fputc(i32 10, ptr %535)
  %536 = load ptr, ptr %td, align 8
  %td_bitspersample833 = getelementptr inbounds %struct.TIFFDirectory, ptr %536, i64 0, i32 8
  %537 = load i16, ptr %td_bitspersample833, align 8
  %sh_prom835 = zext i16 %537 to i64
  %shl836 = shl i64 1, %sh_prom835
  store i64 %shl836, ptr %n, align 8
  br label %for.cond837

for.cond837:                                      ; preds = %for.end860, %if.then831
  %storemerge57 = phi i64 [ 0, %if.then831 ], [ %inc863, %for.end860 ]
  store i64 %storemerge57, ptr %l, align 8
  %538 = load i64, ptr %n, align 8
  %cmp838 = icmp slt i64 %storemerge57, %538
  br i1 %cmp838, label %for.body840, label %if.end868

for.body840:                                      ; preds = %for.cond837
  %539 = load ptr, ptr %fd.addr, align 8
  %540 = load i64, ptr %l, align 8
  %541 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %541, i64 0, i32 54
  %542 = load ptr, ptr %td_transferfunction, align 8
  %arrayidx842 = getelementptr inbounds i16, ptr %542, i64 %540
  %543 = load i16, ptr %arrayidx842, align 2
  %conv843 = zext i16 %543 to i32
  %call844 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %539, ptr noundef nonnull @.str.96, i64 noundef %540, i32 noundef %conv843) #8
  br label %for.cond845

for.cond845:                                      ; preds = %for.body851, %for.body840
  %storemerge58 = phi i16 [ 1, %for.body840 ], [ %inc859, %for.body851 ]
  store i16 %storemerge58, ptr %i, align 2
  %544 = load ptr, ptr %td, align 8
  %td_samplesperpixel847 = getelementptr inbounds %struct.TIFFDirectory, ptr %544, i64 0, i32 15
  %545 = load i16, ptr %td_samplesperpixel847, align 2
  %cmp849 = icmp ult i16 %storemerge58, %545
  br i1 %cmp849, label %for.body851, label %for.end860

for.body851:                                      ; preds = %for.cond845
  %546 = load ptr, ptr %fd.addr, align 8
  %547 = load ptr, ptr %td, align 8
  %548 = load i16, ptr %i, align 2
  %idxprom853 = zext i16 %548 to i64
  %arrayidx854 = getelementptr inbounds %struct.TIFFDirectory, ptr %547, i64 0, i32 54, i64 %idxprom853
  %549 = load ptr, ptr %arrayidx854, align 8
  %550 = load i64, ptr %l, align 8
  %arrayidx855 = getelementptr inbounds i16, ptr %549, i64 %550
  %551 = load i16, ptr %arrayidx855, align 2
  %conv856 = zext i16 %551 to i32
  %call857 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %546, ptr noundef nonnull @.str.97, i32 noundef %conv856) #8
  %552 = load i16, ptr %i, align 2
  %inc859 = add i16 %552, 1
  br label %for.cond845, !llvm.loop !11

for.end860:                                       ; preds = %for.cond845
  %553 = load ptr, ptr %fd.addr, align 8
  %call861 = call i32 @fputc(i32 noundef 10, ptr noundef %553)
  %554 = load i64, ptr %l, align 8
  %inc863 = add nsw i64 %554, 1
  br label %for.cond837, !llvm.loop !12

if.else865:                                       ; preds = %if.then827
  %555 = load ptr, ptr %fd.addr, align 8
  %556 = call i64 @fwrite(ptr nonnull @.str.90, i64 10, i64 1, ptr %555)
  br label %if.end868

if.end868:                                        ; preds = %if.else865, %for.cond837, %if.end821
  %557 = load ptr, ptr %tif.addr, align 8
  %arrayidx871 = getelementptr inbounds %struct.tiff, ptr %557, i64 0, i32 6, i32 0, i64 1
  %558 = load i64, ptr %arrayidx871, align 8
  %and872 = and i64 %558, 524288
  %tobool873.not = icmp eq i64 %and872, 0
  br i1 %tobool873.not, label %if.end876, label %if.then874

if.then874:                                       ; preds = %if.end868
  %559 = load ptr, ptr %fd.addr, align 8
  %560 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %560, i64 0, i32 61
  %561 = load i64, ptr %td_profileLength, align 8
  %call875 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %559, ptr noundef nonnull @.str.98, i64 noundef %561) #8
  br label %if.end876

if.end876:                                        ; preds = %if.then874, %if.end868
  %562 = load ptr, ptr %tif.addr, align 8
  %arrayidx879 = getelementptr inbounds %struct.tiff, ptr %562, i64 0, i32 6, i32 0, i64 1
  %563 = load i64, ptr %arrayidx879, align 8
  %and880 = and i64 %563, 1048576
  %tobool881.not = icmp eq i64 %and880, 0
  br i1 %tobool881.not, label %if.end884, label %if.then882

if.then882:                                       ; preds = %if.end876
  %564 = load ptr, ptr %fd.addr, align 8
  %565 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %565, i64 0, i32 63
  %566 = load i64, ptr %td_photoshopLength, align 8
  %call883 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %564, ptr noundef nonnull @.str.99, i64 noundef %566) #8
  br label %if.end884

if.end884:                                        ; preds = %if.then882, %if.end876
  %567 = load ptr, ptr %tif.addr, align 8
  %arrayidx887 = getelementptr inbounds %struct.tiff, ptr %567, i64 0, i32 6, i32 0, i64 1
  %568 = load i64, ptr %arrayidx887, align 8
  %and888 = and i64 %568, 2097152
  %tobool889.not = icmp eq i64 %and888, 0
  br i1 %tobool889.not, label %if.end892, label %if.then890

if.then890:                                       ; preds = %if.end884
  %569 = load ptr, ptr %fd.addr, align 8
  %570 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %570, i64 0, i32 65
  %571 = load i64, ptr %td_richtiffiptcLength, align 8
  %call891 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %569, ptr noundef nonnull @.str.100, i64 noundef %571) #8
  br label %if.end892

if.end892:                                        ; preds = %if.then890, %if.end884
  %572 = load ptr, ptr %tif.addr, align 8
  %arrayidx895 = getelementptr inbounds %struct.tiff, ptr %572, i64 0, i32 6, i32 0, i64 1
  %573 = load i64, ptr %arrayidx895, align 8
  %and896 = and i64 %573, 131072
  %tobool897.not = icmp eq i64 %and896, 0
  br i1 %tobool897.not, label %if.end913, label %if.then898

if.then898:                                       ; preds = %if.end892
  %574 = load ptr, ptr %fd.addr, align 8
  %575 = call i64 @fwrite(ptr nonnull @.str.101, i64 17, i64 1, ptr %574)
  br label %for.cond900

for.cond900:                                      ; preds = %for.body905, %if.then898
  %storemerge56 = phi i16 [ 0, %if.then898 ], [ %inc910, %for.body905 ]
  store i16 %storemerge56, ptr %i, align 2
  %576 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %576, i64 0, i32 46
  %577 = load i16, ptr %td_nsubifd, align 8
  %cmp903 = icmp ult i16 %storemerge56, %577
  br i1 %cmp903, label %for.body905, label %for.end911

for.body905:                                      ; preds = %for.cond900
  %578 = load ptr, ptr %fd.addr, align 8
  %579 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %579, i64 0, i32 47
  %580 = load ptr, ptr %td_subifd, align 8
  %581 = load i16, ptr %i, align 2
  %idxprom906 = zext i16 %581 to i64
  %arrayidx907 = getelementptr inbounds i64, ptr %580, i64 %idxprom906
  %582 = load i64, ptr %arrayidx907, align 8
  %call908 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %578, ptr noundef nonnull @.str.102, i64 noundef %582) #8
  %583 = load i16, ptr %i, align 2
  %inc910 = add i16 %583, 1
  br label %for.cond900, !llvm.loop !13

for.end911:                                       ; preds = %for.cond900
  %584 = load ptr, ptr %fd.addr, align 8
  %call912 = call i32 @fputc(i32 noundef 10, ptr noundef %584) #8
  br label %if.end913

if.end913:                                        ; preds = %for.end911, %if.end892
  %585 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %585, i64 0, i32 59
  %586 = load ptr, ptr %tif_printdir, align 8
  %tobool914.not = icmp eq ptr %586, null
  br i1 %tobool914.not, label %if.end917, label %if.then915

if.then915:                                       ; preds = %if.end913
  %587 = load ptr, ptr %tif.addr, align 8
  %tif_printdir916 = getelementptr inbounds %struct.tiff, ptr %587, i64 0, i32 59
  %588 = load ptr, ptr %tif_printdir916, align 8
  %589 = load ptr, ptr %fd.addr, align 8
  %590 = load i64, ptr %flags.addr, align 8
  call void %588(ptr noundef %587, ptr noundef %589, i64 noundef %590) #8
  br label %if.end917

if.end917:                                        ; preds = %if.then915, %if.end913
  %591 = load i64, ptr %flags.addr, align 8
  %and918 = and i64 %591, 1
  %tobool919.not = icmp eq i64 %and918, 0
  br i1 %tobool919.not, label %if.end942, label %land.lhs.true920

land.lhs.true920:                                 ; preds = %if.end917
  %592 = load ptr, ptr %tif.addr, align 8
  %tif_dir921 = getelementptr inbounds %struct.tiff, ptr %592, i64 0, i32 6
  %593 = load i64, ptr %tif_dir921, align 8
  %and924 = and i64 %593, 33554432
  %tobool925.not = icmp eq i64 %and924, 0
  br i1 %tobool925.not, label %if.end942, label %if.then926

if.then926:                                       ; preds = %land.lhs.true920
  %594 = load ptr, ptr %fd.addr, align 8
  %595 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %595, i64 0, i32 43
  %596 = load i64, ptr %td_nstrips, align 8
  %597 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %597, i64 0, i32 3
  %598 = load i64, ptr %tif_flags, align 8
  %and927 = and i64 %598, 1024
  %cmp928.not = icmp eq i64 %and927, 0
  %cond = select i1 %cmp928.not, ptr @.str.105, ptr @.str.104
  %call930 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %594, ptr noundef nonnull @.str.103, i64 noundef %596, ptr noundef nonnull %cond) #8
  br label %for.cond931

for.cond931:                                      ; preds = %for.body935, %if.then926
  %storemerge = phi i64 [ 0, %if.then926 ], [ %inc940, %for.body935 ]
  store i64 %storemerge, ptr %s, align 8
  %599 = load ptr, ptr %td, align 8
  %td_nstrips932 = getelementptr inbounds %struct.TIFFDirectory, ptr %599, i64 0, i32 43
  %600 = load i64, ptr %td_nstrips932, align 8
  %cmp933 = icmp ult i64 %storemerge, %600
  br i1 %cmp933, label %for.body935, label %if.end942

for.body935:                                      ; preds = %for.cond931
  %601 = load ptr, ptr %fd.addr, align 8
  %602 = load i64, ptr %s, align 8
  %603 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %603, i64 0, i32 44
  %604 = load ptr, ptr %td_stripoffset, align 8
  %arrayidx936 = getelementptr inbounds i64, ptr %604, i64 %602
  %605 = load i64, ptr %arrayidx936, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %603, i64 0, i32 45
  %606 = load ptr, ptr %td_stripbytecount, align 8
  %607 = load i64, ptr %s, align 8
  %arrayidx937 = getelementptr inbounds i64, ptr %606, i64 %607
  %608 = load i64, ptr %arrayidx937, align 8
  %call938 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %601, ptr noundef nonnull @.str.106, i64 noundef %602, i64 noundef %605, i64 noundef %608) #8
  %609 = load i64, ptr %s, align 8
  %inc940 = add i64 %609, 1
  br label %for.cond931, !llvm.loop !14

if.end942:                                        ; preds = %for.cond931, %land.lhs.true920, %if.end917
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFprintAsciiTag(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

declare ptr @TIFFFindCODEC(i16 noundef zeroext) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %cp) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %storemerge = phi ptr [ %cp, %entry ], [ %incdec.ptr23, %for.inc22 ]
  store ptr %storemerge, ptr %cp.addr, align 8
  %0 = load i8, ptr %storemerge, align 1
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.end24, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cp.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv2 = sext i8 %2 to i32
  %call = call i32 @isprint(i32 noundef %conv2) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond5, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %cp.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load ptr, ptr %fd.addr, align 8
  %call4 = call i32 @fputc(i32 noundef %conv3, ptr noundef %5)
  br label %for.inc22

for.cond5:                                        ; preds = %for.body, %for.inc
  %storemerge1 = phi ptr [ %incdec.ptr14, %for.inc ], [ @.str.107, %for.body ]
  store ptr %storemerge1, ptr %tp, align 8
  %6 = load i8, ptr %storemerge1, align 1
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %for.end, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %7 = load ptr, ptr %tp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %tp, align 8
  %8 = load i8, ptr %7, align 1
  %9 = load ptr, ptr %cp.addr, align 8
  %10 = load i8, ptr %9, align 1
  %cmp10 = icmp eq i8 %8, %10
  br i1 %cmp10, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body7
  %11 = load ptr, ptr %tp, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %11, i64 1
  br label %for.cond5, !llvm.loop !15

for.end:                                          ; preds = %for.body7, %for.cond5
  %12 = load ptr, ptr %tp, align 8
  %13 = load i8, ptr %12, align 1
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.end
  %14 = load ptr, ptr %fd.addr, align 8
  %15 = load ptr, ptr %tp, align 8
  %16 = load i8, ptr %15, align 1
  %conv17 = sext i8 %16 to i32
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.108, i32 noundef %conv17) #8
  br label %for.inc22

if.else:                                          ; preds = %for.end
  %17 = load ptr, ptr %fd.addr, align 8
  %18 = load ptr, ptr %cp.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv192 = zext i8 %19 to i32
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.109, i32 noundef %conv192) #8
  br label %for.inc22

for.inc22:                                        ; preds = %if.then16, %if.else, %if.then
  %20 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %20, i64 1
  br label %for.cond, !llvm.loop !16

for.end24:                                        ; preds = %for.cond
  ret void
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @isprint(i32 noundef) #3

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_0(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_1(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_2(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_3(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_4(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_5(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_6(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_7(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_8(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_9(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_10(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_11(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #4 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #8
  call void @_TIFFprintAscii(ptr noundef %fd, ptr noundef %value)
  %0 = call i64 @fwrite(ptr nonnull @.str.111, i64 2, i64 1, ptr %fd)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
