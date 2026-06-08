; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_print.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2dither/tif_print.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
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
  %m145 = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %s = alloca i32, align 4
  store ptr %tif, ptr %tif.addr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store i64 %flags, ptr %flags.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %tif_diroff, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef %conv)
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
  br i1 %tobool, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %fd.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1)
  store ptr @.str.2, ptr %sep, align 8
  %7 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %td_subfiletype, align 8
  %and3 = and i32 %8, 1
  %tobool4 = icmp ne i32 %and3, 0
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
  %12 = load i32, ptr %td_subfiletype7, align 8
  %and8 = and i32 %12, 2
  %tobool9 = icmp ne i32 %and8, 0
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
  %16 = load i32, ptr %td_subfiletype13, align 8
  %and14 = and i32 %16, 4
  %tobool15 = icmp ne i32 %and14, 0
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
  %21 = load i32, ptr %td_subfiletype19, align 8
  %conv20 = zext i32 %21 to i64
  %22 = load ptr, ptr %td, align 8
  %td_subfiletype21 = getelementptr inbounds %struct.TIFFDirectory, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %td_subfiletype21, align 8
  %conv22 = zext i32 %23 to i64
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.7, i64 noundef %conv20, i64 noundef %conv22)
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %entry
  %24 = load ptr, ptr %tif.addr, align 8
  %tif_dir25 = getelementptr inbounds %struct.tiff, ptr %24, i32 0, i32 6
  %td_fieldsset26 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x i64], ptr %td_fieldsset26, i64 0, i64 0
  %25 = load i64, ptr %arrayidx27, align 8
  %and28 = and i64 %25, 2
  %tobool29 = icmp ne i64 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end44

if.then30:                                        ; preds = %if.end24
  %26 = load ptr, ptr %fd.addr, align 8
  %27 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %td_imagewidth, align 8
  %conv31 = zext i32 %28 to i64
  %29 = load ptr, ptr %td, align 8
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %td_imagelength, align 4
  %conv32 = zext i32 %30 to i64
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.8, i64 noundef %conv31, i64 noundef %conv32)
  %31 = load ptr, ptr %tif.addr, align 8
  %tif_dir34 = getelementptr inbounds %struct.tiff, ptr %31, i32 0, i32 6
  %td_fieldsset35 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir34, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x i64], ptr %td_fieldsset35, i64 0, i64 1
  %32 = load i64, ptr %arrayidx36, align 8
  %and37 = and i64 %32, 8
  %tobool38 = icmp ne i64 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.then30
  %33 = load ptr, ptr %fd.addr, align 8
  %34 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %td_imagedepth, align 8
  %conv40 = zext i32 %35 to i64
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.9, i64 noundef %conv40)
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then30
  %36 = load ptr, ptr %fd.addr, align 8
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.10)
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end24
  %37 = load ptr, ptr %tif.addr, align 8
  %tif_dir45 = getelementptr inbounds %struct.tiff, ptr %37, i32 0, i32 6
  %td_fieldsset46 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x i64], ptr %td_fieldsset46, i64 0, i64 1
  %38 = load i64, ptr %arrayidx47, align 8
  %and48 = and i64 %38, 8388608
  %tobool49 = icmp ne i64 %and48, 0
  br i1 %tobool49, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end44
  %39 = load ptr, ptr %tif.addr, align 8
  %tif_dir50 = getelementptr inbounds %struct.tiff, ptr %39, i32 0, i32 6
  %td_fieldsset51 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir50, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x i64], ptr %td_fieldsset51, i64 0, i64 1
  %40 = load i64, ptr %arrayidx52, align 8
  %and53 = and i64 %40, 16777216
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %lor.lhs.false, %if.end44
  %41 = load ptr, ptr %fd.addr, align 8
  %42 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %42, i32 0, i32 67
  %43 = load i32, ptr %td_imagefullwidth, align 8
  %conv56 = zext i32 %43 to i64
  %44 = load ptr, ptr %td, align 8
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %44, i32 0, i32 68
  %45 = load i32, ptr %td_imagefulllength, align 4
  %conv57 = zext i32 %45 to i64
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.11, i64 noundef %conv56, i64 noundef %conv57)
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %lor.lhs.false
  %46 = load ptr, ptr %tif.addr, align 8
  %tif_dir60 = getelementptr inbounds %struct.tiff, ptr %46, i32 0, i32 6
  %td_fieldsset61 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [3 x i64], ptr %td_fieldsset61, i64 0, i64 1
  %47 = load i64, ptr %arrayidx62, align 8
  %and63 = and i64 %47, 33554432
  %tobool64 = icmp ne i64 %and63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end59
  %48 = load ptr, ptr %fd.addr, align 8
  %49 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %49, i32 0, i32 69
  %50 = load ptr, ptr %td_textureformat, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_0(ptr noundef %48, ptr noundef @.str.12, ptr noundef %50)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end59
  %51 = load ptr, ptr %tif.addr, align 8
  %tif_dir67 = getelementptr inbounds %struct.tiff, ptr %51, i32 0, i32 6
  %td_fieldsset68 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x i64], ptr %td_fieldsset68, i64 0, i64 1
  %52 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %52, 67108864
  %tobool71 = icmp ne i64 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end66
  %53 = load ptr, ptr %fd.addr, align 8
  %54 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %54, i32 0, i32 70
  %55 = load ptr, ptr %td_wrapmodes, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_1(ptr noundef %53, ptr noundef @.str.13, ptr noundef %55)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end66
  %56 = load ptr, ptr %tif.addr, align 8
  %tif_dir74 = getelementptr inbounds %struct.tiff, ptr %56, i32 0, i32 6
  %td_fieldsset75 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir74, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x i64], ptr %td_fieldsset75, i64 0, i64 1
  %57 = load i64, ptr %arrayidx76, align 8
  %and77 = and i64 %57, 134217728
  %tobool78 = icmp ne i64 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end73
  %58 = load ptr, ptr %fd.addr, align 8
  %59 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %59, i32 0, i32 71
  %60 = load float, ptr %td_fovcot, align 8
  %conv80 = fpext float %60 to double
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.14, double noundef %conv80)
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end73
  %61 = load ptr, ptr %tif.addr, align 8
  %tif_dir83 = getelementptr inbounds %struct.tiff, ptr %61, i32 0, i32 6
  %td_fieldsset84 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir83, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [3 x i64], ptr %td_fieldsset84, i64 0, i64 1
  %62 = load i64, ptr %arrayidx85, align 8
  %and86 = and i64 %62, 268435456
  %tobool87 = icmp ne i64 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end138

if.then88:                                        ; preds = %if.end82
  %63 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %63, i32 0, i32 72
  %64 = load ptr, ptr %td_matrixWorldToScreen, align 8
  store ptr %64, ptr %m, align 8
  %65 = load ptr, ptr %fd.addr, align 8
  %66 = load ptr, ptr %m, align 8
  %arrayidx89 = getelementptr inbounds [4 x [4 x float]], ptr %66, i64 0, i64 0
  %arrayidx90 = getelementptr inbounds [4 x float], ptr %arrayidx89, i64 0, i64 0
  %67 = load float, ptr %arrayidx90, align 4
  %conv91 = fpext float %67 to double
  %68 = load ptr, ptr %m, align 8
  %arrayidx92 = getelementptr inbounds [4 x [4 x float]], ptr %68, i64 0, i64 0
  %arrayidx93 = getelementptr inbounds [4 x float], ptr %arrayidx92, i64 0, i64 1
  %69 = load float, ptr %arrayidx93, align 4
  %conv94 = fpext float %69 to double
  %70 = load ptr, ptr %m, align 8
  %arrayidx95 = getelementptr inbounds [4 x [4 x float]], ptr %70, i64 0, i64 0
  %arrayidx96 = getelementptr inbounds [4 x float], ptr %arrayidx95, i64 0, i64 2
  %71 = load float, ptr %arrayidx96, align 4
  %conv97 = fpext float %71 to double
  %72 = load ptr, ptr %m, align 8
  %arrayidx98 = getelementptr inbounds [4 x [4 x float]], ptr %72, i64 0, i64 0
  %arrayidx99 = getelementptr inbounds [4 x float], ptr %arrayidx98, i64 0, i64 3
  %73 = load float, ptr %arrayidx99, align 4
  %conv100 = fpext float %73 to double
  %74 = load ptr, ptr %m, align 8
  %arrayidx101 = getelementptr inbounds [4 x [4 x float]], ptr %74, i64 0, i64 1
  %arrayidx102 = getelementptr inbounds [4 x float], ptr %arrayidx101, i64 0, i64 0
  %75 = load float, ptr %arrayidx102, align 4
  %conv103 = fpext float %75 to double
  %76 = load ptr, ptr %m, align 8
  %arrayidx104 = getelementptr inbounds [4 x [4 x float]], ptr %76, i64 0, i64 1
  %arrayidx105 = getelementptr inbounds [4 x float], ptr %arrayidx104, i64 0, i64 1
  %77 = load float, ptr %arrayidx105, align 4
  %conv106 = fpext float %77 to double
  %78 = load ptr, ptr %m, align 8
  %arrayidx107 = getelementptr inbounds [4 x [4 x float]], ptr %78, i64 0, i64 1
  %arrayidx108 = getelementptr inbounds [4 x float], ptr %arrayidx107, i64 0, i64 2
  %79 = load float, ptr %arrayidx108, align 4
  %conv109 = fpext float %79 to double
  %80 = load ptr, ptr %m, align 8
  %arrayidx110 = getelementptr inbounds [4 x [4 x float]], ptr %80, i64 0, i64 1
  %arrayidx111 = getelementptr inbounds [4 x float], ptr %arrayidx110, i64 0, i64 3
  %81 = load float, ptr %arrayidx111, align 4
  %conv112 = fpext float %81 to double
  %82 = load ptr, ptr %m, align 8
  %arrayidx113 = getelementptr inbounds [4 x [4 x float]], ptr %82, i64 0, i64 2
  %arrayidx114 = getelementptr inbounds [4 x float], ptr %arrayidx113, i64 0, i64 0
  %83 = load float, ptr %arrayidx114, align 4
  %conv115 = fpext float %83 to double
  %84 = load ptr, ptr %m, align 8
  %arrayidx116 = getelementptr inbounds [4 x [4 x float]], ptr %84, i64 0, i64 2
  %arrayidx117 = getelementptr inbounds [4 x float], ptr %arrayidx116, i64 0, i64 1
  %85 = load float, ptr %arrayidx117, align 4
  %conv118 = fpext float %85 to double
  %86 = load ptr, ptr %m, align 8
  %arrayidx119 = getelementptr inbounds [4 x [4 x float]], ptr %86, i64 0, i64 2
  %arrayidx120 = getelementptr inbounds [4 x float], ptr %arrayidx119, i64 0, i64 2
  %87 = load float, ptr %arrayidx120, align 4
  %conv121 = fpext float %87 to double
  %88 = load ptr, ptr %m, align 8
  %arrayidx122 = getelementptr inbounds [4 x [4 x float]], ptr %88, i64 0, i64 2
  %arrayidx123 = getelementptr inbounds [4 x float], ptr %arrayidx122, i64 0, i64 3
  %89 = load float, ptr %arrayidx123, align 4
  %conv124 = fpext float %89 to double
  %90 = load ptr, ptr %m, align 8
  %arrayidx125 = getelementptr inbounds [4 x [4 x float]], ptr %90, i64 0, i64 3
  %arrayidx126 = getelementptr inbounds [4 x float], ptr %arrayidx125, i64 0, i64 0
  %91 = load float, ptr %arrayidx126, align 4
  %conv127 = fpext float %91 to double
  %92 = load ptr, ptr %m, align 8
  %arrayidx128 = getelementptr inbounds [4 x [4 x float]], ptr %92, i64 0, i64 3
  %arrayidx129 = getelementptr inbounds [4 x float], ptr %arrayidx128, i64 0, i64 1
  %93 = load float, ptr %arrayidx129, align 4
  %conv130 = fpext float %93 to double
  %94 = load ptr, ptr %m, align 8
  %arrayidx131 = getelementptr inbounds [4 x [4 x float]], ptr %94, i64 0, i64 3
  %arrayidx132 = getelementptr inbounds [4 x float], ptr %arrayidx131, i64 0, i64 2
  %95 = load float, ptr %arrayidx132, align 4
  %conv133 = fpext float %95 to double
  %96 = load ptr, ptr %m, align 8
  %arrayidx134 = getelementptr inbounds [4 x [4 x float]], ptr %96, i64 0, i64 3
  %arrayidx135 = getelementptr inbounds [4 x float], ptr %arrayidx134, i64 0, i64 3
  %97 = load float, ptr %arrayidx135, align 4
  %conv136 = fpext float %97 to double
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.15, double noundef %conv91, double noundef %conv94, double noundef %conv97, double noundef %conv100, double noundef %conv103, double noundef %conv106, double noundef %conv109, double noundef %conv112, double noundef %conv115, double noundef %conv118, double noundef %conv121, double noundef %conv124, double noundef %conv127, double noundef %conv130, double noundef %conv133, double noundef %conv136)
  br label %if.end138

if.end138:                                        ; preds = %if.then88, %if.end82
  %98 = load ptr, ptr %tif.addr, align 8
  %tif_dir139 = getelementptr inbounds %struct.tiff, ptr %98, i32 0, i32 6
  %td_fieldsset140 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x i64], ptr %td_fieldsset140, i64 0, i64 1
  %99 = load i64, ptr %arrayidx141, align 8
  %and142 = and i64 %99, 536870912
  %tobool143 = icmp ne i64 %and142, 0
  br i1 %tobool143, label %if.then144, label %if.end195

