; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/djpeg.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/djpeg.c"
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
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %cinfo = alloca %struct.jpeg_decompress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %file_index = alloca i32, align 4
  %dest_mgr = alloca ptr, align 8
  %input_file = alloca ptr, align 8
  %output_file = alloca ptr, align 8
  %num_scanlines = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %dest_mgr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr @progname, align 8
  %2 = load ptr, ptr @progname, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr @progname, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr @.str, ptr @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = call ptr @jpeg_std_error(ptr noundef %jerr)
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 0
  store ptr %call, ptr %err, align 8
  call void @jpeg_CreateDecompress(ptr noundef %cinfo, i32 noundef 61, i64 noundef 616)
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 11
  store ptr @cdjpeg_message_table, ptr %addon_message_table, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 12
  store i32 1000, ptr %first_addon_message, align 8
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 13
  store i32 1043, ptr %last_addon_message, align 4
  call void @jpeg_set_marker_processor(ptr noundef %cinfo, i32 noundef 254, ptr noundef @COM_handler)
  %5 = load i32, ptr %argc.addr, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %call4 = call i32 @parse_switches(ptr noundef %cinfo, i32 noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 0)
  store i32 %call4, ptr %file_index, align 4
  %7 = load i32, ptr %file_index, align 4
  %8 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %8, 1
  %cmp5 = icmp slt i32 %7, %sub
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr @__stderrp, align 8
  %10 = load ptr, ptr @progname, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1, ptr noundef %10)
  call void @usage()
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %11 = load i32, ptr %file_index, align 4
  %12 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %13 = load ptr, ptr %argv.addr, align 8
  %14 = load i32, ptr %file_index, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @"\01_fopen"(ptr noundef %15, ptr noundef @.str.2)
  store ptr %call14, ptr %input_file, align 8
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.then12
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load ptr, ptr @progname, align 8
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %file_index, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %18, i64 %idxprom18
  %20 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.3, ptr noundef %17, ptr noundef %20)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end21:                                         ; preds = %if.then12
  br label %if.end23

if.else:                                          ; preds = %if.end9
  %call22 = call ptr @read_stdin()
  store ptr %call22, ptr %input_file, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end21
  %21 = load ptr, ptr @outfilename, align 8
  %cmp24 = icmp ne ptr %21, null
  br i1 %cmp24, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end23
  %22 = load ptr, ptr @outfilename, align 8
  %call27 = call ptr @"\01_fopen"(ptr noundef %22, ptr noundef @.str.4)
  store ptr %call27, ptr %output_file, align 8
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then26
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load ptr, ptr @progname, align 8
  %25 = load ptr, ptr @outfilename, align 8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.3, ptr noundef %24, ptr noundef %25)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end32:                                         ; preds = %if.then26
  br label %if.end35

