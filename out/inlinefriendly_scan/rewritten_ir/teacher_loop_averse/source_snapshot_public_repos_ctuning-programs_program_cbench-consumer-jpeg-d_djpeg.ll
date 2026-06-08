; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_djpeg.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/djpeg.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.djpeg_dest_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }

@progname = internal global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 8
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@requested_fmt = internal global i32 0, align 4
@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Comment, length %ld:\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"colours\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"quantize\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"quantise\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.67 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's DJPEG, version %s\0A%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"nosmooth\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"onepass\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"os2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"  -colors N      Reduce image to no more than N colors\0A\00", align 1
@.str.90 = private unnamed_addr constant [47 x i8] c"  -fast          Fast, low-quality processing\0A\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"  -grayscale     Force grayscale output\0A\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\0A\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"  -bmp           Select BMP output format (Windows style)%s\0A\00", align 1
@.str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"  -gif           Select GIF output format%s\0A\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"  -os2           Select BMP output format (OS/2 style)%s\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"  -targa         Select Targa output format%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"  -dither fs     Use F-S dithering (default)\0A\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"  -dither none   Don't use dithering in quantization\0A\00", align 1
@.str.106 = private unnamed_addr constant [63 x i8] c"  -dither ordered  Use ordered dither (medium speed, quality)\0A\00", align 1
@.str.107 = private unnamed_addr constant [57 x i8] c"  -map FILE      Map to colors used in named image file\0A\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"  -nosmooth      Don't use high-quality upsampling\0A\00", align 1
@.str.109 = private unnamed_addr constant [62 x i8] c"  -onepass       Use 1-pass quantization (fast, low quality)\0A\00", align 1
@.str.110 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %cinfo = alloca %struct.jpeg_decompress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %file_index = alloca i32, align 4
  %dest_mgr = alloca ptr, align 8
  %input_file = alloca ptr, align 8
  %output_file = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %dest_mgr, align 8
  %0 = load ptr, ptr %argv, align 8
  store ptr %0, ptr @progname, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @progname, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr @.str, ptr @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = call ptr @jpeg_std_error(ptr noundef nonnull %jerr) #5
  store ptr %call, ptr %cinfo, align 8
  call void @jpeg_CreateDecompress(ptr noundef nonnull %cinfo, i32 noundef 61, i64 noundef 616) #5
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i64 0, i32 11
  store ptr @cdjpeg_message_table, ptr %addon_message_table, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i64 0, i32 12
  store i32 1000, ptr %first_addon_message, align 8
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i64 0, i32 13
  store i32 1043, ptr %last_addon_message, align 4
  call void @jpeg_set_marker_processor(ptr noundef nonnull %cinfo, i32 noundef 254, ptr noundef nonnull @COM_handler) #5
  %3 = load i32, ptr %argc.addr, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %call4 = call i32 @parse_switches(ptr noundef nonnull %cinfo, i32 noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef 0)
  store i32 %call4, ptr %file_index, align 4
  %sub = add nsw i32 %3, -1
  %cmp5 = icmp slt i32 %call4, %sub
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr @progname, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %6) #5
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load ptr, ptr @progname, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.86, ptr noundef %8) #5
  %9 = load ptr, ptr @__stderrp, align 8
  %10 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %9)
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %11)
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %13)
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %15)
  %17 = load ptr, ptr @__stderrp, align 8
  %18 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %17)
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %19)
  %21 = load ptr, ptr @__stderrp, align 8
  %call7.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %22 = load ptr, ptr @__stderrp, align 8
  %call8.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %23 = load ptr, ptr @__stderrp, align 8
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %24 = load ptr, ptr @__stderrp, align 8
  %call10.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %25 = load ptr, ptr @__stderrp, align 8
  %call11.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %26)
  %28 = load ptr, ptr @__stderrp, align 8
  %call13.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %29 = load ptr, ptr @__stderrp, align 8
  %call14.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %30 = load ptr, ptr @__stderrp, align 8
  %call15.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %31 = load ptr, ptr @__stderrp, align 8
  %32 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %31)
  %33 = load ptr, ptr @__stderrp, align 8
  %34 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %33)
  %35 = load ptr, ptr @__stderrp, align 8
  %36 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %35)
  %37 = load ptr, ptr @__stderrp, align 8
  %38 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %37)
  %39 = load ptr, ptr @__stderrp, align 8
  %40 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %39)
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %41)
  %43 = load ptr, ptr @__stderrp, align 8
  %44 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %43)
  %45 = load ptr, ptr @__stderrp, align 8
  %46 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %45)
  %47 = load ptr, ptr @__stderrp, align 8
  %48 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %47)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end9:                                          ; preds = %if.end
  %49 = load i32, ptr %file_index, align 4
  %50 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp slt i32 %49, %50
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr %file_index, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %51, i64 %idxprom
  %53 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @"\01_fopen"(ptr noundef %53, ptr noundef nonnull @.str.2) #5
  store ptr %call14, ptr %input_file, align 8
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then12
  %54 = load ptr, ptr @__stderrp, align 8
  %55 = load ptr, ptr @progname, align 8
  %56 = load ptr, ptr %argv.addr, align 8
  %57 = load i32, ptr %file_index, align 4
  %idxprom18 = sext i32 %57 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %56, i64 %idxprom18
  %58 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.3, ptr noundef %55, ptr noundef %58) #5
  call void @exit(i32 noundef 1) #6
  unreachable

if.else:                                          ; preds = %if.end9
  %call22 = call ptr @read_stdin() #5
  store ptr %call22, ptr %input_file, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %if.else
  %59 = load ptr, ptr @outfilename, align 8
  %cmp24.not = icmp eq ptr %59, null
  br i1 %cmp24.not, label %if.else33, label %if.then26

if.then26:                                        ; preds = %if.end23
  %60 = load ptr, ptr @outfilename, align 8
  %call27 = call ptr @"\01_fopen"(ptr noundef %60, ptr noundef nonnull @.str.4) #5
  store ptr %call27, ptr %output_file, align 8
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.then26
  %61 = load ptr, ptr @__stderrp, align 8
  %62 = load ptr, ptr @progname, align 8
  %63 = load ptr, ptr @outfilename, align 8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.3, ptr noundef %62, ptr noundef %63) #5
  call void @exit(i32 noundef 1) #6
  unreachable