if.then144:                                       ; preds = %if.end138
  %100 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %100, i32 0, i32 73
  %101 = load ptr, ptr %td_matrixWorldToCamera, align 8
  store ptr %101, ptr %m145, align 8
  %102 = load ptr, ptr %fd.addr, align 8
  %103 = load ptr, ptr %m145, align 8
  %arrayidx146 = getelementptr inbounds [4 x [4 x float]], ptr %103, i64 0, i64 0
  %arrayidx147 = getelementptr inbounds [4 x float], ptr %arrayidx146, i64 0, i64 0
  %104 = load float, ptr %arrayidx147, align 4
  %conv148 = fpext float %104 to double
  %105 = load ptr, ptr %m145, align 8
  %arrayidx149 = getelementptr inbounds [4 x [4 x float]], ptr %105, i64 0, i64 0
  %arrayidx150 = getelementptr inbounds [4 x float], ptr %arrayidx149, i64 0, i64 1
  %106 = load float, ptr %arrayidx150, align 4
  %conv151 = fpext float %106 to double
  %107 = load ptr, ptr %m145, align 8
  %arrayidx152 = getelementptr inbounds [4 x [4 x float]], ptr %107, i64 0, i64 0
  %arrayidx153 = getelementptr inbounds [4 x float], ptr %arrayidx152, i64 0, i64 2
  %108 = load float, ptr %arrayidx153, align 4
  %conv154 = fpext float %108 to double
  %109 = load ptr, ptr %m145, align 8
  %arrayidx155 = getelementptr inbounds [4 x [4 x float]], ptr %109, i64 0, i64 0
  %arrayidx156 = getelementptr inbounds [4 x float], ptr %arrayidx155, i64 0, i64 3
  %110 = load float, ptr %arrayidx156, align 4
  %conv157 = fpext float %110 to double
  %111 = load ptr, ptr %m145, align 8
  %arrayidx158 = getelementptr inbounds [4 x [4 x float]], ptr %111, i64 0, i64 1
  %arrayidx159 = getelementptr inbounds [4 x float], ptr %arrayidx158, i64 0, i64 0
  %112 = load float, ptr %arrayidx159, align 4
  %conv160 = fpext float %112 to double
  %113 = load ptr, ptr %m145, align 8
  %arrayidx161 = getelementptr inbounds [4 x [4 x float]], ptr %113, i64 0, i64 1
  %arrayidx162 = getelementptr inbounds [4 x float], ptr %arrayidx161, i64 0, i64 1
  %114 = load float, ptr %arrayidx162, align 4
  %conv163 = fpext float %114 to double
  %115 = load ptr, ptr %m145, align 8
  %arrayidx164 = getelementptr inbounds [4 x [4 x float]], ptr %115, i64 0, i64 1
  %arrayidx165 = getelementptr inbounds [4 x float], ptr %arrayidx164, i64 0, i64 2
  %116 = load float, ptr %arrayidx165, align 4
  %conv166 = fpext float %116 to double
  %117 = load ptr, ptr %m145, align 8
  %arrayidx167 = getelementptr inbounds [4 x [4 x float]], ptr %117, i64 0, i64 1
  %arrayidx168 = getelementptr inbounds [4 x float], ptr %arrayidx167, i64 0, i64 3
  %118 = load float, ptr %arrayidx168, align 4
  %conv169 = fpext float %118 to double
  %119 = load ptr, ptr %m145, align 8
  %arrayidx170 = getelementptr inbounds [4 x [4 x float]], ptr %119, i64 0, i64 2
  %arrayidx171 = getelementptr inbounds [4 x float], ptr %arrayidx170, i64 0, i64 0
  %120 = load float, ptr %arrayidx171, align 4
  %conv172 = fpext float %120 to double
  %121 = load ptr, ptr %m145, align 8
  %arrayidx173 = getelementptr inbounds [4 x [4 x float]], ptr %121, i64 0, i64 2
  %arrayidx174 = getelementptr inbounds [4 x float], ptr %arrayidx173, i64 0, i64 1
  %122 = load float, ptr %arrayidx174, align 4
  %conv175 = fpext float %122 to double
  %123 = load ptr, ptr %m145, align 8
  %arrayidx176 = getelementptr inbounds [4 x [4 x float]], ptr %123, i64 0, i64 2
  %arrayidx177 = getelementptr inbounds [4 x float], ptr %arrayidx176, i64 0, i64 2
  %124 = load float, ptr %arrayidx177, align 4
  %conv178 = fpext float %124 to double
  %125 = load ptr, ptr %m145, align 8
  %arrayidx179 = getelementptr inbounds [4 x [4 x float]], ptr %125, i64 0, i64 2
  %arrayidx180 = getelementptr inbounds [4 x float], ptr %arrayidx179, i64 0, i64 3
  %126 = load float, ptr %arrayidx180, align 4
  %conv181 = fpext float %126 to double
  %127 = load ptr, ptr %m145, align 8
  %arrayidx182 = getelementptr inbounds [4 x [4 x float]], ptr %127, i64 0, i64 3
  %arrayidx183 = getelementptr inbounds [4 x float], ptr %arrayidx182, i64 0, i64 0
  %128 = load float, ptr %arrayidx183, align 4
  %conv184 = fpext float %128 to double
  %129 = load ptr, ptr %m145, align 8
  %arrayidx185 = getelementptr inbounds [4 x [4 x float]], ptr %129, i64 0, i64 3
  %arrayidx186 = getelementptr inbounds [4 x float], ptr %arrayidx185, i64 0, i64 1
  %130 = load float, ptr %arrayidx186, align 4
  %conv187 = fpext float %130 to double
  %131 = load ptr, ptr %m145, align 8
  %arrayidx188 = getelementptr inbounds [4 x [4 x float]], ptr %131, i64 0, i64 3
  %arrayidx189 = getelementptr inbounds [4 x float], ptr %arrayidx188, i64 0, i64 2
  %132 = load float, ptr %arrayidx189, align 4
  %conv190 = fpext float %132 to double
  %133 = load ptr, ptr %m145, align 8
  %arrayidx191 = getelementptr inbounds [4 x [4 x float]], ptr %133, i64 0, i64 3
  %arrayidx192 = getelementptr inbounds [4 x float], ptr %arrayidx191, i64 0, i64 3
  %134 = load float, ptr %arrayidx192, align 4
  %conv193 = fpext float %134 to double
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.16, double noundef %conv148, double noundef %conv151, double noundef %conv154, double noundef %conv157, double noundef %conv160, double noundef %conv163, double noundef %conv166, double noundef %conv169, double noundef %conv172, double noundef %conv175, double noundef %conv178, double noundef %conv181, double noundef %conv184, double noundef %conv187, double noundef %conv190, double noundef %conv193)
  br label %if.end195

if.end195:                                        ; preds = %if.then144, %if.end138
  %135 = load ptr, ptr %tif.addr, align 8
  %tif_dir196 = getelementptr inbounds %struct.tiff, ptr %135, i32 0, i32 6
  %td_fieldsset197 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [3 x i64], ptr %td_fieldsset197, i64 0, i64 0
  %136 = load i64, ptr %arrayidx198, align 8
  %and199 = and i64 %136, 4
  %tobool200 = icmp ne i64 %and199, 0
  br i1 %tobool200, label %if.then201, label %if.end215

if.then201:                                       ; preds = %if.end195
  %137 = load ptr, ptr %fd.addr, align 8
  %138 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %138, i32 0, i32 4
  %139 = load i32, ptr %td_tilewidth, align 4
  %conv202 = zext i32 %139 to i64
  %140 = load ptr, ptr %td, align 8
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %140, i32 0, i32 5
  %141 = load i32, ptr %td_tilelength, align 8
  %conv203 = zext i32 %141 to i64
  %call204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.17, i64 noundef %conv202, i64 noundef %conv203)
  %142 = load ptr, ptr %tif.addr, align 8
  %tif_dir205 = getelementptr inbounds %struct.tiff, ptr %142, i32 0, i32 6
  %td_fieldsset206 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [3 x i64], ptr %td_fieldsset206, i64 0, i64 1
  %143 = load i64, ptr %arrayidx207, align 8
  %and208 = and i64 %143, 16
  %tobool209 = icmp ne i64 %and208, 0
  br i1 %tobool209, label %if.then210, label %if.end213

if.then210:                                       ; preds = %if.then201
  %144 = load ptr, ptr %fd.addr, align 8
  %145 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %145, i32 0, i32 6
  %146 = load i32, ptr %td_tiledepth, align 4
  %conv211 = zext i32 %146 to i64
  %call212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.18, i64 noundef %conv211)
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.then201
  %147 = load ptr, ptr %fd.addr, align 8
  %call214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.10)
  br label %if.end215

if.end215:                                        ; preds = %if.end213, %if.end195
  %148 = load ptr, ptr %tif.addr, align 8
  %tif_dir216 = getelementptr inbounds %struct.tiff, ptr %148, i32 0, i32 6
  %td_fieldsset217 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir216, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [3 x i64], ptr %td_fieldsset217, i64 0, i64 0
  %149 = load i64, ptr %arrayidx218, align 8
  %and219 = and i64 %149, 8
  %tobool220 = icmp ne i64 %and219, 0
  br i1 %tobool220, label %if.then221, label %if.end244

if.then221:                                       ; preds = %if.end215
  %150 = load ptr, ptr %fd.addr, align 8
  %151 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %151, i32 0, i32 21
  %152 = load float, ptr %td_xresolution, align 8
  %conv222 = fpext float %152 to double
  %153 = load ptr, ptr %td, align 8
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %153, i32 0, i32 22
  %154 = load float, ptr %td_yresolution, align 4
  %conv223 = fpext float %154 to double
  %call224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.19, double noundef %conv222, double noundef %conv223)
  %155 = load ptr, ptr %tif.addr, align 8
  %tif_dir225 = getelementptr inbounds %struct.tiff, ptr %155, i32 0, i32 6
  %td_fieldsset226 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [3 x i64], ptr %td_fieldsset226, i64 0, i64 0
  %156 = load i64, ptr %arrayidx227, align 8
  %and228 = and i64 %156, 4194304
  %tobool229 = icmp ne i64 %and228, 0
  br i1 %tobool229, label %if.then230, label %if.end242

if.then230:                                       ; preds = %if.then221
  %157 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %157, i32 0, i32 23
  %158 = load i16, ptr %td_resolutionunit, align 8
  %conv231 = zext i16 %158 to i32
  switch i32 %conv231, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb233
    i32 3, label %sw.bb235
  ]

sw.bb:                                            ; preds = %if.then230
  %159 = load ptr, ptr %fd.addr, align 8
  %call232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.20)
  br label %sw.epilog

sw.bb233:                                         ; preds = %if.then230
  %160 = load ptr, ptr %fd.addr, align 8
  %call234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef @.str.21)
  br label %sw.epilog

sw.bb235:                                         ; preds = %if.then230
  %161 = load ptr, ptr %fd.addr, align 8
  %call236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.22)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then230
  %162 = load ptr, ptr %fd.addr, align 8
  %163 = load ptr, ptr %td, align 8
  %td_resolutionunit237 = getelementptr inbounds %struct.TIFFDirectory, ptr %163, i32 0, i32 23
  %164 = load i16, ptr %td_resolutionunit237, align 8
  %conv238 = zext i16 %164 to i32
  %165 = load ptr, ptr %td, align 8
  %td_resolutionunit239 = getelementptr inbounds %struct.TIFFDirectory, ptr %165, i32 0, i32 23
  %166 = load i16, ptr %td_resolutionunit239, align 8
  %conv240 = zext i16 %166 to i32
  %call241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.23, i32 noundef %conv238, i32 noundef %conv240)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb235, %sw.bb233, %sw.bb
  br label %if.end242

if.end242:                                        ; preds = %sw.epilog, %if.then221
  %167 = load ptr, ptr %fd.addr, align 8
  %call243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.10)
  br label %if.end244

if.end244:                                        ; preds = %if.end242, %if.end215
  %168 = load ptr, ptr %tif.addr, align 8
  %tif_dir245 = getelementptr inbounds %struct.tiff, ptr %168, i32 0, i32 6
  %td_fieldsset246 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [3 x i64], ptr %td_fieldsset246, i64 0, i64 0
  %169 = load i64, ptr %arrayidx247, align 8
  %and248 = and i64 %169, 16
  %tobool249 = icmp ne i64 %and248, 0
  br i1 %tobool249, label %if.then250, label %if.end254

if.then250:                                       ; preds = %if.end244
  %170 = load ptr, ptr %fd.addr, align 8
  %171 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %171, i32 0, i32 25
  %172 = load float, ptr %td_xposition, align 4
  %conv251 = fpext float %172 to double
  %173 = load ptr, ptr %td, align 8
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %173, i32 0, i32 26
  %174 = load float, ptr %td_yposition, align 8
  %conv252 = fpext float %174 to double
  %call253 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef @.str.24, double noundef %conv251, double noundef %conv252)
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.end244
  %175 = load ptr, ptr %tif.addr, align 8
  %tif_dir255 = getelementptr inbounds %struct.tiff, ptr %175, i32 0, i32 6
  %td_fieldsset256 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [3 x i64], ptr %td_fieldsset256, i64 0, i64 0
  %176 = load i64, ptr %arrayidx257, align 8
  %and258 = and i64 %176, 64
  %tobool259 = icmp ne i64 %and258, 0
  br i1 %tobool259, label %if.then260, label %if.end263

