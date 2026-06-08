; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_print.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/tif_print.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i64, i64, i64, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i64, i16, i64, i64, i64, i16, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i64, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i64 }
%struct.TIFFCodec = type { ptr, i16, ptr }

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
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %tif_diroff, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef %2)
  %3 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %3, i32 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %4 = load ptr, ptr %tif.addr, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %4, i32 0, i32 6
  %td_fieldsset = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %td_fieldsset, i64 0, i64 0
  %5 = load i64, ptr %arrayidx, align 8
  %and = and i64 %5, 32
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %fd.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1)
  store ptr @.str.2, ptr %sep, align 8
  %7 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 7
  %8 = load i64, ptr %td_subfiletype, align 8
  %and3 = and i64 %8, 1
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %fd.addr, align 8
  %10 = load ptr, ptr %sep, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.3, ptr noundef %10)
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %11 = load ptr, ptr %td, align 8
  %td_subfiletype7 = getelementptr inbounds %struct.TIFFDirectory, ptr %11, i32 0, i32 7
  %12 = load i64, ptr %td_subfiletype7, align 8
  %and8 = and i64 %12, 2
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %fd.addr, align 8
  %14 = load ptr, ptr %sep, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.5, ptr noundef %14)
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %15 = load ptr, ptr %td, align 8
  %td_subfiletype13 = getelementptr inbounds %struct.TIFFDirectory, ptr %15, i32 0, i32 7
  %16 = load i64, ptr %td_subfiletype13, align 8
  %and14 = and i64 %16, 4
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %17 = load ptr, ptr %fd.addr, align 8
  %18 = load ptr, ptr %sep, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.6, ptr noundef %18)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12
  %19 = load ptr, ptr %fd.addr, align 8
  %20 = load ptr, ptr %td, align 8
  %td_subfiletype19 = getelementptr inbounds %struct.TIFFDirectory, ptr %20, i32 0, i32 7
  %21 = load i64, ptr %td_subfiletype19, align 8
  %22 = load ptr, ptr %td, align 8
  %td_subfiletype20 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 7
  %23 = load i64, ptr %td_subfiletype20, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.7, i64 noundef %21, i64 noundef %23)
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %entry
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_dir23 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 6
  %td_fieldsset24 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i64], ptr %td_fieldsset24, i64 0, i64 0
  %25 = load i64, ptr %arrayidx25, align 8
  %and26 = and i64 %25, 2
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %if.end22
  %26 = load ptr, ptr %fd.addr, align 8
  %27 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %td_imagewidth, align 8
  %29 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 2
  %30 = load i64, ptr %td_imagelength, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.8, i64 noundef %28, i64 noundef %30)
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_dir30 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 6
  %td_fieldsset31 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x i64], ptr %td_fieldsset31, i64 0, i64 1
  %32 = load i64, ptr %arrayidx32, align 8
  %and33 = and i64 %32, 8
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then28
  %33 = load ptr, ptr %fd.addr, align 8
  %34 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 3
  %35 = load i64, ptr %td_imagedepth, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.9, i64 noundef %35)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then28
  %36 = load ptr, ptr %fd.addr, align 8
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.10)
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end22
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_dir40 = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 6
  %td_fieldsset41 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x i64], ptr %td_fieldsset41, i64 0, i64 1
  %38 = load i64, ptr %arrayidx42, align 8
  %and43 = and i64 %38, 8388608
  %tobool44 = icmp ne i64 %and43, 0
  br i1 %tobool44, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_dir45 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 6
  %td_fieldsset46 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x i64], ptr %td_fieldsset46, i64 0, i64 1
  %40 = load i64, ptr %arrayidx47, align 8
  %and48 = and i64 %40, 16777216
  %tobool49 = icmp ne i64 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %lor.lhs.false, %if.end39
  %41 = load ptr, ptr %fd.addr, align 8
  %42 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 67
  %43 = load i64, ptr %td_imagefullwidth, align 8
  %44 = load ptr, ptr %td, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %44, i32 0, i32 68
  %45 = load i64, ptr %td_imagefulllength, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.11, i64 noundef %43, i64 noundef %45)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %lor.lhs.false
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_dir53 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 6
  %td_fieldsset54 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i64], ptr %td_fieldsset54, i64 0, i64 1
  %47 = load i64, ptr %arrayidx55, align 8
  %and56 = and i64 %47, 33554432
  %tobool57 = icmp ne i64 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end52
  %48 = load ptr, ptr %fd.addr, align 8
  %49 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i32 0, i32 69
  %50 = load ptr, ptr %td_textureformat, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_0(ptr noundef %48, ptr noundef @.str.12, ptr noundef %50)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end52
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_dir60 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 6
  %td_fieldsset61 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x i64], ptr %td_fieldsset61, i64 0, i64 1
  %52 = load i64, ptr %arrayidx62, align 8
  %and63 = and i64 %52, 67108864
  %tobool64 = icmp ne i64 %and63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end59
  %53 = load ptr, ptr %fd.addr, align 8
  %54 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i32 0, i32 70
  %55 = load ptr, ptr %td_wrapmodes, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_1(ptr noundef %53, ptr noundef @.str.13, ptr noundef %55)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end59
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_dir67 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 6
  %td_fieldsset68 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x i64], ptr %td_fieldsset68, i64 0, i64 1
  %57 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %57, 134217728
  %tobool71 = icmp ne i64 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end66
  %58 = load ptr, ptr %fd.addr, align 8
  %59 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 71
  %60 = load float, ptr %td_fovcot, align 8
  %conv = fpext float %60 to double
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.14, double noundef %conv)
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end66
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_dir75 = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 6
  %td_fieldsset76 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i64], ptr %td_fieldsset76, i64 0, i64 1
  %62 = load i64, ptr %arrayidx77, align 8
  %and78 = and i64 %62, 268435456
  %tobool79 = icmp ne i64 %and78, 0
  br i1 %tobool79, label %if.then80, label %if.end130

if.then80:                                        ; preds = %if.end74
  %63 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i32 0, i32 72
  %64 = load ptr, ptr %td_matrixWorldToScreen, align 8
  store ptr %64, ptr %m, align 8
  %65 = load ptr, ptr %fd.addr, align 8
  %66 = load ptr, ptr %m, align 8
  %arrayidx81 = getelementptr inbounds [4 x [4 x float]], ptr %66, i64 0, i64 0
  %arrayidx82 = getelementptr inbounds [4 x float], ptr %arrayidx81, i64 0, i64 0
  %67 = load float, ptr %arrayidx82, align 4
  %conv83 = fpext float %67 to double
  %68 = load ptr, ptr %m, align 8
  %arrayidx84 = getelementptr inbounds [4 x [4 x float]], ptr %68, i64 0, i64 0
  %arrayidx85 = getelementptr inbounds [4 x float], ptr %arrayidx84, i64 0, i64 1
  %69 = load float, ptr %arrayidx85, align 4
  %conv86 = fpext float %69 to double
  %70 = load ptr, ptr %m, align 8
  %arrayidx87 = getelementptr inbounds [4 x [4 x float]], ptr %70, i64 0, i64 0
  %arrayidx88 = getelementptr inbounds [4 x float], ptr %arrayidx87, i64 0, i64 2
  %71 = load float, ptr %arrayidx88, align 4
  %conv89 = fpext float %71 to double
  %72 = load ptr, ptr %m, align 8
  %arrayidx90 = getelementptr inbounds [4 x [4 x float]], ptr %72, i64 0, i64 0
  %arrayidx91 = getelementptr inbounds [4 x float], ptr %arrayidx90, i64 0, i64 3
  %73 = load float, ptr %arrayidx91, align 4
  %conv92 = fpext float %73 to double
  %74 = load ptr, ptr %m, align 8
  %arrayidx93 = getelementptr inbounds [4 x [4 x float]], ptr %74, i64 0, i64 1
  %arrayidx94 = getelementptr inbounds [4 x float], ptr %arrayidx93, i64 0, i64 0
  %75 = load float, ptr %arrayidx94, align 4
  %conv95 = fpext float %75 to double
  %76 = load ptr, ptr %m, align 8
  %arrayidx96 = getelementptr inbounds [4 x [4 x float]], ptr %76, i64 0, i64 1
  %arrayidx97 = getelementptr inbounds [4 x float], ptr %arrayidx96, i64 0, i64 1
  %77 = load float, ptr %arrayidx97, align 4
  %conv98 = fpext float %77 to double
  %78 = load ptr, ptr %m, align 8
  %arrayidx99 = getelementptr inbounds [4 x [4 x float]], ptr %78, i64 0, i64 1
  %arrayidx100 = getelementptr inbounds [4 x float], ptr %arrayidx99, i64 0, i64 2
  %79 = load float, ptr %arrayidx100, align 4
  %conv101 = fpext float %79 to double
  %80 = load ptr, ptr %m, align 8
  %arrayidx102 = getelementptr inbounds [4 x [4 x float]], ptr %80, i64 0, i64 1
  %arrayidx103 = getelementptr inbounds [4 x float], ptr %arrayidx102, i64 0, i64 3
  %81 = load float, ptr %arrayidx103, align 4
  %conv104 = fpext float %81 to double
  %82 = load ptr, ptr %m, align 8
  %arrayidx105 = getelementptr inbounds [4 x [4 x float]], ptr %82, i64 0, i64 2
  %arrayidx106 = getelementptr inbounds [4 x float], ptr %arrayidx105, i64 0, i64 0
  %83 = load float, ptr %arrayidx106, align 4
  %conv107 = fpext float %83 to double
  %84 = load ptr, ptr %m, align 8
  %arrayidx108 = getelementptr inbounds [4 x [4 x float]], ptr %84, i64 0, i64 2
  %arrayidx109 = getelementptr inbounds [4 x float], ptr %arrayidx108, i64 0, i64 1
  %85 = load float, ptr %arrayidx109, align 4
  %conv110 = fpext float %85 to double
  %86 = load ptr, ptr %m, align 8
  %arrayidx111 = getelementptr inbounds [4 x [4 x float]], ptr %86, i64 0, i64 2
  %arrayidx112 = getelementptr inbounds [4 x float], ptr %arrayidx111, i64 0, i64 2
  %87 = load float, ptr %arrayidx112, align 4
  %conv113 = fpext float %87 to double
  %88 = load ptr, ptr %m, align 8
  %arrayidx114 = getelementptr inbounds [4 x [4 x float]], ptr %88, i64 0, i64 2
  %arrayidx115 = getelementptr inbounds [4 x float], ptr %arrayidx114, i64 0, i64 3
  %89 = load float, ptr %arrayidx115, align 4
  %conv116 = fpext float %89 to double
  %90 = load ptr, ptr %m, align 8
  %arrayidx117 = getelementptr inbounds [4 x [4 x float]], ptr %90, i64 0, i64 3
  %arrayidx118 = getelementptr inbounds [4 x float], ptr %arrayidx117, i64 0, i64 0
  %91 = load float, ptr %arrayidx118, align 4
  %conv119 = fpext float %91 to double
  %92 = load ptr, ptr %m, align 8
  %arrayidx120 = getelementptr inbounds [4 x [4 x float]], ptr %92, i64 0, i64 3
  %arrayidx121 = getelementptr inbounds [4 x float], ptr %arrayidx120, i64 0, i64 1
  %93 = load float, ptr %arrayidx121, align 4
  %conv122 = fpext float %93 to double
  %94 = load ptr, ptr %m, align 8
  %arrayidx123 = getelementptr inbounds [4 x [4 x float]], ptr %94, i64 0, i64 3
  %arrayidx124 = getelementptr inbounds [4 x float], ptr %arrayidx123, i64 0, i64 2
  %95 = load float, ptr %arrayidx124, align 4
  %conv125 = fpext float %95 to double
  %96 = load ptr, ptr %m, align 8
  %arrayidx126 = getelementptr inbounds [4 x [4 x float]], ptr %96, i64 0, i64 3
  %arrayidx127 = getelementptr inbounds [4 x float], ptr %arrayidx126, i64 0, i64 3
  %97 = load float, ptr %arrayidx127, align 4
  %conv128 = fpext float %97 to double
  %call129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.15, double noundef %conv83, double noundef %conv86, double noundef %conv89, double noundef %conv92, double noundef %conv95, double noundef %conv98, double noundef %conv101, double noundef %conv104, double noundef %conv107, double noundef %conv110, double noundef %conv113, double noundef %conv116, double noundef %conv119, double noundef %conv122, double noundef %conv125, double noundef %conv128)
  br label %if.end130

if.end130:                                        ; preds = %if.then80, %if.end74
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_dir131 = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 6
  %td_fieldsset132 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [3 x i64], ptr %td_fieldsset132, i64 0, i64 1
  %99 = load i64, ptr %arrayidx133, align 8
  %and134 = and i64 %99, 536870912
  %tobool135 = icmp ne i64 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end187