if.else33:                                        ; preds = %if.end23
  %call34 = call ptr @write_stdout() #5
  store ptr %call34, ptr %output_file, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.else33
  %64 = load ptr, ptr %input_file, align 8
  call void @jpeg_stdio_src(ptr noundef nonnull %cinfo, ptr noundef %64) #5
  %call36 = call i32 @jpeg_read_header(ptr noundef nonnull %cinfo, i32 noundef 1) #5
  %65 = load i32, ptr %argc.addr, align 4
  %66 = load ptr, ptr %argv.addr, align 8
  %call37 = call i32 @parse_switches(ptr noundef nonnull %cinfo, i32 noundef %65, ptr noundef %66, i32 noundef 0, i32 noundef 1)
  store i32 %call37, ptr %file_index, align 4
  %67 = load i32, ptr @requested_fmt, align 4
  switch i32 %67, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb39
    i32 1, label %sw.bb41
    i32 3, label %sw.bb43
    i32 5, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end35
  %call38 = call ptr @jinit_write_bmp(ptr noundef nonnull %cinfo, i32 noundef 0) #5
  store ptr %call38, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end35
  %call40 = call ptr @jinit_write_bmp(ptr noundef nonnull %cinfo, i32 noundef 1) #5
  store ptr %call40, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end35
  %call42 = call ptr @jinit_write_gif(ptr noundef nonnull %cinfo) #5
  store ptr %call42, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end35
  %call44 = call ptr @jinit_write_ppm(ptr noundef nonnull %cinfo) #5
  store ptr %call44, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end35
  %call46 = call ptr @jinit_write_targa(ptr noundef nonnull %cinfo) #5
  store ptr %call46, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end35
  %68 = load ptr, ptr %cinfo, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 1042, ptr %msg_code, align 8
  %69 = load ptr, ptr %68, align 8
  call void %69(ptr noundef nonnull %cinfo) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb
  %70 = load ptr, ptr %output_file, align 8
  %71 = load ptr, ptr %dest_mgr, align 8
  %output_file49 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %71, i64 0, i32 3
  store ptr %70, ptr %output_file49, align 8
  %call50 = call i32 @jpeg_start_decompress(ptr noundef nonnull %cinfo) #5
  %72 = load ptr, ptr %71, align 8
  call void %72(ptr noundef nonnull %cinfo, ptr noundef nonnull %71) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 33
  %73 = load i32, ptr %output_scanline, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 27
  %74 = load i32, ptr %output_height, align 4
  %cmp51 = icmp ult i32 %73, %74
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load ptr, ptr %dest_mgr, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %75, i64 0, i32 4
  %76 = load ptr, ptr %buffer, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %75, i64 0, i32 5
  %77 = load i32, ptr %buffer_height, align 8
  %call53 = call i32 @jpeg_read_scanlines(ptr noundef nonnull %cinfo, ptr noundef %76, i32 noundef %77) #5
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %75, i64 0, i32 1
  %78 = load ptr, ptr %put_pixel_rows, align 8
  call void %78(ptr noundef nonnull %cinfo, ptr noundef %75, i32 noundef %call53) #5
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %79 = load ptr, ptr %dest_mgr, align 8
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %79, i64 0, i32 2
  %80 = load ptr, ptr %finish_output, align 8
  call void %80(ptr noundef nonnull %cinfo, ptr noundef %79) #5
  %call54 = call i32 @jpeg_finish_decompress(ptr noundef nonnull %cinfo) #5
  call void @jpeg_destroy_decompress(ptr noundef nonnull %cinfo) #5
  %81 = load ptr, ptr %input_file, align 8
  %82 = load ptr, ptr @__stdinp, align 8
  %cmp55.not = icmp eq ptr %81, %82
  br i1 %cmp55.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %while.end
  %83 = load ptr, ptr %input_file, align 8
  %call58 = call i32 @fclose(ptr noundef %83) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %while.end
  %84 = load ptr, ptr %output_file, align 8
  %85 = load ptr, ptr @__stdoutp, align 8
  %cmp60.not = icmp eq ptr %84, %85
  br i1 %cmp60.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end59
  %86 = load ptr, ptr %output_file, align 8
  %call63 = call i32 @fclose(ptr noundef %86) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59
  ret i32 0
}

declare ptr @jpeg_std_error(ptr noundef) #1

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) #1

declare void @jpeg_set_marker_processor(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @COM_handler(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %traceit = alloca i32, align 4
  %length = alloca i64, align 8
  %ch = alloca i32, align 4
  %lastch = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 7
  %1 = load i32, ptr %trace_level, align 4
  %cmp = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %traceit, align 4
  store i32 0, ptr %lastch, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @jpeg_getc(ptr noundef %2)
  %shl = shl i32 %call, 8
  %conv1 = zext i32 %shl to i64
  store i64 %conv1, ptr %length, align 8
  %call2 = call i32 @jpeg_getc(ptr noundef %2)
  %conv3 = zext i32 %call2 to i64
  %add = add nuw nsw i64 %conv1, %conv3
  %sub = add nsw i64 %add, -2
  store i64 %sub, ptr %length, align 8
  %3 = load i32, ptr %traceit, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load i64, ptr %length, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.47, i64 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end
  %6 = load i64, ptr %length, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, ptr %length, align 8
  %cmp5 = icmp sgt i64 %6, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call i32 @jpeg_getc(ptr noundef %7)
  store i32 %call7, ptr %ch, align 4
  %8 = load i32, ptr %traceit, align 4
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end38, label %if.then9

if.then9:                                         ; preds = %while.body
  %9 = load i32, ptr %ch, align 4
  %cmp10 = icmp eq i32 %9, 13
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %10 = load ptr, ptr @__stderrp, align 8
  %fputc2 = call i32 @fputc(i32 10, ptr %10)
  br label %if.end37

if.else:                                          ; preds = %if.then9
  %11 = load i32, ptr %ch, align 4
  %cmp14 = icmp eq i32 %11, 10
  br i1 %cmp14, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  %12 = load i32, ptr %lastch, align 4
  %cmp17.not = icmp eq i32 %12, 13
  br i1 %cmp17.not, label %if.end37, label %if.then19

if.then19:                                        ; preds = %if.then16
  %13 = load ptr, ptr @__stderrp, align 8
  %fputc1 = call i32 @fputc(i32 10, ptr %13)
  br label %if.end37

if.else22:                                        ; preds = %if.else
  %14 = load i32, ptr %ch, align 4
  %cmp23 = icmp eq i32 %14, 92
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = call i64 @fwrite(ptr nonnull @.str.49, i64 2, i64 1, ptr %15)
  br label %if.end37

if.else27:                                        ; preds = %if.else22
  %17 = load i32, ptr %ch, align 4
  %call28 = call i32 @isprint(i32 noundef %17) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.else27
  %18 = load i32, ptr %ch, align 4
  %19 = load ptr, ptr @__stderrp, align 8
  %call31 = call i32 @putc(i32 noundef %18, ptr noundef %19) #5
  br label %if.end37

if.else32:                                        ; preds = %if.else27
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = load i32, ptr %ch, align 4
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.50, i32 noundef %21) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then19, %if.then16, %if.then30, %if.else32, %if.then25, %if.then12
  %22 = load i32, ptr %ch, align 4
  store i32 %22, ptr %lastch, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %23 = load i32, ptr %traceit, align 4
  %tobool39.not = icmp eq i32 %23, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %while.end
  %24 = load ptr, ptr @__stderrp, align 8
  %fputc = call i32 @fputc(i32 10, ptr %24)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %while.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_switches(ptr noundef %cinfo, i32 noundef %argc, ptr noundef %argv, i32 noundef %last_file_arg_seen, i32 noundef %for_real) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %last_file_arg_seen.addr = alloca i32, align 4
  %for_real.addr = alloca i32, align 4
  %argn = alloca i32, align 4
  %arg = alloca ptr, align 8
  %val = alloca i32, align 4
  %mapfile = alloca ptr, align 8
  %lval = alloca i64, align 8
  %ch = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 %last_file_arg_seen, ptr %last_file_arg_seen.addr, align 4
  store i32 %for_real, ptr %for_real.addr, align 4
  store i32 3, ptr @requested_fmt, align 4
  store ptr null, ptr @outfilename, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 7
  store i32 0, ptr %trace_level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc255, %for.inc ]
  store i32 %storemerge, ptr %argn, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %argn, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  store ptr %5, ptr %arg, align 8
  %6 = load i8, ptr %5, align 1
  %cmp1.not = icmp eq i8 %6, 45
  br i1 %cmp1.not, label %if.end6, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %argn, align 4
  %8 = load i32, ptr %last_file_arg_seen.addr, align 4
  %cmp3.not = icmp sgt i32 %7, %8
  br i1 %cmp3.not, label %for.end, label %if.then5