if.then260:                                       ; preds = %if.end254
  %177 = load ptr, ptr %fd.addr, align 8
  %178 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %178, i32 0, i32 8
  %179 = load i16, ptr %td_bitspersample, align 4
  %conv261 = zext i16 %179 to i32
  %call262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.25, i32 noundef %conv261)
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end254
  %180 = load ptr, ptr %tif.addr, align 8
  %tif_dir264 = getelementptr inbounds %struct.tiff, ptr %180, i32 0, i32 6
  %td_fieldsset265 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir264, i32 0, i32 0
  %arrayidx266 = getelementptr inbounds [3 x i64], ptr %td_fieldsset265, i64 0, i64 1
  %181 = load i64, ptr %arrayidx266, align 8
  %and267 = and i64 %181, 1
  %tobool268 = icmp ne i64 %and267, 0
  br i1 %tobool268, label %if.then269, label %if.end287

if.then269:                                       ; preds = %if.end263
  %182 = load ptr, ptr %fd.addr, align 8
  %call270 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef @.str.26)
  %183 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %183, i32 0, i32 9
  %184 = load i16, ptr %td_sampleformat, align 2
  %conv271 = zext i16 %184 to i32
  switch i32 %conv271, label %sw.default280 [
    i32 4, label %sw.bb272
    i32 2, label %sw.bb274
    i32 1, label %sw.bb276
    i32 3, label %sw.bb278
  ]

sw.bb272:                                         ; preds = %if.then269
  %185 = load ptr, ptr %fd.addr, align 8
  %call273 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.27)
  br label %sw.epilog286

sw.bb274:                                         ; preds = %if.then269
  %186 = load ptr, ptr %fd.addr, align 8
  %call275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.28)
  br label %sw.epilog286

sw.bb276:                                         ; preds = %if.then269
  %187 = load ptr, ptr %fd.addr, align 8
  %call277 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str.29)
  br label %sw.epilog286

sw.bb278:                                         ; preds = %if.then269
  %188 = load ptr, ptr %fd.addr, align 8
  %call279 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef @.str.30)
  br label %sw.epilog286

sw.default280:                                    ; preds = %if.then269
  %189 = load ptr, ptr %fd.addr, align 8
  %190 = load ptr, ptr %td, align 8
  %td_sampleformat281 = getelementptr inbounds %struct.TIFFDirectory, ptr %190, i32 0, i32 9
  %191 = load i16, ptr %td_sampleformat281, align 2
  %conv282 = zext i16 %191 to i32
  %192 = load ptr, ptr %td, align 8
  %td_sampleformat283 = getelementptr inbounds %struct.TIFFDirectory, ptr %192, i32 0, i32 9
  %193 = load i16, ptr %td_sampleformat283, align 2
  %conv284 = zext i16 %193 to i32
  %call285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.31, i32 noundef %conv282, i32 noundef %conv284)
  br label %sw.epilog286

sw.epilog286:                                     ; preds = %sw.default280, %sw.bb278, %sw.bb276, %sw.bb274, %sw.bb272
  br label %if.end287

if.end287:                                        ; preds = %sw.epilog286, %if.end263
  %194 = load ptr, ptr %tif.addr, align 8
  %tif_dir288 = getelementptr inbounds %struct.tiff, ptr %194, i32 0, i32 6
  %td_fieldsset289 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [3 x i64], ptr %td_fieldsset289, i64 0, i64 0
  %195 = load i64, ptr %arrayidx290, align 8
  %and291 = and i64 %195, 128
  %tobool292 = icmp ne i64 %and291, 0
  br i1 %tobool292, label %if.then293, label %if.end305

if.then293:                                       ; preds = %if.end287
  %196 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %196, i32 0, i32 10
  %197 = load i16, ptr %td_compression, align 8
  %call294 = call ptr @TIFFFindCODEC(i16 noundef zeroext %197)
  store ptr %call294, ptr %c, align 8
  %198 = load ptr, ptr %fd.addr, align 8
  %call295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef @.str.32)
  %199 = load ptr, ptr %c, align 8
  %tobool296 = icmp ne ptr %199, null
  br i1 %tobool296, label %if.then297, label %if.else

if.then297:                                       ; preds = %if.then293
  %200 = load ptr, ptr %fd.addr, align 8
  %201 = load ptr, ptr %c, align 8
  %name = getelementptr inbounds %struct.TIFFCodec, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %name, align 8
  %call298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef @.str.33, ptr noundef %202)
  br label %if.end304

if.else:                                          ; preds = %if.then293
  %203 = load ptr, ptr %fd.addr, align 8
  %204 = load ptr, ptr %td, align 8
  %td_compression299 = getelementptr inbounds %struct.TIFFDirectory, ptr %204, i32 0, i32 10
  %205 = load i16, ptr %td_compression299, align 8
  %conv300 = zext i16 %205 to i32
  %206 = load ptr, ptr %td, align 8
  %td_compression301 = getelementptr inbounds %struct.TIFFDirectory, ptr %206, i32 0, i32 10
  %207 = load i16, ptr %td_compression301, align 8
  %conv302 = zext i16 %207 to i32
  %call303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef @.str.31, i32 noundef %conv300, i32 noundef %conv302)
  br label %if.end304

if.end304:                                        ; preds = %if.else, %if.then297
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %if.end287
  %208 = load ptr, ptr %tif.addr, align 8
  %tif_dir306 = getelementptr inbounds %struct.tiff, ptr %208, i32 0, i32 6
  %td_fieldsset307 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir306, i32 0, i32 0
  %arrayidx308 = getelementptr inbounds [3 x i64], ptr %td_fieldsset307, i64 0, i64 0
  %209 = load i64, ptr %arrayidx308, align 8
  %and309 = and i64 %209, 256
  %tobool310 = icmp ne i64 %and309, 0
  br i1 %tobool310, label %if.then311, label %if.end334

if.then311:                                       ; preds = %if.end305
  %210 = load ptr, ptr %fd.addr, align 8
  %call312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.34)
  %211 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %211, i32 0, i32 11
  %212 = load i16, ptr %td_photometric, align 2
  %conv313 = zext i16 %212 to i64
  %cmp = icmp ult i64 %conv313, 9
  br i1 %cmp, label %if.then315, label %if.else319

if.then315:                                       ; preds = %if.then311
  %213 = load ptr, ptr %fd.addr, align 8
  %214 = load ptr, ptr %td, align 8
  %td_photometric316 = getelementptr inbounds %struct.TIFFDirectory, ptr %214, i32 0, i32 11
  %215 = load i16, ptr %td_photometric316, align 2
  %idxprom = zext i16 %215 to i64
  %arrayidx317 = getelementptr inbounds [9 x ptr], ptr @photoNames, i64 0, i64 %idxprom
  %216 = load ptr, ptr %arrayidx317, align 8
  %call318 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str.33, ptr noundef %216)
  br label %if.end333

if.else319:                                       ; preds = %if.then311
  %217 = load ptr, ptr %td, align 8
  %td_photometric320 = getelementptr inbounds %struct.TIFFDirectory, ptr %217, i32 0, i32 11
  %218 = load i16, ptr %td_photometric320, align 2
  %conv321 = zext i16 %218 to i32
  switch i32 %conv321, label %sw.default326 [
    i32 32844, label %sw.bb322
    i32 32845, label %sw.bb324
  ]

sw.bb322:                                         ; preds = %if.else319
  %219 = load ptr, ptr %fd.addr, align 8
  %call323 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.35)
  br label %sw.epilog332

sw.bb324:                                         ; preds = %if.else319
  %220 = load ptr, ptr %fd.addr, align 8
  %call325 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.36)
  br label %sw.epilog332

sw.default326:                                    ; preds = %if.else319
  %221 = load ptr, ptr %fd.addr, align 8
  %222 = load ptr, ptr %td, align 8
  %td_photometric327 = getelementptr inbounds %struct.TIFFDirectory, ptr %222, i32 0, i32 11
  %223 = load i16, ptr %td_photometric327, align 2
  %conv328 = zext i16 %223 to i32
  %224 = load ptr, ptr %td, align 8
  %td_photometric329 = getelementptr inbounds %struct.TIFFDirectory, ptr %224, i32 0, i32 11
  %225 = load i16, ptr %td_photometric329, align 2
  %conv330 = zext i16 %225 to i32
  %call331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef @.str.31, i32 noundef %conv328, i32 noundef %conv330)
  br label %sw.epilog332

sw.epilog332:                                     ; preds = %sw.default326, %sw.bb324, %sw.bb322
  br label %if.end333

if.end333:                                        ; preds = %sw.epilog332, %if.then315
  br label %if.end334

if.end334:                                        ; preds = %if.end333, %if.end305
  %226 = load ptr, ptr %tif.addr, align 8
  %tif_dir335 = getelementptr inbounds %struct.tiff, ptr %226, i32 0, i32 6
  %td_fieldsset336 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir335, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [3 x i64], ptr %td_fieldsset336, i64 0, i64 0
  %227 = load i64, ptr %arrayidx337, align 8
  %and338 = and i64 %227, 2147483648
  %tobool339 = icmp ne i64 %and338, 0
  br i1 %tobool339, label %land.lhs.true, label %if.end372

land.lhs.true:                                    ; preds = %if.end334
  %228 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %228, i32 0, i32 30
  %229 = load i16, ptr %td_extrasamples, align 4
  %conv340 = zext i16 %229 to i32
  %tobool341 = icmp ne i32 %conv340, 0
  br i1 %tobool341, label %if.then342, label %if.end372

if.then342:                                       ; preds = %land.lhs.true
  %230 = load ptr, ptr %fd.addr, align 8
  %231 = load ptr, ptr %td, align 8
  %td_extrasamples343 = getelementptr inbounds %struct.TIFFDirectory, ptr %231, i32 0, i32 30
  %232 = load i16, ptr %td_extrasamples343, align 4
  %conv344 = zext i16 %232 to i32
  %call345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str.37, i32 noundef %conv344)
  store ptr @.str.38, ptr %sep, align 8
  store i16 0, ptr %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then342
  %233 = load i16, ptr %i, align 2
  %conv346 = zext i16 %233 to i32
  %234 = load ptr, ptr %td, align 8
  %td_extrasamples347 = getelementptr inbounds %struct.TIFFDirectory, ptr %234, i32 0, i32 30
  %235 = load i16, ptr %td_extrasamples347, align 4
  %conv348 = zext i16 %235 to i32
  %cmp349 = icmp slt i32 %conv346, %conv348
  br i1 %cmp349, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %236 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %236, i32 0, i32 31
  %237 = load ptr, ptr %td_sampleinfo, align 8
  %238 = load i16, ptr %i, align 2
  %idxprom351 = zext i16 %238 to i64
  %arrayidx352 = getelementptr inbounds i16, ptr %237, i64 %idxprom351
  %239 = load i16, ptr %arrayidx352, align 2
  %conv353 = zext i16 %239 to i32
  switch i32 %conv353, label %sw.default360 [
    i32 0, label %sw.bb354
    i32 1, label %sw.bb356
    i32 2, label %sw.bb358
  ]

sw.bb354:                                         ; preds = %for.body
  %240 = load ptr, ptr %fd.addr, align 8
  %241 = load ptr, ptr %sep, align 8
  %call355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.39, ptr noundef %241)
  br label %sw.epilog370

sw.bb356:                                         ; preds = %for.body
  %242 = load ptr, ptr %fd.addr, align 8
  %243 = load ptr, ptr %sep, align 8
  %call357 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str.40, ptr noundef %243)
  br label %sw.epilog370

sw.bb358:                                         ; preds = %for.body
  %244 = load ptr, ptr %fd.addr, align 8
  %245 = load ptr, ptr %sep, align 8
  %call359 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef @.str.41, ptr noundef %245)
  br label %sw.epilog370

sw.default360:                                    ; preds = %for.body
  %246 = load ptr, ptr %fd.addr, align 8
  %247 = load ptr, ptr %sep, align 8
  %248 = load ptr, ptr %td, align 8
  %td_sampleinfo361 = getelementptr inbounds %struct.TIFFDirectory, ptr %248, i32 0, i32 31
  %249 = load ptr, ptr %td_sampleinfo361, align 8
  %250 = load i16, ptr %i, align 2
  %idxprom362 = zext i16 %250 to i64
  %arrayidx363 = getelementptr inbounds i16, ptr %249, i64 %idxprom362
  %251 = load i16, ptr %arrayidx363, align 2
  %conv364 = zext i16 %251 to i32
  %252 = load ptr, ptr %td, align 8
  %td_sampleinfo365 = getelementptr inbounds %struct.TIFFDirectory, ptr %252, i32 0, i32 31
  %253 = load ptr, ptr %td_sampleinfo365, align 8
  %254 = load i16, ptr %i, align 2
  %idxprom366 = zext i16 %254 to i64
  %arrayidx367 = getelementptr inbounds i16, ptr %253, i64 %idxprom366
  %255 = load i16, ptr %arrayidx367, align 2
  %conv368 = zext i16 %255 to i32
  %call369 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef @.str.42, ptr noundef %247, i32 noundef %conv364, i32 noundef %conv368)
  br label %sw.epilog370

sw.epilog370:                                     ; preds = %sw.default360, %sw.bb358, %sw.bb356, %sw.bb354
  store ptr @.str.43, ptr %sep, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog370
  %256 = load i16, ptr %i, align 2
  %inc = add i16 %256, 1
  store i16 %inc, ptr %i, align 2
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %257 = load ptr, ptr %fd.addr, align 8
  %call371 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef @.str.44)
  br label %if.end372

if.end372:                                        ; preds = %for.end, %land.lhs.true, %if.end334
  %258 = load ptr, ptr %tif.addr, align 8
  %tif_dir373 = getelementptr inbounds %struct.tiff, ptr %258, i32 0, i32 6
  %td_fieldsset374 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir373, i32 0, i32 0
  %arrayidx375 = getelementptr inbounds [3 x i64], ptr %td_fieldsset374, i64 0, i64 1
  %259 = load i64, ptr %arrayidx375, align 8
  %and376 = and i64 %259, 4194304
  %tobool377 = icmp ne i64 %and376, 0
  br i1 %tobool377, label %if.then378, label %if.end380

