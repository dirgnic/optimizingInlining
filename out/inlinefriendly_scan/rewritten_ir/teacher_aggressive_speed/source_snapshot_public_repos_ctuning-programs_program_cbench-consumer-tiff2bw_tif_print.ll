; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-tiff2bw_tif_print.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-tiff2bw/tif_print.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

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
  %tif_diroff = getelementptr inbounds %struct.tiff, ptr %tif, i64 0, i32 4
  %0 = load i32, ptr %tif_diroff, align 4
  %conv = sext i32 %0 to i64
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str, i64 noundef %conv) #6
  %1 = load ptr, ptr %tif.addr, align 8
  %tif_dir = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6
  store ptr %tif_dir, ptr %td, align 8
  %tif_dir1 = getelementptr inbounds %struct.tiff, ptr %1, i64 0, i32 6
  %2 = load i64, ptr %tif_dir1, align 8
  %and = and i64 %2, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %fd.addr, align 8
  %4 = call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %3)
  store ptr @.str.2, ptr %sep, align 8
  %5 = load ptr, ptr %td, align 8
  %td_subfiletype = getelementptr inbounds %struct.TIFFDirectory, ptr %5, i64 0, i32 7
  %6 = load i32, ptr %td_subfiletype, align 8
  %and3 = and i32 %6, 1
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %fd.addr, align 8
  %8 = load ptr, ptr %sep, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %8) #6
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %9 = load ptr, ptr %td, align 8
  %td_subfiletype7 = getelementptr inbounds %struct.TIFFDirectory, ptr %9, i64 0, i32 7
  %10 = load i32, ptr %td_subfiletype7, align 8
  %and8 = and i32 %10, 2
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %fd.addr, align 8
  %12 = load ptr, ptr %sep, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %12) #6
  store ptr @.str.4, ptr %sep, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %13 = load ptr, ptr %td, align 8
  %td_subfiletype13 = getelementptr inbounds %struct.TIFFDirectory, ptr %13, i64 0, i32 7
  %14 = load i32, ptr %td_subfiletype13, align 8
  %and14 = and i32 %14, 4
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end12
  %15 = load ptr, ptr %fd.addr, align 8
  %16 = load ptr, ptr %sep, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef %16) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12
  %17 = load ptr, ptr %fd.addr, align 8
  %18 = load ptr, ptr %td, align 8
  %td_subfiletype19 = getelementptr inbounds %struct.TIFFDirectory, ptr %18, i64 0, i32 7
  %19 = load i32, ptr %td_subfiletype19, align 8
  %conv20 = zext i32 %19 to i64
  %conv22 = zext i32 %19 to i64
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.7, i64 noundef %conv20, i64 noundef %conv22) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %entry
  %20 = load ptr, ptr %tif.addr, align 8
  %tif_dir25 = getelementptr inbounds %struct.tiff, ptr %20, i64 0, i32 6
  %21 = load i64, ptr %tif_dir25, align 8
  %and28 = and i64 %21, 2
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end44, label %if.then30

if.then30:                                        ; preds = %if.end24
  %22 = load ptr, ptr %fd.addr, align 8
  %23 = load ptr, ptr %td, align 8
  %td_imagewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 1
  %24 = load i32, ptr %td_imagewidth, align 8
  %conv31 = zext i32 %24 to i64
  %td_imagelength = getelementptr inbounds %struct.TIFFDirectory, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %td_imagelength, align 4
  %conv32 = zext i32 %25 to i64
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.8, i64 noundef %conv31, i64 noundef %conv32) #6
  %26 = load ptr, ptr %tif.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.tiff, ptr %26, i64 0, i32 6, i32 0, i64 1
  %27 = load i64, ptr %arrayidx36, align 8
  %and37 = and i64 %27, 8
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.then30
  %28 = load ptr, ptr %fd.addr, align 8
  %29 = load ptr, ptr %td, align 8
  %td_imagedepth = getelementptr inbounds %struct.TIFFDirectory, ptr %29, i64 0, i32 3
  %30 = load i32, ptr %td_imagedepth, align 8
  %conv40 = zext i32 %30 to i64
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.9, i64 noundef %conv40) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then30
  %31 = load ptr, ptr %fd.addr, align 8
  %fputc10 = call i32 @fputc(i32 10, ptr %31)
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end24
  %32 = load ptr, ptr %tif.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.tiff, ptr %32, i64 0, i32 6, i32 0, i64 1
  %33 = load i64, ptr %arrayidx47, align 8
  %and48 = and i64 %33, 8388608
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false, label %if.then55

lor.lhs.false:                                    ; preds = %if.end44
  %34 = load ptr, ptr %tif.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.tiff, ptr %34, i64 0, i32 6, i32 0, i64 1
  %35 = load i64, ptr %arrayidx52, align 8
  %and53 = and i64 %35, 16777216
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false, %if.end44
  %36 = load ptr, ptr %fd.addr, align 8
  %37 = load ptr, ptr %td, align 8
  %td_imagefullwidth = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 67
  %38 = load i32, ptr %td_imagefullwidth, align 8
  %conv56 = zext i32 %38 to i64
  %td_imagefulllength = getelementptr inbounds %struct.TIFFDirectory, ptr %37, i64 0, i32 68
  %39 = load i32, ptr %td_imagefulllength, align 4
  %conv57 = zext i32 %39 to i64
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.11, i64 noundef %conv56, i64 noundef %conv57) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %lor.lhs.false
  %40 = load ptr, ptr %tif.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.tiff, ptr %40, i64 0, i32 6, i32 0, i64 1
  %41 = load i64, ptr %arrayidx62, align 8
  %and63 = and i64 %41, 33554432
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end59
  %42 = load ptr, ptr %fd.addr, align 8
  %43 = load ptr, ptr %td, align 8
  %td_textureformat = getelementptr inbounds %struct.TIFFDirectory, ptr %43, i64 0, i32 69
  %44 = load ptr, ptr %td_textureformat, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef %44)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end59
  %45 = load ptr, ptr %tif.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.tiff, ptr %45, i64 0, i32 6, i32 0, i64 1
  %46 = load i64, ptr %arrayidx69, align 8
  %and70 = and i64 %46, 67108864
  %tobool71.not = icmp eq i64 %and70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end66
  %47 = load ptr, ptr %fd.addr, align 8
  %48 = load ptr, ptr %td, align 8
  %td_wrapmodes = getelementptr inbounds %struct.TIFFDirectory, ptr %48, i64 0, i32 70
  %49 = load ptr, ptr %td_wrapmodes, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %47, ptr noundef nonnull @.str.13, ptr noundef %49)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end66
  %50 = load ptr, ptr %tif.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.tiff, ptr %50, i64 0, i32 6, i32 0, i64 1
  %51 = load i64, ptr %arrayidx76, align 8
  %and77 = and i64 %51, 134217728
  %tobool78.not = icmp eq i64 %and77, 0
  br i1 %tobool78.not, label %if.end82, label %if.then79

if.then79:                                        ; preds = %if.end73
  %52 = load ptr, ptr %fd.addr, align 8
  %53 = load ptr, ptr %td, align 8
  %td_fovcot = getelementptr inbounds %struct.TIFFDirectory, ptr %53, i64 0, i32 71
  %54 = load float, ptr %td_fovcot, align 8
  %conv80 = fpext float %54 to double
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.14, double noundef %conv80) #6
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end73
  %55 = load ptr, ptr %tif.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.tiff, ptr %55, i64 0, i32 6, i32 0, i64 1
  %56 = load i64, ptr %arrayidx85, align 8
  %and86 = and i64 %56, 268435456
  %tobool87.not = icmp eq i64 %and86, 0
  br i1 %tobool87.not, label %if.end138, label %if.then88

if.then88:                                        ; preds = %if.end82
  %57 = load ptr, ptr %td, align 8
  %td_matrixWorldToScreen = getelementptr inbounds %struct.TIFFDirectory, ptr %57, i64 0, i32 72
  %58 = load ptr, ptr %td_matrixWorldToScreen, align 8
  store ptr %58, ptr %m, align 8
  %59 = load ptr, ptr %fd.addr, align 8
  %60 = load float, ptr %58, align 4
  %conv91 = fpext float %60 to double
  %arrayidx93 = getelementptr inbounds [4 x float], ptr %58, i64 0, i64 1
  %61 = load float, ptr %arrayidx93, align 4
  %conv94 = fpext float %61 to double
  %62 = load ptr, ptr %m, align 8
  %arrayidx96 = getelementptr inbounds [4 x float], ptr %62, i64 0, i64 2
  %63 = load float, ptr %arrayidx96, align 4
  %conv97 = fpext float %63 to double
  %arrayidx99 = getelementptr inbounds [4 x float], ptr %62, i64 0, i64 3
  %64 = load float, ptr %arrayidx99, align 4
  %conv100 = fpext float %64 to double
  %65 = load ptr, ptr %m, align 8
  %arrayidx101 = getelementptr inbounds [4 x [4 x float]], ptr %65, i64 0, i64 1
  %66 = load float, ptr %arrayidx101, align 4
  %conv103 = fpext float %66 to double
  %arrayidx105 = getelementptr inbounds [4 x [4 x float]], ptr %65, i64 0, i64 1, i64 1
  %67 = load float, ptr %arrayidx105, align 4
  %conv106 = fpext float %67 to double
  %68 = load ptr, ptr %m, align 8
  %arrayidx108 = getelementptr inbounds [4 x [4 x float]], ptr %68, i64 0, i64 1, i64 2
  %69 = load float, ptr %arrayidx108, align 4
  %conv109 = fpext float %69 to double
  %arrayidx111 = getelementptr inbounds [4 x [4 x float]], ptr %68, i64 0, i64 1, i64 3
  %70 = load float, ptr %arrayidx111, align 4
  %conv112 = fpext float %70 to double
  %71 = load ptr, ptr %m, align 8
  %arrayidx113 = getelementptr inbounds [4 x [4 x float]], ptr %71, i64 0, i64 2
  %72 = load float, ptr %arrayidx113, align 4
  %conv115 = fpext float %72 to double
  %arrayidx117 = getelementptr inbounds [4 x [4 x float]], ptr %71, i64 0, i64 2, i64 1
  %73 = load float, ptr %arrayidx117, align 4
  %conv118 = fpext float %73 to double
  %74 = load ptr, ptr %m, align 8
  %arrayidx120 = getelementptr inbounds [4 x [4 x float]], ptr %74, i64 0, i64 2, i64 2
  %75 = load float, ptr %arrayidx120, align 4
  %conv121 = fpext float %75 to double
  %arrayidx123 = getelementptr inbounds [4 x [4 x float]], ptr %74, i64 0, i64 2, i64 3
  %76 = load float, ptr %arrayidx123, align 4
  %conv124 = fpext float %76 to double
  %77 = load ptr, ptr %m, align 8
  %arrayidx125 = getelementptr inbounds [4 x [4 x float]], ptr %77, i64 0, i64 3
  %78 = load float, ptr %arrayidx125, align 4
  %conv127 = fpext float %78 to double
  %arrayidx129 = getelementptr inbounds [4 x [4 x float]], ptr %77, i64 0, i64 3, i64 1
  %79 = load float, ptr %arrayidx129, align 4
  %conv130 = fpext float %79 to double
  %80 = load ptr, ptr %m, align 8
  %arrayidx132 = getelementptr inbounds [4 x [4 x float]], ptr %80, i64 0, i64 3, i64 2
  %81 = load float, ptr %arrayidx132, align 4
  %conv133 = fpext float %81 to double
  %arrayidx135 = getelementptr inbounds [4 x [4 x float]], ptr %80, i64 0, i64 3, i64 3
  %82 = load float, ptr %arrayidx135, align 4
  %conv136 = fpext float %82 to double
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.15, double noundef %conv91, double noundef %conv94, double noundef %conv97, double noundef %conv100, double noundef %conv103, double noundef %conv106, double noundef %conv109, double noundef %conv112, double noundef %conv115, double noundef %conv118, double noundef %conv121, double noundef %conv124, double noundef %conv127, double noundef %conv130, double noundef %conv133, double noundef %conv136) #6
  br label %if.end138

if.end138:                                        ; preds = %if.then88, %if.end82
  %83 = load ptr, ptr %tif.addr, align 8
  %arrayidx141 = getelementptr inbounds %struct.tiff, ptr %83, i64 0, i32 6, i32 0, i64 1
  %84 = load i64, ptr %arrayidx141, align 8
  %and142 = and i64 %84, 536870912
  %tobool143.not = icmp eq i64 %and142, 0
  br i1 %tobool143.not, label %if.end195, label %if.then144