if.then5:                                         ; preds = %if.then
  store ptr null, ptr @outfilename, align 8
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %9 = load ptr, ptr %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %arg, align 8
  %call = call i32 @keymatch(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.51, i32 noundef 1) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  store i32 0, ptr @requested_fmt, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end6
  %10 = load ptr, ptr %arg, align 8
  %call8 = call i32 @keymatch(ptr noundef %10, ptr noundef nonnull @.str.52, i32 noundef 1) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.else
  %11 = load ptr, ptr %arg, align 8
  %call10 = call i32 @keymatch(ptr noundef %11, ptr noundef nonnull @.str.53, i32 noundef 1) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.then18

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %arg, align 8
  %call13 = call i32 @keymatch(ptr noundef %12, ptr noundef nonnull @.str.54, i32 noundef 1) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.then18

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %13 = load ptr, ptr %arg, align 8
  %call16 = call i32 @keymatch(ptr noundef %13, ptr noundef nonnull @.str.55, i32 noundef 1) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else30, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false, %if.else
  %14 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %argn, align 4
  %15 = load i32, ptr %argc.addr, align 4
  %cmp19.not = icmp slt i32 %inc, %15
  br i1 %cmp19.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then18
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load ptr, ptr @progname, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.86, ptr noundef %17) #5
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %18)
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %20)
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %22)
  %24 = load ptr, ptr @__stderrp, align 8
  %25 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %24)
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %26)
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %28)
  %30 = load ptr, ptr @__stderrp, align 8
  %call7.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %31 = load ptr, ptr @__stderrp, align 8
  %call8.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %32 = load ptr, ptr @__stderrp, align 8
  %call9.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %33 = load ptr, ptr @__stderrp, align 8
  %call10.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %34 = load ptr, ptr @__stderrp, align 8
  %call11.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %35 = load ptr, ptr @__stderrp, align 8
  %36 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %35)
  %37 = load ptr, ptr @__stderrp, align 8
  %call13.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %38 = load ptr, ptr @__stderrp, align 8
  %call14.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %39 = load ptr, ptr @__stderrp, align 8
  %call15.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %40 = load ptr, ptr @__stderrp, align 8
  %41 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %40)
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %42)
  %44 = load ptr, ptr @__stderrp, align 8
  %45 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %44)
  %46 = load ptr, ptr @__stderrp, align 8
  %47 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %46)
  %48 = load ptr, ptr @__stderrp, align 8
  %49 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %48)
  %50 = load ptr, ptr @__stderrp, align 8
  %51 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %50)
  %52 = load ptr, ptr @__stderrp, align 8
  %53 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %52)
  %54 = load ptr, ptr @__stderrp, align 8
  %55 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %54)
  %56 = load ptr, ptr @__stderrp, align 8
  %57 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %56)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end22:                                         ; preds = %if.then18
  %58 = load ptr, ptr %argv.addr, align 8
  %59 = load i32, ptr %argn, align 4
  %idxprom23 = sext i32 %59 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %58, i64 %idxprom23
  %60 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %60, ptr noundef nonnull @.str.56, ptr noundef nonnull %val) #5
  %cmp26.not = icmp eq i32 %call25, 1
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end22
  %61 = load ptr, ptr @__stderrp, align 8
  %62 = load ptr, ptr @progname, align 8
  %call.i1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.86, ptr noundef %62) #5
  %63 = load ptr, ptr @__stderrp, align 8
  %64 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %63)
  %65 = load ptr, ptr @__stderrp, align 8
  %66 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %65)
  %67 = load ptr, ptr @__stderrp, align 8
  %68 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %67)
  %69 = load ptr, ptr @__stderrp, align 8
  %70 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %69)
  %71 = load ptr, ptr @__stderrp, align 8
  %72 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %71)
  %73 = load ptr, ptr @__stderrp, align 8
  %74 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %73)
  %75 = load ptr, ptr @__stderrp, align 8
  %call7.i8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %76 = load ptr, ptr @__stderrp, align 8
  %call8.i9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %77 = load ptr, ptr @__stderrp, align 8
  %call9.i10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %78 = load ptr, ptr @__stderrp, align 8
  %call10.i11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %79 = load ptr, ptr @__stderrp, align 8
  %call11.i12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %80 = load ptr, ptr @__stderrp, align 8
  %81 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %80)
  %82 = load ptr, ptr @__stderrp, align 8
  %call13.i14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %83 = load ptr, ptr @__stderrp, align 8
  %call14.i15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %84 = load ptr, ptr @__stderrp, align 8
  %call15.i16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %85 = load ptr, ptr @__stderrp, align 8
  %86 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %85)
  %87 = load ptr, ptr @__stderrp, align 8
  %88 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %87)
  %89 = load ptr, ptr @__stderrp, align 8
  %90 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %89)
  %91 = load ptr, ptr @__stderrp, align 8
  %92 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %91)
  %93 = load ptr, ptr @__stderrp, align 8
  %94 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %93)
  %95 = load ptr, ptr @__stderrp, align 8
  %96 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %95)
  %97 = load ptr, ptr @__stderrp, align 8
  %98 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %97)
  %99 = load ptr, ptr @__stderrp, align 8
  %100 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %99)
  %101 = load ptr, ptr @__stderrp, align 8
  %102 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %101)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end29:                                         ; preds = %if.end22
  %103 = load i32, ptr %val, align 4
  %104 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i64 0, i32 22
  store i32 %103, ptr %desired_number_of_colors, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i64 0, i32 19
  store i32 1, ptr %quantize_colors, align 4
  br label %for.inc

if.else30:                                        ; preds = %lor.lhs.false15
  %105 = load ptr, ptr %arg, align 8
  %call31 = call i32 @keymatch(ptr noundef %105, ptr noundef nonnull @.str.57, i32 noundef 2) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else62, label %if.then33

if.then33:                                        ; preds = %if.else30
  %106 = load i32, ptr %argn, align 4
  %inc34 = add nsw i32 %106, 1
  store i32 %inc34, ptr %argn, align 4
  %107 = load i32, ptr %argc.addr, align 4
  %cmp35.not = icmp slt i32 %inc34, %107
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.then33
  %108 = load ptr, ptr @__stderrp, align 8
  %109 = load ptr, ptr @progname, align 8
  %call.i26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.86, ptr noundef %109) #5
  %110 = load ptr, ptr @__stderrp, align 8
  %111 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %110)
  %112 = load ptr, ptr @__stderrp, align 8
  %113 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %112)
  %114 = load ptr, ptr @__stderrp, align 8
  %115 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %114)
  %116 = load ptr, ptr @__stderrp, align 8
  %117 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %116)
  %118 = load ptr, ptr @__stderrp, align 8
  %119 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %118)
  %120 = load ptr, ptr @__stderrp, align 8
  %121 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %120)
  %122 = load ptr, ptr @__stderrp, align 8
  %call7.i33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %123 = load ptr, ptr @__stderrp, align 8
  %call8.i34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %124 = load ptr, ptr @__stderrp, align 8
  %call9.i35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %125 = load ptr, ptr @__stderrp, align 8
  %call10.i36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %126 = load ptr, ptr @__stderrp, align 8
  %call11.i37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %127 = load ptr, ptr @__stderrp, align 8
  %128 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %127)
  %129 = load ptr, ptr @__stderrp, align 8
  %call13.i39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %130 = load ptr, ptr @__stderrp, align 8
  %call14.i40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %131 = load ptr, ptr @__stderrp, align 8
  %call15.i41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %132 = load ptr, ptr @__stderrp, align 8
  %133 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %132)
  %134 = load ptr, ptr @__stderrp, align 8
  %135 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %134)
  %136 = load ptr, ptr @__stderrp, align 8
  %137 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %136)
  %138 = load ptr, ptr @__stderrp, align 8
  %139 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %138)
  %140 = load ptr, ptr @__stderrp, align 8
  %141 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %140)
  %142 = load ptr, ptr @__stderrp, align 8
  %143 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %142)
  %144 = load ptr, ptr @__stderrp, align 8
  %145 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %144)
  %146 = load ptr, ptr @__stderrp, align 8
  %147 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %146)
  %148 = load ptr, ptr @__stderrp, align 8
  %149 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %148)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end38:                                         ; preds = %if.then33
  %150 = load ptr, ptr %argv.addr, align 8
  %151 = load i32, ptr %argn, align 4
  %idxprom39 = sext i32 %151 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %150, i64 %idxprom39
  %152 = load ptr, ptr %arrayidx40, align 8
  %call41 = call i32 @keymatch(ptr noundef %152, ptr noundef nonnull @.str.58, i32 noundef 1) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.end38
  %153 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %153, i64 0, i32 16
  store i32 0, ptr %dct_method, align 8
  br label %for.inc

if.else44:                                        ; preds = %if.end38
  %154 = load ptr, ptr %argv.addr, align 8
  %155 = load i32, ptr %argn, align 4
  %idxprom45 = sext i32 %155 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %154, i64 %idxprom45
  %156 = load ptr, ptr %arrayidx46, align 8
  %call47 = call i32 @keymatch(ptr noundef %156, ptr noundef nonnull @.str.59, i32 noundef 2) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.else44
  %157 = load ptr, ptr %cinfo.addr, align 8
  %dct_method50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %157, i64 0, i32 16
  store i32 1, ptr %dct_method50, align 8
  br label %for.inc

if.else51:                                        ; preds = %if.else44
  %158 = load ptr, ptr %argv.addr, align 8
  %159 = load i32, ptr %argn, align 4
  %idxprom52 = sext i32 %159 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %158, i64 %idxprom52
  %160 = load ptr, ptr %arrayidx53, align 8
  %call54 = call i32 @keymatch(ptr noundef %160, ptr noundef nonnull @.str.60, i32 noundef 2) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else58, label %if.then56