if.then378:                                       ; preds = %if.end372
  %260 = load ptr, ptr %fd.addr, align 8
  %261 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %261, i32 0, i32 32
  %262 = load double, ptr %td_stonits, align 8
  %call379 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef @.str.45, double noundef %262)
  br label %if.end380

if.end380:                                        ; preds = %if.then378, %if.end372
  %263 = load ptr, ptr %tif.addr, align 8
  %tif_dir381 = getelementptr inbounds %struct.tiff, ptr %263, i32 0, i32 6
  %td_fieldsset382 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir381, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [3 x i64], ptr %td_fieldsset382, i64 0, i64 1
  %264 = load i64, ptr %arrayidx383, align 8
  %and384 = and i64 %264, 8192
  %tobool385 = icmp ne i64 %and384, 0
  br i1 %tobool385, label %if.then386, label %if.end398

if.then386:                                       ; preds = %if.end380
  %265 = load ptr, ptr %fd.addr, align 8
  %call387 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef @.str.46)
  %266 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %266, i32 0, i32 55
  %267 = load i16, ptr %td_inkset, align 8
  %conv388 = zext i16 %267 to i32
  switch i32 %conv388, label %sw.default391 [
    i32 1, label %sw.bb389
  ]

sw.bb389:                                         ; preds = %if.then386
  %268 = load ptr, ptr %fd.addr, align 8
  %call390 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef @.str.47)
  br label %sw.epilog397

sw.default391:                                    ; preds = %if.then386
  %269 = load ptr, ptr %fd.addr, align 8
  %270 = load ptr, ptr %td, align 8
  %td_inkset392 = getelementptr inbounds %struct.TIFFDirectory, ptr %270, i32 0, i32 55
  %271 = load i16, ptr %td_inkset392, align 8
  %conv393 = zext i16 %271 to i32
  %272 = load ptr, ptr %td, align 8
  %td_inkset394 = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i32 0, i32 55
  %273 = load i16, ptr %td_inkset394, align 8
  %conv395 = zext i16 %273 to i32
  %call396 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef @.str.31, i32 noundef %conv393, i32 noundef %conv395)
  br label %sw.epilog397

sw.epilog397:                                     ; preds = %sw.default391, %sw.bb389
  br label %if.end398

if.end398:                                        ; preds = %sw.epilog397, %if.end380
  %274 = load ptr, ptr %tif.addr, align 8
  %tif_dir399 = getelementptr inbounds %struct.tiff, ptr %274, i32 0, i32 6
  %td_fieldsset400 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir399, i32 0, i32 0
  %arrayidx401 = getelementptr inbounds [3 x i64], ptr %td_fieldsset400, i64 0, i64 1
  %275 = load i64, ptr %arrayidx401, align 8
  %and402 = and i64 %275, 16384
  %tobool403 = icmp ne i64 %and402, 0
  br i1 %tobool403, label %if.then404, label %if.end415

if.then404:                                       ; preds = %if.end398
  %276 = load ptr, ptr %fd.addr, align 8
  %call405 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef @.str.48)
  %277 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %277, i32 0, i32 15
  %278 = load i16, ptr %td_samplesperpixel, align 2
  store i16 %278, ptr %i, align 2
  store ptr @.str.38, ptr %sep, align 8
  %279 = load ptr, ptr %td, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %279, i32 0, i32 59
  %280 = load ptr, ptr %td_inknames, align 8
  store ptr %280, ptr %cp, align 8
  br label %for.cond406

for.cond406:                                      ; preds = %for.inc412, %if.then404
  %281 = load i16, ptr %i, align 2
  %conv407 = zext i16 %281 to i32
  %cmp408 = icmp sgt i32 %conv407, 0
  br i1 %cmp408, label %for.body410, label %for.end414

for.body410:                                      ; preds = %for.cond406
  %282 = load ptr, ptr %fd.addr, align 8
  %283 = load ptr, ptr %sep, align 8
  %call411 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %282, ptr noundef @.str.49, ptr noundef %283)
  %284 = load ptr, ptr %fd.addr, align 8
  %285 = load ptr, ptr %cp, align 8
  call void @_TIFFprintAscii(ptr noundef %284, ptr noundef %285)
  store ptr @.str.43, ptr %sep, align 8
  br label %for.inc412

for.inc412:                                       ; preds = %for.body410
  %286 = load ptr, ptr %cp, align 8
  %call413 = call ptr @strchr(ptr noundef %286, i32 noundef 0)
  %add.ptr = getelementptr inbounds i8, ptr %call413, i64 1
  store ptr %add.ptr, ptr %cp, align 8
  %287 = load i16, ptr %i, align 2
  %dec = add i16 %287, -1
  store i16 %dec, ptr %i, align 2
  br label %for.cond406, !llvm.loop !8

for.end414:                                       ; preds = %for.cond406
  br label %if.end415

if.end415:                                        ; preds = %for.end414, %if.end398
  %288 = load ptr, ptr %tif.addr, align 8
  %tif_dir416 = getelementptr inbounds %struct.tiff, ptr %288, i32 0, i32 6
  %td_fieldsset417 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir416, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [3 x i64], ptr %td_fieldsset417, i64 0, i64 1
  %289 = load i64, ptr %arrayidx418, align 8
  %and419 = and i64 %289, 262144
  %tobool420 = icmp ne i64 %and419, 0
  br i1 %tobool420, label %if.then421, label %if.end424

if.then421:                                       ; preds = %if.end415
  %290 = load ptr, ptr %fd.addr, align 8
  %291 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %291, i32 0, i32 56
  %292 = load i16, ptr %td_ninks, align 2
  %conv422 = zext i16 %292 to i32
  %call423 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str.50, i32 noundef %conv422)
  br label %if.end424

if.end424:                                        ; preds = %if.then421, %if.end415
  %293 = load ptr, ptr %tif.addr, align 8
  %tif_dir425 = getelementptr inbounds %struct.tiff, ptr %293, i32 0, i32 6
  %td_fieldsset426 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir425, i32 0, i32 0
  %arrayidx427 = getelementptr inbounds [3 x i64], ptr %td_fieldsset426, i64 0, i64 1
  %294 = load i64, ptr %arrayidx427, align 8
  %and428 = and i64 %294, 32768
  %tobool429 = icmp ne i64 %and428, 0
  br i1 %tobool429, label %if.then430, label %if.end437

if.then430:                                       ; preds = %if.end424
  %295 = load ptr, ptr %fd.addr, align 8
  %296 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %296, i32 0, i32 57
  %arrayidx431 = getelementptr inbounds [2 x i16], ptr %td_dotrange, i64 0, i64 0
  %297 = load i16, ptr %arrayidx431, align 4
  %conv432 = zext i16 %297 to i32
  %298 = load ptr, ptr %td, align 8
  %td_dotrange433 = getelementptr inbounds %struct.TIFFDirectory, ptr %298, i32 0, i32 57
  %arrayidx434 = getelementptr inbounds [2 x i16], ptr %td_dotrange433, i64 0, i64 1
  %299 = load i16, ptr %arrayidx434, align 2
  %conv435 = zext i16 %299 to i32
  %call436 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.51, i32 noundef %conv432, i32 noundef %conv435)
  br label %if.end437

if.end437:                                        ; preds = %if.then430, %if.end424
  %300 = load ptr, ptr %tif.addr, align 8
  %tif_dir438 = getelementptr inbounds %struct.tiff, ptr %300, i32 0, i32 6
  %td_fieldsset439 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir438, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [3 x i64], ptr %td_fieldsset439, i64 0, i64 1
  %301 = load i64, ptr %arrayidx440, align 8
  %and441 = and i64 %301, 65536
  %tobool442 = icmp ne i64 %and441, 0
  br i1 %tobool442, label %if.then443, label %if.end444

if.then443:                                       ; preds = %if.end437
  %302 = load ptr, ptr %fd.addr, align 8
  %303 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %303, i32 0, i32 60
  %304 = load ptr, ptr %td_targetprinter, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_2(ptr noundef %302, ptr noundef @.str.52, ptr noundef %304)
  br label %if.end444

if.end444:                                        ; preds = %if.then443, %if.end437
  %305 = load ptr, ptr %tif.addr, align 8
  %tif_dir445 = getelementptr inbounds %struct.tiff, ptr %305, i32 0, i32 6
  %td_fieldsset446 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir445, i32 0, i32 0
  %arrayidx447 = getelementptr inbounds [3 x i64], ptr %td_fieldsset446, i64 0, i64 0
  %306 = load i64, ptr %arrayidx447, align 8
  %and448 = and i64 %306, 512
  %tobool449 = icmp ne i64 %and448, 0
  br i1 %tobool449, label %if.then450, label %if.end466

if.then450:                                       ; preds = %if.end444
  %307 = load ptr, ptr %fd.addr, align 8
  %call451 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.53)
  %308 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %308, i32 0, i32 12
  %309 = load i16, ptr %td_threshholding, align 4
  %conv452 = zext i16 %309 to i32
  switch i32 %conv452, label %sw.default459 [
    i32 1, label %sw.bb453
    i32 2, label %sw.bb455
    i32 3, label %sw.bb457
  ]

sw.bb453:                                         ; preds = %if.then450
  %310 = load ptr, ptr %fd.addr, align 8
  %call454 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef @.str.54)
  br label %sw.epilog465

sw.bb455:                                         ; preds = %if.then450
  %311 = load ptr, ptr %fd.addr, align 8
  %call456 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef @.str.55)
  br label %sw.epilog465

sw.bb457:                                         ; preds = %if.then450
  %312 = load ptr, ptr %fd.addr, align 8
  %call458 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef @.str.56)
  br label %sw.epilog465

sw.default459:                                    ; preds = %if.then450
  %313 = load ptr, ptr %fd.addr, align 8
  %314 = load ptr, ptr %td, align 8
  %td_threshholding460 = getelementptr inbounds %struct.TIFFDirectory, ptr %314, i32 0, i32 12
  %315 = load i16, ptr %td_threshholding460, align 4
  %conv461 = zext i16 %315 to i32
  %316 = load ptr, ptr %td, align 8
  %td_threshholding462 = getelementptr inbounds %struct.TIFFDirectory, ptr %316, i32 0, i32 12
  %317 = load i16, ptr %td_threshholding462, align 4
  %conv463 = zext i16 %317 to i32
  %call464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %313, ptr noundef @.str.31, i32 noundef %conv461, i32 noundef %conv463)
  br label %sw.epilog465

sw.epilog465:                                     ; preds = %sw.default459, %sw.bb457, %sw.bb455, %sw.bb453
  br label %if.end466

if.end466:                                        ; preds = %sw.epilog465, %if.end444
  %318 = load ptr, ptr %tif.addr, align 8
  %tif_dir467 = getelementptr inbounds %struct.tiff, ptr %318, i32 0, i32 6
  %td_fieldsset468 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [3 x i64], ptr %td_fieldsset468, i64 0, i64 0
  %319 = load i64, ptr %arrayidx469, align 8
  %and470 = and i64 %319, 1024
  %tobool471 = icmp ne i64 %and470, 0
  br i1 %tobool471, label %if.then472, label %if.end486

if.then472:                                       ; preds = %if.end466
  %320 = load ptr, ptr %fd.addr, align 8
  %call473 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef @.str.57)
  %321 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %321, i32 0, i32 13
  %322 = load i16, ptr %td_fillorder, align 2
  %conv474 = zext i16 %322 to i32
  switch i32 %conv474, label %sw.default479 [
    i32 1, label %sw.bb475
    i32 2, label %sw.bb477
  ]

sw.bb475:                                         ; preds = %if.then472
  %323 = load ptr, ptr %fd.addr, align 8
  %call476 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef @.str.58)
  br label %sw.epilog485

sw.bb477:                                         ; preds = %if.then472
  %324 = load ptr, ptr %fd.addr, align 8
  %call478 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %324, ptr noundef @.str.59)
  br label %sw.epilog485

sw.default479:                                    ; preds = %if.then472
  %325 = load ptr, ptr %fd.addr, align 8
  %326 = load ptr, ptr %td, align 8
  %td_fillorder480 = getelementptr inbounds %struct.TIFFDirectory, ptr %326, i32 0, i32 13
  %327 = load i16, ptr %td_fillorder480, align 2
  %conv481 = zext i16 %327 to i32
  %328 = load ptr, ptr %td, align 8
  %td_fillorder482 = getelementptr inbounds %struct.TIFFDirectory, ptr %328, i32 0, i32 13
  %329 = load i16, ptr %td_fillorder482, align 2
  %conv483 = zext i16 %329 to i32
  %call484 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef @.str.31, i32 noundef %conv481, i32 noundef %conv483)
  br label %sw.epilog485

sw.epilog485:                                     ; preds = %sw.default479, %sw.bb477, %sw.bb475
  br label %if.end486

if.end486:                                        ; preds = %sw.epilog485, %if.end466
  %330 = load ptr, ptr %tif.addr, align 8
  %tif_dir487 = getelementptr inbounds %struct.tiff, ptr %330, i32 0, i32 6
  %td_fieldsset488 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [3 x i64], ptr %td_fieldsset488, i64 0, i64 1
  %331 = load i64, ptr %arrayidx489, align 8
  %and490 = and i64 %331, 128
  %tobool491 = icmp ne i64 %and490, 0
  br i1 %tobool491, label %if.then492, label %if.end499