if.then144:                                       ; preds = %if.end138
  %85 = load ptr, ptr %td, align 8
  %td_matrixWorldToCamera = getelementptr inbounds %struct.TIFFDirectory, ptr %85, i64 0, i32 73
  %86 = load ptr, ptr %td_matrixWorldToCamera, align 8
  store ptr %86, ptr %m145, align 8
  %87 = load ptr, ptr %fd.addr, align 8
  %88 = load float, ptr %86, align 4
  %conv148 = fpext float %88 to double
  %arrayidx150 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 1
  %89 = load float, ptr %arrayidx150, align 4
  %conv151 = fpext float %89 to double
  %90 = load ptr, ptr %m145, align 8
  %arrayidx153 = getelementptr inbounds [4 x float], ptr %90, i64 0, i64 2
  %91 = load float, ptr %arrayidx153, align 4
  %conv154 = fpext float %91 to double
  %arrayidx156 = getelementptr inbounds [4 x float], ptr %90, i64 0, i64 3
  %92 = load float, ptr %arrayidx156, align 4
  %conv157 = fpext float %92 to double
  %93 = load ptr, ptr %m145, align 8
  %arrayidx158 = getelementptr inbounds [4 x [4 x float]], ptr %93, i64 0, i64 1
  %94 = load float, ptr %arrayidx158, align 4
  %conv160 = fpext float %94 to double
  %arrayidx162 = getelementptr inbounds [4 x [4 x float]], ptr %93, i64 0, i64 1, i64 1
  %95 = load float, ptr %arrayidx162, align 4
  %conv163 = fpext float %95 to double
  %96 = load ptr, ptr %m145, align 8
  %arrayidx165 = getelementptr inbounds [4 x [4 x float]], ptr %96, i64 0, i64 1, i64 2
  %97 = load float, ptr %arrayidx165, align 4
  %conv166 = fpext float %97 to double
  %arrayidx168 = getelementptr inbounds [4 x [4 x float]], ptr %96, i64 0, i64 1, i64 3
  %98 = load float, ptr %arrayidx168, align 4
  %conv169 = fpext float %98 to double
  %99 = load ptr, ptr %m145, align 8
  %arrayidx170 = getelementptr inbounds [4 x [4 x float]], ptr %99, i64 0, i64 2
  %100 = load float, ptr %arrayidx170, align 4
  %conv172 = fpext float %100 to double
  %arrayidx174 = getelementptr inbounds [4 x [4 x float]], ptr %99, i64 0, i64 2, i64 1
  %101 = load float, ptr %arrayidx174, align 4
  %conv175 = fpext float %101 to double
  %102 = load ptr, ptr %m145, align 8
  %arrayidx177 = getelementptr inbounds [4 x [4 x float]], ptr %102, i64 0, i64 2, i64 2
  %103 = load float, ptr %arrayidx177, align 4
  %conv178 = fpext float %103 to double
  %arrayidx180 = getelementptr inbounds [4 x [4 x float]], ptr %102, i64 0, i64 2, i64 3
  %104 = load float, ptr %arrayidx180, align 4
  %conv181 = fpext float %104 to double
  %105 = load ptr, ptr %m145, align 8
  %arrayidx182 = getelementptr inbounds [4 x [4 x float]], ptr %105, i64 0, i64 3
  %106 = load float, ptr %arrayidx182, align 4
  %conv184 = fpext float %106 to double
  %arrayidx186 = getelementptr inbounds [4 x [4 x float]], ptr %105, i64 0, i64 3, i64 1
  %107 = load float, ptr %arrayidx186, align 4
  %conv187 = fpext float %107 to double
  %108 = load ptr, ptr %m145, align 8
  %arrayidx189 = getelementptr inbounds [4 x [4 x float]], ptr %108, i64 0, i64 3, i64 2
  %109 = load float, ptr %arrayidx189, align 4
  %conv190 = fpext float %109 to double
  %arrayidx192 = getelementptr inbounds [4 x [4 x float]], ptr %108, i64 0, i64 3, i64 3
  %110 = load float, ptr %arrayidx192, align 4
  %conv193 = fpext float %110 to double
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.16, double noundef %conv148, double noundef %conv151, double noundef %conv154, double noundef %conv157, double noundef %conv160, double noundef %conv163, double noundef %conv166, double noundef %conv169, double noundef %conv172, double noundef %conv175, double noundef %conv178, double noundef %conv181, double noundef %conv184, double noundef %conv187, double noundef %conv190, double noundef %conv193) #6
  br label %if.end195

if.end195:                                        ; preds = %if.then144, %if.end138
  %111 = load ptr, ptr %tif.addr, align 8
  %tif_dir196 = getelementptr inbounds %struct.tiff, ptr %111, i64 0, i32 6
  %112 = load i64, ptr %tif_dir196, align 8
  %and199 = and i64 %112, 4
  %tobool200.not = icmp eq i64 %and199, 0
  br i1 %tobool200.not, label %if.end215, label %if.then201

if.then201:                                       ; preds = %if.end195
  %113 = load ptr, ptr %fd.addr, align 8
  %114 = load ptr, ptr %td, align 8
  %td_tilewidth = getelementptr inbounds %struct.TIFFDirectory, ptr %114, i64 0, i32 4
  %115 = load i32, ptr %td_tilewidth, align 4
  %conv202 = zext i32 %115 to i64
  %td_tilelength = getelementptr inbounds %struct.TIFFDirectory, ptr %114, i64 0, i32 5
  %116 = load i32, ptr %td_tilelength, align 8
  %conv203 = zext i32 %116 to i64
  %call204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.17, i64 noundef %conv202, i64 noundef %conv203) #6
  %117 = load ptr, ptr %tif.addr, align 8
  %arrayidx207 = getelementptr inbounds %struct.tiff, ptr %117, i64 0, i32 6, i32 0, i64 1
  %118 = load i64, ptr %arrayidx207, align 8
  %and208 = and i64 %118, 16
  %tobool209.not = icmp eq i64 %and208, 0
  br i1 %tobool209.not, label %if.end213, label %if.then210

if.then210:                                       ; preds = %if.then201
  %119 = load ptr, ptr %fd.addr, align 8
  %120 = load ptr, ptr %td, align 8
  %td_tiledepth = getelementptr inbounds %struct.TIFFDirectory, ptr %120, i64 0, i32 6
  %121 = load i32, ptr %td_tiledepth, align 4
  %conv211 = zext i32 %121 to i64
  %call212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.18, i64 noundef %conv211) #6
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.then201
  %122 = load ptr, ptr %fd.addr, align 8
  %fputc9 = call i32 @fputc(i32 10, ptr %122)
  br label %if.end215

if.end215:                                        ; preds = %if.end213, %if.end195
  %123 = load ptr, ptr %tif.addr, align 8
  %tif_dir216 = getelementptr inbounds %struct.tiff, ptr %123, i64 0, i32 6
  %124 = load i64, ptr %tif_dir216, align 8
  %and219 = and i64 %124, 8
  %tobool220.not = icmp eq i64 %and219, 0
  br i1 %tobool220.not, label %if.end244, label %if.then221

if.then221:                                       ; preds = %if.end215
  %125 = load ptr, ptr %fd.addr, align 8
  %126 = load ptr, ptr %td, align 8
  %td_xresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %126, i64 0, i32 21
  %127 = load float, ptr %td_xresolution, align 8
  %conv222 = fpext float %127 to double
  %td_yresolution = getelementptr inbounds %struct.TIFFDirectory, ptr %126, i64 0, i32 22
  %128 = load float, ptr %td_yresolution, align 4
  %conv223 = fpext float %128 to double
  %call224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.19, double noundef %conv222, double noundef %conv223) #6
  %129 = load ptr, ptr %tif.addr, align 8
  %tif_dir225 = getelementptr inbounds %struct.tiff, ptr %129, i64 0, i32 6
  %130 = load i64, ptr %tif_dir225, align 8
  %and228 = and i64 %130, 4194304
  %tobool229.not = icmp eq i64 %and228, 0
  br i1 %tobool229.not, label %if.end242, label %if.then230

if.then230:                                       ; preds = %if.then221
  %131 = load ptr, ptr %td, align 8
  %td_resolutionunit = getelementptr inbounds %struct.TIFFDirectory, ptr %131, i64 0, i32 23
  %132 = load i16, ptr %td_resolutionunit, align 8
  switch i16 %132, label %sw.default [
    i16 1, label %sw.bb
    i16 2, label %sw.bb233
    i16 3, label %sw.bb235
  ]

sw.bb:                                            ; preds = %if.then230
  %133 = load ptr, ptr %fd.addr, align 8
  %134 = call i64 @fwrite(ptr nonnull @.str.20, i64 11, i64 1, ptr %133)
  br label %if.end242

sw.bb233:                                         ; preds = %if.then230
  %135 = load ptr, ptr %fd.addr, align 8
  %136 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %135)
  br label %if.end242

sw.bb235:                                         ; preds = %if.then230
  %137 = load ptr, ptr %fd.addr, align 8
  %138 = call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr %137)
  br label %if.end242

sw.default:                                       ; preds = %if.then230
  %139 = load ptr, ptr %fd.addr, align 8
  %140 = load ptr, ptr %td, align 8
  %td_resolutionunit237 = getelementptr inbounds %struct.TIFFDirectory, ptr %140, i64 0, i32 23
  %141 = load i16, ptr %td_resolutionunit237, align 8
  %conv238 = zext i16 %141 to i32
  %conv240 = zext i16 %141 to i32
  %call241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.23, i32 noundef %conv238, i32 noundef %conv240) #6
  br label %if.end242

if.end242:                                        ; preds = %sw.bb, %sw.bb233, %sw.bb235, %sw.default, %if.then221
  %142 = load ptr, ptr %fd.addr, align 8
  %fputc8 = call i32 @fputc(i32 10, ptr %142)
  br label %if.end244

if.end244:                                        ; preds = %if.end242, %if.end215
  %143 = load ptr, ptr %tif.addr, align 8
  %tif_dir245 = getelementptr inbounds %struct.tiff, ptr %143, i64 0, i32 6
  %144 = load i64, ptr %tif_dir245, align 8
  %and248 = and i64 %144, 16
  %tobool249.not = icmp eq i64 %and248, 0
  br i1 %tobool249.not, label %if.end254, label %if.then250

if.then250:                                       ; preds = %if.end244
  %145 = load ptr, ptr %fd.addr, align 8
  %146 = load ptr, ptr %td, align 8
  %td_xposition = getelementptr inbounds %struct.TIFFDirectory, ptr %146, i64 0, i32 25
  %147 = load float, ptr %td_xposition, align 4
  %conv251 = fpext float %147 to double
  %td_yposition = getelementptr inbounds %struct.TIFFDirectory, ptr %146, i64 0, i32 26
  %148 = load float, ptr %td_yposition, align 8
  %conv252 = fpext float %148 to double
  %call253 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.24, double noundef %conv251, double noundef %conv252) #6
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.end244
  %149 = load ptr, ptr %tif.addr, align 8
  %tif_dir255 = getelementptr inbounds %struct.tiff, ptr %149, i64 0, i32 6
  %150 = load i64, ptr %tif_dir255, align 8
  %and258 = and i64 %150, 64
  %tobool259.not = icmp eq i64 %and258, 0
  br i1 %tobool259.not, label %if.end263, label %if.then260

if.then260:                                       ; preds = %if.end254
  %151 = load ptr, ptr %fd.addr, align 8
  %152 = load ptr, ptr %td, align 8
  %td_bitspersample = getelementptr inbounds %struct.TIFFDirectory, ptr %152, i64 0, i32 8
  %153 = load i16, ptr %td_bitspersample, align 4
  %conv261 = zext i16 %153 to i32
  %call262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.25, i32 noundef %conv261) #6
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end254
  %154 = load ptr, ptr %tif.addr, align 8
  %arrayidx266 = getelementptr inbounds %struct.tiff, ptr %154, i64 0, i32 6, i32 0, i64 1
  %155 = load i64, ptr %arrayidx266, align 8
  %and267 = and i64 %155, 1
  %tobool268.not = icmp eq i64 %and267, 0
  br i1 %tobool268.not, label %if.end287, label %if.then269

if.then269:                                       ; preds = %if.end263
  %156 = load ptr, ptr %fd.addr, align 8
  %157 = call i64 @fwrite(ptr nonnull @.str.26, i64 17, i64 1, ptr %156)
  %158 = load ptr, ptr %td, align 8
  %td_sampleformat = getelementptr inbounds %struct.TIFFDirectory, ptr %158, i64 0, i32 9
  %159 = load i16, ptr %td_sampleformat, align 2
  switch i16 %159, label %sw.default280 [
    i16 4, label %sw.bb272
    i16 2, label %sw.bb274
    i16 1, label %sw.bb276
    i16 3, label %sw.bb278
  ]