if.then56:                                        ; preds = %if.else51
  %161 = load ptr, ptr %cinfo.addr, align 8
  %dct_method57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %161, i64 0, i32 16
  store i32 2, ptr %dct_method57, align 8
  br label %for.inc

if.else58:                                        ; preds = %if.else51
  %162 = load ptr, ptr @__stderrp, align 8
  %163 = load ptr, ptr @progname, align 8
  %call.i51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.86, ptr noundef %163) #5
  %164 = load ptr, ptr @__stderrp, align 8
  %165 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %164)
  %166 = load ptr, ptr @__stderrp, align 8
  %167 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %166)
  %168 = load ptr, ptr @__stderrp, align 8
  %169 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %168)
  %170 = load ptr, ptr @__stderrp, align 8
  %171 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %170)
  %172 = load ptr, ptr @__stderrp, align 8
  %173 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %172)
  %174 = load ptr, ptr @__stderrp, align 8
  %175 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %174)
  %176 = load ptr, ptr @__stderrp, align 8
  %call7.i58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %177 = load ptr, ptr @__stderrp, align 8
  %call8.i59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %178 = load ptr, ptr @__stderrp, align 8
  %call9.i60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %179 = load ptr, ptr @__stderrp, align 8
  %call10.i61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %180 = load ptr, ptr @__stderrp, align 8
  %call11.i62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %181 = load ptr, ptr @__stderrp, align 8
  %182 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %181)
  %183 = load ptr, ptr @__stderrp, align 8
  %call13.i64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %184 = load ptr, ptr @__stderrp, align 8
  %call14.i65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %185 = load ptr, ptr @__stderrp, align 8
  %call15.i66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %186 = load ptr, ptr @__stderrp, align 8
  %187 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %186)
  %188 = load ptr, ptr @__stderrp, align 8
  %189 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %188)
  %190 = load ptr, ptr @__stderrp, align 8
  %191 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %190)
  %192 = load ptr, ptr @__stderrp, align 8
  %193 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %192)
  %194 = load ptr, ptr @__stderrp, align 8
  %195 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %194)
  %196 = load ptr, ptr @__stderrp, align 8
  %197 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %196)
  %198 = load ptr, ptr @__stderrp, align 8
  %199 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %198)
  %200 = load ptr, ptr @__stderrp, align 8
  %201 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %200)
  %202 = load ptr, ptr @__stderrp, align 8
  %203 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %202)
  call void @exit(i32 noundef 1) #6
  unreachable

if.else62:                                        ; preds = %if.else30
  %204 = load ptr, ptr %arg, align 8
  %call63 = call i32 @keymatch(ptr noundef %204, ptr noundef nonnull @.str.61, i32 noundef 2) #5
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.else94, label %if.then65

if.then65:                                        ; preds = %if.else62
  %205 = load i32, ptr %argn, align 4
  %inc66 = add nsw i32 %205, 1
  store i32 %inc66, ptr %argn, align 4
  %206 = load i32, ptr %argc.addr, align 4
  %cmp67.not = icmp slt i32 %inc66, %206
  br i1 %cmp67.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.then65
  %207 = load ptr, ptr @__stderrp, align 8
  %208 = load ptr, ptr @progname, align 8
  %call.i76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.86, ptr noundef %208) #5
  %209 = load ptr, ptr @__stderrp, align 8
  %210 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %209)
  %211 = load ptr, ptr @__stderrp, align 8
  %212 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %211)
  %213 = load ptr, ptr @__stderrp, align 8
  %214 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %213)
  %215 = load ptr, ptr @__stderrp, align 8
  %216 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %215)
  %217 = load ptr, ptr @__stderrp, align 8
  %218 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %217)
  %219 = load ptr, ptr @__stderrp, align 8
  %220 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %219)
  %221 = load ptr, ptr @__stderrp, align 8
  %call7.i83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %222 = load ptr, ptr @__stderrp, align 8
  %call8.i84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %223 = load ptr, ptr @__stderrp, align 8
  %call9.i85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %224 = load ptr, ptr @__stderrp, align 8
  %call10.i86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %225 = load ptr, ptr @__stderrp, align 8
  %call11.i87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %226 = load ptr, ptr @__stderrp, align 8
  %227 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %226)
  %228 = load ptr, ptr @__stderrp, align 8
  %call13.i89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %229 = load ptr, ptr @__stderrp, align 8
  %call14.i90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %230 = load ptr, ptr @__stderrp, align 8
  %call15.i91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %231 = load ptr, ptr @__stderrp, align 8
  %232 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %231)
  %233 = load ptr, ptr @__stderrp, align 8
  %234 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %233)
  %235 = load ptr, ptr @__stderrp, align 8
  %236 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %235)
  %237 = load ptr, ptr @__stderrp, align 8
  %238 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %237)
  %239 = load ptr, ptr @__stderrp, align 8
  %240 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %239)
  %241 = load ptr, ptr @__stderrp, align 8
  %242 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %241)
  %243 = load ptr, ptr @__stderrp, align 8
  %244 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %243)
  %245 = load ptr, ptr @__stderrp, align 8
  %246 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %245)
  %247 = load ptr, ptr @__stderrp, align 8
  %248 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %247)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end70:                                         ; preds = %if.then65
  %249 = load ptr, ptr %argv.addr, align 8
  %250 = load i32, ptr %argn, align 4
  %idxprom71 = sext i32 %250 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %249, i64 %idxprom71
  %251 = load ptr, ptr %arrayidx72, align 8
  %call73 = call i32 @keymatch(ptr noundef %251, ptr noundef nonnull @.str.62, i32 noundef 2) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else76, label %if.then75

if.then75:                                        ; preds = %if.end70
  %252 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %252, i64 0, i32 20
  store i32 2, ptr %dither_mode, align 8
  br label %for.inc

if.else76:                                        ; preds = %if.end70
  %253 = load ptr, ptr %argv.addr, align 8
  %254 = load i32, ptr %argn, align 4
  %idxprom77 = sext i32 %254 to i64
  %arrayidx78 = getelementptr inbounds ptr, ptr %253, i64 %idxprom77
  %255 = load ptr, ptr %arrayidx78, align 8
  %call79 = call i32 @keymatch(ptr noundef %255, ptr noundef nonnull @.str.63, i32 noundef 2) #5
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else83, label %if.then81

if.then81:                                        ; preds = %if.else76
  %256 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode82 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %256, i64 0, i32 20
  store i32 0, ptr %dither_mode82, align 8
  br label %for.inc

if.else83:                                        ; preds = %if.else76
  %257 = load ptr, ptr %argv.addr, align 8
  %258 = load i32, ptr %argn, align 4
  %idxprom84 = sext i32 %258 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %257, i64 %idxprom84
  %259 = load ptr, ptr %arrayidx85, align 8
  %call86 = call i32 @keymatch(ptr noundef %259, ptr noundef nonnull @.str.64, i32 noundef 2) #5
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.else90, label %if.then88

if.then88:                                        ; preds = %if.else83
  %260 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %260, i64 0, i32 20
  store i32 1, ptr %dither_mode89, align 8
  br label %for.inc

if.else90:                                        ; preds = %if.else83
  %261 = load ptr, ptr @__stderrp, align 8
  %262 = load ptr, ptr @progname, align 8
  %call.i101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.86, ptr noundef %262) #5
  %263 = load ptr, ptr @__stderrp, align 8
  %264 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %263)
  %265 = load ptr, ptr @__stderrp, align 8
  %266 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %265)
  %267 = load ptr, ptr @__stderrp, align 8
  %268 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %267)
  %269 = load ptr, ptr @__stderrp, align 8
  %270 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %269)
  %271 = load ptr, ptr @__stderrp, align 8
  %272 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %271)
  %273 = load ptr, ptr @__stderrp, align 8
  %274 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %273)
  %275 = load ptr, ptr @__stderrp, align 8
  %call7.i108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %276 = load ptr, ptr @__stderrp, align 8
  %call8.i109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %277 = load ptr, ptr @__stderrp, align 8
  %call9.i110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %278 = load ptr, ptr @__stderrp, align 8
  %call10.i111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %279 = load ptr, ptr @__stderrp, align 8
  %call11.i112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %279, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %280 = load ptr, ptr @__stderrp, align 8
  %281 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %280)
  %282 = load ptr, ptr @__stderrp, align 8
  %call13.i114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %282, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %283 = load ptr, ptr @__stderrp, align 8
  %call14.i115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %284 = load ptr, ptr @__stderrp, align 8
  %call15.i116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %284, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %285 = load ptr, ptr @__stderrp, align 8
  %286 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %285)
  %287 = load ptr, ptr @__stderrp, align 8
  %288 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %287)
  %289 = load ptr, ptr @__stderrp, align 8
  %290 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %289)
  %291 = load ptr, ptr @__stderrp, align 8
  %292 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %291)
  %293 = load ptr, ptr @__stderrp, align 8
  %294 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %293)
  %295 = load ptr, ptr @__stderrp, align 8
  %296 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %295)
  %297 = load ptr, ptr @__stderrp, align 8
  %298 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %297)
  %299 = load ptr, ptr @__stderrp, align 8
  %300 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %299)
  %301 = load ptr, ptr @__stderrp, align 8
  %302 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %301)
  call void @exit(i32 noundef 1) #6
  unreachable