if.then492:                                       ; preds = %if.end486
  %332 = load ptr, ptr %fd.addr, align 8
  %333 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %333, i32 0, i32 49
  %arrayidx493 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling, i64 0, i64 0
  %334 = load i16, ptr %arrayidx493, align 8
  %conv494 = zext i16 %334 to i32
  %335 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling495 = getelementptr inbounds %struct.TIFFDirectory, ptr %335, i32 0, i32 49
  %arrayidx496 = getelementptr inbounds [2 x i16], ptr %td_ycbcrsubsampling495, i64 0, i64 1
  %336 = load i16, ptr %arrayidx496, align 2
  %conv497 = zext i16 %336 to i32
  %call498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef @.str.60, i32 noundef %conv494, i32 noundef %conv497)
  br label %if.end499

if.end499:                                        ; preds = %if.then492, %if.end486
  %337 = load ptr, ptr %tif.addr, align 8
  %tif_dir500 = getelementptr inbounds %struct.tiff, ptr %337, i32 0, i32 6
  %td_fieldsset501 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir500, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [3 x i64], ptr %td_fieldsset501, i64 0, i64 1
  %338 = load i64, ptr %arrayidx502, align 8
  %and503 = and i64 %338, 256
  %tobool504 = icmp ne i64 %and503, 0
  br i1 %tobool504, label %if.then505, label %if.end519

if.then505:                                       ; preds = %if.end499
  %339 = load ptr, ptr %fd.addr, align 8
  %call506 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef @.str.61)
  %340 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i32 0, i32 50
  %341 = load i16, ptr %td_ycbcrpositioning, align 4
  %conv507 = zext i16 %341 to i32
  switch i32 %conv507, label %sw.default512 [
    i32 1, label %sw.bb508
    i32 2, label %sw.bb510
  ]

sw.bb508:                                         ; preds = %if.then505
  %342 = load ptr, ptr %fd.addr, align 8
  %call509 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %342, ptr noundef @.str.62)
  br label %sw.epilog518

sw.bb510:                                         ; preds = %if.then505
  %343 = load ptr, ptr %fd.addr, align 8
  %call511 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef @.str.63)
  br label %sw.epilog518

sw.default512:                                    ; preds = %if.then505
  %344 = load ptr, ptr %fd.addr, align 8
  %345 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning513 = getelementptr inbounds %struct.TIFFDirectory, ptr %345, i32 0, i32 50
  %346 = load i16, ptr %td_ycbcrpositioning513, align 4
  %conv514 = zext i16 %346 to i32
  %347 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning515 = getelementptr inbounds %struct.TIFFDirectory, ptr %347, i32 0, i32 50
  %348 = load i16, ptr %td_ycbcrpositioning515, align 4
  %conv516 = zext i16 %348 to i32
  %call517 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef @.str.31, i32 noundef %conv514, i32 noundef %conv516)
  br label %sw.epilog518

sw.epilog518:                                     ; preds = %sw.default512, %sw.bb510, %sw.bb508
  br label %if.end519

if.end519:                                        ; preds = %sw.epilog518, %if.end499
  %349 = load ptr, ptr %tif.addr, align 8
  %tif_dir520 = getelementptr inbounds %struct.tiff, ptr %349, i32 0, i32 6
  %td_fieldsset521 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir520, i32 0, i32 0
  %arrayidx522 = getelementptr inbounds [3 x i64], ptr %td_fieldsset521, i64 0, i64 1
  %350 = load i64, ptr %arrayidx522, align 8
  %and523 = and i64 %350, 64
  %tobool524 = icmp ne i64 %and523, 0
  br i1 %tobool524, label %if.then525, label %if.end535

if.then525:                                       ; preds = %if.end519
  %351 = load ptr, ptr %fd.addr, align 8
  %352 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %352, i32 0, i32 48
  %353 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %arrayidx526 = getelementptr inbounds float, ptr %353, i64 0
  %354 = load float, ptr %arrayidx526, align 4
  %conv527 = fpext float %354 to double
  %355 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs528 = getelementptr inbounds %struct.TIFFDirectory, ptr %355, i32 0, i32 48
  %356 = load ptr, ptr %td_ycbcrcoeffs528, align 8
  %arrayidx529 = getelementptr inbounds float, ptr %356, i64 1
  %357 = load float, ptr %arrayidx529, align 4
  %conv530 = fpext float %357 to double
  %358 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs531 = getelementptr inbounds %struct.TIFFDirectory, ptr %358, i32 0, i32 48
  %359 = load ptr, ptr %td_ycbcrcoeffs531, align 8
  %arrayidx532 = getelementptr inbounds float, ptr %359, i64 2
  %360 = load float, ptr %arrayidx532, align 4
  %conv533 = fpext float %360 to double
  %call534 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef @.str.64, double noundef %conv527, double noundef %conv530, double noundef %conv533)
  br label %if.end535

if.end535:                                        ; preds = %if.then525, %if.end519
  %361 = load ptr, ptr %tif.addr, align 8
  %tif_dir536 = getelementptr inbounds %struct.tiff, ptr %361, i32 0, i32 6
  %td_fieldsset537 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir536, i32 0, i32 0
  %arrayidx538 = getelementptr inbounds [3 x i64], ptr %td_fieldsset537, i64 0, i64 1
  %362 = load i64, ptr %arrayidx538, align 8
  %and539 = and i64 %362, 32
  %tobool540 = icmp ne i64 %and539, 0
  br i1 %tobool540, label %if.then541, label %if.end548

if.then541:                                       ; preds = %if.end535
  %363 = load ptr, ptr %fd.addr, align 8
  %364 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %364, i32 0, i32 29
  %arrayidx542 = getelementptr inbounds [2 x i16], ptr %td_halftonehints, i64 0, i64 0
  %365 = load i16, ptr %arrayidx542, align 8
  %conv543 = zext i16 %365 to i32
  %366 = load ptr, ptr %td, align 8
  %td_halftonehints544 = getelementptr inbounds %struct.TIFFDirectory, ptr %366, i32 0, i32 29
  %arrayidx545 = getelementptr inbounds [2 x i16], ptr %td_halftonehints544, i64 0, i64 1
  %367 = load i16, ptr %arrayidx545, align 2
  %conv546 = zext i16 %367 to i32
  %call547 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %363, ptr noundef @.str.65, i32 noundef %conv543, i32 noundef %conv546)
  br label %if.end548

if.end548:                                        ; preds = %if.then541, %if.end535
  %368 = load ptr, ptr %tif.addr, align 8
  %tif_dir549 = getelementptr inbounds %struct.tiff, ptr %368, i32 0, i32 6
  %td_fieldsset550 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [3 x i64], ptr %td_fieldsset550, i64 0, i64 0
  %369 = load i64, ptr %arrayidx551, align 8
  %and552 = and i64 %369, 134217728
  %tobool553 = icmp ne i64 %and552, 0
  br i1 %tobool553, label %if.then554, label %if.end555

if.then554:                                       ; preds = %if.end548
  %370 = load ptr, ptr %fd.addr, align 8
  %371 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %371, i32 0, i32 34
  %372 = load ptr, ptr %td_artist, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_3(ptr noundef %370, ptr noundef @.str.66, ptr noundef %372)
  br label %if.end555

if.end555:                                        ; preds = %if.then554, %if.end548
  %373 = load ptr, ptr %tif.addr, align 8
  %tif_dir556 = getelementptr inbounds %struct.tiff, ptr %373, i32 0, i32 6
  %td_fieldsset557 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [3 x i64], ptr %td_fieldsset557, i64 0, i64 0
  %374 = load i64, ptr %arrayidx558, align 8
  %and559 = and i64 %374, 268435456
  %tobool560 = icmp ne i64 %and559, 0
  br i1 %tobool560, label %if.then561, label %if.end562

if.then561:                                       ; preds = %if.end555
  %375 = load ptr, ptr %fd.addr, align 8
  %376 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %376, i32 0, i32 35
  %377 = load ptr, ptr %td_datetime, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_4(ptr noundef %375, ptr noundef @.str.67, ptr noundef %377)
  br label %if.end562

if.end562:                                        ; preds = %if.then561, %if.end555
  %378 = load ptr, ptr %tif.addr, align 8
  %tif_dir563 = getelementptr inbounds %struct.tiff, ptr %378, i32 0, i32 6
  %td_fieldsset564 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir563, i32 0, i32 0
  %arrayidx565 = getelementptr inbounds [3 x i64], ptr %td_fieldsset564, i64 0, i64 0
  %379 = load i64, ptr %arrayidx565, align 8
  %and566 = and i64 %379, 536870912
  %tobool567 = icmp ne i64 %and566, 0
  br i1 %tobool567, label %if.then568, label %if.end569

if.then568:                                       ; preds = %if.end562
  %380 = load ptr, ptr %fd.addr, align 8
  %381 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %381, i32 0, i32 36
  %382 = load ptr, ptr %td_hostcomputer, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_5(ptr noundef %380, ptr noundef @.str.68, ptr noundef %382)
  br label %if.end569

if.end569:                                        ; preds = %if.then568, %if.end562
  %383 = load ptr, ptr %tif.addr, align 8
  %tif_dir570 = getelementptr inbounds %struct.tiff, ptr %383, i32 0, i32 6
  %td_fieldsset571 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir570, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [3 x i64], ptr %td_fieldsset571, i64 0, i64 0
  %384 = load i64, ptr %arrayidx572, align 8
  %and573 = and i64 %384, 1073741824
  %tobool574 = icmp ne i64 %and573, 0
  br i1 %tobool574, label %if.then575, label %if.end576

if.then575:                                       ; preds = %if.end569
  %385 = load ptr, ptr %fd.addr, align 8
  %386 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %386, i32 0, i32 40
  %387 = load ptr, ptr %td_software, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_6(ptr noundef %385, ptr noundef @.str.69, ptr noundef %387)
  br label %if.end576

if.end576:                                        ; preds = %if.then575, %if.end569
  %388 = load ptr, ptr %tif.addr, align 8
  %tif_dir577 = getelementptr inbounds %struct.tiff, ptr %388, i32 0, i32 6
  %td_fieldsset578 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [3 x i64], ptr %td_fieldsset578, i64 0, i64 0
  %389 = load i64, ptr %arrayidx579, align 8
  %and580 = and i64 %389, 2048
  %tobool581 = icmp ne i64 %and580, 0
  br i1 %tobool581, label %if.then582, label %if.end583

if.then582:                                       ; preds = %if.end576
  %390 = load ptr, ptr %fd.addr, align 8
  %391 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %391, i32 0, i32 33
  %392 = load ptr, ptr %td_documentname, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_7(ptr noundef %390, ptr noundef @.str.70, ptr noundef %392)
  br label %if.end583

if.end583:                                        ; preds = %if.then582, %if.end576
  %393 = load ptr, ptr %tif.addr, align 8
  %tif_dir584 = getelementptr inbounds %struct.tiff, ptr %393, i32 0, i32 6
  %td_fieldsset585 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir584, i32 0, i32 0
  %arrayidx586 = getelementptr inbounds [3 x i64], ptr %td_fieldsset585, i64 0, i64 0
  %394 = load i64, ptr %arrayidx586, align 8
  %and587 = and i64 %394, 4096
  %tobool588 = icmp ne i64 %and587, 0
  br i1 %tobool588, label %if.then589, label %if.end590

if.then589:                                       ; preds = %if.end583
  %395 = load ptr, ptr %fd.addr, align 8
  %396 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %396, i32 0, i32 37
  %397 = load ptr, ptr %td_imagedescription, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_8(ptr noundef %395, ptr noundef @.str.71, ptr noundef %397)
  br label %if.end590

if.end590:                                        ; preds = %if.then589, %if.end583
  %398 = load ptr, ptr %tif.addr, align 8
  %tif_dir591 = getelementptr inbounds %struct.tiff, ptr %398, i32 0, i32 6
  %td_fieldsset592 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir591, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [3 x i64], ptr %td_fieldsset592, i64 0, i64 0
  %399 = load i64, ptr %arrayidx593, align 8
  %and594 = and i64 %399, 8192
  %tobool595 = icmp ne i64 %and594, 0
  br i1 %tobool595, label %if.then596, label %if.end597

if.then596:                                       ; preds = %if.end590
  %400 = load ptr, ptr %fd.addr, align 8
  %401 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %401, i32 0, i32 38
  %402 = load ptr, ptr %td_make, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_9(ptr noundef %400, ptr noundef @.str.72, ptr noundef %402)
  br label %if.end597

if.end597:                                        ; preds = %if.then596, %if.end590
  %403 = load ptr, ptr %tif.addr, align 8
  %tif_dir598 = getelementptr inbounds %struct.tiff, ptr %403, i32 0, i32 6
  %td_fieldsset599 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir598, i32 0, i32 0
  %arrayidx600 = getelementptr inbounds [3 x i64], ptr %td_fieldsset599, i64 0, i64 0
  %404 = load i64, ptr %arrayidx600, align 8
  %and601 = and i64 %404, 16384
  %tobool602 = icmp ne i64 %and601, 0
  br i1 %tobool602, label %if.then603, label %if.end604

if.then603:                                       ; preds = %if.end597
  %405 = load ptr, ptr %fd.addr, align 8
  %406 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %406, i32 0, i32 39
  %407 = load ptr, ptr %td_model, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_10(ptr noundef %405, ptr noundef @.str.73, ptr noundef %407)
  br label %if.end604

if.end604:                                        ; preds = %if.then603, %if.end597
  %408 = load ptr, ptr %tif.addr, align 8
  %tif_dir605 = getelementptr inbounds %struct.tiff, ptr %408, i32 0, i32 6
  %td_fieldsset606 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir605, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [3 x i64], ptr %td_fieldsset606, i64 0, i64 0
  %409 = load i64, ptr %arrayidx607, align 8
  %and608 = and i64 %409, 32768
  %tobool609 = icmp ne i64 %and608, 0
  br i1 %tobool609, label %if.then610, label %if.end627