if.then136:                                       ; preds = %if.end130
  %100 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %100, i32 0, i32 73
  %101 = load ptr, ptr %td_matrixWorldToCamera, align 8
  store ptr %101, ptr %m137, align 8
  %102 = load ptr, ptr %fd.addr, align 8
  %103 = load ptr, ptr %m137, align 8
  %arrayidx138 = getelementptr inbounds [4 x [4 x float]], ptr %103, i64 0, i64 0
  %arrayidx139 = getelementptr inbounds [4 x float], ptr %arrayidx138, i64 0, i64 0
  %104 = load float, ptr %arrayidx139, align 4
  %conv140 = fpext float %104 to double
  %105 = load ptr, ptr %m137, align 8
  %arrayidx141 = getelementptr inbounds [4 x [4 x float]], ptr %105, i64 0, i64 0
  %arrayidx142 = getelementptr inbounds [4 x float], ptr %arrayidx141, i64 0, i64 1
  %106 = load float, ptr %arrayidx142, align 4
  %conv143 = fpext float %106 to double
  %107 = load ptr, ptr %m137, align 8
  %arrayidx144 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 0
  %arrayidx145 = getelementptr inbounds [4 x float], ptr %arrayidx144, i64 0, i64 2
  %108 = load float, ptr %arrayidx145, align 4
  %conv146 = fpext float %108 to double
  %109 = load ptr, ptr %m137, align 8
  %arrayidx147 = getelementptr inbounds [4 x [4 x float]], ptr %109, i64 0, i64 0
  %arrayidx148 = getelementptr inbounds [4 x float], ptr %arrayidx147, i64 0, i64 3
  %110 = load float, ptr %arrayidx148, align 4
  %conv149 = fpext float %110 to double
  %111 = load ptr, ptr %m137, align 8
  %arrayidx150 = getelementptr inbounds [4 x [4 x float]], ptr %111, i64 0, i64 1
  %arrayidx151 = getelementptr inbounds [4 x float], ptr %arrayidx150, i64 0, i64 0
  %112 = load float, ptr %arrayidx151, align 4
  %conv152 = fpext float %112 to double
  %113 = load ptr, ptr %m137, align 8
  %arrayidx153 = getelementptr inbounds [4 x [4 x float]], ptr %113, i64 0, i64 1
  %arrayidx154 = getelementptr inbounds [4 x float], ptr %arrayidx153, i64 0, i64 1
  %114 = load float, ptr %arrayidx154, align 4
  %conv155 = fpext float %114 to double
  %115 = load ptr, ptr %m137, align 8
  %arrayidx156 = getelementptr inbounds [4 x [4 x float]], ptr %115, i64 0, i64 1
  %arrayidx157 = getelementptr inbounds [4 x float], ptr %arrayidx156, i64 0, i64 2
  %116 = load float, ptr %arrayidx157, align 4
  %conv158 = fpext float %116 to double
  %117 = load ptr, ptr %m137, align 8
  %arrayidx159 = getelementptr inbounds [4 x [4 x float]], ptr %117, i64 0, i64 1
  %arrayidx160 = getelementptr inbounds [4 x float], ptr %arrayidx159, i64 0, i64 3
  %118 = load float, ptr %arrayidx160, align 4
  %conv161 = fpext float %118 to double
  %119 = load ptr, ptr %m137, align 8
  %arrayidx162 = getelementptr inbounds [4 x [4 x float]], ptr %119, i64 0, i64 2
  %arrayidx163 = getelementptr inbounds [4 x float], ptr %arrayidx162, i64 0, i64 0
  %120 = load float, ptr %arrayidx163, align 4
  %conv164 = fpext float %120 to double
  %121 = load ptr, ptr %m137, align 8
  %arrayidx165 = getelementptr inbounds [4 x [4 x float]], ptr %121, i64 0, i64 2
  %arrayidx166 = getelementptr inbounds [4 x float], ptr %arrayidx165, i64 0, i64 1
  %122 = load float, ptr %arrayidx166, align 4
  %conv167 = fpext float %122 to double
  %123 = load ptr, ptr %m137, align 8
  %arrayidx168 = getelementptr inbounds [4 x [4 x float]], ptr %123, i64 0, i64 2
  %arrayidx169 = getelementptr inbounds [4 x float], ptr %arrayidx168, i64 0, i64 2
  %124 = load float, ptr %arrayidx169, align 4
  %conv170 = fpext float %124 to double
  %125 = load ptr, ptr %m137, align 8
  %arrayidx171 = getelementptr inbounds [4 x [4 x float]], ptr %125, i64 0, i64 2
  %arrayidx172 = getelementptr inbounds [4 x float], ptr %arrayidx171, i64 0, i64 3
  %126 = load float, ptr %arrayidx172, align 4
  %conv173 = fpext float %126 to double
  %127 = load ptr, ptr %m137, align 8
  %arrayidx174 = getelementptr inbounds [4 x [4 x float]], ptr %127, i64 0, i64 3
  %arrayidx175 = getelementptr inbounds [4 x float], ptr %arrayidx174, i64 0, i64 0
  %128 = load float, ptr %arrayidx175, align 4
  %conv176 = fpext float %128 to double
  %129 = load ptr, ptr %m137, align 8
  %arrayidx177 = getelementptr inbounds [4 x [4 x float]], ptr %129, i64 0, i64 3
  %arrayidx178 = getelementptr inbounds [4 x float], ptr %arrayidx177, i64 0, i64 1
  %130 = load float, ptr %arrayidx178, align 4
  %conv179 = fpext float %130 to double
  %131 = load ptr, ptr %m137, align 8
  %arrayidx180 = getelementptr inbounds [4 x [4 x float]], ptr %131, i64 0, i64 3
  %arrayidx181 = getelementptr inbounds [4 x float], ptr %arrayidx180, i64 0, i64 2
  %132 = load float, ptr %arrayidx181, align 4
  %conv182 = fpext float %132 to double
  %133 = load ptr, ptr %m137, align 8
  %arrayidx183 = getelementptr inbounds [4 x [4 x float]], ptr %133, i64 0, i64 3
  %arrayidx184 = getelementptr inbounds [4 x float], ptr %arrayidx183, i64 0, i64 3
  %134 = load float, ptr %arrayidx184, align 4
  %conv185 = fpext float %134 to double
  %call186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.16, double noundef %conv140, double noundef %conv143, double noundef %conv146, double noundef %conv149, double noundef %conv152, double noundef %conv155, double noundef %conv158, double noundef %conv161, double noundef %conv164, double noundef %conv167, double noundef %conv170, double noundef %conv173, double noundef %conv176, double noundef %conv179, double noundef %conv182, double noundef %conv185)
  br label %if.end187

if.end187:                                        ; preds = %if.then136, %if.end130
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_dir188 = getelementptr inbounds %struct.tiff, ptr %135, i32 0, i32 6
  %td_fieldsset189 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir188, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x i64], ptr %td_fieldsset189, i64 0, i64 0
  %136 = load i64, ptr %arrayidx190, align 8
  %and191 = and i64 %136, 4
  %tobool192 = icmp ne i64 %and191, 0
  br i1 %tobool192, label %if.then193, label %if.end204

if.then193:                                       ; preds = %if.end187
  %137 = load ptr, ptr %fd.addr, align 8
  %138 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %138, i32 0, i32 4
  %139 = load i64, ptr %td_tilewidth, align 8
  %140 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %140, i32 0, i32 5
  %141 = load i64, ptr %td_tilelength, align 8
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.17, i64 noundef %139, i64 noundef %141)
  %142 = load ptr, ptr %tif.addr, align 8
  %tif_dir195 = getelementptr inbounds %struct.tiff, ptr %142, i32 0, i32 6
  %td_fieldsset196 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [3 x i64], ptr %td_fieldsset196, i64 0, i64 1
  %143 = load i64, ptr %arrayidx197, align 8
  %and198 = and i64 %143, 16
  %tobool199 = icmp ne i64 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.then193
  %144 = load ptr, ptr %fd.addr, align 8
  %145 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %145, i32 0, i32 6
  %146 = load i64, ptr %td_tiledepth, align 8
  %call201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.18, i64 noundef %146)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then193
  %147 = load ptr, ptr %fd.addr, align 8
  %call203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.10)
  br label %if.end204

if.end204:                                        ; preds = %if.end202, %if.end187
  %148 = load ptr, ptr %tif.addr, align 8
  %tif_dir205 = getelementptr inbounds %struct.tiff, ptr %148, i32 0, i32 6
  %td_fieldsset206 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [3 x i64], ptr %td_fieldsset206, i64 0, i64 0
  %149 = load i64, ptr %arrayidx207, align 8
  %and208 = and i64 %149, 8
  %tobool209 = icmp ne i64 %and208, 0
  br i1 %tobool209, label %if.then210, label %if.end233

if.then210:                                       ; preds = %if.end204
  %150 = load ptr, ptr %fd.addr, align 8
  %151 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %151, i32 0, i32 21
  %152 = load float, ptr %td_xresolution, align 8
  %conv211 = fpext float %152 to double
  %153 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %153, i32 0, i32 22
  %154 = load float, ptr %td_yresolution, align 4
  %conv212 = fpext float %154 to double
  %call213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.19, double noundef %conv211, double noundef %conv212)
  %155 = load ptr, ptr %tif.addr, align 8
  %tif_dir214 = getelementptr inbounds %struct.tiff, ptr %155, i32 0, i32 6
  %td_fieldsset215 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [3 x i64], ptr %td_fieldsset215, i64 0, i64 0
  %156 = load i64, ptr %arrayidx216, align 8
  %and217 = and i64 %156, 4194304
  %tobool218 = icmp ne i64 %and217, 0
  br i1 %tobool218, label %if.then219, label %if.end231

if.then219:                                       ; preds = %if.then210
  %157 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %157, i32 0, i32 23
  %158 = load i16, ptr %td_resolutionunit, align 8
  %conv220 = zext i16 %158 to i32
  switch i32 %conv220, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb222
    i32 3, label %sw.bb224
  ]

sw.bb:                                            ; preds = %if.then219
  %159 = load ptr, ptr %fd.addr, align 8
  %call221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.20)
  br label %sw.epilog

sw.bb222:                                         ; preds = %if.then219
  %160 = load ptr, ptr %fd.addr, align 8
  %call223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef @.str.21)
  br label %sw.epilog

sw.bb224:                                         ; preds = %if.then219
  %161 = load ptr, ptr %fd.addr, align 8
  %call225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.22)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then219
  %162 = load ptr, ptr %fd.addr, align 8
  %163 = load ptr, ptr %td, align 8
  %td_resolutionunit226 = getelementptr inbounds %struct.TIFFDirectory, ptr %163, i32 0, i32 23
  %164 = load i16, ptr %td_resolutionunit226, align 8
  %conv227 = zext i16 %164 to i32
  %165 = load ptr, ptr %td, align 8
  %td_resolutionunit228 = getelementptr inbounds %struct.TIFFDirectory, ptr %165, i32 0, i32 23
  %166 = load i16, ptr %td_resolutionunit228, align 8
  %conv229 = zext i16 %166 to i32
  %call230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.23, i32 noundef %conv227, i32 noundef %conv229)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb224, %sw.bb222, %sw.bb
  br label %if.end231

if.end231:                                        ; preds = %sw.epilog, %if.then210
  %167 = load ptr, ptr %fd.addr, align 8
  %call232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.10)
  br label %if.end233

if.end233:                                        ; preds = %if.end231, %if.end204
  %168 = load ptr, ptr %tif.addr, align 8
  %tif_dir234 = getelementptr inbounds %struct.tiff, ptr %168, i32 0, i32 6
  %td_fieldsset235 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [3 x i64], ptr %td_fieldsset235, i64 0, i64 0
  %169 = load i64, ptr %arrayidx236, align 8
  %and237 = and i64 %169, 16
  %tobool238 = icmp ne i64 %and237, 0
  br i1 %tobool238, label %if.then239, label %if.end243

if.then239:                                       ; preds = %if.end233
  %170 = load ptr, ptr %fd.addr, align 8
  %171 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %171, i32 0, i32 25
  %172 = load float, ptr %td_xposition, align 4
  %conv240 = fpext float %172 to double
  %173 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %173, i32 0, i32 26
  %174 = load float, ptr %td_yposition, align 8
  %conv241 = fpext float %174 to double
  %call242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef @.str.24, double noundef %conv240, double noundef %conv241)
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %if.end233
  %175 = load ptr, ptr %tif.addr, align 8
  %tif_dir244 = getelementptr inbounds %struct.tiff, ptr %175, i32 0, i32 6
  %td_fieldsset245 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [3 x i64], ptr %td_fieldsset245, i64 0, i64 0
  %176 = load i64, ptr %arrayidx246, align 8
  %and247 = and i64 %176, 64
  %tobool248 = icmp ne i64 %and247, 0
  br i1 %tobool248, label %if.then249, label %if.end252

if.then249:                                       ; preds = %if.end243
  %177 = load ptr, ptr %fd.addr, align 8
  %178 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i32 0, i32 8
  %179 = load i16, ptr %td_bitspersample, align 8
  %conv250 = zext i16 %179 to i32
  %call251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.25, i32 noundef %conv250)
  br label %if.end252

if.end252:                                        ; preds = %if.then249, %if.end243
  %180 = load ptr, ptr %tif.addr, align 8
  %tif_dir253 = getelementptr inbounds %struct.tiff, ptr %180, i32 0, i32 6
  %td_fieldsset254 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [3 x i64], ptr %td_fieldsset254, i64 0, i64 1
  %181 = load i64, ptr %arrayidx255, align 8
  %and256 = and i64 %181, 1
  %tobool257 = icmp ne i64 %and256, 0
  br i1 %tobool257, label %if.then258, label %if.end276

if.then258:                                       ; preds = %if.end252
  %182 = load ptr, ptr %fd.addr, align 8
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef @.str.26)
  %183 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %183, i32 0, i32 9
  %184 = load i16, ptr %td_sampleformat, align 2
  %conv260 = zext i16 %184 to i32
  switch i32 %conv260, label %sw.default269 [
    i32 4, label %sw.bb261
    i32 2, label %sw.bb263
    i32 1, label %sw.bb265
    i32 3, label %sw.bb267
  ]

sw.bb261:                                         ; preds = %if.then258
  %185 = load ptr, ptr %fd.addr, align 8
  %call262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.27)
  br label %sw.epilog275