if.else94:                                        ; preds = %if.else62
  %303 = load ptr, ptr %arg, align 8
  %call95 = call i32 @keymatch(ptr noundef %303, ptr noundef nonnull @.str.65, i32 noundef 1) #5
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %lor.lhs.false97, label %if.then100

lor.lhs.false97:                                  ; preds = %if.else94
  %304 = load ptr, ptr %arg, align 8
  %call98 = call i32 @keymatch(ptr noundef %304, ptr noundef nonnull @.str.66, i32 noundef 1) #5
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.else108, label %if.then100

if.then100:                                       ; preds = %lor.lhs.false97, %if.else94
  %305 = load i32, ptr @parse_switches.printed_version, align 4
  %tobool101.not = icmp eq i32 %305, 0
  br i1 %tobool101.not, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.then100
  %306 = load ptr, ptr @__stderrp, align 8
  %call103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #5
  store i32 1, ptr @parse_switches.printed_version, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then100
  %307 = load ptr, ptr %cinfo.addr, align 8
  %308 = load ptr, ptr %307, align 8
  %trace_level106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %308, i64 0, i32 7
  %309 = load i32, ptr %trace_level106, align 4
  %inc107 = add nsw i32 %309, 1
  store i32 %inc107, ptr %trace_level106, align 4
  br label %for.inc

if.else108:                                       ; preds = %lor.lhs.false97
  %310 = load ptr, ptr %arg, align 8
  %call109 = call i32 @keymatch(ptr noundef %310, ptr noundef nonnull @.str.59, i32 noundef 1) #5
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.else119, label %if.then111

if.then111:                                       ; preds = %if.else108
  %311 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %311, i64 0, i32 21
  store i32 0, ptr %two_pass_quantize, align 4
  %dither_mode112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %311, i64 0, i32 20
  store i32 1, ptr %dither_mode112, align 8
  %quantize_colors113 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %311, i64 0, i32 19
  %312 = load i32, ptr %quantize_colors113, align 4
  %tobool114.not = icmp eq i32 %312, 0
  br i1 %tobool114.not, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.then111
  %313 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %313, i64 0, i32 22
  store i32 216, ptr %desired_number_of_colors116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.then111
  %314 = load ptr, ptr %cinfo.addr, align 8
  %dct_method118 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %314, i64 0, i32 16
  store i32 1, ptr %dct_method118, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %314, i64 0, i32 17
  store i32 0, ptr %do_fancy_upsampling, align 4
  br label %for.inc

if.else119:                                       ; preds = %if.else108
  %315 = load ptr, ptr %arg, align 8
  %call120 = call i32 @keymatch(ptr noundef %315, ptr noundef nonnull @.str.70, i32 noundef 1) #5
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.else123, label %if.then122

if.then122:                                       ; preds = %if.else119
  store i32 1, ptr @requested_fmt, align 4
  br label %for.inc

if.else123:                                       ; preds = %if.else119
  %316 = load ptr, ptr %arg, align 8
  %call124 = call i32 @keymatch(ptr noundef %316, ptr noundef nonnull @.str.71, i32 noundef 2) #5
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %lor.lhs.false126, label %if.then129

lor.lhs.false126:                                 ; preds = %if.else123
  %317 = load ptr, ptr %arg, align 8
  %call127 = call i32 @keymatch(ptr noundef %317, ptr noundef nonnull @.str.72, i32 noundef 2) #5
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.else130, label %if.then129

if.then129:                                       ; preds = %lor.lhs.false126, %if.else123
  %318 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %318, i64 0, i32 10
  store i32 1, ptr %out_color_space, align 8
  br label %for.inc

if.else130:                                       ; preds = %lor.lhs.false126
  %319 = load ptr, ptr %arg, align 8
  %call131 = call i32 @keymatch(ptr noundef %319, ptr noundef nonnull @.str.73, i32 noundef 3) #5
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.else154, label %if.then133

if.then133:                                       ; preds = %if.else130
  %320 = load i32, ptr %argn, align 4
  %inc134 = add nsw i32 %320, 1
  store i32 %inc134, ptr %argn, align 4
  %321 = load i32, ptr %argc.addr, align 4
  %cmp135.not = icmp slt i32 %inc134, %321
  br i1 %cmp135.not, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.then133
  %322 = load ptr, ptr @__stderrp, align 8
  %323 = load ptr, ptr @progname, align 8
  %call.i126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %322, ptr noundef nonnull @.str.86, ptr noundef %323) #5
  %324 = load ptr, ptr @__stderrp, align 8
  %325 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %324)
  %326 = load ptr, ptr @__stderrp, align 8
  %327 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %326)
  %328 = load ptr, ptr @__stderrp, align 8
  %329 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %328)
  %330 = load ptr, ptr @__stderrp, align 8
  %331 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %330)
  %332 = load ptr, ptr @__stderrp, align 8
  %333 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %332)
  %334 = load ptr, ptr @__stderrp, align 8
  %335 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %334)
  %336 = load ptr, ptr @__stderrp, align 8
  %call7.i133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %336, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %337 = load ptr, ptr @__stderrp, align 8
  %call8.i134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %338 = load ptr, ptr @__stderrp, align 8
  %call9.i135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %338, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %339 = load ptr, ptr @__stderrp, align 8
  %call10.i136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %340 = load ptr, ptr @__stderrp, align 8
  %call11.i137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %340, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %341 = load ptr, ptr @__stderrp, align 8
  %342 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %341)
  %343 = load ptr, ptr @__stderrp, align 8
  %call13.i139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %344 = load ptr, ptr @__stderrp, align 8
  %call14.i140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %345 = load ptr, ptr @__stderrp, align 8
  %call15.i141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %346 = load ptr, ptr @__stderrp, align 8
  %347 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %346)
  %348 = load ptr, ptr @__stderrp, align 8
  %349 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %348)
  %350 = load ptr, ptr @__stderrp, align 8
  %351 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %350)
  %352 = load ptr, ptr @__stderrp, align 8
  %353 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %352)
  %354 = load ptr, ptr @__stderrp, align 8
  %355 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %354)
  %356 = load ptr, ptr @__stderrp, align 8
  %357 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %356)
  %358 = load ptr, ptr @__stderrp, align 8
  %359 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %358)
  %360 = load ptr, ptr @__stderrp, align 8
  %361 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %360)
  %362 = load ptr, ptr @__stderrp, align 8
  %363 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %362)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end138:                                        ; preds = %if.then133
  %364 = load i32, ptr %for_real.addr, align 4
  %tobool139.not = icmp eq i32 %364, 0
  br i1 %tobool139.not, label %for.inc, label %if.then140

if.then140:                                       ; preds = %if.end138
  %365 = load ptr, ptr %argv.addr, align 8
  %366 = load i32, ptr %argn, align 4
  %idxprom141 = sext i32 %366 to i64
  %arrayidx142 = getelementptr inbounds ptr, ptr %365, i64 %idxprom141
  %367 = load ptr, ptr %arrayidx142, align 8
  %call143 = call ptr @"\01_fopen"(ptr noundef %367, ptr noundef nonnull @.str.2) #5
  store ptr %call143, ptr %mapfile, align 8
  %cmp144 = icmp eq ptr %call143, null
  br i1 %cmp144, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.then140
  %368 = load ptr, ptr @__stderrp, align 8
  %369 = load ptr, ptr @progname, align 8
  %370 = load ptr, ptr %argv.addr, align 8
  %371 = load i32, ptr %argn, align 4
  %idxprom147 = sext i32 %371 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %370, i64 %idxprom147
  %372 = load ptr, ptr %arrayidx148, align 8
  %call149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef nonnull @.str.3, ptr noundef %369, ptr noundef %372) #5
  call void @exit(i32 noundef 1) #6
  unreachable