if.then610:                                       ; preds = %if.end604
  %410 = load ptr, ptr %fd.addr, align 8
  %call611 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %410, ptr noundef @.str.74)
  %411 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %411, i32 0, i32 14
  %412 = load i16, ptr %td_orientation, align 8
  %conv612 = zext i16 %412 to i64
  %cmp613 = icmp ult i64 %conv612, 9
  br i1 %cmp613, label %if.then615, label %if.else620

if.then615:                                       ; preds = %if.then610
  %413 = load ptr, ptr %fd.addr, align 8
  %414 = load ptr, ptr %td, align 8
  %td_orientation616 = getelementptr inbounds %struct.TIFFDirectory, ptr %414, i32 0, i32 14
  %415 = load i16, ptr %td_orientation616, align 8
  %idxprom617 = zext i16 %415 to i64
  %arrayidx618 = getelementptr inbounds [9 x ptr], ptr @orientNames, i64 0, i64 %idxprom617
  %416 = load ptr, ptr %arrayidx618, align 8
  %call619 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef @.str.33, ptr noundef %416)
  br label %if.end626

if.else620:                                       ; preds = %if.then610
  %417 = load ptr, ptr %fd.addr, align 8
  %418 = load ptr, ptr %td, align 8
  %td_orientation621 = getelementptr inbounds %struct.TIFFDirectory, ptr %418, i32 0, i32 14
  %419 = load i16, ptr %td_orientation621, align 8
  %conv622 = zext i16 %419 to i32
  %420 = load ptr, ptr %td, align 8
  %td_orientation623 = getelementptr inbounds %struct.TIFFDirectory, ptr %420, i32 0, i32 14
  %421 = load i16, ptr %td_orientation623, align 8
  %conv624 = zext i16 %421 to i32
  %call625 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %417, ptr noundef @.str.31, i32 noundef %conv622, i32 noundef %conv624)
  br label %if.end626

if.end626:                                        ; preds = %if.else620, %if.then615
  br label %if.end627

if.end627:                                        ; preds = %if.end626, %if.end604
  %422 = load ptr, ptr %tif.addr, align 8
  %tif_dir628 = getelementptr inbounds %struct.tiff, ptr %422, i32 0, i32 6
  %td_fieldsset629 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir628, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [3 x i64], ptr %td_fieldsset629, i64 0, i64 0
  %423 = load i64, ptr %arrayidx630, align 8
  %and631 = and i64 %423, 65536
  %tobool632 = icmp ne i64 %and631, 0
  br i1 %tobool632, label %if.then633, label %if.end637

if.then633:                                       ; preds = %if.end627
  %424 = load ptr, ptr %fd.addr, align 8
  %425 = load ptr, ptr %td, align 8
  %td_samplesperpixel634 = getelementptr inbounds %struct.TIFFDirectory, ptr %425, i32 0, i32 15
  %426 = load i16, ptr %td_samplesperpixel634, align 2
  %conv635 = zext i16 %426 to i32
  %call636 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef @.str.75, i32 noundef %conv635)
  br label %if.end637

if.end637:                                        ; preds = %if.then633, %if.end627
  %427 = load ptr, ptr %tif.addr, align 8
  %tif_dir638 = getelementptr inbounds %struct.tiff, ptr %427, i32 0, i32 6
  %td_fieldsset639 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir638, i32 0, i32 0
  %arrayidx640 = getelementptr inbounds [3 x i64], ptr %td_fieldsset639, i64 0, i64 0
  %428 = load i64, ptr %arrayidx640, align 8
  %and641 = and i64 %428, 131072
  %tobool642 = icmp ne i64 %and641, 0
  br i1 %tobool642, label %if.then643, label %if.end654

if.then643:                                       ; preds = %if.end637
  %429 = load ptr, ptr %fd.addr, align 8
  %call644 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %429, ptr noundef @.str.76)
  %430 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %430, i32 0, i32 16
  %431 = load i32, ptr %td_rowsperstrip, align 4
  %cmp645 = icmp eq i32 %431, -1
  br i1 %cmp645, label %if.then647, label %if.else649

if.then647:                                       ; preds = %if.then643
  %432 = load ptr, ptr %fd.addr, align 8
  %call648 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef @.str.77)
  br label %if.end653

if.else649:                                       ; preds = %if.then643
  %433 = load ptr, ptr %fd.addr, align 8
  %434 = load ptr, ptr %td, align 8
  %td_rowsperstrip650 = getelementptr inbounds %struct.TIFFDirectory, ptr %434, i32 0, i32 16
  %435 = load i32, ptr %td_rowsperstrip650, align 4
  %conv651 = zext i32 %435 to i64
  %call652 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %433, ptr noundef @.str.78, i64 noundef %conv651)
  br label %if.end653

if.end653:                                        ; preds = %if.else649, %if.then647
  br label %if.end654

if.end654:                                        ; preds = %if.end653, %if.end637
  %436 = load ptr, ptr %tif.addr, align 8
  %tif_dir655 = getelementptr inbounds %struct.tiff, ptr %436, i32 0, i32 6
  %td_fieldsset656 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [3 x i64], ptr %td_fieldsset656, i64 0, i64 0
  %437 = load i64, ptr %arrayidx657, align 8
  %and658 = and i64 %437, 262144
  %tobool659 = icmp ne i64 %and658, 0
  br i1 %tobool659, label %if.then660, label %if.end663

if.then660:                                       ; preds = %if.end654
  %438 = load ptr, ptr %fd.addr, align 8
  %439 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %439, i32 0, i32 17
  %440 = load i16, ptr %td_minsamplevalue, align 8
  %conv661 = zext i16 %440 to i32
  %call662 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %438, ptr noundef @.str.79, i32 noundef %conv661)
  br label %if.end663

if.end663:                                        ; preds = %if.then660, %if.end654
  %441 = load ptr, ptr %tif.addr, align 8
  %tif_dir664 = getelementptr inbounds %struct.tiff, ptr %441, i32 0, i32 6
  %td_fieldsset665 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir664, i32 0, i32 0
  %arrayidx666 = getelementptr inbounds [3 x i64], ptr %td_fieldsset665, i64 0, i64 0
  %442 = load i64, ptr %arrayidx666, align 8
  %and667 = and i64 %442, 524288
  %tobool668 = icmp ne i64 %and667, 0
  br i1 %tobool668, label %if.then669, label %if.end672

if.then669:                                       ; preds = %if.end663
  %443 = load ptr, ptr %fd.addr, align 8
  %444 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %444, i32 0, i32 18
  %445 = load i16, ptr %td_maxsamplevalue, align 2
  %conv670 = zext i16 %445 to i32
  %call671 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %443, ptr noundef @.str.80, i32 noundef %conv670)
  br label %if.end672

if.end672:                                        ; preds = %if.then669, %if.end663
  %446 = load ptr, ptr %tif.addr, align 8
  %tif_dir673 = getelementptr inbounds %struct.tiff, ptr %446, i32 0, i32 6
  %td_fieldsset674 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [3 x i64], ptr %td_fieldsset674, i64 0, i64 1
  %447 = load i64, ptr %arrayidx675, align 8
  %and676 = and i64 %447, 2
  %tobool677 = icmp ne i64 %and676, 0
  br i1 %tobool677, label %if.then678, label %if.end680

if.then678:                                       ; preds = %if.end672
  %448 = load ptr, ptr %fd.addr, align 8
  %449 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %449, i32 0, i32 19
  %450 = load double, ptr %td_sminsamplevalue, align 8
  %call679 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %448, ptr noundef @.str.81, double noundef %450)
  br label %if.end680

if.end680:                                        ; preds = %if.then678, %if.end672
  %451 = load ptr, ptr %tif.addr, align 8
  %tif_dir681 = getelementptr inbounds %struct.tiff, ptr %451, i32 0, i32 6
  %td_fieldsset682 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [3 x i64], ptr %td_fieldsset682, i64 0, i64 1
  %452 = load i64, ptr %arrayidx683, align 8
  %and684 = and i64 %452, 4
  %tobool685 = icmp ne i64 %and684, 0
  br i1 %tobool685, label %if.then686, label %if.end688

if.then686:                                       ; preds = %if.end680
  %453 = load ptr, ptr %fd.addr, align 8
  %454 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %454, i32 0, i32 20
  %455 = load double, ptr %td_smaxsamplevalue, align 8
  %call687 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %453, ptr noundef @.str.82, double noundef %455)
  br label %if.end688

if.end688:                                        ; preds = %if.then686, %if.end680
  %456 = load ptr, ptr %tif.addr, align 8
  %tif_dir689 = getelementptr inbounds %struct.tiff, ptr %456, i32 0, i32 6
  %td_fieldsset690 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [3 x i64], ptr %td_fieldsset690, i64 0, i64 0
  %457 = load i64, ptr %arrayidx691, align 8
  %and692 = and i64 %457, 1048576
  %tobool693 = icmp ne i64 %and692, 0
  br i1 %tobool693, label %if.then694, label %if.end708

if.then694:                                       ; preds = %if.end688
  %458 = load ptr, ptr %fd.addr, align 8
  %call695 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %458, ptr noundef @.str.83)
  %459 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %459, i32 0, i32 24
  %460 = load i16, ptr %td_planarconfig, align 2
  %conv696 = zext i16 %460 to i32
  switch i32 %conv696, label %sw.default701 [
    i32 1, label %sw.bb697
    i32 2, label %sw.bb699
  ]

sw.bb697:                                         ; preds = %if.then694
  %461 = load ptr, ptr %fd.addr, align 8
  %call698 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %461, ptr noundef @.str.84)
  br label %sw.epilog707

sw.bb699:                                         ; preds = %if.then694
  %462 = load ptr, ptr %fd.addr, align 8
  %call700 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %462, ptr noundef @.str.85)
  br label %sw.epilog707

sw.default701:                                    ; preds = %if.then694
  %463 = load ptr, ptr %fd.addr, align 8
  %464 = load ptr, ptr %td, align 8
  %td_planarconfig702 = getelementptr inbounds %struct.TIFFDirectory, ptr %464, i32 0, i32 24
  %465 = load i16, ptr %td_planarconfig702, align 2
  %conv703 = zext i16 %465 to i32
  %466 = load ptr, ptr %td, align 8
  %td_planarconfig704 = getelementptr inbounds %struct.TIFFDirectory, ptr %466, i32 0, i32 24
  %467 = load i16, ptr %td_planarconfig704, align 2
  %conv705 = zext i16 %467 to i32
  %call706 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %463, ptr noundef @.str.31, i32 noundef %conv703, i32 noundef %conv705)
  br label %sw.epilog707

sw.epilog707:                                     ; preds = %sw.default701, %sw.bb699, %sw.bb697
  br label %if.end708

if.end708:                                        ; preds = %sw.epilog707, %if.end688
  %468 = load ptr, ptr %tif.addr, align 8
  %tif_dir709 = getelementptr inbounds %struct.tiff, ptr %468, i32 0, i32 6
  %td_fieldsset710 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [3 x i64], ptr %td_fieldsset710, i64 0, i64 0
  %469 = load i64, ptr %arrayidx711, align 8
  %and712 = and i64 %469, 2097152
  %tobool713 = icmp ne i64 %and712, 0
  br i1 %tobool713, label %if.then714, label %if.end715

if.then714:                                       ; preds = %if.end708
  %470 = load ptr, ptr %fd.addr, align 8
  %471 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %471, i32 0, i32 41
  %472 = load ptr, ptr %td_pagename, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_11(ptr noundef %470, ptr noundef @.str.86, ptr noundef %472)
  br label %if.end715

if.end715:                                        ; preds = %if.then714, %if.end708
  %473 = load ptr, ptr %tif.addr, align 8
  %tif_dir716 = getelementptr inbounds %struct.tiff, ptr %473, i32 0, i32 6
  %td_fieldsset717 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir716, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [3 x i64], ptr %td_fieldsset717, i64 0, i64 0
  %474 = load i64, ptr %arrayidx718, align 8
  %and719 = and i64 %474, 8388608
  %tobool720 = icmp ne i64 %and719, 0
  br i1 %tobool720, label %if.then721, label %if.end728

if.then721:                                       ; preds = %if.end715
  %475 = load ptr, ptr %fd.addr, align 8
  %476 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %476, i32 0, i32 27
  %arrayidx722 = getelementptr inbounds [2 x i16], ptr %td_pagenumber, i64 0, i64 0
  %477 = load i16, ptr %arrayidx722, align 4
  %conv723 = zext i16 %477 to i32
  %478 = load ptr, ptr %td, align 8
  %td_pagenumber724 = getelementptr inbounds %struct.TIFFDirectory, ptr %478, i32 0, i32 27
  %arrayidx725 = getelementptr inbounds [2 x i16], ptr %td_pagenumber724, i64 0, i64 1
  %479 = load i16, ptr %arrayidx725, align 2
  %conv726 = zext i16 %479 to i32
  %call727 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %475, ptr noundef @.str.87, i32 noundef %conv723, i32 noundef %conv726)
  br label %if.end728

if.end728:                                        ; preds = %if.then721, %if.end715
  %480 = load ptr, ptr %tif.addr, align 8
  %tif_dir729 = getelementptr inbounds %struct.tiff, ptr %480, i32 0, i32 6
  %td_fieldsset730 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [3 x i64], ptr %td_fieldsset730, i64 0, i64 0
  %481 = load i64, ptr %arrayidx731, align 8
  %and732 = and i64 %481, 67108864
  %tobool733 = icmp ne i64 %and732, 0
  br i1 %tobool733, label %if.then734, label %if.end764