sw.bb263:                                         ; preds = %if.then258
  %186 = load ptr, ptr %fd.addr, align 8
  %call264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.28)
  br label %sw.epilog275

sw.bb265:                                         ; preds = %if.then258
  %187 = load ptr, ptr %fd.addr, align 8
  %call266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str.29)
  br label %sw.epilog275

sw.bb267:                                         ; preds = %if.then258
  %188 = load ptr, ptr %fd.addr, align 8
  %call268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef @.str.30)
  br label %sw.epilog275

sw.default269:                                    ; preds = %if.then258
  %189 = load ptr, ptr %fd.addr, align 8
  %190 = load ptr, ptr %td, align 8
  %td_sampleformat270 = getelementptr inbounds %struct.TIFFDirectory, ptr %190, i32 0, i32 9
  %191 = load i16, ptr %td_sampleformat270, align 2
  %conv271 = zext i16 %191 to i32
  %192 = load ptr, ptr %td, align 8
  %td_sampleformat272 = getelementptr inbounds %struct.TIFFDirectory, ptr %192, i32 0, i32 9
  %193 = load i16, ptr %td_sampleformat272, align 2
  %conv273 = zext i16 %193 to i32
  %call274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.31, i32 noundef %conv271, i32 noundef %conv273)
  br label %sw.epilog275

sw.epilog275:                                     ; preds = %sw.default269, %sw.bb267, %sw.bb265, %sw.bb263, %sw.bb261
  br label %if.end276

if.end276:                                        ; preds = %sw.epilog275, %if.end252
  %194 = load ptr, ptr %tif.addr, align 8
  %tif_dir277 = getelementptr inbounds %struct.tiff, ptr %194, i32 0, i32 6
  %td_fieldsset278 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [3 x i64], ptr %td_fieldsset278, i64 0, i64 0
  %195 = load i64, ptr %arrayidx279, align 8
  %and280 = and i64 %195, 128
  %tobool281 = icmp ne i64 %and280, 0
  br i1 %tobool281, label %if.then282, label %if.end294

if.then282:                                       ; preds = %if.end276
  %196 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %196, i32 0, i32 10
  %197 = load i16, ptr %td_compression, align 4
  %call283 = call ptr @TIFFFindCODEC(i16 noundef zeroext %197)
  store ptr %call283, ptr %c, align 8
  %198 = load ptr, ptr %fd.addr, align 8
  %call284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef @.str.32)
  %199 = load ptr, ptr %c, align 8
  %tobool285 = icmp ne ptr %199, null
  br i1 %tobool285, label %if.then286, label %if.else

if.then286:                                       ; preds = %if.then282
  %200 = load ptr, ptr %fd.addr, align 8
  %201 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %name, align 8
  %call287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef @.str.33, ptr noundef %202)
  br label %if.end293

if.else:                                          ; preds = %if.then282
  %203 = load ptr, ptr %fd.addr, align 8
  %204 = load ptr, ptr %td, align 8
  %td_compression288 = getelementptr inbounds %struct.TIFFDirectory, ptr %204, i32 0, i32 10
  %205 = load i16, ptr %td_compression288, align 4
  %conv289 = zext i16 %205 to i32
  %206 = load ptr, ptr %td, align 8
  %td_compression290 = getelementptr inbounds %struct.TIFFDirectory, ptr %206, i32 0, i32 10
  %207 = load i16, ptr %td_compression290, align 4
  %conv291 = zext i16 %207 to i32
  %call292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef @.str.31, i32 noundef %conv289, i32 noundef %conv291)
  br label %if.end293

if.end293:                                        ; preds = %if.else, %if.then286
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.end276
  %208 = load ptr, ptr %tif.addr, align 8
  %tif_dir295 = getelementptr inbounds %struct.tiff, ptr %208, i32 0, i32 6
  %td_fieldsset296 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir295, i32 0, i32 0
  %arrayidx297 = getelementptr inbounds [3 x i64], ptr %td_fieldsset296, i64 0, i64 0
  %209 = load i64, ptr %arrayidx297, align 8
  %and298 = and i64 %209, 256
  %tobool299 = icmp ne i64 %and298, 0
  br i1 %tobool299, label %if.then300, label %if.end323

if.then300:                                       ; preds = %if.end294
  %210 = load ptr, ptr %fd.addr, align 8
  %call301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.34)
  %211 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %211, i32 0, i32 11
  %212 = load i16, ptr %td_photometric, align 2
  %conv302 = zext i16 %212 to i64
  %cmp = icmp ult i64 %conv302, 9
  br i1 %cmp, label %if.then304, label %if.else308

if.then304:                                       ; preds = %if.then300
  %213 = load ptr, ptr %fd.addr, align 8
  %214 = load ptr, ptr %td, align 8
  %td_photometric305 = getelementptr inbounds %struct.TIFFDirectory, ptr %214, i32 0, i32 11
  %215 = load i16, ptr %td_photometric305, align 2
  %idxprom = zext i16 %215 to i64
  %arrayidx306 = getelementptr inbounds [9 x ptr], ptr @photoNames, i64 0, i64 %idxprom
  %216 = load ptr, ptr %arrayidx306, align 8
  %call307 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str.33, ptr noundef %216)
  br label %if.end322

if.else308:                                       ; preds = %if.then300
  %217 = load ptr, ptr %td, align 8
  %td_photometric309 = getelementptr inbounds %struct.TIFFDirectory, ptr %217, i32 0, i32 11
  %218 = load i16, ptr %td_photometric309, align 2
  %conv310 = zext i16 %218 to i32
  switch i32 %conv310, label %sw.default315 [
    i32 32844, label %sw.bb311
    i32 32845, label %sw.bb313
  ]

sw.bb311:                                         ; preds = %if.else308
  %219 = load ptr, ptr %fd.addr, align 8
  %call312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.35)
  br label %sw.epilog321

sw.bb313:                                         ; preds = %if.else308
  %220 = load ptr, ptr %fd.addr, align 8
  %call314 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.36)
  br label %sw.epilog321

sw.default315:                                    ; preds = %if.else308
  %221 = load ptr, ptr %fd.addr, align 8
  %222 = load ptr, ptr %td, align 8
  %td_photometric316 = getelementptr inbounds %struct.TIFFDirectory, ptr %222, i32 0, i32 11
  %223 = load i16, ptr %td_photometric316, align 2
  %conv317 = zext i16 %223 to i32
  %224 = load ptr, ptr %td, align 8
  %td_photometric318 = getelementptr inbounds %struct.TIFFDirectory, ptr %224, i32 0, i32 11
  %225 = load i16, ptr %td_photometric318, align 2
  %conv319 = zext i16 %225 to i32
  %call320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef @.str.31, i32 noundef %conv317, i32 noundef %conv319)
  br label %sw.epilog321

sw.epilog321:                                     ; preds = %sw.default315, %sw.bb313, %sw.bb311
  br label %if.end322

if.end322:                                        ; preds = %sw.epilog321, %if.then304
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.end294
  %226 = load ptr, ptr %tif.addr, align 8
  %tif_dir324 = getelementptr inbounds %struct.tiff, ptr %226, i32 0, i32 6
  %td_fieldsset325 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir324, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [3 x i64], ptr %td_fieldsset325, i64 0, i64 0
  %227 = load i64, ptr %arrayidx326, align 8
  %and327 = and i64 %227, 2147483648
  %tobool328 = icmp ne i64 %and327, 0
  br i1 %tobool328, label %land.lhs.true, label %if.end361

land.lhs.true:                                    ; preds = %if.end323
  %228 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %228, i32 0, i32 30
  %229 = load i16, ptr %td_extrasamples, align 4
  %conv329 = zext i16 %229 to i32
  %tobool330 = icmp ne i32 %conv329, 0
  br i1 %tobool330, label %if.then331, label %if.end361

if.then331:                                       ; preds = %land.lhs.true
  %230 = load ptr, ptr %fd.addr, align 8
  %231 = load ptr, ptr %td, align 8
  %td_extrasamples332 = getelementptr inbounds %struct.TIFFDirectory, ptr %231, i32 0, i32 30
  %232 = load i16, ptr %td_extrasamples332, align 4
  %conv333 = zext i16 %232 to i32
  %call334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str.37, i32 noundef %conv333)
  store ptr @.str.38, ptr %sep, align 8
  store i16 0, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then331
  %233 = load i16, ptr %i, align 2
  %conv335 = zext i16 %233 to i32
  %234 = load ptr, ptr %td, align 8
  %td_extrasamples336 = getelementptr inbounds %struct.TIFFDirectory, ptr %234, i32 0, i32 30
  %235 = load i16, ptr %td_extrasamples336, align 4
  %conv337 = zext i16 %235 to i32
  %cmp338 = icmp slt i32 %conv335, %conv337
  br i1 %cmp338, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %236 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %236, i32 0, i32 31
  %237 = load ptr, ptr %td_sampleinfo, align 8
  %238 = load i16, ptr %i, align 2
  %idxprom340 = zext i16 %238 to i64
  %arrayidx341 = getelementptr inbounds i16, ptr %237, i64 %idxprom340
  %239 = load i16, ptr %arrayidx341, align 2
  %conv342 = zext i16 %239 to i32
  switch i32 %conv342, label %sw.default349 [
    i32 0, label %sw.bb343
    i32 1, label %sw.bb345
    i32 2, label %sw.bb347
  ]

sw.bb343:                                         ; preds = %for.body
  %240 = load ptr, ptr %fd.addr, align 8
  %241 = load ptr, ptr %sep, align 8
  %call344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.39, ptr noundef %241)
  br label %sw.epilog359

sw.bb345:                                         ; preds = %for.body
  %242 = load ptr, ptr %fd.addr, align 8
  %243 = load ptr, ptr %sep, align 8
  %call346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str.40, ptr noundef %243)
  br label %sw.epilog359

sw.bb347:                                         ; preds = %for.body
  %244 = load ptr, ptr %fd.addr, align 8
  %245 = load ptr, ptr %sep, align 8
  %call348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef @.str.41, ptr noundef %245)
  br label %sw.epilog359

sw.default349:                                    ; preds = %for.body
  %246 = load ptr, ptr %fd.addr, align 8
  %247 = load ptr, ptr %sep, align 8
  %248 = load ptr, ptr %td, align 8
  %td_sampleinfo350 = getelementptr inbounds %struct.TIFFDirectory, ptr %248, i32 0, i32 31
  %249 = load ptr, ptr %td_sampleinfo350, align 8
  %250 = load i16, ptr %i, align 2
  %idxprom351 = zext i16 %250 to i64
  %arrayidx352 = getelementptr inbounds i16, ptr %249, i64 %idxprom351
  %251 = load i16, ptr %arrayidx352, align 2
  %conv353 = zext i16 %251 to i32
  %252 = load ptr, ptr %td, align 8
  %td_sampleinfo354 = getelementptr inbounds %struct.TIFFDirectory, ptr %252, i32 0, i32 31
  %253 = load ptr, ptr %td_sampleinfo354, align 8
  %254 = load i16, ptr %i, align 2
  %idxprom355 = zext i16 %254 to i64
  %arrayidx356 = getelementptr inbounds i16, ptr %253, i64 %idxprom355
  %255 = load i16, ptr %arrayidx356, align 2
  %conv357 = zext i16 %255 to i32
  %call358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef @.str.42, ptr noundef %247, i32 noundef %conv353, i32 noundef %conv357)
  br label %sw.epilog359

sw.epilog359:                                     ; preds = %sw.default349, %sw.bb347, %sw.bb345, %sw.bb343
  store ptr @.str.43, ptr %sep, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog359
  %256 = load i16, ptr %i, align 2
  %inc = add i16 %256, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %257 = load ptr, ptr %fd.addr, align 8
  %call360 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef @.str.44)
  br label %if.end361

if.end361:                                        ; preds = %for.end, %land.lhs.true, %if.end323
  %258 = load ptr, ptr %tif.addr, align 8
  %tif_dir362 = getelementptr inbounds %struct.tiff, ptr %258, i32 0, i32 6
  %td_fieldsset363 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir362, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [3 x i64], ptr %td_fieldsset363, i64 0, i64 1
  %259 = load i64, ptr %arrayidx364, align 8
  %and365 = and i64 %259, 4194304
  %tobool366 = icmp ne i64 %and365, 0
  br i1 %tobool366, label %if.then367, label %if.end369

if.then367:                                       ; preds = %if.end361
  %260 = load ptr, ptr %fd.addr, align 8
  %261 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %261, i32 0, i32 32
  %262 = load double, ptr %td_stonits, align 8
  %call368 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef @.str.45, double noundef %262)
  br label %if.end369

if.end369:                                        ; preds = %if.then367, %if.end361
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_dir370 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 6
  %td_fieldsset371 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [3 x i64], ptr %td_fieldsset371, i64 0, i64 1
  %264 = load i64, ptr %arrayidx372, align 8
  %and373 = and i64 %264, 8192
  %tobool374 = icmp ne i64 %and373, 0
  br i1 %tobool374, label %if.then375, label %if.end387

if.then375:                                       ; preds = %if.end369
  %265 = load ptr, ptr %fd.addr, align 8
  %call376 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef @.str.46)
  %266 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %266, i32 0, i32 55
  %267 = load i16, ptr %td_inkset, align 8
  %conv377 = zext i16 %267 to i32
  switch i32 %conv377, label %sw.default380 [
    i32 1, label %sw.bb378
  ]

sw.bb378:                                         ; preds = %if.then375
  %268 = load ptr, ptr %fd.addr, align 8
  %call379 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef @.str.47)
  br label %sw.epilog386