if.end150:                                        ; preds = %if.then140
  %373 = load ptr, ptr %cinfo.addr, align 8
  %374 = load ptr, ptr %mapfile, align 8
  call void @read_color_map(ptr noundef %373, ptr noundef %374) #5
  %call151 = call i32 @fclose(ptr noundef %374) #5
  %quantize_colors152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %373, i64 0, i32 19
  store i32 1, ptr %quantize_colors152, align 4
  br label %for.inc

if.else154:                                       ; preds = %if.else130
  %375 = load ptr, ptr %arg, align 8
  %call155 = call i32 @keymatch(ptr noundef %375, ptr noundef nonnull @.str.74, i32 noundef 3) #5
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.else180, label %if.then157

if.then157:                                       ; preds = %if.else154
  store i8 120, ptr %ch, align 1
  %376 = load i32, ptr %argn, align 4
  %inc158 = add nsw i32 %376, 1
  store i32 %inc158, ptr %argn, align 4
  %377 = load i32, ptr %argc.addr, align 4
  %cmp159.not = icmp slt i32 %inc158, %377
  br i1 %cmp159.not, label %if.end162, label %if.then161

if.then161:                                       ; preds = %if.then157
  %378 = load ptr, ptr @__stderrp, align 8
  %379 = load ptr, ptr @progname, align 8
  %call.i151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %378, ptr noundef nonnull @.str.86, ptr noundef %379) #5
  %380 = load ptr, ptr @__stderrp, align 8
  %381 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %380)
  %382 = load ptr, ptr @__stderrp, align 8
  %383 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %382)
  %384 = load ptr, ptr @__stderrp, align 8
  %385 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %384)
  %386 = load ptr, ptr @__stderrp, align 8
  %387 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %386)
  %388 = load ptr, ptr @__stderrp, align 8
  %389 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %388)
  %390 = load ptr, ptr @__stderrp, align 8
  %391 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %390)
  %392 = load ptr, ptr @__stderrp, align 8
  %call7.i158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %392, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %393 = load ptr, ptr @__stderrp, align 8
  %call8.i159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %393, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %394 = load ptr, ptr @__stderrp, align 8
  %call9.i160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %394, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %395 = load ptr, ptr @__stderrp, align 8
  %call10.i161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %396 = load ptr, ptr @__stderrp, align 8
  %call11.i162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %396, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %397 = load ptr, ptr @__stderrp, align 8
  %398 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %397)
  %399 = load ptr, ptr @__stderrp, align 8
  %call13.i164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %399, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %400 = load ptr, ptr @__stderrp, align 8
  %call14.i165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %401 = load ptr, ptr @__stderrp, align 8
  %call15.i166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %401, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %402 = load ptr, ptr @__stderrp, align 8
  %403 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %402)
  %404 = load ptr, ptr @__stderrp, align 8
  %405 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %404)
  %406 = load ptr, ptr @__stderrp, align 8
  %407 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %406)
  %408 = load ptr, ptr @__stderrp, align 8
  %409 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %408)
  %410 = load ptr, ptr @__stderrp, align 8
  %411 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %410)
  %412 = load ptr, ptr @__stderrp, align 8
  %413 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %412)
  %414 = load ptr, ptr @__stderrp, align 8
  %415 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %414)
  %416 = load ptr, ptr @__stderrp, align 8
  %417 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %416)
  %418 = load ptr, ptr @__stderrp, align 8
  %419 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %418)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end162:                                        ; preds = %if.then157
  %420 = load ptr, ptr %argv.addr, align 8
  %421 = load i32, ptr %argn, align 4
  %idxprom163 = sext i32 %421 to i64
  %arrayidx164 = getelementptr inbounds ptr, ptr %420, i64 %idxprom163
  %422 = load ptr, ptr %arrayidx164, align 8
  %call165 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %422, ptr noundef nonnull @.str.75, ptr noundef nonnull %lval, ptr noundef nonnull %ch) #5
  %cmp166 = icmp slt i32 %call165, 1
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end162
  %423 = load ptr, ptr @__stderrp, align 8
  %424 = load ptr, ptr @progname, align 8
  %call.i176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %423, ptr noundef nonnull @.str.86, ptr noundef %424) #5
  %425 = load ptr, ptr @__stderrp, align 8
  %426 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %425)
  %427 = load ptr, ptr @__stderrp, align 8
  %428 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %427)
  %429 = load ptr, ptr @__stderrp, align 8
  %430 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %429)
  %431 = load ptr, ptr @__stderrp, align 8
  %432 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %431)
  %433 = load ptr, ptr @__stderrp, align 8
  %434 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %433)
  %435 = load ptr, ptr @__stderrp, align 8
  %436 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %435)
  %437 = load ptr, ptr @__stderrp, align 8
  %call7.i183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %437, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %438 = load ptr, ptr @__stderrp, align 8
  %call8.i184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %438, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %439 = load ptr, ptr @__stderrp, align 8
  %call9.i185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %439, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %440 = load ptr, ptr @__stderrp, align 8
  %call10.i186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %440, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %441 = load ptr, ptr @__stderrp, align 8
  %call11.i187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %441, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %442 = load ptr, ptr @__stderrp, align 8
  %443 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %442)
  %444 = load ptr, ptr @__stderrp, align 8
  %call13.i189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %444, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %445 = load ptr, ptr @__stderrp, align 8
  %call14.i190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %445, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %446 = load ptr, ptr @__stderrp, align 8
  %call15.i191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %446, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %447 = load ptr, ptr @__stderrp, align 8
  %448 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %447)
  %449 = load ptr, ptr @__stderrp, align 8
  %450 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %449)
  %451 = load ptr, ptr @__stderrp, align 8
  %452 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %451)
  %453 = load ptr, ptr @__stderrp, align 8
  %454 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %453)
  %455 = load ptr, ptr @__stderrp, align 8
  %456 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %455)
  %457 = load ptr, ptr @__stderrp, align 8
  %458 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %457)
  %459 = load ptr, ptr @__stderrp, align 8
  %460 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %459)
  %461 = load ptr, ptr @__stderrp, align 8
  %462 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %461)
  %463 = load ptr, ptr @__stderrp, align 8
  %464 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %463)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end169:                                        ; preds = %if.end162
  %465 = load i8, ptr %ch, align 1
  %cmp171 = icmp eq i8 %465, 109
  %466 = load i8, ptr %ch, align 1
  %cmp175 = icmp eq i8 %466, 77
  %or.cond = select i1 %cmp171, i1 true, i1 %cmp175
  br i1 %or.cond, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.end169
  %467 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %467, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.end169, %if.then177
  %468 = load i64, ptr %lval, align 8
  %mul179 = mul nsw i64 %468, 1000
  %469 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %469, i64 0, i32 1
  %470 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %470, i64 0, i32 11
  store i64 %mul179, ptr %max_memory_to_use, align 8
  br label %for.inc

if.else180:                                       ; preds = %if.else154
  %471 = load ptr, ptr %arg, align 8
  %call181 = call i32 @keymatch(ptr noundef %471, ptr noundef nonnull @.str.76, i32 noundef 3) #5
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.else185, label %if.then183

if.then183:                                       ; preds = %if.else180
  %472 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling184 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %472, i64 0, i32 17
  store i32 0, ptr %do_fancy_upsampling184, align 4
  br label %for.inc

if.else185:                                       ; preds = %if.else180
  %473 = load ptr, ptr %arg, align 8
  %call186 = call i32 @keymatch(ptr noundef %473, ptr noundef nonnull @.str.77, i32 noundef 3) #5
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.else190, label %if.then188

if.then188:                                       ; preds = %if.else185
  %474 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize189 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %474, i64 0, i32 21
  store i32 0, ptr %two_pass_quantize189, align 4
  br label %for.inc