sw.bb272:                                         ; preds = %if.then269
  %160 = load ptr, ptr %fd.addr, align 8
  %161 = call i64 @fwrite(ptr nonnull @.str.27, i64 5, i64 1, ptr %160)
  br label %if.end287

sw.bb274:                                         ; preds = %if.then269
  %162 = load ptr, ptr %fd.addr, align 8
  %163 = call i64 @fwrite(ptr nonnull @.str.28, i64 15, i64 1, ptr %162)
  br label %if.end287

sw.bb276:                                         ; preds = %if.then269
  %164 = load ptr, ptr %fd.addr, align 8
  %165 = call i64 @fwrite(ptr nonnull @.str.29, i64 17, i64 1, ptr %164)
  br label %if.end287

sw.bb278:                                         ; preds = %if.then269
  %166 = load ptr, ptr %fd.addr, align 8
  %167 = call i64 @fwrite(ptr nonnull @.str.30, i64 20, i64 1, ptr %166)
  br label %if.end287

sw.default280:                                    ; preds = %if.then269
  %168 = load ptr, ptr %fd.addr, align 8
  %169 = load ptr, ptr %td, align 8
  %td_sampleformat281 = getelementptr inbounds %struct.TIFFDirectory, ptr %169, i64 0, i32 9
  %170 = load i16, ptr %td_sampleformat281, align 2
  %conv282 = zext i16 %170 to i32
  %conv284 = zext i16 %170 to i32
  %call285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.31, i32 noundef %conv282, i32 noundef %conv284) #6
  br label %if.end287

if.end287:                                        ; preds = %sw.bb272, %sw.bb274, %sw.bb276, %sw.bb278, %sw.default280, %if.end263
  %171 = load ptr, ptr %tif.addr, align 8
  %tif_dir288 = getelementptr inbounds %struct.tiff, ptr %171, i64 0, i32 6
  %172 = load i64, ptr %tif_dir288, align 8
  %and291 = and i64 %172, 128
  %tobool292.not = icmp eq i64 %and291, 0
  br i1 %tobool292.not, label %if.end305, label %if.then293

if.then293:                                       ; preds = %if.end287
  %173 = load ptr, ptr %td, align 8
  %td_compression = getelementptr inbounds %struct.TIFFDirectory, ptr %173, i64 0, i32 10
  %174 = load i16, ptr %td_compression, align 8
  %call294 = call ptr @TIFFFindCODEC(i16 noundef zeroext %174) #6
  store ptr %call294, ptr %c, align 8
  %175 = load ptr, ptr %fd.addr, align 8
  %176 = call i64 @fwrite(ptr nonnull @.str.32, i64 22, i64 1, ptr %175)
  %tobool296.not = icmp eq ptr %call294, null
  br i1 %tobool296.not, label %if.else, label %if.then297

if.then297:                                       ; preds = %if.then293
  %177 = load ptr, ptr %fd.addr, align 8
  %178 = load ptr, ptr %c, align 8
  %179 = load ptr, ptr %178, align 8
  %call298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.33, ptr noundef %179) #6
  br label %if.end305

if.else:                                          ; preds = %if.then293
  %180 = load ptr, ptr %fd.addr, align 8
  %181 = load ptr, ptr %td, align 8
  %td_compression299 = getelementptr inbounds %struct.TIFFDirectory, ptr %181, i64 0, i32 10
  %182 = load i16, ptr %td_compression299, align 8
  %conv300 = zext i16 %182 to i32
  %conv302 = zext i16 %182 to i32
  %call303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.31, i32 noundef %conv300, i32 noundef %conv302) #6
  br label %if.end305

if.end305:                                        ; preds = %if.then297, %if.else, %if.end287
  %183 = load ptr, ptr %tif.addr, align 8
  %tif_dir306 = getelementptr inbounds %struct.tiff, ptr %183, i64 0, i32 6
  %184 = load i64, ptr %tif_dir306, align 8
  %and309 = and i64 %184, 256
  %tobool310.not = icmp eq i64 %and309, 0
  br i1 %tobool310.not, label %if.end334, label %if.then311

if.then311:                                       ; preds = %if.end305
  %185 = load ptr, ptr %fd.addr, align 8
  %186 = call i64 @fwrite(ptr nonnull @.str.34, i64 30, i64 1, ptr %185)
  %187 = load ptr, ptr %td, align 8
  %td_photometric = getelementptr inbounds %struct.TIFFDirectory, ptr %187, i64 0, i32 11
  %188 = load i16, ptr %td_photometric, align 2
  %cmp = icmp ult i16 %188, 9
  br i1 %cmp, label %if.then315, label %if.else319

if.then315:                                       ; preds = %if.then311
  %189 = load ptr, ptr %fd.addr, align 8
  %190 = load ptr, ptr %td, align 8
  %td_photometric316 = getelementptr inbounds %struct.TIFFDirectory, ptr %190, i64 0, i32 11
  %191 = load i16, ptr %td_photometric316, align 2
  %idxprom = zext i16 %191 to i64
  %arrayidx317 = getelementptr inbounds [9 x ptr], ptr @photoNames, i64 0, i64 %idxprom
  %192 = load ptr, ptr %arrayidx317, align 8
  %call318 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef nonnull @.str.33, ptr noundef %192) #6
  br label %if.end334

if.else319:                                       ; preds = %if.then311
  %193 = load ptr, ptr %td, align 8
  %td_photometric320 = getelementptr inbounds %struct.TIFFDirectory, ptr %193, i64 0, i32 11
  %194 = load i16, ptr %td_photometric320, align 2
  switch i16 %194, label %sw.default326 [
    i16 -32692, label %sw.bb322
    i16 -32691, label %sw.bb324
  ]

sw.bb322:                                         ; preds = %if.else319
  %195 = load ptr, ptr %fd.addr, align 8
  %196 = call i64 @fwrite(ptr nonnull @.str.35, i64 12, i64 1, ptr %195)
  br label %if.end334

sw.bb324:                                         ; preds = %if.else319
  %197 = load ptr, ptr %fd.addr, align 8
  %198 = call i64 @fwrite(ptr nonnull @.str.36, i64 20, i64 1, ptr %197)
  br label %if.end334

sw.default326:                                    ; preds = %if.else319
  %199 = load ptr, ptr %fd.addr, align 8
  %200 = load ptr, ptr %td, align 8
  %td_photometric327 = getelementptr inbounds %struct.TIFFDirectory, ptr %200, i64 0, i32 11
  %201 = load i16, ptr %td_photometric327, align 2
  %conv328 = zext i16 %201 to i32
  %conv330 = zext i16 %201 to i32
  %call331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.31, i32 noundef %conv328, i32 noundef %conv330) #6
  br label %if.end334

if.end334:                                        ; preds = %if.then315, %sw.default326, %sw.bb324, %sw.bb322, %if.end305
  %202 = load ptr, ptr %tif.addr, align 8
  %tif_dir335 = getelementptr inbounds %struct.tiff, ptr %202, i64 0, i32 6
  %203 = load i64, ptr %tif_dir335, align 8
  %and338 = and i64 %203, 2147483648
  %tobool339.not = icmp eq i64 %and338, 0
  br i1 %tobool339.not, label %if.end372, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end334
  %204 = load ptr, ptr %td, align 8
  %td_extrasamples = getelementptr inbounds %struct.TIFFDirectory, ptr %204, i64 0, i32 30
  %205 = load i16, ptr %td_extrasamples, align 4
  %tobool341.not = icmp eq i16 %205, 0
  br i1 %tobool341.not, label %if.end372, label %if.then342

if.then342:                                       ; preds = %land.lhs.true
  %206 = load ptr, ptr %fd.addr, align 8
  %207 = load ptr, ptr %td, align 8
  %td_extrasamples343 = getelementptr inbounds %struct.TIFFDirectory, ptr %207, i64 0, i32 30
  %208 = load i16, ptr %td_extrasamples343, align 4
  %conv344 = zext i16 %208 to i32
  %call345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.37, i32 noundef %conv344) #6
  store ptr @.str.38, ptr %sep, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog370, %if.then342
  %storemerge7 = phi i16 [ 0, %if.then342 ], [ %inc, %sw.epilog370 ]
  store i16 %storemerge7, ptr %i, align 2
  %209 = load ptr, ptr %td, align 8
  %td_extrasamples347 = getelementptr inbounds %struct.TIFFDirectory, ptr %209, i64 0, i32 30
  %210 = load i16, ptr %td_extrasamples347, align 4
  %cmp349 = icmp ult i16 %storemerge7, %210
  br i1 %cmp349, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %211 = load ptr, ptr %td, align 8
  %td_sampleinfo = getelementptr inbounds %struct.TIFFDirectory, ptr %211, i64 0, i32 31
  %212 = load ptr, ptr %td_sampleinfo, align 8
  %213 = load i16, ptr %i, align 2
  %idxprom351 = zext i16 %213 to i64
  %arrayidx352 = getelementptr inbounds i16, ptr %212, i64 %idxprom351
  %214 = load i16, ptr %arrayidx352, align 2
  switch i16 %214, label %sw.default360 [
    i16 0, label %sw.bb354
    i16 1, label %sw.bb356
    i16 2, label %sw.bb358
  ]

sw.bb354:                                         ; preds = %for.body
  %215 = load ptr, ptr %fd.addr, align 8
  %216 = load ptr, ptr %sep, align 8
  %call355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.39, ptr noundef %216) #6
  br label %sw.epilog370

sw.bb356:                                         ; preds = %for.body
  %217 = load ptr, ptr %fd.addr, align 8
  %218 = load ptr, ptr %sep, align 8
  %call357 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.40, ptr noundef %218) #6
  br label %sw.epilog370

sw.bb358:                                         ; preds = %for.body
  %219 = load ptr, ptr %fd.addr, align 8
  %220 = load ptr, ptr %sep, align 8
  %call359 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.41, ptr noundef %220) #6
  br label %sw.epilog370

sw.default360:                                    ; preds = %for.body
  %221 = load ptr, ptr %fd.addr, align 8
  %222 = load ptr, ptr %sep, align 8
  %223 = load ptr, ptr %td, align 8
  %td_sampleinfo361 = getelementptr inbounds %struct.TIFFDirectory, ptr %223, i64 0, i32 31
  %224 = load ptr, ptr %td_sampleinfo361, align 8
  %225 = load i16, ptr %i, align 2
  %idxprom362 = zext i16 %225 to i64
  %arrayidx363 = getelementptr inbounds i16, ptr %224, i64 %idxprom362
  %226 = load i16, ptr %arrayidx363, align 2
  %conv364 = zext i16 %226 to i32
  %227 = load ptr, ptr %td, align 8
  %td_sampleinfo365 = getelementptr inbounds %struct.TIFFDirectory, ptr %227, i64 0, i32 31
  %228 = load ptr, ptr %td_sampleinfo365, align 8
  %229 = load i16, ptr %i, align 2
  %idxprom366 = zext i16 %229 to i64
  %arrayidx367 = getelementptr inbounds i16, ptr %228, i64 %idxprom366
  %230 = load i16, ptr %arrayidx367, align 2
  %conv368 = zext i16 %230 to i32
  %call369 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef nonnull @.str.42, ptr noundef %222, i32 noundef %conv364, i32 noundef %conv368) #6
  br label %sw.epilog370

sw.epilog370:                                     ; preds = %sw.default360, %sw.bb358, %sw.bb356, %sw.bb354
  store ptr @.str.43, ptr %sep, align 8
  %231 = load i16, ptr %i, align 2
  %inc = add i16 %231, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %232 = load ptr, ptr %fd.addr, align 8
  %233 = call i64 @fwrite(ptr nonnull @.str.44, i64 2, i64 1, ptr %232)
  br label %if.end372

if.end372:                                        ; preds = %for.end, %land.lhs.true, %if.end334
  %234 = load ptr, ptr %tif.addr, align 8
  %arrayidx375 = getelementptr inbounds %struct.tiff, ptr %234, i64 0, i32 6, i32 0, i64 1
  %235 = load i64, ptr %arrayidx375, align 8
  %and376 = and i64 %235, 4194304
  %tobool377.not = icmp eq i64 %and376, 0
  br i1 %tobool377.not, label %if.end380, label %if.then378

if.then378:                                       ; preds = %if.end372
  %236 = load ptr, ptr %fd.addr, align 8
  %237 = load ptr, ptr %td, align 8
  %td_stonits = getelementptr inbounds %struct.TIFFDirectory, ptr %237, i64 0, i32 32
  %238 = load double, ptr %td_stonits, align 8
  %call379 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.45, double noundef %238) #6
  br label %if.end380