if.else33:                                        ; preds = %if.end23
  %call34 = call ptr @write_stdout()
  store ptr %call34, ptr %output_file, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.end32
  %26 = load ptr, ptr %input_file, align 8
  call void @jpeg_stdio_src(ptr noundef %cinfo, ptr noundef %26)
  %call36 = call i32 @jpeg_read_header(ptr noundef %cinfo, i32 noundef 1)
  %27 = load i32, ptr %argc.addr, align 4
  %28 = load ptr, ptr %argv.addr, align 8
  %call37 = call i32 @parse_switches(ptr noundef %cinfo, i32 noundef %27, ptr noundef %28, i32 noundef 0, i32 noundef 1)
  store i32 %call37, ptr %file_index, align 4
  %29 = load i32, ptr @requested_fmt, align 4
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb39
    i32 1, label %sw.bb41
    i32 3, label %sw.bb43
    i32 5, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end35
  %call38 = call ptr @jinit_write_bmp(ptr noundef %cinfo, i32 noundef 0)
  store ptr %call38, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end35
  %call40 = call ptr @jinit_write_bmp(ptr noundef %cinfo, i32 noundef 1)
  store ptr %call40, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end35
  %call42 = call ptr @jinit_write_gif(ptr noundef %cinfo)
  store ptr %call42, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end35
  %call44 = call ptr @jinit_write_ppm(ptr noundef %cinfo)
  store ptr %call44, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end35
  %call46 = call ptr @jinit_write_targa(ptr noundef %cinfo)
  store ptr %call46, ptr %dest_mgr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end35
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 0
  %30 = load ptr, ptr %err47, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i32 0, i32 5
  store i32 1042, ptr %msg_code, align 8
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 0
  %31 = load ptr, ptr %err48, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %error_exit, align 8
  call void %32(ptr noundef %cinfo)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb
  %33 = load ptr, ptr %output_file, align 8
  %34 = load ptr, ptr %dest_mgr, align 8
  %output_file49 = getelementptr inbounds %struct.djpeg_dest_struct, ptr %34, i32 0, i32 3
  store ptr %33, ptr %output_file49, align 8
  %call50 = call i32 @jpeg_start_decompress(ptr noundef %cinfo)
  %35 = load ptr, ptr %dest_mgr, align 8
  %start_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %start_output, align 8
  %37 = load ptr, ptr %dest_mgr, align 8
  call void %36(ptr noundef %cinfo, ptr noundef %37)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 33
  %38 = load i32, ptr %output_scanline, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i32 0, i32 27
  %39 = load i32, ptr %output_height, align 4
  %cmp51 = icmp ult i32 %38, %39
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load ptr, ptr %dest_mgr, align 8
  %buffer = getelementptr inbounds %struct.djpeg_dest_struct, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %buffer, align 8
  %42 = load ptr, ptr %dest_mgr, align 8
  %buffer_height = getelementptr inbounds %struct.djpeg_dest_struct, ptr %42, i32 0, i32 5
  %43 = load i32, ptr %buffer_height, align 8
  %call53 = call i32 @jpeg_read_scanlines(ptr noundef %cinfo, ptr noundef %41, i32 noundef %43)
  store i32 %call53, ptr %num_scanlines, align 4
  %44 = load ptr, ptr %dest_mgr, align 8
  %put_pixel_rows = getelementptr inbounds %struct.djpeg_dest_struct, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %put_pixel_rows, align 8
  %46 = load ptr, ptr %dest_mgr, align 8
  %47 = load i32, ptr %num_scanlines, align 4
  call void %45(ptr noundef %cinfo, ptr noundef %46, i32 noundef %47)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %48 = load ptr, ptr %dest_mgr, align 8
  %finish_output = getelementptr inbounds %struct.djpeg_dest_struct, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %finish_output, align 8
  %50 = load ptr, ptr %dest_mgr, align 8
  call void %49(ptr noundef %cinfo, ptr noundef %50)
  %call54 = call i32 @jpeg_finish_decompress(ptr noundef %cinfo)
  call void @jpeg_destroy_decompress(ptr noundef %cinfo)
  %51 = load ptr, ptr %input_file, align 8
  %52 = load ptr, ptr @__stdinp, align 8
  %cmp55 = icmp ne ptr %51, %52
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %while.end
  %53 = load ptr, ptr %input_file, align 8
  %call58 = call i32 @fclose(ptr noundef %53)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %while.end
  %54 = load ptr, ptr %output_file, align 8
  %55 = load ptr, ptr @__stdoutp, align 8
  %cmp60 = icmp ne ptr %54, %55
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  %56 = load ptr, ptr %output_file, align 8
  %call63 = call i32 @fclose(ptr noundef %56)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 8
  %57 = load i64, ptr %num_warnings, align 8
  %tobool = icmp ne i64 %57, 0
  %58 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 0
  call void @exit(i32 noundef %cond) #4
  unreachable
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %trace_level, align 4
  %cmp = icmp sge i32 %2, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %traceit, align 4
  store i32 0, ptr %lastch, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @jpeg_getc(ptr noundef %3)
  %shl = shl i32 %call, 8
  %conv1 = zext i32 %shl to i64
  store i64 %conv1, ptr %length, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %call2 = call i32 @jpeg_getc(ptr noundef %4)
  %conv3 = zext i32 %call2 to i64
  %5 = load i64, ptr %length, align 8
  %add = add nsw i64 %5, %conv3
  store i64 %add, ptr %length, align 8
  %6 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %6, 2
  store i64 %sub, ptr %length, align 8
  %7 = load i32, ptr %traceit, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load i64, ptr %length, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.47, i64 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end
  %10 = load i64, ptr %length, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, ptr %length, align 8
  %cmp5 = icmp sge i64 %dec, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %cinfo.addr, align 8
  %call7 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_djpeg_0(ptr noundef %11)
  store i32 %call7, ptr %ch, align 4
  %12 = load i32, ptr %traceit, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then9, label %if.end38