if.else190:                                       ; preds = %if.else185
  %475 = load ptr, ptr %arg, align 8
  %call191 = call i32 @keymatch(ptr noundef %475, ptr noundef nonnull @.str.78, i32 noundef 3) #5
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.else194, label %if.then193

if.then193:                                       ; preds = %if.else190
  store i32 2, ptr @requested_fmt, align 4
  br label %for.inc

if.else194:                                       ; preds = %if.else190
  %476 = load ptr, ptr %arg, align 8
  %call195 = call i32 @keymatch(ptr noundef %476, ptr noundef nonnull @.str.79, i32 noundef 4) #5
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.else205, label %if.then197

if.then197:                                       ; preds = %if.else194
  %477 = load i32, ptr %argn, align 4
  %inc198 = add nsw i32 %477, 1
  store i32 %inc198, ptr %argn, align 4
  %478 = load i32, ptr %argc.addr, align 4
  %cmp199.not = icmp slt i32 %inc198, %478
  br i1 %cmp199.not, label %if.end202, label %if.then201

if.then201:                                       ; preds = %if.then197
  %479 = load ptr, ptr @__stderrp, align 8
  %480 = load ptr, ptr @progname, align 8
  %call.i201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %479, ptr noundef nonnull @.str.86, ptr noundef %480) #5
  %481 = load ptr, ptr @__stderrp, align 8
  %482 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %481)
  %483 = load ptr, ptr @__stderrp, align 8
  %484 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %483)
  %485 = load ptr, ptr @__stderrp, align 8
  %486 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %485)
  %487 = load ptr, ptr @__stderrp, align 8
  %488 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %487)
  %489 = load ptr, ptr @__stderrp, align 8
  %490 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %489)
  %491 = load ptr, ptr @__stderrp, align 8
  %492 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %491)
  %493 = load ptr, ptr @__stderrp, align 8
  %call7.i208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %493, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %494 = load ptr, ptr @__stderrp, align 8
  %call8.i209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %494, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %495 = load ptr, ptr @__stderrp, align 8
  %call9.i210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %495, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %496 = load ptr, ptr @__stderrp, align 8
  %call10.i211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %496, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %497 = load ptr, ptr @__stderrp, align 8
  %call11.i212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %497, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %498 = load ptr, ptr @__stderrp, align 8
  %499 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %498)
  %500 = load ptr, ptr @__stderrp, align 8
  %call13.i214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %500, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %501 = load ptr, ptr @__stderrp, align 8
  %call14.i215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %501, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %502 = load ptr, ptr @__stderrp, align 8
  %call15.i216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %502, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %503 = load ptr, ptr @__stderrp, align 8
  %504 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %503)
  %505 = load ptr, ptr @__stderrp, align 8
  %506 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %505)
  %507 = load ptr, ptr @__stderrp, align 8
  %508 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %507)
  %509 = load ptr, ptr @__stderrp, align 8
  %510 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %509)
  %511 = load ptr, ptr @__stderrp, align 8
  %512 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %511)
  %513 = load ptr, ptr @__stderrp, align 8
  %514 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %513)
  %515 = load ptr, ptr @__stderrp, align 8
  %516 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %515)
  %517 = load ptr, ptr @__stderrp, align 8
  %518 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %517)
  %519 = load ptr, ptr @__stderrp, align 8
  %520 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %519)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end202:                                        ; preds = %if.then197
  %521 = load ptr, ptr %argv.addr, align 8
  %522 = load i32, ptr %argn, align 4
  %idxprom203 = sext i32 %522 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %521, i64 %idxprom203
  %523 = load ptr, ptr %arrayidx204, align 8
  store ptr %523, ptr @outfilename, align 8
  br label %for.inc

if.else205:                                       ; preds = %if.else194
  %524 = load ptr, ptr %arg, align 8
  %call206 = call i32 @keymatch(ptr noundef %524, ptr noundef nonnull @.str.80, i32 noundef 1) #5
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %lor.lhs.false208, label %if.then211

lor.lhs.false208:                                 ; preds = %if.else205
  %525 = load ptr, ptr %arg, align 8
  %call209 = call i32 @keymatch(ptr noundef %525, ptr noundef nonnull @.str.81, i32 noundef 1) #5
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.else212, label %if.then211

if.then211:                                       ; preds = %lor.lhs.false208, %if.else205
  store i32 3, ptr @requested_fmt, align 4
  br label %for.inc

if.else212:                                       ; preds = %lor.lhs.false208
  %526 = load ptr, ptr %arg, align 8
  %call213 = call i32 @keymatch(ptr noundef %526, ptr noundef nonnull @.str.82, i32 noundef 1) #5
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.else216, label %if.then215

if.then215:                                       ; preds = %if.else212
  store i32 4, ptr @requested_fmt, align 4
  br label %for.inc

if.else216:                                       ; preds = %if.else212
  %527 = load ptr, ptr %arg, align 8
  %call217 = call i32 @keymatch(ptr noundef %527, ptr noundef nonnull @.str.83, i32 noundef 1) #5
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.else232, label %if.then219

if.then219:                                       ; preds = %if.else216
  %528 = load i32, ptr %argn, align 4
  %inc220 = add nsw i32 %528, 1
  store i32 %inc220, ptr %argn, align 4
  %529 = load i32, ptr %argc.addr, align 4
  %cmp221.not = icmp slt i32 %inc220, %529
  br i1 %cmp221.not, label %if.end224, label %if.then223

if.then223:                                       ; preds = %if.then219
  %530 = load ptr, ptr @__stderrp, align 8
  %531 = load ptr, ptr @progname, align 8
  %call.i226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %530, ptr noundef nonnull @.str.86, ptr noundef %531) #5
  %532 = load ptr, ptr @__stderrp, align 8
  %533 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %532)
  %534 = load ptr, ptr @__stderrp, align 8
  %535 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %534)
  %536 = load ptr, ptr @__stderrp, align 8
  %537 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %536)
  %538 = load ptr, ptr @__stderrp, align 8
  %539 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %538)
  %540 = load ptr, ptr @__stderrp, align 8
  %541 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %540)
  %542 = load ptr, ptr @__stderrp, align 8
  %543 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %542)
  %544 = load ptr, ptr @__stderrp, align 8
  %call7.i233 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %544, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %545 = load ptr, ptr @__stderrp, align 8
  %call8.i234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %545, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %546 = load ptr, ptr @__stderrp, align 8
  %call9.i235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %546, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %547 = load ptr, ptr @__stderrp, align 8
  %call10.i236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %547, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %548 = load ptr, ptr @__stderrp, align 8
  %call11.i237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %548, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %549 = load ptr, ptr @__stderrp, align 8
  %550 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %549)
  %551 = load ptr, ptr @__stderrp, align 8
  %call13.i239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %551, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %552 = load ptr, ptr @__stderrp, align 8
  %call14.i240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %552, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %553 = load ptr, ptr @__stderrp, align 8
  %call15.i241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %553, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %554 = load ptr, ptr @__stderrp, align 8
  %555 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %554)
  %556 = load ptr, ptr @__stderrp, align 8
  %557 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %556)
  %558 = load ptr, ptr @__stderrp, align 8
  %559 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %558)
  %560 = load ptr, ptr @__stderrp, align 8
  %561 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %560)
  %562 = load ptr, ptr @__stderrp, align 8
  %563 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %562)
  %564 = load ptr, ptr @__stderrp, align 8
  %565 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %564)
  %566 = load ptr, ptr @__stderrp, align 8
  %567 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %566)
  %568 = load ptr, ptr @__stderrp, align 8
  %569 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %568)
  %570 = load ptr, ptr @__stderrp, align 8
  %571 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %570)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end224:                                        ; preds = %if.then219
  %572 = load ptr, ptr %argv.addr, align 8
  %573 = load i32, ptr %argn, align 4
  %idxprom225 = sext i32 %573 to i64
  %arrayidx226 = getelementptr inbounds ptr, ptr %572, i64 %idxprom225
  %574 = load ptr, ptr %arrayidx226, align 8
  %575 = load ptr, ptr %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %575, i64 0, i32 11
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %575, i64 0, i32 12
  %call227 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %574, ptr noundef nonnull @.str.84, ptr noundef nonnull %scale_num, ptr noundef nonnull %scale_denom) #5
  %cmp228.not = icmp eq i32 %call227, 2
  br i1 %cmp228.not, label %for.inc, label %if.then230