if.end380:                                        ; preds = %if.then378, %if.end372
  %239 = load ptr, ptr %tif.addr, align 8
  %arrayidx383 = getelementptr inbounds %struct.tiff, ptr %239, i64 0, i32 6, i32 0, i64 1
  %240 = load i64, ptr %arrayidx383, align 8
  %and384 = and i64 %240, 8192
  %tobool385.not = icmp eq i64 %and384, 0
  br i1 %tobool385.not, label %if.end398, label %if.then386

if.then386:                                       ; preds = %if.end380
  %241 = load ptr, ptr %fd.addr, align 8
  %242 = call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %241)
  %243 = load ptr, ptr %td, align 8
  %td_inkset = getelementptr inbounds %struct.TIFFDirectory, ptr %243, i64 0, i32 55
  %244 = load i16, ptr %td_inkset, align 8
  %cond11 = icmp eq i16 %244, 1
  br i1 %cond11, label %sw.bb389, label %sw.default391

sw.bb389:                                         ; preds = %if.then386
  %245 = load ptr, ptr %fd.addr, align 8
  %246 = call i64 @fwrite(ptr nonnull @.str.47, i64 5, i64 1, ptr %245)
  br label %if.end398

sw.default391:                                    ; preds = %if.then386
  %247 = load ptr, ptr %fd.addr, align 8
  %248 = load ptr, ptr %td, align 8
  %td_inkset392 = getelementptr inbounds %struct.TIFFDirectory, ptr %248, i64 0, i32 55
  %249 = load i16, ptr %td_inkset392, align 8
  %conv393 = zext i16 %249 to i32
  %conv395 = zext i16 %249 to i32
  %call396 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef nonnull @.str.31, i32 noundef %conv393, i32 noundef %conv395) #6
  br label %if.end398

if.end398:                                        ; preds = %sw.bb389, %sw.default391, %if.end380
  %250 = load ptr, ptr %tif.addr, align 8
  %arrayidx401 = getelementptr inbounds %struct.tiff, ptr %250, i64 0, i32 6, i32 0, i64 1
  %251 = load i64, ptr %arrayidx401, align 8
  %and402 = and i64 %251, 16384
  %tobool403.not = icmp eq i64 %and402, 0
  br i1 %tobool403.not, label %if.end415, label %if.then404

if.then404:                                       ; preds = %if.end398
  %252 = load ptr, ptr %fd.addr, align 8
  %253 = call i64 @fwrite(ptr nonnull @.str.48, i64 13, i64 1, ptr %252)
  %254 = load ptr, ptr %td, align 8
  %td_samplesperpixel = getelementptr inbounds %struct.TIFFDirectory, ptr %254, i64 0, i32 15
  %255 = load i16, ptr %td_samplesperpixel, align 2
  store i16 %255, ptr %i, align 2
  store ptr @.str.38, ptr %sep, align 8
  %td_inknames = getelementptr inbounds %struct.TIFFDirectory, ptr %254, i64 0, i32 59
  %256 = load ptr, ptr %td_inknames, align 8
  store ptr %256, ptr %cp, align 8
  br label %for.cond406

for.cond406:                                      ; preds = %for.body410, %if.then404
  %257 = load i16, ptr %i, align 2
  %cmp408.not = icmp eq i16 %257, 0
  br i1 %cmp408.not, label %if.end415, label %for.body410

for.body410:                                      ; preds = %for.cond406
  %258 = load ptr, ptr %fd.addr, align 8
  %259 = load ptr, ptr %sep, align 8
  %fputs = call i32 @fputs(ptr %259, ptr %258)
  %260 = load ptr, ptr %fd.addr, align 8
  %261 = load ptr, ptr %cp, align 8
  call void @_TIFFprintAscii(ptr noundef %260, ptr noundef %261)
  store ptr @.str.43, ptr %sep, align 8
  %262 = load ptr, ptr %cp, align 8
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %262)
  %strchr = getelementptr inbounds i8, ptr %262, i64 %strlen
  %add.ptr = getelementptr inbounds i8, ptr %strchr, i64 1
  store ptr %add.ptr, ptr %cp, align 8
  %263 = load i16, ptr %i, align 2
  %dec = add i16 %263, -1
  store i16 %dec, ptr %i, align 2
  br label %for.cond406, !llvm.loop !8

if.end415:                                        ; preds = %for.cond406, %if.end398
  %264 = load ptr, ptr %tif.addr, align 8
  %arrayidx418 = getelementptr inbounds %struct.tiff, ptr %264, i64 0, i32 6, i32 0, i64 1
  %265 = load i64, ptr %arrayidx418, align 8
  %and419 = and i64 %265, 262144
  %tobool420.not = icmp eq i64 %and419, 0
  br i1 %tobool420.not, label %if.end424, label %if.then421

if.then421:                                       ; preds = %if.end415
  %266 = load ptr, ptr %fd.addr, align 8
  %267 = load ptr, ptr %td, align 8
  %td_ninks = getelementptr inbounds %struct.TIFFDirectory, ptr %267, i64 0, i32 56
  %268 = load i16, ptr %td_ninks, align 2
  %conv422 = zext i16 %268 to i32
  %call423 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef nonnull @.str.50, i32 noundef %conv422) #6
  br label %if.end424

if.end424:                                        ; preds = %if.then421, %if.end415
  %269 = load ptr, ptr %tif.addr, align 8
  %arrayidx427 = getelementptr inbounds %struct.tiff, ptr %269, i64 0, i32 6, i32 0, i64 1
  %270 = load i64, ptr %arrayidx427, align 8
  %and428 = and i64 %270, 32768
  %tobool429.not = icmp eq i64 %and428, 0
  br i1 %tobool429.not, label %if.end437, label %if.then430

if.then430:                                       ; preds = %if.end424
  %271 = load ptr, ptr %fd.addr, align 8
  %272 = load ptr, ptr %td, align 8
  %td_dotrange = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i64 0, i32 57
  %273 = load i16, ptr %td_dotrange, align 4
  %conv432 = zext i16 %273 to i32
  %arrayidx434 = getelementptr inbounds %struct.TIFFDirectory, ptr %272, i64 0, i32 57, i64 1
  %274 = load i16, ptr %arrayidx434, align 2
  %conv435 = zext i16 %274 to i32
  %call436 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %271, ptr noundef nonnull @.str.51, i32 noundef %conv432, i32 noundef %conv435) #6
  br label %if.end437

if.end437:                                        ; preds = %if.then430, %if.end424
  %275 = load ptr, ptr %tif.addr, align 8
  %arrayidx440 = getelementptr inbounds %struct.tiff, ptr %275, i64 0, i32 6, i32 0, i64 1
  %276 = load i64, ptr %arrayidx440, align 8
  %and441 = and i64 %276, 65536
  %tobool442.not = icmp eq i64 %and441, 0
  br i1 %tobool442.not, label %if.end444, label %if.then443

if.then443:                                       ; preds = %if.end437
  %277 = load ptr, ptr %fd.addr, align 8
  %278 = load ptr, ptr %td, align 8
  %td_targetprinter = getelementptr inbounds %struct.TIFFDirectory, ptr %278, i64 0, i32 60
  %279 = load ptr, ptr %td_targetprinter, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %277, ptr noundef nonnull @.str.52, ptr noundef %279)
  br label %if.end444

if.end444:                                        ; preds = %if.then443, %if.end437
  %280 = load ptr, ptr %tif.addr, align 8
  %tif_dir445 = getelementptr inbounds %struct.tiff, ptr %280, i64 0, i32 6
  %281 = load i64, ptr %tif_dir445, align 8
  %and448 = and i64 %281, 512
  %tobool449.not = icmp eq i64 %and448, 0
  br i1 %tobool449.not, label %if.end466, label %if.then450

if.then450:                                       ; preds = %if.end444
  %282 = load ptr, ptr %fd.addr, align 8
  %283 = call i64 @fwrite(ptr nonnull @.str.53, i64 16, i64 1, ptr %282)
  %284 = load ptr, ptr %td, align 8
  %td_threshholding = getelementptr inbounds %struct.TIFFDirectory, ptr %284, i64 0, i32 12
  %285 = load i16, ptr %td_threshholding, align 4
  switch i16 %285, label %sw.default459 [
    i16 1, label %sw.bb453
    i16 2, label %sw.bb455
    i16 3, label %sw.bb457
  ]

sw.bb453:                                         ; preds = %if.then450
  %286 = load ptr, ptr %fd.addr, align 8
  %287 = call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr %286)
  br label %if.end466

sw.bb455:                                         ; preds = %if.then450
  %288 = load ptr, ptr %fd.addr, align 8
  %289 = call i64 @fwrite(ptr nonnull @.str.55, i64 26, i64 1, ptr %288)
  br label %if.end466

sw.bb457:                                         ; preds = %if.then450
  %290 = load ptr, ptr %fd.addr, align 8
  %291 = call i64 @fwrite(ptr nonnull @.str.56, i64 15, i64 1, ptr %290)
  br label %if.end466

sw.default459:                                    ; preds = %if.then450
  %292 = load ptr, ptr %fd.addr, align 8
  %293 = load ptr, ptr %td, align 8
  %td_threshholding460 = getelementptr inbounds %struct.TIFFDirectory, ptr %293, i64 0, i32 12
  %294 = load i16, ptr %td_threshholding460, align 4
  %conv461 = zext i16 %294 to i32
  %conv463 = zext i16 %294 to i32
  %call464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef nonnull @.str.31, i32 noundef %conv461, i32 noundef %conv463) #6
  br label %if.end466

if.end466:                                        ; preds = %sw.bb453, %sw.bb455, %sw.bb457, %sw.default459, %if.end444
  %295 = load ptr, ptr %tif.addr, align 8
  %tif_dir467 = getelementptr inbounds %struct.tiff, ptr %295, i64 0, i32 6
  %296 = load i64, ptr %tif_dir467, align 8
  %and470 = and i64 %296, 1024
  %tobool471.not = icmp eq i64 %and470, 0
  br i1 %tobool471.not, label %if.end486, label %if.then472

if.then472:                                       ; preds = %if.end466
  %297 = load ptr, ptr %fd.addr, align 8
  %298 = call i64 @fwrite(ptr nonnull @.str.57, i64 13, i64 1, ptr %297)
  %299 = load ptr, ptr %td, align 8
  %td_fillorder = getelementptr inbounds %struct.TIFFDirectory, ptr %299, i64 0, i32 13
  %300 = load i16, ptr %td_fillorder, align 2
  switch i16 %300, label %sw.default479 [
    i16 1, label %sw.bb475
    i16 2, label %sw.bb477
  ]

sw.bb475:                                         ; preds = %if.then472
  %301 = load ptr, ptr %fd.addr, align 8
  %302 = call i64 @fwrite(ptr nonnull @.str.58, i64 11, i64 1, ptr %301)
  br label %if.end486

sw.bb477:                                         ; preds = %if.then472
  %303 = load ptr, ptr %fd.addr, align 8
  %304 = call i64 @fwrite(ptr nonnull @.str.59, i64 11, i64 1, ptr %303)
  br label %if.end486

sw.default479:                                    ; preds = %if.then472
  %305 = load ptr, ptr %fd.addr, align 8
  %306 = load ptr, ptr %td, align 8
  %td_fillorder480 = getelementptr inbounds %struct.TIFFDirectory, ptr %306, i64 0, i32 13
  %307 = load i16, ptr %td_fillorder480, align 2
  %conv481 = zext i16 %307 to i32
  %conv483 = zext i16 %307 to i32
  %call484 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %305, ptr noundef nonnull @.str.31, i32 noundef %conv481, i32 noundef %conv483) #6
  br label %if.end486

if.end486:                                        ; preds = %sw.bb475, %sw.bb477, %sw.default479, %if.end466
  %308 = load ptr, ptr %tif.addr, align 8
  %arrayidx489 = getelementptr inbounds %struct.tiff, ptr %308, i64 0, i32 6, i32 0, i64 1
  %309 = load i64, ptr %arrayidx489, align 8
  %and490 = and i64 %309, 128
  %tobool491.not = icmp eq i64 %and490, 0
  br i1 %tobool491.not, label %if.end499, label %if.then492

if.then492:                                       ; preds = %if.end486
  %310 = load ptr, ptr %fd.addr, align 8
  %311 = load ptr, ptr %td, align 8
  %td_ycbcrsubsampling = getelementptr inbounds %struct.TIFFDirectory, ptr %311, i64 0, i32 49
  %312 = load i16, ptr %td_ycbcrsubsampling, align 8
  %conv494 = zext i16 %312 to i32
  %arrayidx496 = getelementptr inbounds %struct.TIFFDirectory, ptr %311, i64 0, i32 49, i64 1
  %313 = load i16, ptr %arrayidx496, align 2
  %conv497 = zext i16 %313 to i32
  %call498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef nonnull @.str.60, i32 noundef %conv494, i32 noundef %conv497) #6
  br label %if.end499