if.then9:                                         ; preds = %while.body
  %13 = load i32, ptr %ch, align 4
  %cmp10 = icmp eq i32 %13, 13
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.48)
  br label %if.end37

if.else:                                          ; preds = %if.then9
  %15 = load i32, ptr %ch, align 4
  %cmp14 = icmp eq i32 %15, 10
  br i1 %cmp14, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  %16 = load i32, ptr %lastch, align 4
  %cmp17 = icmp ne i32 %16, 13
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then16
  %17 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.48)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then16
  br label %if.end36

if.else22:                                        ; preds = %if.else
  %18 = load i32, ptr %ch, align 4
  %cmp23 = icmp eq i32 %18, 92
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %19 = load ptr, ptr @__stderrp, align 8
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.49)
  br label %if.end35

if.else27:                                        ; preds = %if.else22
  %20 = load i32, ptr %ch, align 4
  %call28 = call i32 @isprint(i32 noundef %20) #5
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else27
  %21 = load i32, ptr %ch, align 4
  %22 = load ptr, ptr @__stderrp, align 8
  %call31 = call i32 @putc(i32 noundef %21, ptr noundef %22)
  br label %if.end34

if.else32:                                        ; preds = %if.else27
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load i32, ptr %ch, align 4
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.50, i32 noundef %24)
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then30
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end21
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then12
  %25 = load i32, ptr %ch, align 4
  store i32 %25, ptr %lastch, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %26 = load i32, ptr %traceit, align 4
  %tobool39 = icmp ne i32 %26, 0
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %while.end
  %27 = load ptr, ptr @__stderrp, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.48)
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
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i32 0, i32 7
  store i32 0, ptr %trace_level, align 4
  store i32 1, ptr %argn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %argn, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load i32, ptr %argn, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %arg, align 8
  %7 = load ptr, ptr %arg, align 8
  %8 = load i8, ptr %7, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp ne i32 %conv, 45
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %argn, align 4
  %10 = load i32, ptr %last_file_arg_seen.addr, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store ptr null, ptr @outfilename, align 8
  br label %for.inc

if.end:                                           ; preds = %if.then
  br label %for.end