sw.default380:                                    ; preds = %if.then375
  %269 = load ptr, ptr %fd.addr, align 8
  %270 = load ptr, ptr %td, align 8
  %td_inkset381 = getelementptr inbounds %struct.TIFFDirectory, ptr %270, i32 0, i32 55
  %271 = load i16, ptr %td_inkset381, align 8
  %conv382 = zext i16 %271 to i32
  %272 = load ptr, ptr %td, align 8
  %td_inkset383 = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i32 0, i32 55
  %273 = load i16, ptr %td_inkset383, align 8
  %conv384 = zext i16 %273 to i32
  %call385 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef @.str.31, i32 noundef %conv382, i32 noundef %conv384)
  br label %sw.epilog386

sw.epilog386:                                     ; preds = %sw.default380, %sw.bb378
  br label %if.end387

if.end387:                                        ; preds = %sw.epilog386, %if.end369
  %274 = load ptr, ptr %tif.addr, align 8
  %tif_dir388 = getelementptr inbounds %struct.tiff, ptr %274, i32 0, i32 6
  %td_fieldsset389 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [3 x i64], ptr %td_fieldsset389, i64 0, i64 1
  %275 = load i64, ptr %arrayidx390, align 8
  %and391 = and i64 %275, 16384
  %tobool392 = icmp ne i64 %and391, 0
  br i1 %tobool392, label %if.then393, label %if.end404

if.then393:                                       ; preds = %if.end387
  %276 = load ptr, ptr %fd.addr, align 8
  %call394 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef @.str.48)
  %277 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %277, i32 0, i32 15
  %278 = load i16, ptr %td_samplesperpixel, align 2
  store i16 %278, ptr %i, align 2
  store ptr @.str.38, ptr %sep, align 8
  %279 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %279, i32 0, i32 59
  %280 = load ptr, ptr %td_inknames, align 8
  store ptr %280, ptr %cp, align 8
  br label %for.cond395

for.cond395:                                      ; preds = %for.inc401, %if.then393
  %281 = load i16, ptr %i, align 2
  %conv396 = zext i16 %281 to i32
  %cmp397 = icmp sgt i32 %conv396, 0
  br i1 %cmp397, label %for.body399, label %for.end403

for.body399:                                      ; preds = %for.cond395
  %282 = load ptr, ptr %fd.addr, align 8
  %283 = load ptr, ptr %sep, align 8
  %call400 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %282, ptr noundef @.str.49, ptr noundef %283)
  %284 = load ptr, ptr %fd.addr, align 8
  %285 = load ptr, ptr %cp, align 8
  call void @_TIFFprintAscii(ptr noundef %284, ptr noundef %285)
  store ptr @.str.43, ptr %sep, align 8
  br label %for.inc401

for.inc401:                                       ; preds = %for.body399
  %286 = load ptr, ptr %cp, align 8
  %call402 = call ptr @strchr(ptr noundef %286, i32 noundef 0)
  %add.ptr = getelementptr inbounds i8, ptr %call402, i64 1
  store ptr %add.ptr, ptr %cp, align 8
  %287 = load i16, ptr %i, align 2
  %dec = add i16 %287, -1
  store i16 %dec, ptr %i, align 2
  br label %for.cond395, !llvm.loop !8

for.end403:                                       ; preds = %for.cond395
  br label %if.end404

if.end404:                                        ; preds = %for.end403, %if.end387
  %288 = load ptr, ptr %tif.addr, align 8
  %tif_dir405 = getelementptr inbounds %struct.tiff, ptr %288, i32 0, i32 6
  %td_fieldsset406 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir405, i32 0, i32 0
  %arrayidx407 = getelementptr inbounds [3 x i64], ptr %td_fieldsset406, i64 0, i64 1
  %289 = load i64, ptr %arrayidx407, align 8
  %and408 = and i64 %289, 262144
  %tobool409 = icmp ne i64 %and408, 0
  br i1 %tobool409, label %if.then410, label %if.end413

if.then410:                                       ; preds = %if.end404
  %290 = load ptr, ptr %fd.addr, align 8
  %291 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %291, i32 0, i32 56
  %292 = load i16, ptr %td_ninks, align 2
  %conv411 = zext i16 %292 to i32
  %call412 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str.50, i32 noundef %conv411)
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %if.end404
  %293 = load ptr, ptr %tif.addr, align 8
  %tif_dir414 = getelementptr inbounds %struct.tiff, ptr %293, i32 0, i32 6
  %td_fieldsset415 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir414, i32 0, i32 0
  %arrayidx416 = getelementptr inbounds [3 x i64], ptr %td_fieldsset415, i64 0, i64 1
  %294 = load i64, ptr %arrayidx416, align 8
  %and417 = and i64 %294, 32768
  %tobool418 = icmp ne i64 %and417, 0
  br i1 %tobool418, label %if.then419, label %if.end426

if.then419:                                       ; preds = %if.end413
  %295 = load ptr, ptr %fd.addr, align 8
  %296 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %296, i32 0, i32 57
  %arrayidx420 = getelementptr inbounds [2 x i16], ptr %td_dotrange, i64 0, i64 0
  %297 = load i16, ptr %arrayidx420, align 4
  %conv421 = zext i16 %297 to i32
  %298 = load ptr, ptr %td, align 8
  %td_dotrange422 = getelementptr inbounds %struct.TIFFDirectory, ptr %298, i32 0, i32 57
  %arrayidx423 = getelementptr inbounds [2 x i16], ptr %td_dotrange422, i64 0, i64 1
  %299 = load i16, ptr %arrayidx423, align 2
  %conv424 = zext i16 %299 to i32
  %call425 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.51, i32 noundef %conv421, i32 noundef %conv424)
  br label %if.end426

if.end426:                                        ; preds = %if.then419, %if.end413
  %300 = load ptr, ptr %tif.addr, align 8
  %tif_dir427 = getelementptr inbounds %struct.tiff, ptr %300, i32 0, i32 6
  %td_fieldsset428 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [3 x i64], ptr %td_fieldsset428, i64 0, i64 1
  %301 = load i64, ptr %arrayidx429, align 8
  %and430 = and i64 %301, 65536
  %tobool431 = icmp ne i64 %and430, 0
  br i1 %tobool431, label %if.then432, label %if.end433

if.then432:                                       ; preds = %if.end426
  %302 = load ptr, ptr %fd.addr, align 8
  %303 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %303, i32 0, i32 60
  %304 = load ptr, ptr %td_targetprinter, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_2(ptr noundef %302, ptr noundef @.str.52, ptr noundef %304)
  br label %if.end433

if.end433:                                        ; preds = %if.then432, %if.end426
  %305 = load ptr, ptr %tif.addr, align 8
  %tif_dir434 = getelementptr inbounds %struct.tiff, ptr %305, i32 0, i32 6
  %td_fieldsset435 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir434, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [3 x i64], ptr %td_fieldsset435, i64 0, i64 0
  %306 = load i64, ptr %arrayidx436, align 8
  %and437 = and i64 %306, 512
  %tobool438 = icmp ne i64 %and437, 0
  br i1 %tobool438, label %if.then439, label %if.end455

if.then439:                                       ; preds = %if.end433
  %307 = load ptr, ptr %fd.addr, align 8
  %call440 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.53)
  %308 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %308, i32 0, i32 12
  %309 = load i16, ptr %td_threshholding, align 8
  %conv441 = zext i16 %309 to i32
  switch i32 %conv441, label %sw.default448 [
    i32 1, label %sw.bb442
    i32 2, label %sw.bb444
    i32 3, label %sw.bb446
  ]

sw.bb442:                                         ; preds = %if.then439
  %310 = load ptr, ptr %fd.addr, align 8
  %call443 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef @.str.54)
  br label %sw.epilog454

sw.bb444:                                         ; preds = %if.then439
  %311 = load ptr, ptr %fd.addr, align 8
  %call445 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef @.str.55)
  br label %sw.epilog454

sw.bb446:                                         ; preds = %if.then439
  %312 = load ptr, ptr %fd.addr, align 8
  %call447 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef @.str.56)
  br label %sw.epilog454

sw.default448:                                    ; preds = %if.then439
  %313 = load ptr, ptr %fd.addr, align 8
  %314 = load ptr, ptr %td, align 8
  %td_threshholding449 = getelementptr inbounds %struct.TIFFDirectory, ptr %314, i32 0, i32 12
  %315 = load i16, ptr %td_threshholding449, align 8
  %conv450 = zext i16 %315 to i32
  %316 = load ptr, ptr %td, align 8
  %td_threshholding451 = getelementptr inbounds %struct.TIFFDirectory, ptr %316, i32 0, i32 12
  %317 = load i16, ptr %td_threshholding451, align 8
  %conv452 = zext i16 %317 to i32
  %call453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %313, ptr noundef @.str.31, i32 noundef %conv450, i32 noundef %conv452)
  br label %sw.epilog454

sw.epilog454:                                     ; preds = %sw.default448, %sw.bb446, %sw.bb444, %sw.bb442
  br label %if.end455

if.end455:                                        ; preds = %sw.epilog454, %if.end433
  %318 = load ptr, ptr %tif.addr, align 8
  %tif_dir456 = getelementptr inbounds %struct.tiff, ptr %318, i32 0, i32 6
  %td_fieldsset457 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [3 x i64], ptr %td_fieldsset457, i64 0, i64 0
  %319 = load i64, ptr %arrayidx458, align 8
  %and459 = and i64 %319, 1024
  %tobool460 = icmp ne i64 %and459, 0
  br i1 %tobool460, label %if.then461, label %if.end475

if.then461:                                       ; preds = %if.end455
  %320 = load ptr, ptr %fd.addr, align 8
  %call462 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef @.str.57)
  %321 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %321, i32 0, i32 13
  %322 = load i16, ptr %td_fillorder, align 2
  %conv463 = zext i16 %322 to i32
  switch i32 %conv463, label %sw.default468 [
    i32 1, label %sw.bb464
    i32 2, label %sw.bb466
  ]

sw.bb464:                                         ; preds = %if.then461
  %323 = load ptr, ptr %fd.addr, align 8
  %call465 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef @.str.58)
  br label %sw.epilog474

sw.bb466:                                         ; preds = %if.then461
  %324 = load ptr, ptr %fd.addr, align 8
  %call467 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %324, ptr noundef @.str.59)
  br label %sw.epilog474

sw.default468:                                    ; preds = %if.then461
  %325 = load ptr, ptr %fd.addr, align 8
  %326 = load ptr, ptr %td, align 8
  %td_fillorder469 = getelementptr inbounds %struct.TIFFDirectory, ptr %326, i32 0, i32 13
  %327 = load i16, ptr %td_fillorder469, align 2
  %conv470 = zext i16 %327 to i32
  %328 = load ptr, ptr %td, align 8
  %td_fillorder471 = getelementptr inbounds %struct.TIFFDirectory, ptr %328, i32 0, i32 13
  %329 = load i16, ptr %td_fillorder471, align 2
  %conv472 = zext i16 %329 to i32
  %call473 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef @.str.31, i32 noundef %conv470, i32 noundef %conv472)
  br label %sw.epilog474

sw.epilog474:                                     ; preds = %sw.default468, %sw.bb466, %sw.bb464
  br label %if.end475

if.end475:                                        ; preds = %sw.epilog474, %if.end455
  %330 = load ptr, ptr %tif.addr, align 8
  %tif_dir476 = getelementptr inbounds %struct.tiff, ptr %330, i32 0, i32 6
  %td_fieldsset477 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [3 x i64], ptr %td_fieldsset477, i64 0, i64 1
  %331 = load i64, ptr %arrayidx478, align 8
  %and479 = and i64 %331, 128
  %tobool480 = icmp ne i64 %and479, 0
  br i1 %tobool480, label %if.then481, label %if.end488

if.then481:                                       ; preds = %if.end475
  %332 = load ptr, ptr %fd.addr, align 8
  %333 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %333, i32 0, i32 49
  %arrayidx482 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %334 = load i16, ptr %arrayidx482, align 8
  %conv483 = zext i16 %334 to i32
  %335 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling484 = getelementptr inbounds %struct.TIFFDirectory, ptr %335, i32 0, i32 49
  %arrayidx485 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling484, i64 0, i64 1
  %336 = load i16, ptr %arrayidx485, align 2
  %conv486 = zext i16 %336 to i32
  %call487 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef @.str.60, i32 noundef %conv483, i32 noundef %conv486)
  br label %if.end488

if.end488:                                        ; preds = %if.then481, %if.end475
  %337 = load ptr, ptr %tif.addr, align 8
  %tif_dir489 = getelementptr inbounds %struct.tiff, ptr %337, i32 0, i32 6
  %td_fieldsset490 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir489, i32 0, i32 0
  %arrayidx491 = getelementptr inbounds [3 x i64], ptr %td_fieldsset490, i64 0, i64 1
  %338 = load i64, ptr %arrayidx491, align 8
  %and492 = and i64 %338, 256
  %tobool493 = icmp ne i64 %and492, 0
  br i1 %tobool493, label %if.then494, label %if.end508

if.then494:                                       ; preds = %if.end488
  %339 = load ptr, ptr %fd.addr, align 8
  %call495 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef @.str.61)
  %340 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i32 0, i32 50
  %341 = load i16, ptr %td_ycbcrpositioning, align 4
  %conv496 = zext i16 %341 to i32
  switch i32 %conv496, label %sw.default501 [
    i32 1, label %sw.bb497
    i32 2, label %sw.bb499
  ]

sw.bb497:                                         ; preds = %if.then494
  %342 = load ptr, ptr %fd.addr, align 8
  %call498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %342, ptr noundef @.str.62)
  br label %sw.epilog507