if.end499:                                        ; preds = %if.then492, %if.end486
  %314 = load ptr, ptr %tif.addr, align 8
  %arrayidx502 = getelementptr inbounds %struct.tiff, ptr %314, i64 0, i32 6, i32 0, i64 1
  %315 = load i64, ptr %arrayidx502, align 8
  %and503 = and i64 %315, 256
  %tobool504.not = icmp eq i64 %and503, 0
  br i1 %tobool504.not, label %if.end519, label %if.then505

if.then505:                                       ; preds = %if.end499
  %316 = load ptr, ptr %fd.addr, align 8
  %317 = call i64 @fwrite(ptr nonnull @.str.61, i64 21, i64 1, ptr %316)
  %318 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning = getelementptr inbounds %struct.TIFFDirectory, ptr %318, i64 0, i32 50
  %319 = load i16, ptr %td_ycbcrpositioning, align 4
  switch i16 %319, label %sw.default512 [
    i16 1, label %sw.bb508
    i16 2, label %sw.bb510
  ]

sw.bb508:                                         ; preds = %if.then505
  %320 = load ptr, ptr %fd.addr, align 8
  %321 = call i64 @fwrite(ptr nonnull @.str.62, i64 9, i64 1, ptr %320)
  br label %if.end519

sw.bb510:                                         ; preds = %if.then505
  %322 = load ptr, ptr %fd.addr, align 8
  %323 = call i64 @fwrite(ptr nonnull @.str.63, i64 8, i64 1, ptr %322)
  br label %if.end519

sw.default512:                                    ; preds = %if.then505
  %324 = load ptr, ptr %fd.addr, align 8
  %325 = load ptr, ptr %td, align 8
  %td_ycbcrpositioning513 = getelementptr inbounds %struct.TIFFDirectory, ptr %325, i64 0, i32 50
  %326 = load i16, ptr %td_ycbcrpositioning513, align 4
  %conv514 = zext i16 %326 to i32
  %conv516 = zext i16 %326 to i32
  %call517 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %324, ptr noundef nonnull @.str.31, i32 noundef %conv514, i32 noundef %conv516) #6
  br label %if.end519

if.end519:                                        ; preds = %sw.bb508, %sw.bb510, %sw.default512, %if.end499
  %327 = load ptr, ptr %tif.addr, align 8
  %arrayidx522 = getelementptr inbounds %struct.tiff, ptr %327, i64 0, i32 6, i32 0, i64 1
  %328 = load i64, ptr %arrayidx522, align 8
  %and523 = and i64 %328, 64
  %tobool524.not = icmp eq i64 %and523, 0
  br i1 %tobool524.not, label %if.end535, label %if.then525

if.then525:                                       ; preds = %if.end519
  %329 = load ptr, ptr %fd.addr, align 8
  %330 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs = getelementptr inbounds %struct.TIFFDirectory, ptr %330, i64 0, i32 48
  %331 = load ptr, ptr %td_ycbcrcoeffs, align 8
  %332 = load float, ptr %331, align 4
  %conv527 = fpext float %332 to double
  %arrayidx529 = getelementptr inbounds float, ptr %331, i64 1
  %333 = load float, ptr %arrayidx529, align 4
  %conv530 = fpext float %333 to double
  %334 = load ptr, ptr %td, align 8
  %td_ycbcrcoeffs531 = getelementptr inbounds %struct.TIFFDirectory, ptr %334, i64 0, i32 48
  %335 = load ptr, ptr %td_ycbcrcoeffs531, align 8
  %arrayidx532 = getelementptr inbounds float, ptr %335, i64 2
  %336 = load float, ptr %arrayidx532, align 4
  %conv533 = fpext float %336 to double
  %call534 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef nonnull @.str.64, double noundef %conv527, double noundef %conv530, double noundef %conv533) #6
  br label %if.end535

if.end535:                                        ; preds = %if.then525, %if.end519
  %337 = load ptr, ptr %tif.addr, align 8
  %arrayidx538 = getelementptr inbounds %struct.tiff, ptr %337, i64 0, i32 6, i32 0, i64 1
  %338 = load i64, ptr %arrayidx538, align 8
  %and539 = and i64 %338, 32
  %tobool540.not = icmp eq i64 %and539, 0
  br i1 %tobool540.not, label %if.end548, label %if.then541

if.then541:                                       ; preds = %if.end535
  %339 = load ptr, ptr %fd.addr, align 8
  %340 = load ptr, ptr %td, align 8
  %td_halftonehints = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i64 0, i32 29
  %341 = load i16, ptr %td_halftonehints, align 8
  %conv543 = zext i16 %341 to i32
  %arrayidx545 = getelementptr inbounds %struct.TIFFDirectory, ptr %340, i64 0, i32 29, i64 1
  %342 = load i16, ptr %arrayidx545, align 2
  %conv546 = zext i16 %342 to i32
  %call547 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.65, i32 noundef %conv543, i32 noundef %conv546) #6
  br label %if.end548

if.end548:                                        ; preds = %if.then541, %if.end535
  %343 = load ptr, ptr %tif.addr, align 8
  %tif_dir549 = getelementptr inbounds %struct.tiff, ptr %343, i64 0, i32 6
  %344 = load i64, ptr %tif_dir549, align 8
  %and552 = and i64 %344, 134217728
  %tobool553.not = icmp eq i64 %and552, 0
  br i1 %tobool553.not, label %if.end555, label %if.then554

if.then554:                                       ; preds = %if.end548
  %345 = load ptr, ptr %fd.addr, align 8
  %346 = load ptr, ptr %td, align 8
  %td_artist = getelementptr inbounds %struct.TIFFDirectory, ptr %346, i64 0, i32 34
  %347 = load ptr, ptr %td_artist, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %345, ptr noundef nonnull @.str.66, ptr noundef %347)
  br label %if.end555

if.end555:                                        ; preds = %if.then554, %if.end548
  %348 = load ptr, ptr %tif.addr, align 8
  %tif_dir556 = getelementptr inbounds %struct.tiff, ptr %348, i64 0, i32 6
  %349 = load i64, ptr %tif_dir556, align 8
  %and559 = and i64 %349, 268435456
  %tobool560.not = icmp eq i64 %and559, 0
  br i1 %tobool560.not, label %if.end562, label %if.then561

if.then561:                                       ; preds = %if.end555
  %350 = load ptr, ptr %fd.addr, align 8
  %351 = load ptr, ptr %td, align 8
  %td_datetime = getelementptr inbounds %struct.TIFFDirectory, ptr %351, i64 0, i32 35
  %352 = load ptr, ptr %td_datetime, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %350, ptr noundef nonnull @.str.67, ptr noundef %352)
  br label %if.end562

if.end562:                                        ; preds = %if.then561, %if.end555
  %353 = load ptr, ptr %tif.addr, align 8
  %tif_dir563 = getelementptr inbounds %struct.tiff, ptr %353, i64 0, i32 6
  %354 = load i64, ptr %tif_dir563, align 8
  %and566 = and i64 %354, 536870912
  %tobool567.not = icmp eq i64 %and566, 0
  br i1 %tobool567.not, label %if.end569, label %if.then568

if.then568:                                       ; preds = %if.end562
  %355 = load ptr, ptr %fd.addr, align 8
  %356 = load ptr, ptr %td, align 8
  %td_hostcomputer = getelementptr inbounds %struct.TIFFDirectory, ptr %356, i64 0, i32 36
  %357 = load ptr, ptr %td_hostcomputer, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %355, ptr noundef nonnull @.str.68, ptr noundef %357)
  br label %if.end569

if.end569:                                        ; preds = %if.then568, %if.end562
  %358 = load ptr, ptr %tif.addr, align 8
  %tif_dir570 = getelementptr inbounds %struct.tiff, ptr %358, i64 0, i32 6
  %359 = load i64, ptr %tif_dir570, align 8
  %and573 = and i64 %359, 1073741824
  %tobool574.not = icmp eq i64 %and573, 0
  br i1 %tobool574.not, label %if.end576, label %if.then575

if.then575:                                       ; preds = %if.end569
  %360 = load ptr, ptr %fd.addr, align 8
  %361 = load ptr, ptr %td, align 8
  %td_software = getelementptr inbounds %struct.TIFFDirectory, ptr %361, i64 0, i32 40
  %362 = load ptr, ptr %td_software, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %360, ptr noundef nonnull @.str.69, ptr noundef %362)
  br label %if.end576

if.end576:                                        ; preds = %if.then575, %if.end569
  %363 = load ptr, ptr %tif.addr, align 8
  %tif_dir577 = getelementptr inbounds %struct.tiff, ptr %363, i64 0, i32 6
  %364 = load i64, ptr %tif_dir577, align 8
  %and580 = and i64 %364, 2048
  %tobool581.not = icmp eq i64 %and580, 0
  br i1 %tobool581.not, label %if.end583, label %if.then582

if.then582:                                       ; preds = %if.end576
  %365 = load ptr, ptr %fd.addr, align 8
  %366 = load ptr, ptr %td, align 8
  %td_documentname = getelementptr inbounds %struct.TIFFDirectory, ptr %366, i64 0, i32 33
  %367 = load ptr, ptr %td_documentname, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %365, ptr noundef nonnull @.str.70, ptr noundef %367)
  br label %if.end583

if.end583:                                        ; preds = %if.then582, %if.end576
  %368 = load ptr, ptr %tif.addr, align 8
  %tif_dir584 = getelementptr inbounds %struct.tiff, ptr %368, i64 0, i32 6
  %369 = load i64, ptr %tif_dir584, align 8
  %and587 = and i64 %369, 4096
  %tobool588.not = icmp eq i64 %and587, 0
  br i1 %tobool588.not, label %if.end590, label %if.then589

if.then589:                                       ; preds = %if.end583
  %370 = load ptr, ptr %fd.addr, align 8
  %371 = load ptr, ptr %td, align 8
  %td_imagedescription = getelementptr inbounds %struct.TIFFDirectory, ptr %371, i64 0, i32 37
  %372 = load ptr, ptr %td_imagedescription, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %370, ptr noundef nonnull @.str.71, ptr noundef %372)
  br label %if.end590

if.end590:                                        ; preds = %if.then589, %if.end583
  %373 = load ptr, ptr %tif.addr, align 8
  %tif_dir591 = getelementptr inbounds %struct.tiff, ptr %373, i64 0, i32 6
  %374 = load i64, ptr %tif_dir591, align 8
  %and594 = and i64 %374, 8192
  %tobool595.not = icmp eq i64 %and594, 0
  br i1 %tobool595.not, label %if.end597, label %if.then596

if.then596:                                       ; preds = %if.end590
  %375 = load ptr, ptr %fd.addr, align 8
  %376 = load ptr, ptr %td, align 8
  %td_make = getelementptr inbounds %struct.TIFFDirectory, ptr %376, i64 0, i32 38
  %377 = load ptr, ptr %td_make, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %375, ptr noundef nonnull @.str.72, ptr noundef %377)
  br label %if.end597

if.end597:                                        ; preds = %if.then596, %if.end590
  %378 = load ptr, ptr %tif.addr, align 8
  %tif_dir598 = getelementptr inbounds %struct.tiff, ptr %378, i64 0, i32 6
  %379 = load i64, ptr %tif_dir598, align 8
  %and601 = and i64 %379, 16384
  %tobool602.not = icmp eq i64 %and601, 0
  br i1 %tobool602.not, label %if.end604, label %if.then603

if.then603:                                       ; preds = %if.end597
  %380 = load ptr, ptr %fd.addr, align 8
  %381 = load ptr, ptr %td, align 8
  %td_model = getelementptr inbounds %struct.TIFFDirectory, ptr %381, i64 0, i32 39
  %382 = load ptr, ptr %td_model, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %380, ptr noundef nonnull @.str.73, ptr noundef %382)
  br label %if.end604

if.end604:                                        ; preds = %if.then603, %if.end597
  %383 = load ptr, ptr %tif.addr, align 8
  %tif_dir605 = getelementptr inbounds %struct.tiff, ptr %383, i64 0, i32 6
  %384 = load i64, ptr %tif_dir605, align 8
  %and608 = and i64 %384, 32768
  %tobool609.not = icmp eq i64 %and608, 0
  br i1 %tobool609.not, label %if.end627, label %if.then610