if.then230:                                       ; preds = %if.end224
  %576 = load ptr, ptr @__stderrp, align 8
  %577 = load ptr, ptr @progname, align 8
  %call.i251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %576, ptr noundef nonnull @.str.86, ptr noundef %577) #5
  %578 = load ptr, ptr @__stderrp, align 8
  %579 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %578)
  %580 = load ptr, ptr @__stderrp, align 8
  %581 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %580)
  %582 = load ptr, ptr @__stderrp, align 8
  %583 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %582)
  %584 = load ptr, ptr @__stderrp, align 8
  %585 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %584)
  %586 = load ptr, ptr @__stderrp, align 8
  %587 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %586)
  %588 = load ptr, ptr @__stderrp, align 8
  %589 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %588)
  %590 = load ptr, ptr @__stderrp, align 8
  %call7.i258 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %590, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %591 = load ptr, ptr @__stderrp, align 8
  %call8.i259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %591, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %592 = load ptr, ptr @__stderrp, align 8
  %call9.i260 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %592, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %593 = load ptr, ptr @__stderrp, align 8
  %call10.i261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %593, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %594 = load ptr, ptr @__stderrp, align 8
  %call11.i262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %594, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %595 = load ptr, ptr @__stderrp, align 8
  %596 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %595)
  %597 = load ptr, ptr @__stderrp, align 8
  %call13.i264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %597, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %598 = load ptr, ptr @__stderrp, align 8
  %call14.i265 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %598, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %599 = load ptr, ptr @__stderrp, align 8
  %call15.i266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %599, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %600 = load ptr, ptr @__stderrp, align 8
  %601 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %600)
  %602 = load ptr, ptr @__stderrp, align 8
  %603 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %602)
  %604 = load ptr, ptr @__stderrp, align 8
  %605 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %604)
  %606 = load ptr, ptr @__stderrp, align 8
  %607 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %606)
  %608 = load ptr, ptr @__stderrp, align 8
  %609 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %608)
  %610 = load ptr, ptr @__stderrp, align 8
  %611 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %610)
  %612 = load ptr, ptr @__stderrp, align 8
  %613 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %612)
  %614 = load ptr, ptr @__stderrp, align 8
  %615 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %614)
  %616 = load ptr, ptr @__stderrp, align 8
  %617 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %616)
  call void @exit(i32 noundef 1) #6
  unreachable

if.else232:                                       ; preds = %if.else216
  %618 = load ptr, ptr %arg, align 8
  %call233 = call i32 @keymatch(ptr noundef %618, ptr noundef nonnull @.str.85, i32 noundef 1) #5
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.else236, label %if.then235

if.then235:                                       ; preds = %if.else232
  store i32 5, ptr @requested_fmt, align 4
  br label %for.inc

if.else236:                                       ; preds = %if.else232
  %619 = load ptr, ptr @__stderrp, align 8
  %620 = load ptr, ptr @progname, align 8
  %call.i276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %619, ptr noundef nonnull @.str.86, ptr noundef %620) #5
  %621 = load ptr, ptr @__stderrp, align 8
  %622 = call i64 @fwrite(ptr nonnull @.str.87, i64 12, i64 1, ptr %621)
  %623 = load ptr, ptr @__stderrp, align 8
  %624 = call i64 @fwrite(ptr nonnull @.str.88, i64 37, i64 1, ptr %623)
  %625 = load ptr, ptr @__stderrp, align 8
  %626 = call i64 @fwrite(ptr nonnull @.str.89, i64 55, i64 1, ptr %625)
  %627 = load ptr, ptr @__stderrp, align 8
  %628 = call i64 @fwrite(ptr nonnull @.str.90, i64 46, i64 1, ptr %627)
  %629 = load ptr, ptr @__stderrp, align 8
  %630 = call i64 @fwrite(ptr nonnull @.str.91, i64 40, i64 1, ptr %629)
  %631 = load ptr, ptr @__stderrp, align 8
  %632 = call i64 @fwrite(ptr nonnull @.str.92, i64 61, i64 1, ptr %631)
  %633 = load ptr, ptr @__stderrp, align 8
  %call7.i283 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %633, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #5
  %634 = load ptr, ptr @__stderrp, align 8
  %call8.i284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %634, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94) #5
  %635 = load ptr, ptr @__stderrp, align 8
  %call9.i285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %635, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94) #5
  %636 = load ptr, ptr @__stderrp, align 8
  %call10.i286 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %636, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #5
  %637 = load ptr, ptr @__stderrp, align 8
  %call11.i287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %637, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94) #5
  %638 = load ptr, ptr @__stderrp, align 8
  %639 = call i64 @fwrite(ptr nonnull @.str.100, i64 29, i64 1, ptr %638)
  %640 = load ptr, ptr @__stderrp, align 8
  %call13.i289 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %640, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.98) #5
  %641 = load ptr, ptr @__stderrp, align 8
  %call14.i290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %641, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.94) #5
  %642 = load ptr, ptr @__stderrp, align 8
  %call15.i291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %642, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.94) #5
  %643 = load ptr, ptr @__stderrp, align 8
  %644 = call i64 @fwrite(ptr nonnull @.str.104, i64 45, i64 1, ptr %643)
  %645 = load ptr, ptr @__stderrp, align 8
  %646 = call i64 @fwrite(ptr nonnull @.str.105, i64 53, i64 1, ptr %645)
  %647 = load ptr, ptr @__stderrp, align 8
  %648 = call i64 @fwrite(ptr nonnull @.str.106, i64 62, i64 1, ptr %647)
  %649 = load ptr, ptr @__stderrp, align 8
  %650 = call i64 @fwrite(ptr nonnull @.str.107, i64 56, i64 1, ptr %649)
  %651 = load ptr, ptr @__stderrp, align 8
  %652 = call i64 @fwrite(ptr nonnull @.str.108, i64 51, i64 1, ptr %651)
  %653 = load ptr, ptr @__stderrp, align 8
  %654 = call i64 @fwrite(ptr nonnull @.str.109, i64 61, i64 1, ptr %653)
  %655 = load ptr, ptr @__stderrp, align 8
  %656 = call i64 @fwrite(ptr nonnull @.str.110, i64 51, i64 1, ptr %655)
  %657 = load ptr, ptr @__stderrp, align 8
  %658 = call i64 @fwrite(ptr nonnull @.str.111, i64 46, i64 1, ptr %657)
  %659 = load ptr, ptr @__stderrp, align 8
  %660 = call i64 @fwrite(ptr nonnull @.str.112, i64 43, i64 1, ptr %659)
  call void @exit(i32 noundef 1) #6
  unreachable

for.inc:                                          ; preds = %if.then7, %if.then49, %if.then56, %if.then43, %if.end104, %if.then122, %if.end150, %if.end138, %if.then183, %if.then193, %if.then211, %if.then235, %if.end224, %if.then215, %if.end202, %if.then188, %if.end178, %if.then129, %if.end117, %if.then75, %if.then88, %if.then81, %if.end29, %if.then5
  %661 = load i32, ptr %argn, align 4
  %inc255 = add nsw i32 %661, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.then, %for.cond
  %662 = load i32, ptr %argn, align 4
  ret i32 %662
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @read_stdin() #1

declare ptr @write_stdout() #1

declare void @jpeg_stdio_src(ptr noundef, ptr noundef) #1

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) #1

declare ptr @jinit_write_bmp(ptr noundef, i32 noundef) #1

declare ptr @jinit_write_gif(ptr noundef) #1

declare ptr @jinit_write_ppm(ptr noundef) #1

declare ptr @jinit_write_targa(ptr noundef) #1

declare i32 @jpeg_start_decompress(ptr noundef) #1

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @jpeg_finish_decompress(ptr noundef) #1

declare void @jpeg_destroy_decompress(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @jpeg_getc(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8
  store ptr %0, ptr %datasrc, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %fill_input_buffer, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %3(ptr noundef %4) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull %5) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then1, %entry
  %9 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i64 0, i32 1
  %10 = load i64, ptr %bytes_in_buffer4, align 8
  %dec = add i64 %10, -1
  store i64 %dec, ptr %bytes_in_buffer4, align 8
  %11 = load ptr, ptr %9, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %9, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isprint(i32 noundef) #3

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

declare void @read_color_map(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
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