sw.bb499:                                         ; preds = %if.then494
  %343 = load ptr, ptr %fd.addr, align 8
  %call500 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef @.str.63)
  br label %sw.epilog507

sw.default501:                                    ; preds = %if.then494
  %344 = load ptr, ptr %fd.addr, align 8
  %345 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning502 = getelementptr inbounds %struct.TIFFDirectory, ptr %345, i32 0, i32 50
  %346 = load i16, ptr %td_ycbcrpositioning502, align 4
  %conv503 = zext i16 %346 to i32
  %347 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning504 = getelementptr inbounds %struct.TIFFDirectory, ptr %347, i32 0, i32 50
  %348 = load i16, ptr %td_ycbcrpositioning504, align 4
  %conv505 = zext i16 %348 to i32
  %call506 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef @.str.31, i32 noundef %conv503, i32 noundef %conv505)
  br label %sw.epilog507

sw.epilog507:                                     ; preds = %sw.default501, %sw.bb499, %sw.bb497
  br label %if.end508

if.end508:                                        ; preds = %sw.epilog507, %if.end488
  %349 = load ptr, ptr %tif.addr, align 8
  %tif_dir509 = getelementptr inbounds %struct.tiff, ptr %349, i32 0, i32 6
  %td_fieldsset510 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir509, i32 0, i32 0
  %arrayidx511 = getelementptr inbounds [3 x i64], ptr %td_fieldsset510, i64 0, i64 1
  %350 = load i64, ptr %arrayidx511, align 8
  %and512 = and i64 %350, 64
  %tobool513 = icmp ne i64 %and512, 0
  br i1 %tobool513, label %if.then514, label %if.end524

if.then514:                                       ; preds = %if.end508
  %351 = load ptr, ptr %fd.addr, align 8
  %352 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %352, i32 0, i32 48
  %353 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %arrayidx515 = getelementptr inbounds float, ptr %353, i64 0
  %354 = load float, ptr %arrayidx515, align 4
  %conv516 = fpext float %354 to double
  %355 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs517 = getelementptr inbounds %struct.TIFFDirectory, ptr %355, i32 0, i32 48
  %356 = load ptr, ptr %td_ycbcrcoeffs517, align 8
  %arrayidx518 = getelementptr inbounds float, ptr %356, i64 1
  %357 = load float, ptr %arrayidx518, align 4
  %conv519 = fpext float %357 to double
  %358 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs520 = getelementptr inbounds %struct.TIFFDirectory, ptr %358, i32 0, i32 48
  %359 = load ptr, ptr %td_ycbcrcoeffs520, align 8
  %arrayidx521 = getelementptr inbounds float, ptr %359, i64 2
  %360 = load float, ptr %arrayidx521, align 4
  %conv522 = fpext float %360 to double
  %call523 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef @.str.64, double noundef %conv516, double noundef %conv519, double noundef %conv522)
  br label %if.end524

if.end524:                                        ; preds = %if.then514, %if.end508
  %361 = load ptr, ptr %tif.addr, align 8
  %tif_dir525 = getelementptr inbounds %struct.tiff, ptr %361, i32 0, i32 6
  %td_fieldsset526 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir525, i32 0, i32 0
  %arrayidx527 = getelementptr inbounds [3 x i64], ptr %td_fieldsset526, i64 0, i64 1
  %362 = load i64, ptr %arrayidx527, align 8
  %and528 = and i64 %362, 32
  %tobool529 = icmp ne i64 %and528, 0
  br i1 %tobool529, label %if.then530, label %if.end537

if.then530:                                       ; preds = %if.end524
  %363 = load ptr, ptr %fd.addr, align 8
  %364 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %364, i32 0, i32 29
  %arrayidx531 = getelementptr inbounds [2 x i16], ptr %td_halftonehints, i64 0, i64 0
  %365 = load i16, ptr %arrayidx531, align 8
  %conv532 = zext i16 %365 to i32
  %366 = load ptr, ptr %td, align 8
  %td_halftonehints533 = getelementptr inbounds %struct.TIFFDirectory, ptr %366, i32 0, i32 29
  %arrayidx534 = getelementptr inbounds [2 x i16], ptr %td_halftonehints533, i64 0, i64 1
  %367 = load i16, ptr %arrayidx534, align 2
  %conv535 = zext i16 %367 to i32
  %call536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %363, ptr noundef @.str.65, i32 noundef %conv532, i32 noundef %conv535)
  br label %if.end537

if.end537:                                        ; preds = %if.then530, %if.end524
  %368 = load ptr, ptr %tif.addr, align 8
  %tif_dir538 = getelementptr inbounds %struct.tiff, ptr %368, i32 0, i32 6
  %td_fieldsset539 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir538, i32 0, i32 0
  %arrayidx540 = getelementptr inbounds [3 x i64], ptr %td_fieldsset539, i64 0, i64 0
  %369 = load i64, ptr %arrayidx540, align 8
  %and541 = and i64 %369, 134217728
  %tobool542 = icmp ne i64 %and541, 0
  br i1 %tobool542, label %if.then543, label %if.end544

if.then543:                                       ; preds = %if.end537
  %370 = load ptr, ptr %fd.addr, align 8
  %371 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %371, i32 0, i32 34
  %372 = load ptr, ptr %td_artist, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_3(ptr noundef %370, ptr noundef @.str.66, ptr noundef %372)
  br label %if.end544

if.end544:                                        ; preds = %if.then543, %if.end537
  %373 = load ptr, ptr %tif.addr, align 8
  %tif_dir545 = getelementptr inbounds %struct.tiff, ptr %373, i32 0, i32 6
  %td_fieldsset546 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [3 x i64], ptr %td_fieldsset546, i64 0, i64 0
  %374 = load i64, ptr %arrayidx547, align 8
  %and548 = and i64 %374, 268435456
  %tobool549 = icmp ne i64 %and548, 0
  br i1 %tobool549, label %if.then550, label %if.end551

if.then550:                                       ; preds = %if.end544
  %375 = load ptr, ptr %fd.addr, align 8
  %376 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %376, i32 0, i32 35
  %377 = load ptr, ptr %td_datetime, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_4(ptr noundef %375, ptr noundef @.str.67, ptr noundef %377)
  br label %if.end551

if.end551:                                        ; preds = %if.then550, %if.end544
  %378 = load ptr, ptr %tif.addr, align 8
  %tif_dir552 = getelementptr inbounds %struct.tiff, ptr %378, i32 0, i32 6
  %td_fieldsset553 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir552, i32 0, i32 0
  %arrayidx554 = getelementptr inbounds [3 x i64], ptr %td_fieldsset553, i64 0, i64 0
  %379 = load i64, ptr %arrayidx554, align 8
  %and555 = and i64 %379, 536870912
  %tobool556 = icmp ne i64 %and555, 0
  br i1 %tobool556, label %if.then557, label %if.end558

if.then557:                                       ; preds = %if.end551
  %380 = load ptr, ptr %fd.addr, align 8
  %381 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %381, i32 0, i32 36
  %382 = load ptr, ptr %td_hostcomputer, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_5(ptr noundef %380, ptr noundef @.str.68, ptr noundef %382)
  br label %if.end558

if.end558:                                        ; preds = %if.then557, %if.end551
  %383 = load ptr, ptr %tif.addr, align 8
  %tif_dir559 = getelementptr inbounds %struct.tiff, ptr %383, i32 0, i32 6
  %td_fieldsset560 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir559, i32 0, i32 0
  %arrayidx561 = getelementptr inbounds [3 x i64], ptr %td_fieldsset560, i64 0, i64 0
  %384 = load i64, ptr %arrayidx561, align 8
  %and562 = and i64 %384, 1073741824
  %tobool563 = icmp ne i64 %and562, 0
  br i1 %tobool563, label %if.then564, label %if.end565

if.then564:                                       ; preds = %if.end558
  %385 = load ptr, ptr %fd.addr, align 8
  %386 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %386, i32 0, i32 40
  %387 = load ptr, ptr %td_software, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_6(ptr noundef %385, ptr noundef @.str.69, ptr noundef %387)
  br label %if.end565

if.end565:                                        ; preds = %if.then564, %if.end558
  %388 = load ptr, ptr %tif.addr, align 8
  %tif_dir566 = getelementptr inbounds %struct.tiff, ptr %388, i32 0, i32 6
  %td_fieldsset567 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir566, i32 0, i32 0
  %arrayidx568 = getelementptr inbounds [3 x i64], ptr %td_fieldsset567, i64 0, i64 0
  %389 = load i64, ptr %arrayidx568, align 8
  %and569 = and i64 %389, 2048
  %tobool570 = icmp ne i64 %and569, 0
  br i1 %tobool570, label %if.then571, label %if.end572

if.then571:                                       ; preds = %if.end565
  %390 = load ptr, ptr %fd.addr, align 8
  %391 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %391, i32 0, i32 33
  %392 = load ptr, ptr %td_documentname, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_7(ptr noundef %390, ptr noundef @.str.70, ptr noundef %392)
  br label %if.end572

if.end572:                                        ; preds = %if.then571, %if.end565
  %393 = load ptr, ptr %tif.addr, align 8
  %tif_dir573 = getelementptr inbounds %struct.tiff, ptr %393, i32 0, i32 6
  %td_fieldsset574 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [3 x i64], ptr %td_fieldsset574, i64 0, i64 0
  %394 = load i64, ptr %arrayidx575, align 8
  %and576 = and i64 %394, 4096
  %tobool577 = icmp ne i64 %and576, 0
  br i1 %tobool577, label %if.then578, label %if.end579

if.then578:                                       ; preds = %if.end572
  %395 = load ptr, ptr %fd.addr, align 8
  %396 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %396, i32 0, i32 37
  %397 = load ptr, ptr %td_imagedescription, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_8(ptr noundef %395, ptr noundef @.str.71, ptr noundef %397)
  br label %if.end579

if.end579:                                        ; preds = %if.then578, %if.end572
  %398 = load ptr, ptr %tif.addr, align 8
  %tif_dir580 = getelementptr inbounds %struct.tiff, ptr %398, i32 0, i32 6
  %td_fieldsset581 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir580, i32 0, i32 0
  %arrayidx582 = getelementptr inbounds [3 x i64], ptr %td_fieldsset581, i64 0, i64 0
  %399 = load i64, ptr %arrayidx582, align 8
  %and583 = and i64 %399, 8192
  %tobool584 = icmp ne i64 %and583, 0
  br i1 %tobool584, label %if.then585, label %if.end586

if.then585:                                       ; preds = %if.end579
  %400 = load ptr, ptr %fd.addr, align 8
  %401 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %401, i32 0, i32 38
  %402 = load ptr, ptr %td_make, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_9(ptr noundef %400, ptr noundef @.str.72, ptr noundef %402)
  br label %if.end586

if.end586:                                        ; preds = %if.then585, %if.end579
  %403 = load ptr, ptr %tif.addr, align 8
  %tif_dir587 = getelementptr inbounds %struct.tiff, ptr %403, i32 0, i32 6
  %td_fieldsset588 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir587, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [3 x i64], ptr %td_fieldsset588, i64 0, i64 0
  %404 = load i64, ptr %arrayidx589, align 8
  %and590 = and i64 %404, 16384
  %tobool591 = icmp ne i64 %and590, 0
  br i1 %tobool591, label %if.then592, label %if.end593

if.then592:                                       ; preds = %if.end586
  %405 = load ptr, ptr %fd.addr, align 8
  %406 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %406, i32 0, i32 39
  %407 = load ptr, ptr %td_model, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_10(ptr noundef %405, ptr noundef @.str.73, ptr noundef %407)
  br label %if.end593

if.end593:                                        ; preds = %if.then592, %if.end586
  %408 = load ptr, ptr %tif.addr, align 8
  %tif_dir594 = getelementptr inbounds %struct.tiff, ptr %408, i32 0, i32 6
  %td_fieldsset595 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir594, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [3 x i64], ptr %td_fieldsset595, i64 0, i64 0
  %409 = load i64, ptr %arrayidx596, align 8
  %and597 = and i64 %409, 32768
  %tobool598 = icmp ne i64 %and597, 0
  br i1 %tobool598, label %if.then599, label %if.end616

if.then599:                                       ; preds = %if.end593
  %410 = load ptr, ptr %fd.addr, align 8
  %call600 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %410, ptr noundef @.str.74)
  %411 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %411, i32 0, i32 14
  %412 = load i16, ptr %td_orientation, align 4
  %conv601 = zext i16 %412 to i64
  %cmp602 = icmp ult i64 %conv601, 9
  br i1 %cmp602, label %if.then604, label %if.else609

if.then604:                                       ; preds = %if.then599
  %413 = load ptr, ptr %fd.addr, align 8
  %414 = load ptr, ptr %td, align 8
  %td_orientation605 = getelementptr inbounds %struct.TIFFDirectory, ptr %414, i32 0, i32 14
  %415 = load i16, ptr %td_orientation605, align 4
  %idxprom606 = zext i16 %415 to i64
  %arrayidx607 = getelementptr inbounds [9 x ptr], ptr @orientNames, i64 0, i64 %idxprom606
  %416 = load ptr, ptr %arrayidx607, align 8
  %call608 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef @.str.33, ptr noundef %416)
  br label %if.end615