if.then610:                                       ; preds = %if.end604
  %385 = load ptr, ptr %fd.addr, align 8
  %386 = call i64 @fwrite(ptr nonnull @.str.74, i64 15, i64 1, ptr %385)
  %387 = load ptr, ptr %td, align 8
  %td_orientation = getelementptr inbounds %struct.TIFFDirectory, ptr %387, i64 0, i32 14
  %388 = load i16, ptr %td_orientation, align 8
  %cmp613 = icmp ult i16 %388, 9
  br i1 %cmp613, label %if.then615, label %if.else620

if.then615:                                       ; preds = %if.then610
  %389 = load ptr, ptr %fd.addr, align 8
  %390 = load ptr, ptr %td, align 8
  %td_orientation616 = getelementptr inbounds %struct.TIFFDirectory, ptr %390, i64 0, i32 14
  %391 = load i16, ptr %td_orientation616, align 8
  %idxprom617 = zext i16 %391 to i64
  %arrayidx618 = getelementptr inbounds [9 x ptr], ptr @orientNames, i64 0, i64 %idxprom617
  %392 = load ptr, ptr %arrayidx618, align 8
  %call619 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %389, ptr noundef nonnull @.str.33, ptr noundef %392) #6
  br label %if.end627

if.else620:                                       ; preds = %if.then610
  %393 = load ptr, ptr %fd.addr, align 8
  %394 = load ptr, ptr %td, align 8
  %td_orientation621 = getelementptr inbounds %struct.TIFFDirectory, ptr %394, i64 0, i32 14
  %395 = load i16, ptr %td_orientation621, align 8
  %conv622 = zext i16 %395 to i32
  %conv624 = zext i16 %395 to i32
  %call625 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %393, ptr noundef nonnull @.str.31, i32 noundef %conv622, i32 noundef %conv624) #6
  br label %if.end627

if.end627:                                        ; preds = %if.then615, %if.else620, %if.end604
  %396 = load ptr, ptr %tif.addr, align 8
  %tif_dir628 = getelementptr inbounds %struct.tiff, ptr %396, i64 0, i32 6
  %397 = load i64, ptr %tif_dir628, align 8
  %and631 = and i64 %397, 65536
  %tobool632.not = icmp eq i64 %and631, 0
  br i1 %tobool632.not, label %if.end637, label %if.then633

if.then633:                                       ; preds = %if.end627
  %398 = load ptr, ptr %fd.addr, align 8
  %399 = load ptr, ptr %td, align 8
  %td_samplesperpixel634 = getelementptr inbounds %struct.TIFFDirectory, ptr %399, i64 0, i32 15
  %400 = load i16, ptr %td_samplesperpixel634, align 2
  %conv635 = zext i16 %400 to i32
  %call636 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.75, i32 noundef %conv635) #6
  br label %if.end637

if.end637:                                        ; preds = %if.then633, %if.end627
  %401 = load ptr, ptr %tif.addr, align 8
  %tif_dir638 = getelementptr inbounds %struct.tiff, ptr %401, i64 0, i32 6
  %402 = load i64, ptr %tif_dir638, align 8
  %and641 = and i64 %402, 131072
  %tobool642.not = icmp eq i64 %and641, 0
  br i1 %tobool642.not, label %if.end654, label %if.then643

if.then643:                                       ; preds = %if.end637
  %403 = load ptr, ptr %fd.addr, align 8
  %404 = call i64 @fwrite(ptr nonnull @.str.76, i64 14, i64 1, ptr %403)
  %405 = load ptr, ptr %td, align 8
  %td_rowsperstrip = getelementptr inbounds %struct.TIFFDirectory, ptr %405, i64 0, i32 16
  %406 = load i32, ptr %td_rowsperstrip, align 4
  %cmp645 = icmp eq i32 %406, -1
  br i1 %cmp645, label %if.then647, label %if.else649

if.then647:                                       ; preds = %if.then643
  %407 = load ptr, ptr %fd.addr, align 8
  %408 = call i64 @fwrite(ptr nonnull @.str.77, i64 11, i64 1, ptr %407)
  br label %if.end654

if.else649:                                       ; preds = %if.then643
  %409 = load ptr, ptr %fd.addr, align 8
  %410 = load ptr, ptr %td, align 8
  %td_rowsperstrip650 = getelementptr inbounds %struct.TIFFDirectory, ptr %410, i64 0, i32 16
  %411 = load i32, ptr %td_rowsperstrip650, align 4
  %conv651 = zext i32 %411 to i64
  %call652 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %409, ptr noundef nonnull @.str.78, i64 noundef %conv651) #6
  br label %if.end654

if.end654:                                        ; preds = %if.then647, %if.else649, %if.end637
  %412 = load ptr, ptr %tif.addr, align 8
  %tif_dir655 = getelementptr inbounds %struct.tiff, ptr %412, i64 0, i32 6
  %413 = load i64, ptr %tif_dir655, align 8
  %and658 = and i64 %413, 262144
  %tobool659.not = icmp eq i64 %and658, 0
  br i1 %tobool659.not, label %if.end663, label %if.then660

if.then660:                                       ; preds = %if.end654
  %414 = load ptr, ptr %fd.addr, align 8
  %415 = load ptr, ptr %td, align 8
  %td_minsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %415, i64 0, i32 17
  %416 = load i16, ptr %td_minsamplevalue, align 8
  %conv661 = zext i16 %416 to i32
  %call662 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %414, ptr noundef nonnull @.str.79, i32 noundef %conv661) #6
  br label %if.end663

if.end663:                                        ; preds = %if.then660, %if.end654
  %417 = load ptr, ptr %tif.addr, align 8
  %tif_dir664 = getelementptr inbounds %struct.tiff, ptr %417, i64 0, i32 6
  %418 = load i64, ptr %tif_dir664, align 8
  %and667 = and i64 %418, 524288
  %tobool668.not = icmp eq i64 %and667, 0
  br i1 %tobool668.not, label %if.end672, label %if.then669

if.then669:                                       ; preds = %if.end663
  %419 = load ptr, ptr %fd.addr, align 8
  %420 = load ptr, ptr %td, align 8
  %td_maxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %420, i64 0, i32 18
  %421 = load i16, ptr %td_maxsamplevalue, align 2
  %conv670 = zext i16 %421 to i32
  %call671 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.80, i32 noundef %conv670) #6
  br label %if.end672

if.end672:                                        ; preds = %if.then669, %if.end663
  %422 = load ptr, ptr %tif.addr, align 8
  %arrayidx675 = getelementptr inbounds %struct.tiff, ptr %422, i64 0, i32 6, i32 0, i64 1
  %423 = load i64, ptr %arrayidx675, align 8
  %and676 = and i64 %423, 2
  %tobool677.not = icmp eq i64 %and676, 0
  br i1 %tobool677.not, label %if.end680, label %if.then678

if.then678:                                       ; preds = %if.end672
  %424 = load ptr, ptr %fd.addr, align 8
  %425 = load ptr, ptr %td, align 8
  %td_sminsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %425, i64 0, i32 19
  %426 = load double, ptr %td_sminsamplevalue, align 8
  %call679 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef nonnull @.str.81, double noundef %426) #6
  br label %if.end680

if.end680:                                        ; preds = %if.then678, %if.end672
  %427 = load ptr, ptr %tif.addr, align 8
  %arrayidx683 = getelementptr inbounds %struct.tiff, ptr %427, i64 0, i32 6, i32 0, i64 1
  %428 = load i64, ptr %arrayidx683, align 8
  %and684 = and i64 %428, 4
  %tobool685.not = icmp eq i64 %and684, 0
  br i1 %tobool685.not, label %if.end688, label %if.then686

if.then686:                                       ; preds = %if.end680
  %429 = load ptr, ptr %fd.addr, align 8
  %430 = load ptr, ptr %td, align 8
  %td_smaxsamplevalue = getelementptr inbounds %struct.TIFFDirectory, ptr %430, i64 0, i32 20
  %431 = load double, ptr %td_smaxsamplevalue, align 8
  %call687 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %429, ptr noundef nonnull @.str.82, double noundef %431) #6
  br label %if.end688

if.end688:                                        ; preds = %if.then686, %if.end680
  %432 = load ptr, ptr %tif.addr, align 8
  %tif_dir689 = getelementptr inbounds %struct.tiff, ptr %432, i64 0, i32 6
  %433 = load i64, ptr %tif_dir689, align 8
  %and692 = and i64 %433, 1048576
  %tobool693.not = icmp eq i64 %and692, 0
  br i1 %tobool693.not, label %if.end708, label %if.then694

if.then694:                                       ; preds = %if.end688
  %434 = load ptr, ptr %fd.addr, align 8
  %435 = call i64 @fwrite(ptr nonnull @.str.83, i64 24, i64 1, ptr %434)
  %436 = load ptr, ptr %td, align 8
  %td_planarconfig = getelementptr inbounds %struct.TIFFDirectory, ptr %436, i64 0, i32 24
  %437 = load i16, ptr %td_planarconfig, align 2
  switch i16 %437, label %sw.default701 [
    i16 1, label %sw.bb697
    i16 2, label %sw.bb699
  ]

sw.bb697:                                         ; preds = %if.then694
  %438 = load ptr, ptr %fd.addr, align 8
  %439 = call i64 @fwrite(ptr nonnull @.str.84, i64 19, i64 1, ptr %438)
  br label %if.end708

sw.bb699:                                         ; preds = %if.then694
  %440 = load ptr, ptr %fd.addr, align 8
  %441 = call i64 @fwrite(ptr nonnull @.str.85, i64 22, i64 1, ptr %440)
  br label %if.end708

sw.default701:                                    ; preds = %if.then694
  %442 = load ptr, ptr %fd.addr, align 8
  %443 = load ptr, ptr %td, align 8
  %td_planarconfig702 = getelementptr inbounds %struct.TIFFDirectory, ptr %443, i64 0, i32 24
  %444 = load i16, ptr %td_planarconfig702, align 2
  %conv703 = zext i16 %444 to i32
  %conv705 = zext i16 %444 to i32
  %call706 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %442, ptr noundef nonnull @.str.31, i32 noundef %conv703, i32 noundef %conv705) #6
  br label %if.end708

if.end708:                                        ; preds = %sw.bb697, %sw.bb699, %sw.default701, %if.end688
  %445 = load ptr, ptr %tif.addr, align 8
  %tif_dir709 = getelementptr inbounds %struct.tiff, ptr %445, i64 0, i32 6
  %446 = load i64, ptr %tif_dir709, align 8
  %and712 = and i64 %446, 2097152
  %tobool713.not = icmp eq i64 %and712, 0
  br i1 %tobool713.not, label %if.end715, label %if.then714

if.then714:                                       ; preds = %if.end708
  %447 = load ptr, ptr %fd.addr, align 8
  %448 = load ptr, ptr %td, align 8
  %td_pagename = getelementptr inbounds %struct.TIFFDirectory, ptr %448, i64 0, i32 41
  %449 = load ptr, ptr %td_pagename, align 8
  call void @_TIFFprintAsciiTag(ptr noundef %447, ptr noundef nonnull @.str.86, ptr noundef %449)
  br label %if.end715

if.end715:                                        ; preds = %if.then714, %if.end708
  %450 = load ptr, ptr %tif.addr, align 8
  %tif_dir716 = getelementptr inbounds %struct.tiff, ptr %450, i64 0, i32 6
  %451 = load i64, ptr %tif_dir716, align 8
  %and719 = and i64 %451, 8388608
  %tobool720.not = icmp eq i64 %and719, 0
  br i1 %tobool720.not, label %if.end728, label %if.then721

if.then721:                                       ; preds = %if.end715
  %452 = load ptr, ptr %fd.addr, align 8
  %453 = load ptr, ptr %td, align 8
  %td_pagenumber = getelementptr inbounds %struct.TIFFDirectory, ptr %453, i64 0, i32 27
  %454 = load i16, ptr %td_pagenumber, align 4
  %conv723 = zext i16 %454 to i32
  %arrayidx725 = getelementptr inbounds %struct.TIFFDirectory, ptr %453, i64 0, i32 27, i64 1
  %455 = load i16, ptr %arrayidx725, align 2
  %conv726 = zext i16 %455 to i32
  %call727 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef nonnull @.str.87, i32 noundef %conv723, i32 noundef %conv726) #6
  br label %if.end728

if.end728:                                        ; preds = %if.then721, %if.end715
  %456 = load ptr, ptr %tif.addr, align 8
  %tif_dir729 = getelementptr inbounds %struct.tiff, ptr %456, i64 0, i32 6
  %457 = load i64, ptr %tif_dir729, align 8
  %and732 = and i64 %457, 67108864
  %tobool733.not = icmp eq i64 %and732, 0
  br i1 %tobool733.not, label %if.end764, label %if.then734