if.end6:                                          ; preds = %for.body
  %11 = load ptr, ptr %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %arg, align 8
  %12 = load ptr, ptr %arg, align 8
  %call = call i32 @keymatch(ptr noundef %12, ptr noundef @.str.51, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  store i32 0, ptr @requested_fmt, align 4
  br label %if.end254

if.else:                                          ; preds = %if.end6
  %13 = load ptr, ptr %arg, align 8
  %call8 = call i32 @keymatch(ptr noundef %13, ptr noundef @.str.52, i32 noundef 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %14 = load ptr, ptr %arg, align 8
  %call10 = call i32 @keymatch(ptr noundef %14, ptr noundef @.str.53, i32 noundef 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %arg, align 8
  %call13 = call i32 @keymatch(ptr noundef %15, ptr noundef @.str.54, i32 noundef 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %16 = load ptr, ptr %arg, align 8
  %call16 = call i32 @keymatch(ptr noundef %16, ptr noundef @.str.55, i32 noundef 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else30

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false, %if.else
  %17 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %argn, align 4
  %18 = load i32, ptr %argc.addr, align 4
  %cmp19 = icmp sge i32 %inc, %18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  call void @usage()
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then18
  %19 = load ptr, ptr %argv.addr, align 8
  %20 = load i32, ptr %argn, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %19, i64 %idxprom23
  %21 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %21, ptr noundef @.str.56, ptr noundef %val)
  %cmp26 = icmp ne i32 %call25, 1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  call void @usage()
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end22
  %22 = load i32, ptr %val, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 22
  store i32 %22, ptr %desired_number_of_colors, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 19
  store i32 1, ptr %quantize_colors, align 4
  br label %if.end253

if.else30:                                        ; preds = %lor.lhs.false15
  %25 = load ptr, ptr %arg, align 8
  %call31 = call i32 @keymatch(ptr noundef %25, ptr noundef @.str.57, i32 noundef 2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.else62

if.then33:                                        ; preds = %if.else30
  %26 = load i32, ptr %argn, align 4
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, ptr %argn, align 4
  %27 = load i32, ptr %argc.addr, align 4
  %cmp35 = icmp sge i32 %inc34, %27
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  call void @usage()
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then33
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr %argn, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %28, i64 %idxprom39
  %30 = load ptr, ptr %arrayidx40, align 8
  %call41 = call i32 @keymatch(ptr noundef %30, ptr noundef @.str.58, i32 noundef 1)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end38
  %31 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 16
  store i32 0, ptr %dct_method, align 8
  br label %if.end61

if.else44:                                        ; preds = %if.end38
  %32 = load ptr, ptr %argv.addr, align 8
  %33 = load i32, ptr %argn, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %32, i64 %idxprom45
  %34 = load ptr, ptr %arrayidx46, align 8
  %call47 = call i32 @keymatch(ptr noundef %34, ptr noundef @.str.59, i32 noundef 2)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else44
  %35 = load ptr, ptr %cinfo.addr, align 8
  %dct_method50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 16
  store i32 1, ptr %dct_method50, align 8
  br label %if.end60

if.else51:                                        ; preds = %if.else44
  %36 = load ptr, ptr %argv.addr, align 8
  %37 = load i32, ptr %argn, align 4
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %36, i64 %idxprom52
  %38 = load ptr, ptr %arrayidx53, align 8
  %call54 = call i32 @keymatch(ptr noundef %38, ptr noundef @.str.60, i32 noundef 2)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else51
  %39 = load ptr, ptr %cinfo.addr, align 8
  %dct_method57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 16
  store i32 2, ptr %dct_method57, align 8
  br label %if.end59

if.else58:                                        ; preds = %if.else51
  call void @usage()
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then56
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then49
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then43
  br label %if.end252

if.else62:                                        ; preds = %if.else30
  %40 = load ptr, ptr %arg, align 8
  %call63 = call i32 @keymatch(ptr noundef %40, ptr noundef @.str.61, i32 noundef 2)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else94

if.then65:                                        ; preds = %if.else62
  %41 = load i32, ptr %argn, align 4
  %inc66 = add nsw i32 %41, 1
  store i32 %inc66, ptr %argn, align 4
  %42 = load i32, ptr %argc.addr, align 4
  %cmp67 = icmp sge i32 %inc66, %42
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then65
  call void @usage()
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.then65
  %43 = load ptr, ptr %argv.addr, align 8
  %44 = load i32, ptr %argn, align 4
  %idxprom71 = sext i32 %44 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %43, i64 %idxprom71
  %45 = load ptr, ptr %arrayidx72, align 8
  %call73 = call i32 @keymatch(ptr noundef %45, ptr noundef @.str.62, i32 noundef 2)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.end70
  %46 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 20
  store i32 2, ptr %dither_mode, align 8
  br label %if.end93

if.else76:                                        ; preds = %if.end70
  %47 = load ptr, ptr %argv.addr, align 8
  %48 = load i32, ptr %argn, align 4
  %idxprom77 = sext i32 %48 to i64
  %arrayidx78 = getelementptr inbounds ptr, ptr %47, i64 %idxprom77
  %49 = load ptr, ptr %arrayidx78, align 8
  %call79 = call i32 @keymatch(ptr noundef %49, ptr noundef @.str.63, i32 noundef 2)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else76
  %50 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode82 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 20
  store i32 0, ptr %dither_mode82, align 8
  br label %if.end92

if.else83:                                        ; preds = %if.else76
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr %argn, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %51, i64 %idxprom84
  %53 = load ptr, ptr %arrayidx85, align 8
  %call86 = call i32 @keymatch(ptr noundef %53, ptr noundef @.str.64, i32 noundef 2)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else83
  %54 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 20
  store i32 1, ptr %dither_mode89, align 8
  br label %if.end91

if.else90:                                        ; preds = %if.else83
  call void @usage()
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then88
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then81
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then75
  br label %if.end251

if.else94:                                        ; preds = %if.else62
  %55 = load ptr, ptr %arg, align 8
  %call95 = call i32 @keymatch(ptr noundef %55, ptr noundef @.str.65, i32 noundef 1)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then100, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.else94
  %56 = load ptr, ptr %arg, align 8
  %call98 = call i32 @keymatch(ptr noundef %56, ptr noundef @.str.66, i32 noundef 1)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.else108

if.then100:                                       ; preds = %lor.lhs.false97, %if.else94
  %57 = load i32, ptr @parse_switches.printed_version, align 4
  %tobool101 = icmp ne i32 %57, 0
  br i1 %tobool101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.then100
  %58 = load ptr, ptr @__stderrp, align 8
  %call103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.67, ptr noundef @.str.68, ptr noundef @.str.69)
  store i32 1, ptr @parse_switches.printed_version, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then100
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err105 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err105, align 8
  %trace_level106 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 7
  %61 = load i32, ptr %trace_level106, align 4
  %inc107 = add nsw i32 %61, 1
  store i32 %inc107, ptr %trace_level106, align 4
  br label %if.end250

if.else108:                                       ; preds = %lor.lhs.false97
  %62 = load ptr, ptr %arg, align 8
  %call109 = call i32 @keymatch(ptr noundef %62, ptr noundef @.str.59, i32 noundef 1)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.else119

if.then111:                                       ; preds = %if.else108
  %63 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 21
  store i32 0, ptr %two_pass_quantize, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode112 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 20
  store i32 1, ptr %dither_mode112, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors113 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 19
  %66 = load i32, ptr %quantize_colors113, align 4
  %tobool114 = icmp ne i32 %66, 0
  br i1 %tobool114, label %if.end117, label %if.then115

if.then115:                                       ; preds = %if.then111
  %67 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 22
  store i32 216, ptr %desired_number_of_colors116, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.then111
  %68 = load ptr, ptr %cinfo.addr, align 8
  %dct_method118 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 16
  store i32 1, ptr %dct_method118, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 17
  store i32 0, ptr %do_fancy_upsampling, align 4
  br label %if.end249

if.else119:                                       ; preds = %if.else108
  %70 = load ptr, ptr %arg, align 8
  %call120 = call i32 @keymatch(ptr noundef %70, ptr noundef @.str.70, i32 noundef 1)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then122, label %if.else123

if.then122:                                       ; preds = %if.else119
  store i32 1, ptr @requested_fmt, align 4
  br label %if.end248

if.else123:                                       ; preds = %if.else119
  %71 = load ptr, ptr %arg, align 8
  %call124 = call i32 @keymatch(ptr noundef %71, ptr noundef @.str.71, i32 noundef 2)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then129, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.else123
  %72 = load ptr, ptr %arg, align 8
  %call127 = call i32 @keymatch(ptr noundef %72, ptr noundef @.str.72, i32 noundef 2)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.else130

if.then129:                                       ; preds = %lor.lhs.false126, %if.else123
  %73 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 10
  store i32 1, ptr %out_color_space, align 8
  br label %if.end247

if.else130:                                       ; preds = %lor.lhs.false126
  %74 = load ptr, ptr %arg, align 8
  %call131 = call i32 @keymatch(ptr noundef %74, ptr noundef @.str.73, i32 noundef 3)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.else154

if.then133:                                       ; preds = %if.else130
  %75 = load i32, ptr %argn, align 4
  %inc134 = add nsw i32 %75, 1
  store i32 %inc134, ptr %argn, align 4
  %76 = load i32, ptr %argc.addr, align 4
  %cmp135 = icmp sge i32 %inc134, %76
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then133
  call void @usage()
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.then133
  %77 = load i32, ptr %for_real.addr, align 4
  %tobool139 = icmp ne i32 %77, 0
  br i1 %tobool139, label %if.then140, label %if.end153

if.then140:                                       ; preds = %if.end138
  %78 = load ptr, ptr %argv.addr, align 8
  %79 = load i32, ptr %argn, align 4
  %idxprom141 = sext i32 %79 to i64
  %arrayidx142 = getelementptr inbounds ptr, ptr %78, i64 %idxprom141
  %80 = load ptr, ptr %arrayidx142, align 8
  %call143 = call ptr @"\01_fopen"(ptr noundef %80, ptr noundef @.str.2)
  store ptr %call143, ptr %mapfile, align 8
  %cmp144 = icmp eq ptr %call143, null
  br i1 %cmp144, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.then140
  %81 = load ptr, ptr @__stderrp, align 8
  %82 = load ptr, ptr @progname, align 8
  %83 = load ptr, ptr %argv.addr, align 8
  %84 = load i32, ptr %argn, align 4
  %idxprom147 = sext i32 %84 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %83, i64 %idxprom147
  %85 = load ptr, ptr %arrayidx148, align 8
  %call149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.3, ptr noundef %82, ptr noundef %85)
  call void @exit(i32 noundef 1) #4
  unreachable

if.end150:                                        ; preds = %if.then140
  %86 = load ptr, ptr %cinfo.addr, align 8
  %87 = load ptr, ptr %mapfile, align 8
  call void @read_color_map(ptr noundef %86, ptr noundef %87)
  %88 = load ptr, ptr %mapfile, align 8
  %call151 = call i32 @fclose(ptr noundef %88)
  %89 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 19
  store i32 1, ptr %quantize_colors152, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.end150, %if.end138
  br label %if.end246

if.else154:                                       ; preds = %if.else130
  %90 = load ptr, ptr %arg, align 8
  %call155 = call i32 @keymatch(ptr noundef %90, ptr noundef @.str.74, i32 noundef 3)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then157, label %if.else180

if.then157:                                       ; preds = %if.else154
  store i8 120, ptr %ch, align 1
  %91 = load i32, ptr %argn, align 4
  %inc158 = add nsw i32 %91, 1
  store i32 %inc158, ptr %argn, align 4
  %92 = load i32, ptr %argc.addr, align 4
  %cmp159 = icmp sge i32 %inc158, %92
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then157
  call void @usage()
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.then157
  %93 = load ptr, ptr %argv.addr, align 8
  %94 = load i32, ptr %argn, align 4
  %idxprom163 = sext i32 %94 to i64
  %arrayidx164 = getelementptr inbounds ptr, ptr %93, i64 %idxprom163
  %95 = load ptr, ptr %arrayidx164, align 8
  %call165 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %95, ptr noundef @.str.75, ptr noundef %lval, ptr noundef %ch)
  %cmp166 = icmp slt i32 %call165, 1
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end162
  call void @usage()
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end162
  %96 = load i8, ptr %ch, align 1
  %conv170 = sext i8 %96 to i32
  %cmp171 = icmp eq i32 %conv170, 109
  br i1 %cmp171, label %if.then177, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %if.end169
  %97 = load i8, ptr %ch, align 1
  %conv174 = sext i8 %97 to i32
  %cmp175 = icmp eq i32 %conv174, 77
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %lor.lhs.false173, %if.end169
  %98 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %98, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %lor.lhs.false173
  %99 = load i64, ptr %lval, align 8
  %mul179 = mul nsw i64 %99, 1000
  %100 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %101, i32 0, i32 11
  store i64 %mul179, ptr %max_memory_to_use, align 8
  br label %if.end245

if.else180:                                       ; preds = %if.else154
  %102 = load ptr, ptr %arg, align 8
  %call181 = call i32 @keymatch(ptr noundef %102, ptr noundef @.str.76, i32 noundef 3)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.else180
  %103 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling184 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %103, i32 0, i32 17
  store i32 0, ptr %do_fancy_upsampling184, align 4
  br label %if.end244

if.else185:                                       ; preds = %if.else180
  %104 = load ptr, ptr %arg, align 8
  %call186 = call i32 @keymatch(ptr noundef %104, ptr noundef @.str.77, i32 noundef 3)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then188, label %if.else190

if.then188:                                       ; preds = %if.else185
  %105 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize189 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 21
  store i32 0, ptr %two_pass_quantize189, align 4
  br label %if.end243

if.else190:                                       ; preds = %if.else185
  %106 = load ptr, ptr %arg, align 8
  %call191 = call i32 @keymatch(ptr noundef %106, ptr noundef @.str.78, i32 noundef 3)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then193, label %if.else194

if.then193:                                       ; preds = %if.else190
  store i32 2, ptr @requested_fmt, align 4
  br label %if.end242

if.else194:                                       ; preds = %if.else190
  %107 = load ptr, ptr %arg, align 8
  %call195 = call i32 @keymatch(ptr noundef %107, ptr noundef @.str.79, i32 noundef 4)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then197, label %if.else205

if.then197:                                       ; preds = %if.else194
  %108 = load i32, ptr %argn, align 4
  %inc198 = add nsw i32 %108, 1
  store i32 %inc198, ptr %argn, align 4
  %109 = load i32, ptr %argc.addr, align 4
  %cmp199 = icmp sge i32 %inc198, %109
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.then197
  call void @usage()
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.then197
  %110 = load ptr, ptr %argv.addr, align 8
  %111 = load i32, ptr %argn, align 4
  %idxprom203 = sext i32 %111 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %110, i64 %idxprom203
  %112 = load ptr, ptr %arrayidx204, align 8
  store ptr %112, ptr @outfilename, align 8
  br label %if.end241

if.else205:                                       ; preds = %if.else194
  %113 = load ptr, ptr %arg, align 8
  %call206 = call i32 @keymatch(ptr noundef %113, ptr noundef @.str.80, i32 noundef 1)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.then211, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %if.else205
  %114 = load ptr, ptr %arg, align 8
  %call209 = call i32 @keymatch(ptr noundef %114, ptr noundef @.str.81, i32 noundef 1)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then211, label %if.else212

if.then211:                                       ; preds = %lor.lhs.false208, %if.else205
  store i32 3, ptr @requested_fmt, align 4
  br label %if.end240

if.else212:                                       ; preds = %lor.lhs.false208
  %115 = load ptr, ptr %arg, align 8
  %call213 = call i32 @keymatch(ptr noundef %115, ptr noundef @.str.82, i32 noundef 1)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.else216

if.then215:                                       ; preds = %if.else212
  store i32 4, ptr @requested_fmt, align 4
  br label %if.end239

if.else216:                                       ; preds = %if.else212
  %116 = load ptr, ptr %arg, align 8
  %call217 = call i32 @keymatch(ptr noundef %116, ptr noundef @.str.83, i32 noundef 1)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then219, label %if.else232

if.then219:                                       ; preds = %if.else216
  %117 = load i32, ptr %argn, align 4
  %inc220 = add nsw i32 %117, 1
  store i32 %inc220, ptr %argn, align 4
  %118 = load i32, ptr %argc.addr, align 4
  %cmp221 = icmp sge i32 %inc220, %118
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.then219
  call void @usage()
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.then219
  %119 = load ptr, ptr %argv.addr, align 8
  %120 = load i32, ptr %argn, align 4
  %idxprom225 = sext i32 %120 to i64
  %arrayidx226 = getelementptr inbounds ptr, ptr %119, i64 %idxprom225
  %121 = load ptr, ptr %arrayidx226, align 8
  %122 = load ptr, ptr %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 11
  %123 = load ptr, ptr %cinfo.addr, align 8
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 12
  %call227 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %121, ptr noundef @.str.84, ptr noundef %scale_num, ptr noundef %scale_denom)
  %cmp228 = icmp ne i32 %call227, 2
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %if.end224
  call void @usage()
  br label %if.end231

if.end231:                                        ; preds = %if.then230, %if.end224
  br label %if.end238

if.else232:                                       ; preds = %if.else216
  %124 = load ptr, ptr %arg, align 8
  %call233 = call i32 @keymatch(ptr noundef %124, ptr noundef @.str.85, i32 noundef 1)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then235, label %if.else236

if.then235:                                       ; preds = %if.else232
  store i32 5, ptr @requested_fmt, align 4
  br label %if.end237

if.else236:                                       ; preds = %if.else232
  call void @usage()
  br label %if.end237

if.end237:                                        ; preds = %if.else236, %if.then235
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.end231
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.then215
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.then211
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.end202
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then193
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.then188
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.then183
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.end178
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.end153
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.then129
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then122
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end117
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.end104
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end93
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.end61
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.end29
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then7
  br label %for.inc

for.inc:                                          ; preds = %if.end254, %if.then5
  %125 = load i32, ptr %argn, align 4
  %inc255 = add nsw i32 %125, 1
  store i32 %inc255, ptr %argn, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %if.end, %for.cond
  %126 = load i32, ptr %argn, align 4
  ret i32 %126
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.86, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.87)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.88)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.89)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.90)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.91)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.92)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.93, ptr noundef @.str.94)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.95, ptr noundef @.str.94)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.96, ptr noundef @.str.94)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.97, ptr noundef @.str.98)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.99, ptr noundef @.str.94)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.100)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.101, ptr noundef @.str.98)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.102, ptr noundef @.str.94)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.103, ptr noundef @.str.94)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.104)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.105)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.106)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.107)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.108)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.109)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.110)
  %24 = load ptr, ptr @__stderrp, align 8
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.111)
  %25 = load ptr, ptr @__stderrp, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.112)
  call void @exit(i32 noundef 1) #4
  unreachable
}

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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %5(ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %bytes_in_buffer4, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer4, align 8
  %15 = load ptr, ptr %datasrc, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %17 = load i8, ptr %16, align 1
  %conv = zext i8 %17 to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isprint(i32 noundef) #3

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

declare void @read_color_map(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_djpeg_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %5(ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %bytes_in_buffer4, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer4, align 8
  %15 = load ptr, ptr %datasrc, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %17 = load i8, ptr %16, align 1
  %conv = zext i8 %17 to i32
  ret i32 %conv
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