if.else609:                                       ; preds = %if.then599
  %417 = load ptr, ptr %fd.addr, align 8
  %418 = load ptr, ptr %td, align 8
  %td_orientation610 = getelementptr inbounds %struct.TIFFDirectory, ptr %418, i32 0, i32 14
  %419 = load i16, ptr %td_orientation610, align 4
  %conv611 = zext i16 %419 to i32
  %420 = load ptr, ptr %td, align 8
  %td_orientation612 = getelementptr inbounds %struct.TIFFDirectory, ptr %420, i32 0, i32 14
  %421 = load i16, ptr %td_orientation612, align 4
  %conv613 = zext i16 %421 to i32
  %call614 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %417, ptr noundef @.str.31, i32 noundef %conv611, i32 noundef %conv613)
  br label %if.end615

if.end615:                                        ; preds = %if.else609, %if.then604
  br label %if.end616

if.end616:                                        ; preds = %if.end615, %if.end593
  %422 = load ptr, ptr %tif.addr, align 8
  %tif_dir617 = getelementptr inbounds %struct.tiff, ptr %422, i32 0, i32 6
  %td_fieldsset618 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir617, i32 0, i32 0
  %arrayidx619 = getelementptr inbounds [3 x i64], ptr %td_fieldsset618, i64 0, i64 0
  %423 = load i64, ptr %arrayidx619, align 8
  %and620 = and i64 %423, 65536
  %tobool621 = icmp ne i64 %and620, 0
  br i1 %tobool621, label %if.then622, label %if.end626

if.then622:                                       ; preds = %if.end616
  %424 = load ptr, ptr %fd.addr, align 8
  %425 = load ptr, ptr %td, align 8
  %td_samplesperpixel623 = getelementptr inbounds %struct.TIFFDirectory, ptr %425, i32 0, i32 15
  %426 = load i16, ptr %td_samplesperpixel623, align 2
  %conv624 = zext i16 %426 to i32
  %call625 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef @.str.75, i32 noundef %conv624)
  br label %if.end626

if.end626:                                        ; preds = %if.then622, %if.end616
  %427 = load ptr, ptr %tif.addr, align 8
  %tif_dir627 = getelementptr inbounds %struct.tiff, ptr %427, i32 0, i32 6
  %td_fieldsset628 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir627, i32 0, i32 0
  %arrayidx629 = getelementptr inbounds [3 x i64], ptr %td_fieldsset628, i64 0, i64 0
  %428 = load i64, ptr %arrayidx629, align 8
  %and630 = and i64 %428, 131072
  %tobool631 = icmp ne i64 %and630, 0
  br i1 %tobool631, label %if.then632, label %if.end642

if.then632:                                       ; preds = %if.end626
  %429 = load ptr, ptr %fd.addr, align 8
  %call633 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %429, ptr noundef @.str.76)
  %430 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %430, i32 0, i32 16
  %431 = load i64, ptr %td_rowsperstrip, align 8
  %cmp634 = icmp eq i64 %431, -1
  br i1 %cmp634, label %if.then636, label %if.else638

if.then636:                                       ; preds = %if.then632
  %432 = load ptr, ptr %fd.addr, align 8
  %call637 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef @.str.77)
  br label %if.end641

if.else638:                                       ; preds = %if.then632
  %433 = load ptr, ptr %fd.addr, align 8
  %434 = load ptr, ptr %td, align 8
  %td_rowsperstrip639 = getelementptr inbounds %struct.TIFFDirectory, ptr %434, i32 0, i32 16
  %435 = load i64, ptr %td_rowsperstrip639, align 8
  %call640 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %433, ptr noundef @.str.78, i64 noundef %435)
  br label %if.end641

if.end641:                                        ; preds = %if.else638, %if.then636
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %if.end626
  %436 = load ptr, ptr %tif.addr, align 8
  %tif_dir643 = getelementptr inbounds %struct.tiff, ptr %436, i32 0, i32 6
  %td_fieldsset644 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [3 x i64], ptr %td_fieldsset644, i64 0, i64 0
  %437 = load i64, ptr %arrayidx645, align 8
  %and646 = and i64 %437, 262144
  %tobool647 = icmp ne i64 %and646, 0
  br i1 %tobool647, label %if.then648, label %if.end651

if.then648:                                       ; preds = %if.end642
  %438 = load ptr, ptr %fd.addr, align 8
  %439 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %439, i32 0, i32 17
  %440 = load i16, ptr %td_minsamplevalue, align 8
  %conv649 = zext i16 %440 to i32
  %call650 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %438, ptr noundef @.str.79, i32 noundef %conv649)
  br label %if.end651

if.end651:                                        ; preds = %if.then648, %if.end642
  %441 = load ptr, ptr %tif.addr, align 8
  %tif_dir652 = getelementptr inbounds %struct.tiff, ptr %441, i32 0, i32 6
  %td_fieldsset653 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir652, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [3 x i64], ptr %td_fieldsset653, i64 0, i64 0
  %442 = load i64, ptr %arrayidx654, align 8
  %and655 = and i64 %442, 524288
  %tobool656 = icmp ne i64 %and655, 0
  br i1 %tobool656, label %if.then657, label %if.end660

if.then657:                                       ; preds = %if.end651
  %443 = load ptr, ptr %fd.addr, align 8
  %444 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %444, i32 0, i32 18
  %445 = load i16, ptr %td_maxsamplevalue, align 2
  %conv658 = zext i16 %445 to i32
  %call659 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %443, ptr noundef @.str.80, i32 noundef %conv658)
  br label %if.end660

if.end660:                                        ; preds = %if.then657, %if.end651
  %446 = load ptr, ptr %tif.addr, align 8
  %tif_dir661 = getelementptr inbounds %struct.tiff, ptr %446, i32 0, i32 6
  %td_fieldsset662 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir661, i32 0, i32 0
  %arrayidx663 = getelementptr inbounds [3 x i64], ptr %td_fieldsset662, i64 0, i64 1
  %447 = load i64, ptr %arrayidx663, align 8
  %and664 = and i64 %447, 2
  %tobool665 = icmp ne i64 %and664, 0
  br i1 %tobool665, label %if.then666, label %if.end668

if.then666:                                       ; preds = %if.end660
  %448 = load ptr, ptr %fd.addr, align 8
  %449 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %449, i32 0, i32 19
  %450 = load double, ptr %td_sminsamplevalue, align 8
  %call667 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %448, ptr noundef @.str.81, double noundef %450)
  br label %if.end668

if.end668:                                        ; preds = %if.then666, %if.end660
  %451 = load ptr, ptr %tif.addr, align 8
  %tif_dir669 = getelementptr inbounds %struct.tiff, ptr %451, i32 0, i32 6
  %td_fieldsset670 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [3 x i64], ptr %td_fieldsset670, i64 0, i64 1
  %452 = load i64, ptr %arrayidx671, align 8
  %and672 = and i64 %452, 4
  %tobool673 = icmp ne i64 %and672, 0
  br i1 %tobool673, label %if.then674, label %if.end676

if.then674:                                       ; preds = %if.end668
  %453 = load ptr, ptr %fd.addr, align 8
  %454 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %454, i32 0, i32 20
  %455 = load double, ptr %td_smaxsamplevalue, align 8
  %call675 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %453, ptr noundef @.str.82, double noundef %455)
  br label %if.end676

if.end676:                                        ; preds = %if.then674, %if.end668
  %456 = load ptr, ptr %tif.addr, align 8
  %tif_dir677 = getelementptr inbounds %struct.tiff, ptr %456, i32 0, i32 6
  %td_fieldsset678 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [3 x i64], ptr %td_fieldsset678, i64 0, i64 0
  %457 = load i64, ptr %arrayidx679, align 8
  %and680 = and i64 %457, 1048576
  %tobool681 = icmp ne i64 %and680, 0
  br i1 %tobool681, label %if.then682, label %if.end696

if.then682:                                       ; preds = %if.end676
  %458 = load ptr, ptr %fd.addr, align 8
  %call683 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %458, ptr noundef @.str.83)
  %459 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %459, i32 0, i32 24
  %460 = load i16, ptr %td_planarconfig, align 2
  %conv684 = zext i16 %460 to i32
  switch i32 %conv684, label %sw.default689 [
    i32 1, label %sw.bb685
    i32 2, label %sw.bb687
  ]

sw.bb685:                                         ; preds = %if.then682
  %461 = load ptr, ptr %fd.addr, align 8
  %call686 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %461, ptr noundef @.str.84)
  br label %sw.epilog695

sw.bb687:                                         ; preds = %if.then682
  %462 = load ptr, ptr %fd.addr, align 8
  %call688 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %462, ptr noundef @.str.85)
  br label %sw.epilog695

sw.default689:                                    ; preds = %if.then682
  %463 = load ptr, ptr %fd.addr, align 8
  %464 = load ptr, ptr %td, align 8
  %td_planarconfig690 = getelementptr inbounds %struct.TIFFDirectory, ptr %464, i32 0, i32 24
  %465 = load i16, ptr %td_planarconfig690, align 2
  %conv691 = zext i16 %465 to i32
  %466 = load ptr, ptr %td, align 8
  %td_planarconfig692 = getelementptr inbounds %struct.TIFFDirectory, ptr %466, i32 0, i32 24
  %467 = load i16, ptr %td_planarconfig692, align 2
  %conv693 = zext i16 %467 to i32
  %call694 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %463, ptr noundef @.str.31, i32 noundef %conv691, i32 noundef %conv693)
  br label %sw.epilog695

sw.epilog695:                                     ; preds = %sw.default689, %sw.bb687, %sw.bb685
  br label %if.end696

if.end696:                                        ; preds = %sw.epilog695, %if.end676
  %468 = load ptr, ptr %tif.addr, align 8
  %tif_dir697 = getelementptr inbounds %struct.tiff, ptr %468, i32 0, i32 6
  %td_fieldsset698 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [3 x i64], ptr %td_fieldsset698, i64 0, i64 0
  %469 = load i64, ptr %arrayidx699, align 8
  %and700 = and i64 %469, 2097152
  %tobool701 = icmp ne i64 %and700, 0
  br i1 %tobool701, label %if.then702, label %if.end703

if.then702:                                       ; preds = %if.end696
  %470 = load ptr, ptr %fd.addr, align 8
  %471 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %471, i32 0, i32 41
  %472 = load ptr, ptr %td_pagename, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_11(ptr noundef %470, ptr noundef @.str.86, ptr noundef %472)
  br label %if.end703

if.end703:                                        ; preds = %if.then702, %if.end696
  %473 = load ptr, ptr %tif.addr, align 8
  %tif_dir704 = getelementptr inbounds %struct.tiff, ptr %473, i32 0, i32 6
  %td_fieldsset705 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir704, i32 0, i32 0
  %arrayidx706 = getelementptr inbounds [3 x i64], ptr %td_fieldsset705, i64 0, i64 0
  %474 = load i64, ptr %arrayidx706, align 8
  %and707 = and i64 %474, 8388608
  %tobool708 = icmp ne i64 %and707, 0
  br i1 %tobool708, label %if.then709, label %if.end716

if.then709:                                       ; preds = %if.end703
  %475 = load ptr, ptr %fd.addr, align 8
  %476 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %476, i32 0, i32 27
  %arrayidx710 = getelementptr inbounds [2 x i16], ptr %td_pagenumber, i64 0, i64 0
  %477 = load i16, ptr %arrayidx710, align 4
  %conv711 = zext i16 %477 to i32
  %478 = load ptr, ptr %td, align 8
  %td_pagenumber712 = getelementptr inbounds %struct.TIFFDirectory, ptr %478, i32 0, i32 27
  %arrayidx713 = getelementptr inbounds [2 x i16], ptr %td_pagenumber712, i64 0, i64 1
  %479 = load i16, ptr %arrayidx713, align 2
  %conv714 = zext i16 %479 to i32
  %call715 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %475, ptr noundef @.str.87, i32 noundef %conv711, i32 noundef %conv714)
  br label %if.end716

if.end716:                                        ; preds = %if.then709, %if.end703
  %480 = load ptr, ptr %tif.addr, align 8
  %tif_dir717 = getelementptr inbounds %struct.tiff, ptr %480, i32 0, i32 6
  %td_fieldsset718 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir717, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [3 x i64], ptr %td_fieldsset718, i64 0, i64 0
  %481 = load i64, ptr %arrayidx719, align 8
  %and720 = and i64 %481, 67108864
  %tobool721 = icmp ne i64 %and720, 0
  br i1 %tobool721, label %if.then722, label %if.end752

if.then722:                                       ; preds = %if.end716
  %482 = load ptr, ptr %fd.addr, align 8
  %call723 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %482, ptr noundef @.str.88)
  %483 = load i64, ptr %flags.addr, align 8
  %and724 = and i64 %483, 4
  %tobool725 = icmp ne i64 %and724, 0
  br i1 %tobool725, label %if.then726, label %if.else749

if.then726:                                       ; preds = %if.then722
  %484 = load ptr, ptr %fd.addr, align 8
  %call727 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %484, ptr noundef @.str.10)
  %485 = load ptr, ptr %td, align 8
  %td_bitspersample728 = getelementptr inbounds %struct.TIFFDirectory, ptr %485, i32 0, i32 8
  %486 = load i16, ptr %td_bitspersample728, align 8
  %conv729 = zext i16 %486 to i32
  %sh_prom = zext i32 %conv729 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %n, align 8
  store i64 0, ptr %l, align 8
  br label %for.cond730

for.cond730:                                      ; preds = %for.inc746, %if.then726
  %487 = load i64, ptr %l, align 8
  %488 = load i64, ptr %n, align 8
  %cmp731 = icmp slt i64 %487, %488
  br i1 %cmp731, label %for.body733, label %for.end748