if.then734:                                       ; preds = %if.end728
  %458 = load ptr, ptr %fd.addr, align 8
  %459 = call i64 @fwrite(ptr nonnull @.str.88, i64 13, i64 1, ptr %458)
  %460 = load i64, ptr %flags.addr, align 8
  %and736 = and i64 %460, 4
  %tobool737.not = icmp eq i64 %and736, 0
  br i1 %tobool737.not, label %if.else761, label %if.then738

if.then738:                                       ; preds = %if.then734
  %461 = load ptr, ptr %fd.addr, align 8
  %fputc5 = call i32 @fputc(i32 10, ptr %461)
  %462 = load ptr, ptr %td, align 8
  %td_bitspersample740 = getelementptr inbounds %struct.TIFFDirectory, ptr %462, i64 0, i32 8
  %463 = load i16, ptr %td_bitspersample740, align 4
  %sh_prom = zext i16 %463 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, ptr %n, align 8
  br label %for.cond742

for.cond742:                                      ; preds = %for.body745, %if.then738
  %storemerge6 = phi i64 [ 0, %if.then738 ], [ %inc759, %for.body745 ]
  store i64 %storemerge6, ptr %l, align 8
  %464 = load i64, ptr %n, align 8
  %cmp743 = icmp slt i64 %storemerge6, %464
  br i1 %cmp743, label %for.body745, label %if.end764

for.body745:                                      ; preds = %for.cond742
  %465 = load ptr, ptr %fd.addr, align 8
  %466 = load i64, ptr %l, align 8
  %467 = load ptr, ptr %td, align 8
  %td_colormap = getelementptr inbounds %struct.TIFFDirectory, ptr %467, i64 0, i32 28
  %468 = load ptr, ptr %td_colormap, align 8
  %arrayidx747 = getelementptr inbounds i16, ptr %468, i64 %466
  %469 = load i16, ptr %arrayidx747, align 2
  %conv748 = zext i16 %469 to i32
  %arrayidx750 = getelementptr inbounds %struct.TIFFDirectory, ptr %467, i64 0, i32 28, i64 1
  %470 = load ptr, ptr %arrayidx750, align 8
  %471 = load i64, ptr %l, align 8
  %arrayidx751 = getelementptr inbounds i16, ptr %470, i64 %471
  %472 = load i16, ptr %arrayidx751, align 2
  %conv752 = zext i16 %472 to i32
  %473 = load ptr, ptr %td, align 8
  %arrayidx754 = getelementptr inbounds %struct.TIFFDirectory, ptr %473, i64 0, i32 28, i64 2
  %474 = load ptr, ptr %arrayidx754, align 8
  %475 = load i64, ptr %l, align 8
  %arrayidx755 = getelementptr inbounds i16, ptr %474, i64 %475
  %476 = load i16, ptr %arrayidx755, align 2
  %conv756 = zext i16 %476 to i32
  %call757 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %465, ptr noundef nonnull @.str.89, i64 noundef %466, i32 noundef %conv748, i32 noundef %conv752, i32 noundef %conv756) #6
  %477 = load i64, ptr %l, align 8
  %inc759 = add nsw i64 %477, 1
  br label %for.cond742, !llvm.loop !9

if.else761:                                       ; preds = %if.then734
  %478 = load ptr, ptr %fd.addr, align 8
  %479 = call i64 @fwrite(ptr nonnull @.str.90, i64 10, i64 1, ptr %478)
  br label %if.end764

if.end764:                                        ; preds = %if.else761, %for.cond742, %if.end728
  %480 = load ptr, ptr %tif.addr, align 8
  %arrayidx767 = getelementptr inbounds %struct.tiff, ptr %480, i64 0, i32 6, i32 0, i64 1
  %481 = load i64, ptr %arrayidx767, align 8
  %and768 = and i64 %481, 1024
  %tobool769.not = icmp eq i64 %and768, 0
  br i1 %tobool769.not, label %if.end777, label %if.then770

if.then770:                                       ; preds = %if.end764
  %482 = load ptr, ptr %fd.addr, align 8
  %483 = load ptr, ptr %td, align 8
  %td_whitepoint = getelementptr inbounds %struct.TIFFDirectory, ptr %483, i64 0, i32 51
  %484 = load ptr, ptr %td_whitepoint, align 8
  %485 = load float, ptr %484, align 4
  %conv772 = fpext float %485 to double
  %arrayidx774 = getelementptr inbounds float, ptr %484, i64 1
  %486 = load float, ptr %arrayidx774, align 4
  %conv775 = fpext float %486 to double
  %call776 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %482, ptr noundef nonnull @.str.91, double noundef %conv772, double noundef %conv775) #6
  br label %if.end777

if.end777:                                        ; preds = %if.then770, %if.end764
  %487 = load ptr, ptr %tif.addr, align 8
  %arrayidx780 = getelementptr inbounds %struct.tiff, ptr %487, i64 0, i32 6, i32 0, i64 1
  %488 = load i64, ptr %arrayidx780, align 8
  %and781 = and i64 %488, 2048
  %tobool782.not = icmp eq i64 %and781, 0
  br i1 %tobool782.not, label %if.end802, label %if.then783

if.then783:                                       ; preds = %if.end777
  %489 = load ptr, ptr %fd.addr, align 8
  %490 = load ptr, ptr %td, align 8
  %td_primarychromas = getelementptr inbounds %struct.TIFFDirectory, ptr %490, i64 0, i32 52
  %491 = load ptr, ptr %td_primarychromas, align 8
  %492 = load float, ptr %491, align 4
  %conv785 = fpext float %492 to double
  %arrayidx787 = getelementptr inbounds float, ptr %491, i64 1
  %493 = load float, ptr %arrayidx787, align 4
  %conv788 = fpext float %493 to double
  %494 = load ptr, ptr %td, align 8
  %td_primarychromas789 = getelementptr inbounds %struct.TIFFDirectory, ptr %494, i64 0, i32 52
  %495 = load ptr, ptr %td_primarychromas789, align 8
  %arrayidx790 = getelementptr inbounds float, ptr %495, i64 2
  %496 = load float, ptr %arrayidx790, align 4
  %conv791 = fpext float %496 to double
  %arrayidx793 = getelementptr inbounds float, ptr %495, i64 3
  %497 = load float, ptr %arrayidx793, align 4
  %conv794 = fpext float %497 to double
  %498 = load ptr, ptr %td, align 8
  %td_primarychromas795 = getelementptr inbounds %struct.TIFFDirectory, ptr %498, i64 0, i32 52
  %499 = load ptr, ptr %td_primarychromas795, align 8
  %arrayidx796 = getelementptr inbounds float, ptr %499, i64 4
  %500 = load float, ptr %arrayidx796, align 4
  %conv797 = fpext float %500 to double
  %arrayidx799 = getelementptr inbounds float, ptr %499, i64 5
  %501 = load float, ptr %arrayidx799, align 4
  %conv800 = fpext float %501 to double
  %call801 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %489, ptr noundef nonnull @.str.92, double noundef %conv785, double noundef %conv788, double noundef %conv791, double noundef %conv794, double noundef %conv797, double noundef %conv800) #6
  br label %if.end802

if.end802:                                        ; preds = %if.then783, %if.end777
  %502 = load ptr, ptr %tif.addr, align 8
  %arrayidx805 = getelementptr inbounds %struct.tiff, ptr %502, i64 0, i32 6, i32 0, i64 1
  %503 = load i64, ptr %arrayidx805, align 8
  %and806 = and i64 %503, 512
  %tobool807.not = icmp eq i64 %and806, 0
  br i1 %tobool807.not, label %if.end833, label %if.then808

if.then808:                                       ; preds = %if.end802
  %504 = load ptr, ptr %fd.addr, align 8
  %505 = call i64 @fwrite(ptr nonnull @.str.93, i64 25, i64 1, ptr %504)
  br label %for.cond810

for.cond810:                                      ; preds = %for.body816, %if.then808
  %storemerge4 = phi i16 [ 0, %if.then808 ], [ %inc831, %for.body816 ]
  store i16 %storemerge4, ptr %i, align 2
  %506 = load ptr, ptr %td, align 8
  %td_samplesperpixel812 = getelementptr inbounds %struct.TIFFDirectory, ptr %506, i64 0, i32 15
  %507 = load i16, ptr %td_samplesperpixel812, align 2
  %cmp814 = icmp ult i16 %storemerge4, %507
  br i1 %cmp814, label %for.body816, label %if.end833

for.body816:                                      ; preds = %for.cond810
  %508 = load ptr, ptr %fd.addr, align 8
  %509 = load i16, ptr %i, align 2
  %conv817 = zext i16 %509 to i32
  %510 = load ptr, ptr %td, align 8
  %td_refblackwhite = getelementptr inbounds %struct.TIFFDirectory, ptr %510, i64 0, i32 53
  %511 = load ptr, ptr %td_refblackwhite, align 8
  %conv818 = zext i16 %509 to i64
  %mul = shl nuw nsw i64 %conv818, 1
  %arrayidx820 = getelementptr inbounds float, ptr %511, i64 %mul
  %512 = load float, ptr %arrayidx820, align 4
  %conv821 = fpext float %512 to double
  %513 = load ptr, ptr %td, align 8
  %td_refblackwhite822 = getelementptr inbounds %struct.TIFFDirectory, ptr %513, i64 0, i32 53
  %514 = load ptr, ptr %td_refblackwhite822, align 8
  %515 = load i16, ptr %i, align 2
  %conv823 = zext i16 %515 to i64
  %mul824 = shl nuw nsw i64 %conv823, 1
  %add825 = or i64 %mul824, 1
  %arrayidx827 = getelementptr inbounds float, ptr %514, i64 %add825
  %516 = load float, ptr %arrayidx827, align 4
  %conv828 = fpext float %516 to double
  %call829 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %508, ptr noundef nonnull @.str.94, i32 noundef %conv817, double noundef %conv821, double noundef %conv828) #6
  %517 = load i16, ptr %i, align 2
  %inc831 = add i16 %517, 1
  br label %for.cond810, !llvm.loop !10

if.end833:                                        ; preds = %for.cond810, %if.end802
  %518 = load ptr, ptr %tif.addr, align 8
  %arrayidx836 = getelementptr inbounds %struct.tiff, ptr %518, i64 0, i32 6, i32 0, i64 1
  %519 = load i64, ptr %arrayidx836, align 8
  %and837 = and i64 %519, 4096
  %tobool838.not = icmp eq i64 %and837, 0
  br i1 %tobool838.not, label %if.end880, label %if.then839

if.then839:                                       ; preds = %if.end833
  %520 = load ptr, ptr %fd.addr, align 8
  %521 = call i64 @fwrite(ptr nonnull @.str.95, i64 21, i64 1, ptr %520)
  %522 = load i64, ptr %flags.addr, align 8
  %and841 = and i64 %522, 2
  %tobool842.not = icmp eq i64 %and841, 0
  br i1 %tobool842.not, label %if.else877, label %if.then843

if.then843:                                       ; preds = %if.then839
  %523 = load ptr, ptr %fd.addr, align 8
  %fputc = call i32 @fputc(i32 10, ptr %523)
  %524 = load ptr, ptr %td, align 8
  %td_bitspersample845 = getelementptr inbounds %struct.TIFFDirectory, ptr %524, i64 0, i32 8
  %525 = load i16, ptr %td_bitspersample845, align 4
  %sh_prom847 = zext i16 %525 to i64
  %shl848 = shl i64 1, %sh_prom847
  store i64 %shl848, ptr %n, align 8
  br label %for.cond849

for.cond849:                                      ; preds = %for.end872, %if.then843
  %storemerge2 = phi i64 [ 0, %if.then843 ], [ %inc875, %for.end872 ]
  store i64 %storemerge2, ptr %l, align 8
  %526 = load i64, ptr %n, align 8
  %cmp850 = icmp slt i64 %storemerge2, %526
  br i1 %cmp850, label %for.body852, label %if.end880

for.body852:                                      ; preds = %for.cond849
  %527 = load ptr, ptr %fd.addr, align 8
  %528 = load i64, ptr %l, align 8
  %529 = load ptr, ptr %td, align 8
  %td_transferfunction = getelementptr inbounds %struct.TIFFDirectory, ptr %529, i64 0, i32 54
  %530 = load ptr, ptr %td_transferfunction, align 8
  %arrayidx854 = getelementptr inbounds i16, ptr %530, i64 %528
  %531 = load i16, ptr %arrayidx854, align 2
  %conv855 = zext i16 %531 to i32
  %call856 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %527, ptr noundef nonnull @.str.96, i64 noundef %528, i32 noundef %conv855) #6
  br label %for.cond857