if.then734:                                       ; preds = %if.end728
  %482 = load ptr, ptr %fd.addr, align 8
  %call735 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %482, ptr noundef @.str.88)
  %483 = load i64, ptr %flags.addr, align 8
  %and736 = and i64 %483, 4
  %tobool737 = icmp ne i64 %and736, 0
  br i1 %tobool737, label %if.then738, label %if.else761

if.then738:                                       ; preds = %if.then734
  %484 = load ptr, ptr %fd.addr, align 8
  %call739 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %484, ptr noundef @.str.10)
  %485 = load ptr, ptr %td, align 8
  %td_bitspersample740 = getelementptr inbounds %struct.TIFFDirectory, ptr %485, i32 0, i32 8
  %486 = load i16, ptr %td_bitspersample740, align 4
  %conv741 = zext i16 %486 to i32
  %sh_prom = zext i32 %conv741 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %n, align 8
  store i64 0, ptr %l, align 8
  br label %for.cond742

for.cond742:                                      ; preds = %for.inc758, %if.then738
  %487 = load i64, ptr %l, align 8
  %488 = load i64, ptr %n, align 8
  %cmp743 = icmp slt i64 %487, %488
  br i1 %cmp743, label %for.body745, label %for.end760

for.body745:                                      ; preds = %for.cond742
  %489 = load ptr, ptr %fd.addr, align 8
  %490 = load i64, ptr %l, align 8
  %491 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %491, i32 0, i32 28
  %arrayidx746 = getelementptr inbounds [3 x ptr], ptr %td_colormap, i64 0, i64 0
  %492 = load ptr, ptr %arrayidx746, align 8
  %493 = load i64, ptr %l, align 8
  %arrayidx747 = getelementptr inbounds i16, ptr %492, i64 %493
  %494 = load i16, ptr %arrayidx747, align 2
  %conv748 = zext i16 %494 to i32
  %495 = load ptr, ptr %td, align 8
  %td_colormap749 = getelementptr inbounds %struct.TIFFDirectory, ptr %495, i32 0, i32 28
  %arrayidx750 = getelementptr inbounds [3 x ptr], ptr %td_colormap749, i64 0, i64 1
  %496 = load ptr, ptr %arrayidx750, align 8
  %497 = load i64, ptr %l, align 8
  %arrayidx751 = getelementptr inbounds i16, ptr %496, i64 %497
  %498 = load i16, ptr %arrayidx751, align 2
  %conv752 = zext i16 %498 to i32
  %499 = load ptr, ptr %td, align 8
  %td_colormap753 = getelementptr inbounds %struct.TIFFDirectory, ptr %499, i32 0, i32 28
  %arrayidx754 = getelementptr inbounds [3 x ptr], ptr %td_colormap753, i64 0, i64 2
  %500 = load ptr, ptr %arrayidx754, align 8
  %501 = load i64, ptr %l, align 8
  %arrayidx755 = getelementptr inbounds i16, ptr %500, i64 %501
  %502 = load i16, ptr %arrayidx755, align 2
  %conv756 = zext i16 %502 to i32
  %call757 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %489, ptr noundef @.str.89, i64 noundef %490, i32 noundef %conv748, i32 noundef %conv752, i32 noundef %conv756)
  br label %for.inc758

for.inc758:                                       ; preds = %for.body745
  %503 = load i64, ptr %l, align 8
  %inc759 = add nsw i64 %503, 1
  store i64 %inc759, ptr %l, align 8
  br label %for.cond742, !llvm.loop !9

for.end760:                                       ; preds = %for.cond742
  br label %if.end763

if.else761:                                       ; preds = %if.then734
  %504 = load ptr, ptr %fd.addr, align 8
  %call762 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %504, ptr noundef @.str.90)
  br label %if.end763

if.end763:                                        ; preds = %if.else761, %for.end760
  br label %if.end764

if.end764:                                        ; preds = %if.end763, %if.end728
  %505 = load ptr, ptr %tif.addr, align 8
  %tif_dir765 = getelementptr inbounds %struct.tiff, ptr %505, i32 0, i32 6
  %td_fieldsset766 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir765, i32 0, i32 0
  %arrayidx767 = getelementptr inbounds [3 x i64], ptr %td_fieldsset766, i64 0, i64 1
  %506 = load i64, ptr %arrayidx767, align 8
  %and768 = and i64 %506, 1024
  %tobool769 = icmp ne i64 %and768, 0
  br i1 %tobool769, label %if.then770, label %if.end777

if.then770:                                       ; preds = %if.end764
  %507 = load ptr, ptr %fd.addr, align 8
  %508 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %508, i32 0, i32 51
  %509 = load ptr, ptr %td_whitepoint, align 8
  %arrayidx771 = getelementptr inbounds float, ptr %509, i64 0
  %510 = load float, ptr %arrayidx771, align 4
  %conv772 = fpext float %510 to double
  %511 = load ptr, ptr %td, align 8
  %td_whitepoint773 = getelementptr inbounds %struct.TIFFDirectory, ptr %511, i32 0, i32 51
  %512 = load ptr, ptr %td_whitepoint773, align 8
  %arrayidx774 = getelementptr inbounds float, ptr %512, i64 1
  %513 = load float, ptr %arrayidx774, align 4
  %conv775 = fpext float %513 to double
  %call776 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef @.str.91, double noundef %conv772, double noundef %conv775)
  br label %if.end777

if.end777:                                        ; preds = %if.then770, %if.end764
  %514 = load ptr, ptr %tif.addr, align 8
  %tif_dir778 = getelementptr inbounds %struct.tiff, ptr %514, i32 0, i32 6
  %td_fieldsset779 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir778, i32 0, i32 0
  %arrayidx780 = getelementptr inbounds [3 x i64], ptr %td_fieldsset779, i64 0, i64 1
  %515 = load i64, ptr %arrayidx780, align 8
  %and781 = and i64 %515, 2048
  %tobool782 = icmp ne i64 %and781, 0
  br i1 %tobool782, label %if.then783, label %if.end802

if.then783:                                       ; preds = %if.end777
  %516 = load ptr, ptr %fd.addr, align 8
  %517 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %517, i32 0, i32 52
  %518 = load ptr, ptr %td_primarychromas, align 8
  %arrayidx784 = getelementptr inbounds float, ptr %518, i64 0
  %519 = load float, ptr %arrayidx784, align 4
  %conv785 = fpext float %519 to double
  %520 = load ptr, ptr %td, align 8
  %td_primarychromas786 = getelementptr inbounds %struct.TIFFDirectory, ptr %520, i32 0, i32 52
  %521 = load ptr, ptr %td_primarychromas786, align 8
  %arrayidx787 = getelementptr inbounds float, ptr %521, i64 1
  %522 = load float, ptr %arrayidx787, align 4
  %conv788 = fpext float %522 to double
  %523 = load ptr, ptr %td, align 8
  %td_primarychromas789 = getelementptr inbounds %struct.TIFFDirectory, ptr %523, i32 0, i32 52
  %524 = load ptr, ptr %td_primarychromas789, align 8
  %arrayidx790 = getelementptr inbounds float, ptr %524, i64 2
  %525 = load float, ptr %arrayidx790, align 4
  %conv791 = fpext float %525 to double
  %526 = load ptr, ptr %td, align 8
  %td_primarychromas792 = getelementptr inbounds %struct.TIFFDirectory, ptr %526, i32 0, i32 52
  %527 = load ptr, ptr %td_primarychromas792, align 8
  %arrayidx793 = getelementptr inbounds float, ptr %527, i64 3
  %528 = load float, ptr %arrayidx793, align 4
  %conv794 = fpext float %528 to double
  %529 = load ptr, ptr %td, align 8
  %td_primarychromas795 = getelementptr inbounds %struct.TIFFDirectory, ptr %529, i32 0, i32 52
  %530 = load ptr, ptr %td_primarychromas795, align 8
  %arrayidx796 = getelementptr inbounds float, ptr %530, i64 4
  %531 = load float, ptr %arrayidx796, align 4
  %conv797 = fpext float %531 to double
  %532 = load ptr, ptr %td, align 8
  %td_primarychromas798 = getelementptr inbounds %struct.TIFFDirectory, ptr %532, i32 0, i32 52
  %533 = load ptr, ptr %td_primarychromas798, align 8
  %arrayidx799 = getelementptr inbounds float, ptr %533, i64 5
  %534 = load float, ptr %arrayidx799, align 4
  %conv800 = fpext float %534 to double
  %call801 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %516, ptr noundef @.str.92, double noundef %conv785, double noundef %conv788, double noundef %conv791, double noundef %conv794, double noundef %conv797, double noundef %conv800)
  br label %if.end802

if.end802:                                        ; preds = %if.then783, %if.end777
  %535 = load ptr, ptr %tif.addr, align 8
  %tif_dir803 = getelementptr inbounds %struct.tiff, ptr %535, i32 0, i32 6
  %td_fieldsset804 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir803, i32 0, i32 0
  %arrayidx805 = getelementptr inbounds [3 x i64], ptr %td_fieldsset804, i64 0, i64 1
  %536 = load i64, ptr %arrayidx805, align 8
  %and806 = and i64 %536, 512
  %tobool807 = icmp ne i64 %and806, 0
  br i1 %tobool807, label %if.then808, label %if.end833

if.then808:                                       ; preds = %if.end802
  %537 = load ptr, ptr %fd.addr, align 8
  %call809 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %537, ptr noundef @.str.93)
  store i16 0, ptr %i, align 2
  br label %for.cond810

for.cond810:                                      ; preds = %for.inc830, %if.then808
  %538 = load i16, ptr %i, align 2
  %conv811 = zext i16 %538 to i32
  %539 = load ptr, ptr %td, align 8
  %td_samplesperpixel812 = getelementptr inbounds %struct.TIFFDirectory, ptr %539, i32 0, i32 15
  %540 = load i16, ptr %td_samplesperpixel812, align 2
  %conv813 = zext i16 %540 to i32
  %cmp814 = icmp slt i32 %conv811, %conv813
  br i1 %cmp814, label %for.body816, label %for.end832

for.body816:                                      ; preds = %for.cond810
  %541 = load ptr, ptr %fd.addr, align 8
  %542 = load i16, ptr %i, align 2
  %conv817 = zext i16 %542 to i32
  %543 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %543, i32 0, i32 53
  %544 = load ptr, ptr %td_refblackwhite, align 8
  %545 = load i16, ptr %i, align 2
  %conv818 = zext i16 %545 to i32
  %mul = mul nsw i32 2, %conv818
  %add = add nsw i32 %mul, 0
  %idxprom819 = sext i32 %add to i64
  %arrayidx820 = getelementptr inbounds float, ptr %544, i64 %idxprom819
  %546 = load float, ptr %arrayidx820, align 4
  %conv821 = fpext float %546 to double
  %547 = load ptr, ptr %td, align 8
  %td_refblackwhite822 = getelementptr inbounds %struct.TIFFDirectory, ptr %547, i32 0, i32 53
  %548 = load ptr, ptr %td_refblackwhite822, align 8
  %549 = load i16, ptr %i, align 2
  %conv823 = zext i16 %549 to i32
  %mul824 = mul nsw i32 2, %conv823
  %add825 = add nsw i32 %mul824, 1
  %idxprom826 = sext i32 %add825 to i64
  %arrayidx827 = getelementptr inbounds float, ptr %548, i64 %idxprom826
  %550 = load float, ptr %arrayidx827, align 4
  %conv828 = fpext float %550 to double
  %call829 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %541, ptr noundef @.str.94, i32 noundef %conv817, double noundef %conv821, double noundef %conv828)
  br label %for.inc830

for.inc830:                                       ; preds = %for.body816
  %551 = load i16, ptr %i, align 2
  %inc831 = add i16 %551, 1
  store i16 %inc831, ptr %i, align 2
  br label %for.cond810, !llvm.loop !10

for.end832:                                       ; preds = %for.cond810
  br label %if.end833

if.end833:                                        ; preds = %for.end832, %if.end802
  %552 = load ptr, ptr %tif.addr, align 8
  %tif_dir834 = getelementptr inbounds %struct.tiff, ptr %552, i32 0, i32 6
  %td_fieldsset835 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir834, i32 0, i32 0
  %arrayidx836 = getelementptr inbounds [3 x i64], ptr %td_fieldsset835, i64 0, i64 1
  %553 = load i64, ptr %arrayidx836, align 8
  %and837 = and i64 %553, 4096
  %tobool838 = icmp ne i64 %and837, 0
  br i1 %tobool838, label %if.then839, label %if.end880

if.then839:                                       ; preds = %if.end833
  %554 = load ptr, ptr %fd.addr, align 8
  %call840 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %554, ptr noundef @.str.95)
  %555 = load i64, ptr %flags.addr, align 8
  %and841 = and i64 %555, 2
  %tobool842 = icmp ne i64 %and841, 0
  br i1 %tobool842, label %if.then843, label %if.else877

if.then843:                                       ; preds = %if.then839
  %556 = load ptr, ptr %fd.addr, align 8
  %call844 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %556, ptr noundef @.str.10)
  %557 = load ptr, ptr %td, align 8
  %td_bitspersample845 = getelementptr inbounds %struct.TIFFDirectory, ptr %557, i32 0, i32 8
  %558 = load i16, ptr %td_bitspersample845, align 4
  %conv846 = zext i16 %558 to i32
  %sh_prom847 = zext i32 %conv846 to i64
  %shl848 = shl i64 1, %sh_prom847
  store i64 %shl848, ptr %n, align 8
  store i64 0, ptr %l, align 8
  br label %for.cond849