for.body733:                                      ; preds = %for.cond730
  %489 = load ptr, ptr %fd.addr, align 8
  %490 = load i64, ptr %l, align 8
  %491 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %491, i32 0, i32 28
  %arrayidx734 = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %492 = load ptr, ptr %arrayidx734, align 8
  %493 = load i64, ptr %l, align 8
  %arrayidx735 = getelementptr inbounds i16, ptr %492, i64 %493
  %494 = load i16, ptr %arrayidx735, align 2
  %conv736 = zext i16 %494 to i32
  %495 = load ptr, ptr %td, align 8
  %td_colormap737 = getelementptr inbounds %struct.TIFFDirectory, ptr %495, i32 0, i32 28
  %arrayidx738 = getelementptr inbounds [3 x ptr], ptr %td_colormap737, i64 0, i64 1
  %496 = load ptr, ptr %arrayidx738, align 8
  %497 = load i64, ptr %l, align 8
  %arrayidx739 = getelementptr inbounds i16, ptr %496, i64 %497
  %498 = load i16, ptr %arrayidx739, align 2
  %conv740 = zext i16 %498 to i32
  %499 = load ptr, ptr %td, align 8
  %td_colormap741 = getelementptr inbounds %struct.TIFFDirectory, ptr %499, i32 0, i32 28
  %arrayidx742 = getelementptr inbounds [3 x ptr], ptr %td_colormap741, i64 0, i64 2
  %500 = load ptr, ptr %arrayidx742, align 8
  %501 = load i64, ptr %l, align 8
  %arrayidx743 = getelementptr inbounds i16, ptr %500, i64 %501
  %502 = load i16, ptr %arrayidx743, align 2
  %conv744 = zext i16 %502 to i32
  %call745 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %489, ptr noundef @.str.89, i64 noundef %490, i32 noundef %conv736, i32 noundef %conv740, i32 noundef %conv744)
  br label %for.inc746

for.inc746:                                       ; preds = %for.body733
  %503 = load i64, ptr %l, align 8
  %inc747 = add nsw i64 %503, 1
  store i64 %inc747, ptr %l, align 8
  br label %for.cond730, !llvm.loop !9

for.end748:                                       ; preds = %for.cond730
  br label %if.end751

if.else749:                                       ; preds = %if.then722
  %504 = load ptr, ptr %fd.addr, align 8
  %call750 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %504, ptr noundef @.str.90)
  br label %if.end751

if.end751:                                        ; preds = %if.else749, %for.end748
  br label %if.end752

if.end752:                                        ; preds = %if.end751, %if.end716
  %505 = load ptr, ptr %tif.addr, align 8
  %tif_dir753 = getelementptr inbounds %struct.tiff, ptr %505, i32 0, i32 6
  %td_fieldsset754 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir753, i32 0, i32 0
  %arrayidx755 = getelementptr inbounds [3 x i64], ptr %td_fieldsset754, i64 0, i64 1
  %506 = load i64, ptr %arrayidx755, align 8
  %and756 = and i64 %506, 1024
  %tobool757 = icmp ne i64 %and756, 0
  br i1 %tobool757, label %if.then758, label %if.end765

if.then758:                                       ; preds = %if.end752
  %507 = load ptr, ptr %fd.addr, align 8
  %508 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %508, i32 0, i32 51
  %509 = load ptr, ptr %td_whitepoint, align 8
  %arrayidx759 = getelementptr inbounds float, ptr %509, i64 0
  %510 = load float, ptr %arrayidx759, align 4
  %conv760 = fpext float %510 to double
  %511 = load ptr, ptr %td, align 8
  %td_whitepoint761 = getelementptr inbounds %struct.TIFFDirectory, ptr %511, i32 0, i32 51
  %512 = load ptr, ptr %td_whitepoint761, align 8
  %arrayidx762 = getelementptr inbounds float, ptr %512, i64 1
  %513 = load float, ptr %arrayidx762, align 4
  %conv763 = fpext float %513 to double
  %call764 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef @.str.91, double noundef %conv760, double noundef %conv763)
  br label %if.end765

if.end765:                                        ; preds = %if.then758, %if.end752
  %514 = load ptr, ptr %tif.addr, align 8
  %tif_dir766 = getelementptr inbounds %struct.tiff, ptr %514, i32 0, i32 6
  %td_fieldsset767 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir766, i32 0, i32 0
  %arrayidx768 = getelementptr inbounds [3 x i64], ptr %td_fieldsset767, i64 0, i64 1
  %515 = load i64, ptr %arrayidx768, align 8
  %and769 = and i64 %515, 2048
  %tobool770 = icmp ne i64 %and769, 0
  br i1 %tobool770, label %if.then771, label %if.end790

if.then771:                                       ; preds = %if.end765
  %516 = load ptr, ptr %fd.addr, align 8
  %517 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %517, i32 0, i32 52
  %518 = load ptr, ptr %td_primarychromas, align 8
  %arrayidx772 = getelementptr inbounds float, ptr %518, i64 0
  %519 = load float, ptr %arrayidx772, align 4
  %conv773 = fpext float %519 to double
  %520 = load ptr, ptr %td, align 8
  %td_primarychromas774 = getelementptr inbounds %struct.TIFFDirectory, ptr %520, i32 0, i32 52
  %521 = load ptr, ptr %td_primarychromas774, align 8
  %arrayidx775 = getelementptr inbounds float, ptr %521, i64 1
  %522 = load float, ptr %arrayidx775, align 4
  %conv776 = fpext float %522 to double
  %523 = load ptr, ptr %td, align 8
  %td_primarychromas777 = getelementptr inbounds %struct.TIFFDirectory, ptr %523, i32 0, i32 52
  %524 = load ptr, ptr %td_primarychromas777, align 8
  %arrayidx778 = getelementptr inbounds float, ptr %524, i64 2
  %525 = load float, ptr %arrayidx778, align 4
  %conv779 = fpext float %525 to double
  %526 = load ptr, ptr %td, align 8
  %td_primarychromas780 = getelementptr inbounds %struct.TIFFDirectory, ptr %526, i32 0, i32 52
  %527 = load ptr, ptr %td_primarychromas780, align 8
  %arrayidx781 = getelementptr inbounds float, ptr %527, i64 3
  %528 = load float, ptr %arrayidx781, align 4
  %conv782 = fpext float %528 to double
  %529 = load ptr, ptr %td, align 8
  %td_primarychromas783 = getelementptr inbounds %struct.TIFFDirectory, ptr %529, i32 0, i32 52
  %530 = load ptr, ptr %td_primarychromas783, align 8
  %arrayidx784 = getelementptr inbounds float, ptr %530, i64 4
  %531 = load float, ptr %arrayidx784, align 4
  %conv785 = fpext float %531 to double
  %532 = load ptr, ptr %td, align 8
  %td_primarychromas786 = getelementptr inbounds %struct.TIFFDirectory, ptr %532, i32 0, i32 52
  %533 = load ptr, ptr %td_primarychromas786, align 8
  %arrayidx787 = getelementptr inbounds float, ptr %533, i64 5
  %534 = load float, ptr %arrayidx787, align 4
  %conv788 = fpext float %534 to double
  %call789 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %516, ptr noundef @.str.92, double noundef %conv773, double noundef %conv776, double noundef %conv779, double noundef %conv782, double noundef %conv785, double noundef %conv788)
  br label %if.end790

if.end790:                                        ; preds = %if.then771, %if.end765
  %535 = load ptr, ptr %tif.addr, align 8
  %tif_dir791 = getelementptr inbounds %struct.tiff, ptr %535, i32 0, i32 6
  %td_fieldsset792 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir791, i32 0, i32 0
  %arrayidx793 = getelementptr inbounds [3 x i64], ptr %td_fieldsset792, i64 0, i64 1
  %536 = load i64, ptr %arrayidx793, align 8
  %and794 = and i64 %536, 512
  %tobool795 = icmp ne i64 %and794, 0
  br i1 %tobool795, label %if.then796, label %if.end821

if.then796:                                       ; preds = %if.end790
  %537 = load ptr, ptr %fd.addr, align 8
  %call797 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %537, ptr noundef @.str.93)
  store i16 0, ptr %i, align 2
  br label %for.cond798

for.cond798:                                      ; preds = %for.inc818, %if.then796
  %538 = load i16, ptr %i, align 2
  %conv799 = zext i16 %538 to i32
  %539 = load ptr, ptr %td, align 8
  %td_samplesperpixel800 = getelementptr inbounds %struct.TIFFDirectory, ptr %539, i32 0, i32 15
  %540 = load i16, ptr %td_samplesperpixel800, align 2
  %conv801 = zext i16 %540 to i32
  %cmp802 = icmp slt i32 %conv799, %conv801
  br i1 %cmp802, label %for.body804, label %for.end820

for.body804:                                      ; preds = %for.cond798
  %541 = load ptr, ptr %fd.addr, align 8
  %542 = load i16, ptr %i, align 2
  %conv805 = zext i16 %542 to i32
  %543 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %543, i32 0, i32 53
  %544 = load ptr, ptr %td_refblackwhite, align 8
  %545 = load i16, ptr %i, align 2
  %conv806 = zext i16 %545 to i32
  %mul = mul nsw i32 2, %conv806
  %add = add nsw i32 %mul, 0
  %idxprom807 = sext i32 %add to i64
  %arrayidx808 = getelementptr inbounds float, ptr %544, i64 %idxprom807
  %546 = load float, ptr %arrayidx808, align 4
  %conv809 = fpext float %546 to double
  %547 = load ptr, ptr %td, align 8
  %td_refblackwhite810 = getelementptr inbounds %struct.TIFFDirectory, ptr %547, i32 0, i32 53
  %548 = load ptr, ptr %td_refblackwhite810, align 8
  %549 = load i16, ptr %i, align 2
  %conv811 = zext i16 %549 to i32
  %mul812 = mul nsw i32 2, %conv811
  %add813 = add nsw i32 %mul812, 1
  %idxprom814 = sext i32 %add813 to i64
  %arrayidx815 = getelementptr inbounds float, ptr %548, i64 %idxprom814
  %550 = load float, ptr %arrayidx815, align 4
  %conv816 = fpext float %550 to double
  %call817 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %541, ptr noundef @.str.94, i32 noundef %conv805, double noundef %conv809, double noundef %conv816)
  br label %for.inc818

for.inc818:                                       ; preds = %for.body804
  %551 = load i16, ptr %i, align 2
  %inc819 = add i16 %551, 1
  store i16 %inc819, ptr %i, align 2
  br label %for.cond798, !llvm.loop !10

for.end820:                                       ; preds = %for.cond798
  br label %if.end821

if.end821:                                        ; preds = %for.end820, %if.end790
  %552 = load ptr, ptr %tif.addr, align 8
  %tif_dir822 = getelementptr inbounds %struct.tiff, ptr %552, i32 0, i32 6
  %td_fieldsset823 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir822, i32 0, i32 0
  %arrayidx824 = getelementptr inbounds [3 x i64], ptr %td_fieldsset823, i64 0, i64 1
  %553 = load i64, ptr %arrayidx824, align 8
  %and825 = and i64 %553, 4096
  %tobool826 = icmp ne i64 %and825, 0
  br i1 %tobool826, label %if.then827, label %if.end868

if.then827:                                       ; preds = %if.end821
  %554 = load ptr, ptr %fd.addr, align 8
  %call828 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %554, ptr noundef @.str.95)
  %555 = load i64, ptr %flags.addr, align 8
  %and829 = and i64 %555, 2
  %tobool830 = icmp ne i64 %and829, 0
  br i1 %tobool830, label %if.then831, label %if.else865

if.then831:                                       ; preds = %if.then827
  %556 = load ptr, ptr %fd.addr, align 8
  %call832 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %556, ptr noundef @.str.10)
  %557 = load ptr, ptr %td, align 8
  %td_bitspersample833 = getelementptr inbounds %struct.TIFFDirectory, ptr %557, i32 0, i32 8
  %558 = load i16, ptr %td_bitspersample833, align 8
  %conv834 = zext i16 %558 to i32
  %sh_prom835 = zext i32 %conv834 to i64
  %shl836 = shl i64 1, %sh_prom835
  store i64 %shl836, ptr %n, align 8
  store i64 0, ptr %l, align 8
  br label %for.cond837

for.cond837:                                      ; preds = %for.inc862, %if.then831
  %559 = load i64, ptr %l, align 8
  %560 = load i64, ptr %n, align 8
  %cmp838 = icmp slt i64 %559, %560
  br i1 %cmp838, label %for.body840, label %for.end864

for.body840:                                      ; preds = %for.cond837
  %561 = load ptr, ptr %fd.addr, align 8
  %562 = load i64, ptr %l, align 8
  %563 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %563, i32 0, i32 54
  %arrayidx841 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  %564 = load ptr, ptr %arrayidx841, align 8
  %565 = load i64, ptr %l, align 8
  %arrayidx842 = getelementptr inbounds i16, ptr %564, i64 %565
  %566 = load i16, ptr %arrayidx842, align 2
  %conv843 = zext i16 %566 to i32
  %call844 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %561, ptr noundef @.str.96, i64 noundef %562, i32 noundef %conv843)
  store i16 1, ptr %i, align 2
  br label %for.cond845

for.cond845:                                      ; preds = %for.inc858, %for.body840
  %567 = load i16, ptr %i, align 2
  %conv846 = zext i16 %567 to i32
  %568 = load ptr, ptr %td, align 8
  %td_samplesperpixel847 = getelementptr inbounds %struct.TIFFDirectory, ptr %568, i32 0, i32 15
  %569 = load i16, ptr %td_samplesperpixel847, align 2
  %conv848 = zext i16 %569 to i32
  %cmp849 = icmp slt i32 %conv846, %conv848
  br i1 %cmp849, label %for.body851, label %for.end860