for.cond857:                                      ; preds = %for.body863, %for.body852
  %storemerge3 = phi i16 [ 1, %for.body852 ], [ %inc871, %for.body863 ]
  store i16 %storemerge3, ptr %i, align 2
  %532 = load ptr, ptr %td, align 8
  %td_samplesperpixel859 = getelementptr inbounds %struct.TIFFDirectory, ptr %532, i64 0, i32 15
  %533 = load i16, ptr %td_samplesperpixel859, align 2
  %cmp861 = icmp ult i16 %storemerge3, %533
  br i1 %cmp861, label %for.body863, label %for.end872

for.body863:                                      ; preds = %for.cond857
  %534 = load ptr, ptr %fd.addr, align 8
  %535 = load ptr, ptr %td, align 8
  %536 = load i16, ptr %i, align 2
  %idxprom865 = zext i16 %536 to i64
  %arrayidx866 = getelementptr inbounds %struct.TIFFDirectory, ptr %535, i64 0, i32 54, i64 %idxprom865
  %537 = load ptr, ptr %arrayidx866, align 8
  %538 = load i64, ptr %l, align 8
  %arrayidx867 = getelementptr inbounds i16, ptr %537, i64 %538
  %539 = load i16, ptr %arrayidx867, align 2
  %conv868 = zext i16 %539 to i32
  %call869 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %534, ptr noundef nonnull @.str.97, i32 noundef %conv868) #6
  %540 = load i16, ptr %i, align 2
  %inc871 = add i16 %540, 1
  br label %for.cond857, !llvm.loop !11

for.end872:                                       ; preds = %for.cond857
  %541 = load ptr, ptr %fd.addr, align 8
  %call873 = call i32 @fputc(i32 noundef 10, ptr noundef %541)
  %542 = load i64, ptr %l, align 8
  %inc875 = add nsw i64 %542, 1
  br label %for.cond849, !llvm.loop !12

if.else877:                                       ; preds = %if.then839
  %543 = load ptr, ptr %fd.addr, align 8
  %544 = call i64 @fwrite(ptr nonnull @.str.90, i64 10, i64 1, ptr %543)
  br label %if.end880

if.end880:                                        ; preds = %if.else877, %for.cond849, %if.end833
  %545 = load ptr, ptr %tif.addr, align 8
  %arrayidx883 = getelementptr inbounds %struct.tiff, ptr %545, i64 0, i32 6, i32 0, i64 1
  %546 = load i64, ptr %arrayidx883, align 8
  %and884 = and i64 %546, 524288
  %tobool885.not = icmp eq i64 %and884, 0
  br i1 %tobool885.not, label %if.end889, label %if.then886

if.then886:                                       ; preds = %if.end880
  %547 = load ptr, ptr %fd.addr, align 8
  %548 = load ptr, ptr %td, align 8
  %td_profileLength = getelementptr inbounds %struct.TIFFDirectory, ptr %548, i64 0, i32 61
  %549 = load i32, ptr %td_profileLength, align 8
  %conv887 = zext i32 %549 to i64
  %call888 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %547, ptr noundef nonnull @.str.98, i64 noundef %conv887) #6
  br label %if.end889

if.end889:                                        ; preds = %if.then886, %if.end880
  %550 = load ptr, ptr %tif.addr, align 8
  %arrayidx892 = getelementptr inbounds %struct.tiff, ptr %550, i64 0, i32 6, i32 0, i64 1
  %551 = load i64, ptr %arrayidx892, align 8
  %and893 = and i64 %551, 1048576
  %tobool894.not = icmp eq i64 %and893, 0
  br i1 %tobool894.not, label %if.end898, label %if.then895

if.then895:                                       ; preds = %if.end889
  %552 = load ptr, ptr %fd.addr, align 8
  %553 = load ptr, ptr %td, align 8
  %td_photoshopLength = getelementptr inbounds %struct.TIFFDirectory, ptr %553, i64 0, i32 63
  %554 = load i32, ptr %td_photoshopLength, align 8
  %conv896 = zext i32 %554 to i64
  %call897 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %552, ptr noundef nonnull @.str.99, i64 noundef %conv896) #6
  br label %if.end898

if.end898:                                        ; preds = %if.then895, %if.end889
  %555 = load ptr, ptr %tif.addr, align 8
  %arrayidx901 = getelementptr inbounds %struct.tiff, ptr %555, i64 0, i32 6, i32 0, i64 1
  %556 = load i64, ptr %arrayidx901, align 8
  %and902 = and i64 %556, 2097152
  %tobool903.not = icmp eq i64 %and902, 0
  br i1 %tobool903.not, label %if.end907, label %if.then904

if.then904:                                       ; preds = %if.end898
  %557 = load ptr, ptr %fd.addr, align 8
  %558 = load ptr, ptr %td, align 8
  %td_richtiffiptcLength = getelementptr inbounds %struct.TIFFDirectory, ptr %558, i64 0, i32 65
  %559 = load i32, ptr %td_richtiffiptcLength, align 8
  %conv905 = zext i32 %559 to i64
  %call906 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %557, ptr noundef nonnull @.str.100, i64 noundef %conv905) #6
  br label %if.end907

if.end907:                                        ; preds = %if.then904, %if.end898
  %560 = load ptr, ptr %tif.addr, align 8
  %arrayidx910 = getelementptr inbounds %struct.tiff, ptr %560, i64 0, i32 6, i32 0, i64 1
  %561 = load i64, ptr %arrayidx910, align 8
  %and911 = and i64 %561, 131072
  %tobool912.not = icmp eq i64 %and911, 0
  br i1 %tobool912.not, label %if.end929, label %if.then913

if.then913:                                       ; preds = %if.end907
  %562 = load ptr, ptr %fd.addr, align 8
  %563 = call i64 @fwrite(ptr nonnull @.str.101, i64 17, i64 1, ptr %562)
  br label %for.cond915

for.cond915:                                      ; preds = %for.body920, %if.then913
  %storemerge1 = phi i16 [ 0, %if.then913 ], [ %inc926, %for.body920 ]
  store i16 %storemerge1, ptr %i, align 2
  %564 = load ptr, ptr %td, align 8
  %td_nsubifd = getelementptr inbounds %struct.TIFFDirectory, ptr %564, i64 0, i32 46
  %565 = load i16, ptr %td_nsubifd, align 8
  %cmp918 = icmp ult i16 %storemerge1, %565
  br i1 %cmp918, label %for.body920, label %for.end927

for.body920:                                      ; preds = %for.cond915
  %566 = load ptr, ptr %fd.addr, align 8
  %567 = load ptr, ptr %td, align 8
  %td_subifd = getelementptr inbounds %struct.TIFFDirectory, ptr %567, i64 0, i32 47
  %568 = load ptr, ptr %td_subifd, align 8
  %569 = load i16, ptr %i, align 2
  %idxprom921 = zext i16 %569 to i64
  %arrayidx922 = getelementptr inbounds i32, ptr %568, i64 %idxprom921
  %570 = load i32, ptr %arrayidx922, align 4
  %conv923 = zext i32 %570 to i64
  %call924 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %566, ptr noundef nonnull @.str.102, i64 noundef %conv923) #6
  %571 = load i16, ptr %i, align 2
  %inc926 = add i16 %571, 1
  br label %for.cond915, !llvm.loop !13

for.end927:                                       ; preds = %for.cond915
  %572 = load ptr, ptr %fd.addr, align 8
  %call928 = call i32 @fputc(i32 noundef 10, ptr noundef %572) #6
  br label %if.end929

if.end929:                                        ; preds = %for.end927, %if.end907
  %573 = load ptr, ptr %tif.addr, align 8
  %tif_printdir = getelementptr inbounds %struct.tiff, ptr %573, i64 0, i32 59
  %574 = load ptr, ptr %tif_printdir, align 8
  %tobool930.not = icmp eq ptr %574, null
  br i1 %tobool930.not, label %if.end933, label %if.then931

if.then931:                                       ; preds = %if.end929
  %575 = load ptr, ptr %tif.addr, align 8
  %tif_printdir932 = getelementptr inbounds %struct.tiff, ptr %575, i64 0, i32 59
  %576 = load ptr, ptr %tif_printdir932, align 8
  %577 = load ptr, ptr %fd.addr, align 8
  %578 = load i64, ptr %flags.addr, align 8
  call void %576(ptr noundef %575, ptr noundef %577, i64 noundef %578) #6
  br label %if.end933

if.end933:                                        ; preds = %if.then931, %if.end929
  %579 = load i64, ptr %flags.addr, align 8
  %and934 = and i64 %579, 1
  %tobool935.not = icmp eq i64 %and934, 0
  br i1 %tobool935.not, label %if.end964, label %land.lhs.true936

land.lhs.true936:                                 ; preds = %if.end933
  %580 = load ptr, ptr %tif.addr, align 8
  %tif_dir937 = getelementptr inbounds %struct.tiff, ptr %580, i64 0, i32 6
  %581 = load i64, ptr %tif_dir937, align 8
  %and940 = and i64 %581, 33554432
  %tobool941.not = icmp eq i64 %and940, 0
  br i1 %tobool941.not, label %if.end964, label %if.then942

if.then942:                                       ; preds = %land.lhs.true936
  %582 = load ptr, ptr %fd.addr, align 8
  %583 = load ptr, ptr %td, align 8
  %td_nstrips = getelementptr inbounds %struct.TIFFDirectory, ptr %583, i64 0, i32 43
  %584 = load i32, ptr %td_nstrips, align 4
  %conv943 = zext i32 %584 to i64
  %585 = load ptr, ptr %tif.addr, align 8
  %tif_flags = getelementptr inbounds %struct.tiff, ptr %585, i64 0, i32 3
  %586 = load i32, ptr %tif_flags, align 8
  %and944 = and i32 %586, 1024
  %cmp945.not = icmp eq i32 %and944, 0
  %cond = select i1 %cmp945.not, ptr @.str.105, ptr @.str.104
  %call947 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %582, ptr noundef nonnull @.str.103, i64 noundef %conv943, ptr noundef nonnull %cond) #6
  br label %for.cond948

for.cond948:                                      ; preds = %for.body952, %if.then942
  %storemerge = phi i32 [ 0, %if.then942 ], [ %inc962, %for.body952 ]
  store i32 %storemerge, ptr %s, align 4
  %587 = load ptr, ptr %td, align 8
  %td_nstrips949 = getelementptr inbounds %struct.TIFFDirectory, ptr %587, i64 0, i32 43
  %588 = load i32, ptr %td_nstrips949, align 4
  %cmp950 = icmp ult i32 %storemerge, %588
  br i1 %cmp950, label %for.body952, label %if.end964

for.body952:                                      ; preds = %for.cond948
  %589 = load ptr, ptr %fd.addr, align 8
  %590 = load i32, ptr %s, align 4
  %conv953 = zext i32 %590 to i64
  %591 = load ptr, ptr %td, align 8
  %td_stripoffset = getelementptr inbounds %struct.TIFFDirectory, ptr %591, i64 0, i32 44
  %592 = load ptr, ptr %td_stripoffset, align 8
  %idxprom954 = zext i32 %590 to i64
  %arrayidx955 = getelementptr inbounds i32, ptr %592, i64 %idxprom954
  %593 = load i32, ptr %arrayidx955, align 4
  %conv956 = zext i32 %593 to i64
  %594 = load ptr, ptr %td, align 8
  %td_stripbytecount = getelementptr inbounds %struct.TIFFDirectory, ptr %594, i64 0, i32 45
  %595 = load ptr, ptr %td_stripbytecount, align 8
  %596 = load i32, ptr %s, align 4
  %idxprom957 = zext i32 %596 to i64
  %arrayidx958 = getelementptr inbounds i32, ptr %595, i64 %idxprom957
  %597 = load i32, ptr %arrayidx958, align 4
  %conv959 = zext i32 %597 to i64
  %call960 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %589, ptr noundef nonnull @.str.106, i64 noundef %conv953, i64 noundef %conv956, i64 noundef %conv959) #6
  %598 = load i32, ptr %s, align 4
  %inc962 = add i32 %598, 1
  br label %for.cond948, !llvm.loop !14

if.end964:                                        ; preds = %for.cond948, %land.lhs.true936, %if.end933
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @_TIFFprintAsciiTag(ptr noundef %fd, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.110, ptr noundef %name) #6
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
  %call = call i32 @isprint(i32 noundef %conv2) #7
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
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.108, i32 noundef %conv17) #6
  br label %for.inc22

if.else:                                          ; preds = %for.end
  %17 = load ptr, ptr %fd.addr, align 8
  %18 = load ptr, ptr %cp.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv192 = zext i8 %19 to i32
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.109, i32 noundef %conv192) #6
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