for.cond849:                                      ; preds = %for.inc874, %if.then843
  %559 = load i64, ptr %l, align 8
  %560 = load i64, ptr %n, align 8
  %cmp850 = icmp slt i64 %559, %560
  br i1 %cmp850, label %for.body852, label %for.end876

for.body852:                                      ; preds = %for.cond849
  %561 = load ptr, ptr %fd.addr, align 8
  %562 = load i64, ptr %l, align 8
  %563 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %563, i32 0, i32 54
  %arrayidx853 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction, i64 0, i64 0
  %564 = load ptr, ptr %arrayidx853, align 8
  %565 = load i64, ptr %l, align 8
  %arrayidx854 = getelementptr inbounds i16, ptr %564, i64 %565
  %566 = load i16, ptr %arrayidx854, align 2
  %conv855 = zext i16 %566 to i32
  %call856 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %561, ptr noundef @.str.96, i64 noundef %562, i32 noundef %conv855)
  store i16 1, ptr %i, align 2
  br label %for.cond857

for.cond857:                                      ; preds = %for.inc870, %for.body852
  %567 = load i16, ptr %i, align 2
  %conv858 = zext i16 %567 to i32
  %568 = load ptr, ptr %td, align 8
  %td_samplesperpixel859 = getelementptr inbounds %struct.TIFFDirectory, ptr %568, i32 0, i32 15
  %569 = load i16, ptr %td_samplesperpixel859, align 2
  %conv860 = zext i16 %569 to i32
  %cmp861 = icmp slt i32 %conv858, %conv860
  br i1 %cmp861, label %for.body863, label %for.end872

for.body863:                                      ; preds = %for.cond857
  %570 = load ptr, ptr %fd.addr, align 8
  %571 = load ptr, ptr %td, align 8
  %td_transferfunction864 = getelementptr inbounds %struct.TIFFDirectory, ptr %571, i32 0, i32 54
  %572 = load i16, ptr %i, align 2
  %idxprom865 = zext i16 %572 to i64
  %arrayidx866 = getelementptr inbounds [3 x ptr], ptr %td_transferfunction864, i64 0, i64 %idxprom865
  %573 = load ptr, ptr %arrayidx866, align 8
  %574 = load i64, ptr %l, align 8
  %arrayidx867 = getelementptr inbounds i16, ptr %573, i64 %574
  %575 = load i16, ptr %arrayidx867, align 2
  %conv868 = zext i16 %575 to i32
  %call869 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %570, ptr noundef @.str.97, i32 noundef %conv868)
  br label %for.inc870

for.inc870:                                       ; preds = %for.body863
  %576 = load i16, ptr %i, align 2
  %inc871 = add i16 %576, 1
  store i16 %inc871, ptr %i, align 2
  br label %for.cond857, !llvm.loop !11

for.end872:                                       ; preds = %for.cond857
  %577 = load ptr, ptr %fd.addr, align 8
  %call873 = call i32 @fputc(i32 noundef 10, ptr noundef %577)
  br label %for.inc874

for.inc874:                                       ; preds = %for.end872
  %578 = load i64, ptr %l, align 8
  %inc875 = add nsw i64 %578, 1
  store i64 %inc875, ptr %l, align 8
  br label %for.cond849, !llvm.loop !12

for.end876:                                       ; preds = %for.cond849
  br label %if.end879

if.else877:                                       ; preds = %if.then839
  %579 = load ptr, ptr %fd.addr, align 8
  %call878 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %579, ptr noundef @.str.90)
  br label %if.end879

if.end879:                                        ; preds = %if.else877, %for.end876
  br label %if.end880

if.end880:                                        ; preds = %if.end879, %if.end833
  %580 = load ptr, ptr %tif.addr, align 8
  %tif_dir881 = getelementptr inbounds %struct.tiff, ptr %580, i32 0, i32 6
  %td_fieldsset882 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir881, i32 0, i32 0
  %arrayidx883 = getelementptr inbounds [3 x i64], ptr %td_fieldsset882, i64 0, i64 1
  %581 = load i64, ptr %arrayidx883, align 8
  %and884 = and i64 %581, 524288
  %tobool885 = icmp ne i64 %and884, 0
  br i1 %tobool885, label %if.then886, label %if.end889

if.then886:                                       ; preds = %if.end880
  %582 = load ptr, ptr %fd.addr, align 8
  %583 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %583, i32 0, i32 61
  %584 = load i32, ptr %td_profileLength, align 8
  %conv887 = zext i32 %584 to i64
  %call888 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %582, ptr noundef @.str.98, i64 noundef %conv887)
  br label %if.end889

if.end889:                                        ; preds = %if.then886, %if.end880
  %585 = load ptr, ptr %tif.addr, align 8
  %tif_dir890 = getelementptr inbounds %struct.tiff, ptr %585, i32 0, i32 6
  %td_fieldsset891 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir890, i32 0, i32 0
  %arrayidx892 = getelementptr inbounds [3 x i64], ptr %td_fieldsset891, i64 0, i64 1
  %586 = load i64, ptr %arrayidx892, align 8
  %and893 = and i64 %586, 1048576
  %tobool894 = icmp ne i64 %and893, 0
  br i1 %tobool894, label %if.then895, label %if.end898

if.then895:                                       ; preds = %if.end889
  %587 = load ptr, ptr %fd.addr, align 8
  %588 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %588, i32 0, i32 63
  %589 = load i32, ptr %td_photoshopLength, align 8
  %conv896 = zext i32 %589 to i64
  %call897 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %587, ptr noundef @.str.99, i64 noundef %conv896)
  br label %if.end898

if.end898:                                        ; preds = %if.then895, %if.end889
  %590 = load ptr, ptr %tif.addr, align 8
  %tif_dir899 = getelementptr inbounds %struct.tiff, ptr %590, i32 0, i32 6
  %td_fieldsset900 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir899, i32 0, i32 0
  %arrayidx901 = getelementptr inbounds [3 x i64], ptr %td_fieldsset900, i64 0, i64 1
  %591 = load i64, ptr %arrayidx901, align 8
  %and902 = and i64 %591, 2097152
  %tobool903 = icmp ne i64 %and902, 0
  br i1 %tobool903, label %if.then904, label %if.end907

if.then904:                                       ; preds = %if.end898
  %592 = load ptr, ptr %fd.addr, align 8
  %593 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %593, i32 0, i32 65
  %594 = load i32, ptr %td_richtiffiptcLength, align 8
  %conv905 = zext i32 %594 to i64
  %call906 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %592, ptr noundef @.str.100, i64 noundef %conv905)
  br label %if.end907

if.end907:                                        ; preds = %if.then904, %if.end898
  %595 = load ptr, ptr %tif.addr, align 8
  %tif_dir908 = getelementptr inbounds %struct.tiff, ptr %595, i32 0, i32 6
  %td_fieldsset909 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir908, i32 0, i32 0
  %arrayidx910 = getelementptr inbounds [3 x i64], ptr %td_fieldsset909, i64 0, i64 1
  %596 = load i64, ptr %arrayidx910, align 8
  %and911 = and i64 %596, 131072
  %tobool912 = icmp ne i64 %and911, 0
  br i1 %tobool912, label %if.then913, label %if.end929

if.then913:                                       ; preds = %if.end907
  %597 = load ptr, ptr %fd.addr, align 8
  %call914 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %597, ptr noundef @.str.101)
  store i16 0, ptr %i, align 2
  br label %for.cond915

for.cond915:                                      ; preds = %for.inc925, %if.then913
  %598 = load i16, ptr %i, align 2
  %conv916 = zext i16 %598 to i32
  %599 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %599, i32 0, i32 46
  %600 = load i16, ptr %td_nsubifd, align 8
  %conv917 = zext i16 %600 to i32
  %cmp918 = icmp slt i32 %conv916, %conv917
  br i1 %cmp918, label %for.body920, label %for.end927

for.body920:                                      ; preds = %for.cond915
  %601 = load ptr, ptr %fd.addr, align 8
  %602 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %602, i32 0, i32 47
  %603 = load ptr, ptr %td_subifd, align 8
  %604 = load i16, ptr %i, align 2
  %idxprom921 = zext i16 %604 to i64
  %arrayidx922 = getelementptr inbounds i32, ptr %603, i64 %idxprom921
  %605 = load i32, ptr %arrayidx922, align 4
  %conv923 = zext i32 %605 to i64
  %call924 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %601, ptr noundef @.str.102, i64 noundef %conv923)
  br label %for.inc925

for.inc925:                                       ; preds = %for.body920
  %606 = load i16, ptr %i, align 2
  %inc926 = add i16 %606, 1
  store i16 %inc926, ptr %i, align 2
  br label %for.cond915, !llvm.loop !13

for.end927:                                       ; preds = %for.cond915
  %607 = load ptr, ptr %fd.addr, align 8
  %call928 = call i32 @fputc(i32 noundef 10, ptr noundef %607)
  br label %if.end929

if.end929:                                        ; preds = %for.end927, %if.end907
  %608 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %608, i32 0, i32 59
  %609 = load ptr, ptr %tif_printdir, align 8
  %tobool930 = icmp ne ptr %609, null
  br i1 %tobool930, label %if.then931, label %if.end933

if.then931:                                       ; preds = %if.end929
  %610 = load ptr, ptr %tif.addr, align 8
  %tif_printdir932 = getelementptr inbounds %struct.tiff, ptr %610, i32 0, i32 59
  %611 = load ptr, ptr %tif_printdir932, align 8
  %612 = load ptr, ptr %tif.addr, align 8
  %613 = load ptr, ptr %fd.addr, align 8
  %614 = load i64, ptr %flags.addr, align 8
  call void %611(ptr noundef %612, ptr noundef %613, i64 noundef %614)
  br label %if.end933

if.end933:                                        ; preds = %if.then931, %if.end929
  %615 = load i64, ptr %flags.addr, align 8
  %and934 = and i64 %615, 1
  %tobool935 = icmp ne i64 %and934, 0
  br i1 %tobool935, label %land.lhs.true936, label %if.end964

land.lhs.true936:                                 ; preds = %if.end933
  %616 = load ptr, ptr %tif.addr, align 8
  %tif_dir937 = getelementptr inbounds %struct.tiff, ptr %616, i32 0, i32 6
  %td_fieldsset938 = getelementptr inbounds %struct.TIFFDirectory, ptr %tif_dir937, i32 0, i32 0
  %arrayidx939 = getelementptr inbounds [3 x i64], ptr %td_fieldsset938, i64 0, i64 0
  %617 = load i64, ptr %arrayidx939, align 8
  %and940 = and i64 %617, 33554432
  %tobool941 = icmp ne i64 %and940, 0
  br i1 %tobool941, label %if.then942, label %if.end964

if.then942:                                       ; preds = %land.lhs.true936
  %618 = load ptr, ptr %fd.addr, align 8
  %619 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %619, i32 0, i32 43
  %620 = load i32, ptr %td_nstrips, align 4
  %conv943 = zext i32 %620 to i64
  %621 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %621, i32 0, i32 3
  %622 = load i32, ptr %tif_flags, align 8
  %and944 = and i32 %622, 1024
  %cmp945 = icmp ne i32 %and944, 0
  %623 = zext i1 %cmp945 to i64
  %cond = select i1 %cmp945, ptr @.str.104, ptr @.str.105
  %call947 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %618, ptr noundef @.str.103, i64 noundef %conv943, ptr noundef %cond)
  store i32 0, ptr %s, align 4
  br label %for.cond948

for.cond948:                                      ; preds = %for.inc961, %if.then942
  %624 = load i32, ptr %s, align 4
  %625 = load ptr, ptr %td, align 8
  %td_nstrips949 = getelementptr inbounds %struct.TIFFDirectory, ptr %625, i32 0, i32 43
  %626 = load i32, ptr %td_nstrips949, align 4
  %cmp950 = icmp ult i32 %624, %626
  br i1 %cmp950, label %for.body952, label %for.end963

for.body952:                                      ; preds = %for.cond948
  %627 = load ptr, ptr %fd.addr, align 8
  %628 = load i32, ptr %s, align 4
  %conv953 = zext i32 %628 to i64
  %629 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %629, i32 0, i32 44
  %630 = load ptr, ptr %td_stripoffset, align 8
  %631 = load i32, ptr %s, align 4
  %idxprom954 = zext i32 %631 to i64
  %arrayidx955 = getelementptr inbounds i32, ptr %630, i64 %idxprom954
  %632 = load i32, ptr %arrayidx955, align 4
  %conv956 = zext i32 %632 to i64
  %633 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %633, i32 0, i32 45
  %634 = load ptr, ptr %td_stripbytecount, align 8
  %635 = load i32, ptr %s, align 4
  %idxprom957 = zext i32 %635 to i64
  %arrayidx958 = getelementptr inbounds i32, ptr %634, i64 %idxprom957
  %636 = load i32, ptr %arrayidx958, align 4
  %conv959 = zext i32 %636 to i64
  %call960 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %627, ptr noundef @.str.106, i64 noundef %conv953, i64 noundef %conv956, i64 noundef %conv959)
  br label %for.inc961

for.inc961:                                       ; preds = %for.body952
  %637 = load i32, ptr %s, align 4
  %inc962 = add i32 %637, 1
  store i32 %inc962, ptr %s, align 4
  br label %for.cond948, !llvm.loop !14

for.end963:                                       ; preds = %for.cond948
  br label %if.end964

if.end964:                                        ; preds = %for.end963, %land.lhs.true936, %if.end933
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


define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_0(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_1(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_2(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_3(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_4(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_5(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_6(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_7(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_8(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_9(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_10(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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

define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_tiff2dither_tif_print_11(ptr noundef %fd, ptr noundef %name, ptr noundef %value)  alwaysinline#0 {
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