for.body851:                                      ; preds = %for.cond845
  %570 = load ptr, ptr %fd.addr, align 8
  %571 = load ptr, ptr %td, align 8
  %td_transferfunction852 = getelementptr inbounds %struct.TIFFDirectory, ptr %571, i32 0, i32 54
  %572 = load i16, ptr %i, align 2
  %idxprom853 = zext i16 %572 to i64
  %arrayidx854 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction852, i64 0, i64 %idxprom853
  %573 = load ptr, ptr %arrayidx854, align 8
  %574 = load i64, ptr %l, align 8
  %arrayidx855 = getelementptr inbounds i16, ptr %573, i64 %574
  %575 = load i16, ptr %arrayidx855, align 2
  %conv856 = zext i16 %575 to i32
  %call857 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %570, ptr noundef @.str.97, i32 noundef %conv856)
  br label %for.inc858

for.inc858:                                       ; preds = %for.body851
  %576 = load i16, ptr %i, align 2
  %inc859 = add i16 %576, 1
  store i16 %inc859, ptr %i, align 2
  br label %for.cond845, !llvm.loop !11

for.end860:                                       ; preds = %for.cond845
  %577 = load ptr, ptr %fd.addr, align 8
  %call861 = call i32 @fputc(i32 noundef 10, ptr noundef %577)
  br label %for.inc862

for.inc862:                                       ; preds = %for.end860
  %578 = load i64, ptr %l, align 8
  %inc863 = add nsw i64 %578, 1
  store i64 %inc863, ptr %l, align 8
  br label %for.cond837, !llvm.loop !12

for.end864:                                       ; preds = %for.cond837
  br label %if.end867

if.else865:                                       ; preds = %if.then827
  %579 = load ptr, ptr %fd.addr, align 8
  %call866 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %579, ptr noundef @.str.90)
  br label %if.end867

if.end867:                                        ; preds = %if.else865, %for.end864
  br label %if.end868

if.end868:                                        ; preds = %if.end867, %if.end821
  %580 = load ptr, ptr %tif.addr, align 8
  %tif_dir869 = getelementptr inbounds %struct.tiff, ptr %580, i32 0, i32 6
  %td_fieldsset870 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir869, i32 0, i32 0
  %arrayidx871 = getelementptr inbounds [3 x i64], ptr %td_fieldsset870, i64 0, i64 1
  %581 = load i64, ptr %arrayidx871, align 8
  %and872 = and i64 %581, 524288
  %tobool873 = icmp ne i64 %and872, 0
  br i1 %tobool873, label %if.then874, label %if.end876

if.then874:                                       ; preds = %if.end868
  %582 = load ptr, ptr %fd.addr, align 8
  %583 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %583, i32 0, i32 61
  %584 = load i64, ptr %td_profileLength, align 8
  %call875 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %582, ptr noundef @.str.98, i64 noundef %584)
  br label %if.end876

if.end876:                                        ; preds = %if.then874, %if.end868
  %585 = load ptr, ptr %tif.addr, align 8
  %tif_dir877 = getelementptr inbounds %struct.tiff, ptr %585, i32 0, i32 6
  %td_fieldsset878 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir877, i32 0, i32 0
  %arrayidx879 = getelementptr inbounds [3 x i64], ptr %td_fieldsset878, i64 0, i64 1
  %586 = load i64, ptr %arrayidx879, align 8
  %and880 = and i64 %586, 1048576
  %tobool881 = icmp ne i64 %and880, 0
  br i1 %tobool881, label %if.then882, label %if.end884

if.then882:                                       ; preds = %if.end876
  %587 = load ptr, ptr %fd.addr, align 8
  %588 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %588, i32 0, i32 63
  %589 = load i64, ptr %td_photoshopLength, align 8
  %call883 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %587, ptr noundef @.str.99, i64 noundef %589)
  br label %if.end884

if.end884:                                        ; preds = %if.then882, %if.end876
  %590 = load ptr, ptr %tif.addr, align 8
  %tif_dir885 = getelementptr inbounds %struct.tiff, ptr %590, i32 0, i32 6
  %td_fieldsset886 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir885, i32 0, i32 0
  %arrayidx887 = getelementptr inbounds [3 x i64], ptr %td_fieldsset886, i64 0, i64 1
  %591 = load i64, ptr %arrayidx887, align 8
  %and888 = and i64 %591, 2097152
  %tobool889 = icmp ne i64 %and888, 0
  br i1 %tobool889, label %if.then890, label %if.end892

if.then890:                                       ; preds = %if.end884
  %592 = load ptr, ptr %fd.addr, align 8
  %593 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %593, i32 0, i32 65
  %594 = load i64, ptr %td_richtiffiptcLength, align 8
  %call891 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %592, ptr noundef @.str.100, i64 noundef %594)
  br label %if.end892

if.end892:                                        ; preds = %if.then890, %if.end884
  %595 = load ptr, ptr %tif.addr, align 8
  %tif_dir893 = getelementptr inbounds %struct.tiff, ptr %595, i32 0, i32 6
  %td_fieldsset894 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir893, i32 0, i32 0
  %arrayidx895 = getelementptr inbounds [3 x i64], ptr %td_fieldsset894, i64 0, i64 1
  %596 = load i64, ptr %arrayidx895, align 8
  %and896 = and i64 %596, 131072
  %tobool897 = icmp ne i64 %and896, 0
  br i1 %tobool897, label %if.then898, label %if.end913

if.then898:                                       ; preds = %if.end892
  %597 = load ptr, ptr %fd.addr, align 8
  %call899 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %597, ptr noundef @.str.101)
  store i16 0, ptr %i, align 2
  br label %for.cond900

for.cond900:                                      ; preds = %for.inc909, %if.then898
  %598 = load i16, ptr %i, align 2
  %conv901 = zext i16 %598 to i32
  %599 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %599, i32 0, i32 46
  %600 = load i16, ptr %td_nsubifd, align 8
  %conv902 = zext i16 %600 to i32
  %cmp903 = icmp slt i32 %conv901, %conv902
  br i1 %cmp903, label %for.body905, label %for.end911

for.body905:                                      ; preds = %for.cond900
  %601 = load ptr, ptr %fd.addr, align 8
  %602 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %602, i32 0, i32 47
  %603 = load ptr, ptr %td_subifd, align 8
  %604 = load i16, ptr %i, align 2
  %idxprom906 = zext i16 %604 to i64
  %arrayidx907 = getelementptr inbounds i64, ptr %603, i64 %idxprom906
  %605 = load i64, ptr %arrayidx907, align 8
  %call908 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %601, ptr noundef @.str.102, i64 noundef %605)
  br label %for.inc909

for.inc909:                                       ; preds = %for.body905
  %606 = load i16, ptr %i, align 2
  %inc910 = add i16 %606, 1
  store i16 %inc910, ptr %i, align 2
  br label %for.cond900, !llvm.loop !13

for.end911:                                       ; preds = %for.cond900
  %607 = load ptr, ptr %fd.addr, align 8
  %call912 = call i32 @fputc(i32 noundef 10, ptr noundef %607)
  br label %if.end913

if.end913:                                        ; preds = %for.end911, %if.end892
  %608 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %608, i32 0, i32 59
  %609 = load ptr, ptr %tif_printdir, align 8
  %tobool914 = icmp ne ptr %609, null
  br i1 %tobool914, label %if.then915, label %if.end917

if.then915:                                       ; preds = %if.end913
  %610 = load ptr, ptr %tif.addr, align 8
  %tif_printdir916 = getelementptr inbounds %struct.tiff, ptr %610, i32 0, i32 59
  %611 = load ptr, ptr %tif_printdir916, align 8
  %612 = load ptr, ptr %tif.addr, align 8
  %613 = load ptr, ptr %fd.addr, align 8
  %614 = load i64, ptr %flags.addr, align 8
  call void %611(ptr noundef %612, ptr noundef %613, i64 noundef %614)
  br label %if.end917

if.end917:                                        ; preds = %if.then915, %if.end913
  %615 = load i64, ptr %flags.addr, align 8
  %and918 = and i64 %615, 1
  %tobool919 = icmp ne i64 %and918, 0
  br i1 %tobool919, label %land.lhs.true920, label %if.end942

land.lhs.true920:                                 ; preds = %if.end917
  %616 = load ptr, ptr %tif.addr, align 8
  %tif_dir921 = getelementptr inbounds %struct.tiff, ptr %616, i32 0, i32 6
  %td_fieldsset922 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir921, i32 0, i32 0
  %arrayidx923 = getelementptr inbounds [3 x i64], ptr %td_fieldsset922, i64 0, i64 0
  %617 = load i64, ptr %arrayidx923, align 8
  %and924 = and i64 %617, 33554432
  %tobool925 = icmp ne i64 %and924, 0
  br i1 %tobool925, label %if.then926, label %if.end942

if.then926:                                       ; preds = %land.lhs.true920
  %618 = load ptr, ptr %fd.addr, align 8
  %619 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %619, i32 0, i32 43
  %620 = load i64, ptr %td_nstrips, align 8
  %621 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %621, i32 0, i32 3
  %622 = load i64, ptr %tif_flags, align 8
  %and927 = and i64 %622, 1024
  %cmp928 = icmp ne i64 %and927, 0
  %623 = zext i1 %cmp928 to i64
  %cond = select i1 %cmp928, ptr @.str.104, ptr @.str.105
  %call930 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %618, ptr noundef @.str.103, i64 noundef %620, ptr noundef %cond)
  store i64 0, ptr %s, align 8
  br label %for.cond931

for.cond931:                                      ; preds = %for.inc939, %if.then926
  %624 = load i64, ptr %s, align 8
  %625 = load ptr, ptr %td, align 8
  %td_nstrips932 = getelementptr inbounds %struct.TIFFDirectory, ptr %625, i32 0, i32 43
  %626 = load i64, ptr %td_nstrips932, align 8
  %cmp933 = icmp ult i64 %624, %626
  br i1 %cmp933, label %for.body935, label %for.end941

for.body935:                                      ; preds = %for.cond931
  %627 = load ptr, ptr %fd.addr, align 8
  %628 = load i64, ptr %s, align 8
  %629 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %629, i32 0, i32 44
  %630 = load ptr, ptr %td_stripoffset, align 8
  %631 = load i64, ptr %s, align 8
  %arrayidx936 = getelementptr inbounds i64, ptr %630, i64 %631
  %632 = load i64, ptr %arrayidx936, align 8
  %633 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %633, i32 0, i32 45
  %634 = load ptr, ptr %td_stripbytecount, align 8
  %635 = load i64, ptr %s, align 8
  %arrayidx937 = getelementptr inbounds i64, ptr %634, i64 %635
  %636 = load i64, ptr %arrayidx937, align 8
  %call938 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %627, ptr noundef @.str.106, i64 noundef %628, i64 noundef %632, i64 noundef %636)
  br label %for.inc939

for.inc939:                                       ; preds = %for.body935
  %637 = load i64, ptr %s, align 8
  %inc940 = add i64 %637, 1
  store i64 %inc940, ptr %s, align 8
  br label %for.cond931, !llvm.loop !14

for.end941:                                       ; preds = %for.cond931
  br label %if.end942

if.end942:                                        ; preds = %for.end941, %land.lhs.true920, %if.end917
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFprintAsciiTag(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
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
  store ptr %cp, ptr %cp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load ptr, ptr %cp.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cp.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @isprint(i32 noundef %conv2) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %cp.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load ptr, ptr %fd.addr, align 8
  %call4 = call i32 @fputc(i32 noundef %conv3, ptr noundef %6)
  br label %for.inc22

if.end:                                           ; preds = %for.body
  store ptr @.str.107, ptr %tp, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %tp, align 8
  %8 = load i8, ptr %7, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %9 = load ptr, ptr %tp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %tp, align 8
  %10 = load i8, ptr %9, align 1
  %conv8 = sext i8 %10 to i32
  %11 = load ptr, ptr %cp.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body7
  br label %for.end

if.end13:                                         ; preds = %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %13 = load ptr, ptr %tp, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr14, ptr %tp, align 8
  br label %for.cond5, !llvm.loop !15

for.end:                                          ; preds = %if.then12, %for.cond5
  %14 = load ptr, ptr %tp, align 8
  %15 = load i8, ptr %14, align 1
  %tobool15 = icmp ne i8 %15, 0
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.end
  %16 = load ptr, ptr %fd.addr, align 8
  %17 = load ptr, ptr %tp, align 8
  %18 = load i8, ptr %17, align 1
  %conv17 = sext i8 %18 to i32
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.108, i32 noundef %conv17)
  br label %if.end21

if.else:                                          ; preds = %for.end
  %19 = load ptr, ptr %fd.addr, align 8
  %20 = load ptr, ptr %cp.addr, align 8
  %21 = load i8, ptr %20, align 1
  %conv19 = sext i8 %21 to i32
  %and = and i32 %conv19, 255
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.109, i32 noundef %and)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21, %if.then
  %22 = load ptr, ptr %cp.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr23, ptr %cp.addr, align 8
  br label %for.cond, !llvm.loop !16

for.end24:                                        ; preds = %for.cond
  ret void
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isprint(i32 noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_0(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_1(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_2(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_3(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_4(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_5(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_6(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_7(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_8(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_9(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_10(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_tif_print_11(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
entry:
  %fd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.110, ptr noundef %1)
  %2 = load ptr, ptr %fd.addr, align 8
  %3 = load ptr, ptr %value.addr, align 8
  call void @_TIFFprintAscii(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %fd.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.111)
  ret void
}

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
