; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/cjpeg.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/cjpeg.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@progname = internal global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 8
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
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
@is_targa = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.79 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1
@.str.81 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"  -baseline      Force baseline output\0A\00", align 1
@.str.97 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1
@.str.100 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %cinfo = alloca %struct.jpeg_compress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %file_index = alloca i32, align 4
  %src_mgr = alloca ptr, align 8
  %input_file = alloca ptr, align 8
  %output_file = alloca ptr, align 8
  %num_scanlines = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
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
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 0
  store ptr %call, ptr %err, align 8
  call void @jpeg_CreateCompress(ptr noundef %cinfo, i32 noundef 61, i64 noundef 496)
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 11
  store ptr @cdjpeg_message_table, ptr %addon_message_table, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 12
  store i32 1000, ptr %first_addon_message, align 8
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 13
  store i32 1043, ptr %last_addon_message, align 4
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  call void @jpeg_set_defaults(ptr noundef %cinfo)
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
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_0()
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
  call void @exit(i32 noundef 1) #3
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
  call void @exit(i32 noundef 1) #3
  unreachable

if.end32:                                         ; preds = %if.then26
  br label %if.end35

if.else33:                                        ; preds = %if.end23
  %call34 = call ptr @write_stdout()
  store ptr %call34, ptr %output_file, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.end32
  %26 = load ptr, ptr %input_file, align 8
  %call36 = call ptr @select_file_type(ptr noundef %cinfo, ptr noundef %26)
  store ptr %call36, ptr %src_mgr, align 8
  %27 = load ptr, ptr %input_file, align 8
  %28 = load ptr, ptr %src_mgr, align 8
  %input_file37 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %28, i32 0, i32 3
  store ptr %27, ptr %input_file37, align 8
  %29 = load ptr, ptr %src_mgr, align 8
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %start_input, align 8
  %31 = load ptr, ptr %src_mgr, align 8
  call void %30(ptr noundef %cinfo, ptr noundef %31)
  call void @jpeg_default_colorspace(ptr noundef %cinfo)
  %32 = load i32, ptr %argc.addr, align 4
  %33 = load ptr, ptr %argv.addr, align 8
  %call38 = call i32 @parse_switches(ptr noundef %cinfo, i32 noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 1)
  store i32 %call38, ptr %file_index, align 4
  %34 = load ptr, ptr %output_file, align 8
  call void @jpeg_stdio_dest(ptr noundef %cinfo, ptr noundef %34)
  call void @jpeg_start_compress(ptr noundef %cinfo, i32 noundef 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end35
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 36
  %35 = load i32, ptr %next_scanline, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i32 0, i32 7
  %36 = load i32, ptr %image_height, align 4
  %cmp39 = icmp ult i32 %35, %36
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load ptr, ptr %src_mgr, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %get_pixel_rows, align 8
  %39 = load ptr, ptr %src_mgr, align 8
  %call41 = call i32 %38(ptr noundef %cinfo, ptr noundef %39)
  store i32 %call41, ptr %num_scanlines, align 4
  %40 = load ptr, ptr %src_mgr, align 8
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %buffer, align 8
  %42 = load i32, ptr %num_scanlines, align 4
  %call42 = call i32 @jpeg_write_scanlines(ptr noundef %cinfo, ptr noundef %41, i32 noundef %42)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %43 = load ptr, ptr %src_mgr, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %finish_input, align 8
  %45 = load ptr, ptr %src_mgr, align 8
  call void %44(ptr noundef %cinfo, ptr noundef %45)
  call void @jpeg_finish_compress(ptr noundef %cinfo)
  call void @jpeg_destroy_compress(ptr noundef %cinfo)
  %46 = load ptr, ptr %input_file, align 8
  %47 = load ptr, ptr @__stdinp, align 8
  %cmp43 = icmp ne ptr %46, %47
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %while.end
  %48 = load ptr, ptr %input_file, align 8
  %call46 = call i32 @fclose(ptr noundef %48)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %while.end
  %49 = load ptr, ptr %output_file, align 8
  %50 = load ptr, ptr @__stdoutp, align 8
  %cmp48 = icmp ne ptr %49, %50
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  %51 = load ptr, ptr %output_file, align 8
  %call51 = call i32 @fclose(ptr noundef %51)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i32 0, i32 8
  %52 = load i64, ptr %num_warnings, align 8
  %tobool = icmp ne i64 %52, 0
  %53 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 0
  call void @exit(i32 noundef %cond) #3
  unreachable
}

declare ptr @jpeg_std_error(ptr noundef) #1

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) #1

declare void @jpeg_set_defaults(ptr noundef) #1

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
  %quality = alloca i32, align 4
  %q_scale_factor = alloca i32, align 4
  %force_baseline = alloca i32, align 4
  %simple_progressive = alloca i32, align 4
  %qtablefile = alloca ptr, align 8
  %qslotsarg = alloca ptr, align 8
  %samplearg = alloca ptr, align 8
  %scansarg = alloca ptr, align 8
  %lval = alloca i64, align 8
  %ch = alloca i8, align 1
  %lval154 = alloca i64, align 8
  %ch155 = alloca i8, align 1
  %val = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 %last_file_arg_seen, ptr %last_file_arg_seen.addr, align 4
  store i32 %for_real, ptr %for_real.addr, align 4
  store ptr null, ptr %qtablefile, align 8
  store ptr null, ptr %qslotsarg, align 8
  store ptr null, ptr %samplearg, align 8
  store ptr null, ptr %scansarg, align 8
  store i32 75, ptr %quality, align 4
  store i32 100, ptr %q_scale_factor, align 4
  store i32 0, ptr %force_baseline, align 4
  store i32 0, ptr %simple_progressive, align 4
  store i32 0, ptr @is_targa, align 4
  store ptr null, ptr @outfilename, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 0
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
  %call = call i32 @keymatch(ptr noundef %12, ptr noundef @.str.47, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr @progname, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.48, ptr noundef %14)
  call void @exit(i32 noundef 1) #3
  unreachable

if.else:                                          ; preds = %if.end6
  %15 = load ptr, ptr %arg, align 8
  %call9 = call i32 @keymatch(ptr noundef %15, ptr noundef @.str.49, i32 noundef 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  store i32 1, ptr %force_baseline, align 4
  br label %if.end253

if.else12:                                        ; preds = %if.else
  %16 = load ptr, ptr %arg, align 8
  %call13 = call i32 @keymatch(ptr noundef %16, ptr noundef @.str.50, i32 noundef 2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.else43

if.then15:                                        ; preds = %if.else12
  %17 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %argn, align 4
  %18 = load i32, ptr %argc.addr, align 4
  %cmp16 = icmp sge i32 %inc, %18
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_1()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15
  %19 = load ptr, ptr %argv.addr, align 8
  %20 = load i32, ptr %argn, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %19, i64 %idxprom20
  %21 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @keymatch(ptr noundef %21, ptr noundef @.str.51, i32 noundef 1)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.end19
  %22 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 28
  store i32 0, ptr %dct_method, align 4
  br label %if.end42

if.else25:                                        ; preds = %if.end19
  %23 = load ptr, ptr %argv.addr, align 8
  %24 = load i32, ptr %argn, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %23, i64 %idxprom26
  %25 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i32 @keymatch(ptr noundef %25, ptr noundef @.str.52, i32 noundef 2)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else25
  %26 = load ptr, ptr %cinfo.addr, align 8
  %dct_method31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 28
  store i32 1, ptr %dct_method31, align 4
  br label %if.end41

if.else32:                                        ; preds = %if.else25
  %27 = load ptr, ptr %argv.addr, align 8
  %28 = load i32, ptr %argn, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %27, i64 %idxprom33
  %29 = load ptr, ptr %arrayidx34, align 8
  %call35 = call i32 @keymatch(ptr noundef %29, ptr noundef @.str.53, i32 noundef 2)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else32
  %30 = load ptr, ptr %cinfo.addr, align 8
  %dct_method38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 28
  store i32 2, ptr %dct_method38, align 4
  br label %if.end40

if.else39:                                        ; preds = %if.else32
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_2()
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then30
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then24
  br label %if.end252

if.else43:                                        ; preds = %if.else12
  %31 = load ptr, ptr %arg, align 8
  %call44 = call i32 @keymatch(ptr noundef %31, ptr noundef @.str.54, i32 noundef 1)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else43
  %32 = load ptr, ptr %arg, align 8
  %call46 = call i32 @keymatch(ptr noundef %32, ptr noundef @.str.55, i32 noundef 1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.else56

if.then48:                                        ; preds = %lor.lhs.false, %if.else43
  %33 = load i32, ptr @parse_switches.printed_version, align 4
  %tobool49 = icmp ne i32 %33, 0
  br i1 %tobool49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.then48
  %34 = load ptr, ptr @__stderrp, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.56, ptr noundef @.str.57, ptr noundef @.str.58)
  store i32 1, ptr @parse_switches.printed_version, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then48
  %35 = load ptr, ptr %cinfo.addr, align 8
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %err53, align 8
  %trace_level54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i32 0, i32 7
  %37 = load i32, ptr %trace_level54, align 4
  %inc55 = add nsw i32 %37, 1
  store i32 %inc55, ptr %trace_level54, align 4
  br label %if.end251

if.else56:                                        ; preds = %lor.lhs.false
  %38 = load ptr, ptr %arg, align 8
  %call57 = call i32 @keymatch(ptr noundef %38, ptr noundef @.str.59, i32 noundef 2)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.else56
  %39 = load ptr, ptr %arg, align 8
  %call60 = call i32 @keymatch(ptr noundef %39, ptr noundef @.str.60, i32 noundef 2)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %lor.lhs.false59, %if.else56
  %40 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %40, i32 noundef 1)
  br label %if.end250

if.else63:                                        ; preds = %lor.lhs.false59
  %41 = load ptr, ptr %arg, align 8
  %call64 = call i32 @keymatch(ptr noundef %41, ptr noundef @.str.61, i32 noundef 3)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.else89

if.then66:                                        ; preds = %if.else63
  store i8 120, ptr %ch, align 1
  %42 = load i32, ptr %argn, align 4
  %inc67 = add nsw i32 %42, 1
  store i32 %inc67, ptr %argn, align 4
  %43 = load i32, ptr %argc.addr, align 4
  %cmp68 = icmp sge i32 %inc67, %43
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then66
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_3()
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.then66
  %44 = load ptr, ptr %argv.addr, align 8
  %45 = load i32, ptr %argn, align 4
  %idxprom72 = sext i32 %45 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %44, i64 %idxprom72
  %46 = load ptr, ptr %arrayidx73, align 8
  %call74 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %46, ptr noundef @.str.62, ptr noundef %lval, ptr noundef %ch)
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end71
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_4()
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end71
  %47 = load i8, ptr %ch, align 1
  %conv79 = sext i8 %47 to i32
  %cmp80 = icmp eq i32 %conv79, 109
  br i1 %cmp80, label %if.then86, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end78
  %48 = load i8, ptr %ch, align 1
  %conv83 = sext i8 %48 to i32
  %cmp84 = icmp eq i32 %conv83, 77
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false82, %if.end78
  %49 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %49, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %lor.lhs.false82
  %50 = load i64, ptr %lval, align 8
  %mul88 = mul nsw i64 %50, 1000
  %51 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %52, i32 0, i32 11
  store i64 %mul88, ptr %max_memory_to_use, align 8
  br label %if.end249

if.else89:                                        ; preds = %if.else63
  %53 = load ptr, ptr %arg, align 8
  %call90 = call i32 @keymatch(ptr noundef %53, ptr noundef @.str.63, i32 noundef 1)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then95, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.else89
  %54 = load ptr, ptr %arg, align 8
  %call93 = call i32 @keymatch(ptr noundef %54, ptr noundef @.str.64, i32 noundef 1)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.else96

if.then95:                                        ; preds = %lor.lhs.false92, %if.else89
  %55 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %if.end248

if.else96:                                        ; preds = %lor.lhs.false92
  %56 = load ptr, ptr %arg, align 8
  %call97 = call i32 @keymatch(ptr noundef %56, ptr noundef @.str.65, i32 noundef 4)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.else107

if.then99:                                        ; preds = %if.else96
  %57 = load i32, ptr %argn, align 4
  %inc100 = add nsw i32 %57, 1
  store i32 %inc100, ptr %argn, align 4
  %58 = load i32, ptr %argc.addr, align 4
  %cmp101 = icmp sge i32 %inc100, %58
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.then99
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_5()
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.then99
  %59 = load ptr, ptr %argv.addr, align 8
  %60 = load i32, ptr %argn, align 4
  %idxprom105 = sext i32 %60 to i64
  %arrayidx106 = getelementptr inbounds ptr, ptr %59, i64 %idxprom105
  %61 = load ptr, ptr %arrayidx106, align 8
  store ptr %61, ptr @outfilename, align 8
  br label %if.end247

if.else107:                                       ; preds = %if.else96
  %62 = load ptr, ptr %arg, align 8
  %call108 = call i32 @keymatch(ptr noundef %62, ptr noundef @.str.66, i32 noundef 1)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.else107
  store i32 1, ptr %simple_progressive, align 4
  br label %if.end246

if.else111:                                       ; preds = %if.else107
  %63 = load ptr, ptr %arg, align 8
  %call112 = call i32 @keymatch(ptr noundef %63, ptr noundef @.str.67, i32 noundef 1)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then114, label %if.else128

if.then114:                                       ; preds = %if.else111
  %64 = load i32, ptr %argn, align 4
  %inc115 = add nsw i32 %64, 1
  store i32 %inc115, ptr %argn, align 4
  %65 = load i32, ptr %argc.addr, align 4
  %cmp116 = icmp sge i32 %inc115, %65
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then114
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_6()
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.then114
  %66 = load ptr, ptr %argv.addr, align 8
  %67 = load i32, ptr %argn, align 4
  %idxprom120 = sext i32 %67 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %66, i64 %idxprom120
  %68 = load ptr, ptr %arrayidx121, align 8
  %call122 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %68, ptr noundef @.str.68, ptr noundef %quality)
  %cmp123 = icmp ne i32 %call122, 1
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end119
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_7()
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end119
  %69 = load i32, ptr %quality, align 4
  %call127 = call i32 @jpeg_quality_scaling(i32 noundef %69)
  store i32 %call127, ptr %q_scale_factor, align 4
  br label %if.end245

if.else128:                                       ; preds = %if.else111
  %70 = load ptr, ptr %arg, align 8
  %call129 = call i32 @keymatch(ptr noundef %70, ptr noundef @.str.69, i32 noundef 2)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.else139

if.then131:                                       ; preds = %if.else128
  %71 = load i32, ptr %argn, align 4
  %inc132 = add nsw i32 %71, 1
  store i32 %inc132, ptr %argn, align 4
  %72 = load i32, ptr %argc.addr, align 4
  %cmp133 = icmp sge i32 %inc132, %72
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then131
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_8()
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.then131
  %73 = load ptr, ptr %argv.addr, align 8
  %74 = load i32, ptr %argn, align 4
  %idxprom137 = sext i32 %74 to i64
  %arrayidx138 = getelementptr inbounds ptr, ptr %73, i64 %idxprom137
  %75 = load ptr, ptr %arrayidx138, align 8
  store ptr %75, ptr %qslotsarg, align 8
  br label %if.end244

if.else139:                                       ; preds = %if.else128
  %76 = load ptr, ptr %arg, align 8
  %call140 = call i32 @keymatch(ptr noundef %76, ptr noundef @.str.70, i32 noundef 2)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then142, label %if.else150

if.then142:                                       ; preds = %if.else139
  %77 = load i32, ptr %argn, align 4
  %inc143 = add nsw i32 %77, 1
  store i32 %inc143, ptr %argn, align 4
  %78 = load i32, ptr %argc.addr, align 4
  %cmp144 = icmp sge i32 %inc143, %78
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.then142
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_9()
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.then142
  %79 = load ptr, ptr %argv.addr, align 8
  %80 = load i32, ptr %argn, align 4
  %idxprom148 = sext i32 %80 to i64
  %arrayidx149 = getelementptr inbounds ptr, ptr %79, i64 %idxprom148
  %81 = load ptr, ptr %arrayidx149, align 8
  store ptr %81, ptr %qtablefile, align 8
  br label %if.end243

if.else150:                                       ; preds = %if.else139
  %82 = load ptr, ptr %arg, align 8
  %call151 = call i32 @keymatch(ptr noundef %82, ptr noundef @.str.71, i32 noundef 1)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then153, label %if.else188

if.then153:                                       ; preds = %if.else150
  store i8 120, ptr %ch155, align 1
  %83 = load i32, ptr %argn, align 4
  %inc156 = add nsw i32 %83, 1
  store i32 %inc156, ptr %argn, align 4
  %84 = load i32, ptr %argc.addr, align 4
  %cmp157 = icmp sge i32 %inc156, %84
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.then153
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_10()
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.then153
  %85 = load ptr, ptr %argv.addr, align 8
  %86 = load i32, ptr %argn, align 4
  %idxprom161 = sext i32 %86 to i64
  %arrayidx162 = getelementptr inbounds ptr, ptr %85, i64 %idxprom161
  %87 = load ptr, ptr %arrayidx162, align 8
  %call163 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %87, ptr noundef @.str.62, ptr noundef %lval154, ptr noundef %ch155)
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.end160
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_11()
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end160
  %88 = load i64, ptr %lval154, align 8
  %cmp168 = icmp slt i64 %88, 0
  br i1 %cmp168, label %if.then173, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %if.end167
  %89 = load i64, ptr %lval154, align 8
  %cmp171 = icmp sgt i64 %89, 65535
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %lor.lhs.false170, %if.end167
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_12()
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %lor.lhs.false170
  %90 = load i8, ptr %ch155, align 1
  %conv175 = sext i8 %90 to i32
  %cmp176 = icmp eq i32 %conv175, 98
  br i1 %cmp176, label %if.then182, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.end174
  %91 = load i8, ptr %ch155, align 1
  %conv179 = sext i8 %91 to i32
  %cmp180 = icmp eq i32 %conv179, 66
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %lor.lhs.false178, %if.end174
  %92 = load i64, ptr %lval154, align 8
  %conv183 = trunc i64 %92 to i32
  %93 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %93, i32 0, i32 29
  store i32 %conv183, ptr %restart_interval, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  br label %if.end187

if.else184:                                       ; preds = %lor.lhs.false178
  %95 = load i64, ptr %lval154, align 8
  %conv185 = trunc i64 %95 to i32
  %96 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows186 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i32 0, i32 30
  store i32 %conv185, ptr %restart_in_rows186, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.else184, %if.then182
  br label %if.end242

if.else188:                                       ; preds = %if.else150
  %97 = load ptr, ptr %arg, align 8
  %call189 = call i32 @keymatch(ptr noundef %97, ptr noundef @.str.72, i32 noundef 2)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then191, label %if.else199

if.then191:                                       ; preds = %if.else188
  %98 = load i32, ptr %argn, align 4
  %inc192 = add nsw i32 %98, 1
  store i32 %inc192, ptr %argn, align 4
  %99 = load i32, ptr %argc.addr, align 4
  %cmp193 = icmp sge i32 %inc192, %99
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.then191
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_13()
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %if.then191
  %100 = load ptr, ptr %argv.addr, align 8
  %101 = load i32, ptr %argn, align 4
  %idxprom197 = sext i32 %101 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %100, i64 %idxprom197
  %102 = load ptr, ptr %arrayidx198, align 8
  store ptr %102, ptr %samplearg, align 8
  br label %if.end241

if.else199:                                       ; preds = %if.else188
  %103 = load ptr, ptr %arg, align 8
  %call200 = call i32 @keymatch(ptr noundef %103, ptr noundef @.str.73, i32 noundef 2)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then202, label %if.else210

if.then202:                                       ; preds = %if.else199
  %104 = load i32, ptr %argn, align 4
  %inc203 = add nsw i32 %104, 1
  store i32 %inc203, ptr %argn, align 4
  %105 = load i32, ptr %argc.addr, align 4
  %cmp204 = icmp sge i32 %inc203, %105
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %if.then202
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_14()
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.then202
  %106 = load ptr, ptr %argv.addr, align 8
  %107 = load i32, ptr %argn, align 4
  %idxprom208 = sext i32 %107 to i64
  %arrayidx209 = getelementptr inbounds ptr, ptr %106, i64 %idxprom208
  %108 = load ptr, ptr %arrayidx209, align 8
  store ptr %108, ptr %scansarg, align 8
  br label %if.end240

if.else210:                                       ; preds = %if.else199
  %109 = load ptr, ptr %arg, align 8
  %call211 = call i32 @keymatch(ptr noundef %109, ptr noundef @.str.74, i32 noundef 2)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.then213, label %if.else233

if.then213:                                       ; preds = %if.else210
  %110 = load i32, ptr %argn, align 4
  %inc214 = add nsw i32 %110, 1
  store i32 %inc214, ptr %argn, align 4
  %111 = load i32, ptr %argc.addr, align 4
  %cmp215 = icmp sge i32 %inc214, %111
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %if.then213
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_15()
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %if.then213
  %112 = load ptr, ptr %argv.addr, align 8
  %113 = load i32, ptr %argn, align 4
  %idxprom219 = sext i32 %113 to i64
  %arrayidx220 = getelementptr inbounds ptr, ptr %112, i64 %idxprom219
  %114 = load ptr, ptr %arrayidx220, align 8
  %call221 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %114, ptr noundef @.str.68, ptr noundef %val)
  %cmp222 = icmp ne i32 %call221, 1
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.end218
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_16()
  br label %if.end225

if.end225:                                        ; preds = %if.then224, %if.end218
  %115 = load i32, ptr %val, align 4
  %cmp226 = icmp slt i32 %115, 0
  br i1 %cmp226, label %if.then231, label %lor.lhs.false228

lor.lhs.false228:                                 ; preds = %if.end225
  %116 = load i32, ptr %val, align 4
  %cmp229 = icmp sgt i32 %116, 100
  br i1 %cmp229, label %if.then231, label %if.end232

if.then231:                                       ; preds = %lor.lhs.false228, %if.end225
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_17()
  br label %if.end232

if.end232:                                        ; preds = %if.then231, %lor.lhs.false228
  %117 = load i32, ptr %val, align 4
  %118 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i32 0, i32 27
  store i32 %117, ptr %smoothing_factor, align 8
  br label %if.end239

if.else233:                                       ; preds = %if.else210
  %119 = load ptr, ptr %arg, align 8
  %call234 = call i32 @keymatch(ptr noundef %119, ptr noundef @.str.75, i32 noundef 1)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then236, label %if.else237

if.then236:                                       ; preds = %if.else233
  store i32 1, ptr @is_targa, align 4
  br label %if.end238

if.else237:                                       ; preds = %if.else233
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_18()
  br label %if.end238

if.end238:                                        ; preds = %if.else237, %if.then236
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.end232
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end207
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.end196
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.end187
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end147
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.end136
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.end126
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.then110
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.end104
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then95
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end87
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.then62
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end52
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.end42
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.then11
  br label %if.end254

if.end254:                                        ; preds = %if.end253
  br label %for.inc

for.inc:                                          ; preds = %if.end254, %if.then5
  %120 = load i32, ptr %argn, align 4
  %inc255 = add nsw i32 %120, 1
  store i32 %inc255, ptr %argn, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.end, %for.cond
  %121 = load i32, ptr %for_real.addr, align 4
  %tobool256 = icmp ne i32 %121, 0
  br i1 %tobool256, label %if.then257, label %if.end293

if.then257:                                       ; preds = %for.end
  %122 = load ptr, ptr %cinfo.addr, align 8
  %123 = load i32, ptr %quality, align 4
  %124 = load i32, ptr %force_baseline, align 4
  call void @jpeg_set_quality(ptr noundef %122, i32 noundef %123, i32 noundef %124)
  %125 = load ptr, ptr %qtablefile, align 8
  %cmp258 = icmp ne ptr %125, null
  br i1 %cmp258, label %if.then260, label %if.end265

if.then260:                                       ; preds = %if.then257
  %126 = load ptr, ptr %cinfo.addr, align 8
  %127 = load ptr, ptr %qtablefile, align 8
  %128 = load i32, ptr %q_scale_factor, align 4
  %129 = load i32, ptr %force_baseline, align 4
  %call261 = call i32 @read_quant_tables(ptr noundef %126, ptr noundef %127, i32 noundef %128, i32 noundef %129)
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.end264, label %if.then263

if.then263:                                       ; preds = %if.then260
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_19()
  br label %if.end264

if.end264:                                        ; preds = %if.then263, %if.then260
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then257
  %130 = load ptr, ptr %qslotsarg, align 8
  %cmp266 = icmp ne ptr %130, null
  br i1 %cmp266, label %if.then268, label %if.end273

if.then268:                                       ; preds = %if.end265
  %131 = load ptr, ptr %cinfo.addr, align 8
  %132 = load ptr, ptr %qslotsarg, align 8
  %call269 = call i32 @set_quant_slots(ptr noundef %131, ptr noundef %132)
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.end272, label %if.then271

if.then271:                                       ; preds = %if.then268
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_20()
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.then268
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end265
  %133 = load ptr, ptr %samplearg, align 8
  %cmp274 = icmp ne ptr %133, null
  br i1 %cmp274, label %if.then276, label %if.end281

if.then276:                                       ; preds = %if.end273
  %134 = load ptr, ptr %cinfo.addr, align 8
  %135 = load ptr, ptr %samplearg, align 8
  %call277 = call i32 @set_sample_factors(ptr noundef %134, ptr noundef %135)
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.end280, label %if.then279

if.then279:                                       ; preds = %if.then276
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_21()
  br label %if.end280

if.end280:                                        ; preds = %if.then279, %if.then276
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %if.end273
  %136 = load i32, ptr %simple_progressive, align 4
  %tobool282 = icmp ne i32 %136, 0
  br i1 %tobool282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.end281
  %137 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_simple_progression(ptr noundef %137)
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %if.end281
  %138 = load ptr, ptr %scansarg, align 8
  %cmp285 = icmp ne ptr %138, null
  br i1 %cmp285, label %if.then287, label %if.end292

if.then287:                                       ; preds = %if.end284
  %139 = load ptr, ptr %cinfo.addr, align 8
  %140 = load ptr, ptr %scansarg, align 8
  %call288 = call i32 @read_scan_script(ptr noundef %139, ptr noundef %140)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.end291, label %if.then290

if.then290:                                       ; preds = %if.then287
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_22()
  br label %if.end291

if.end291:                                        ; preds = %if.then290, %if.then287
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %if.end284
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %for.end
  %141 = load i32, ptr %argn, align 4
  ret i32 %141
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @read_stdin() #1

declare ptr @write_stdout() #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @select_file_type(ptr noundef %cinfo, ptr noundef %infile) #0 {
entry:
  %retval = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %infile.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %infile, ptr %infile.addr, align 8
  %0 = load i32, ptr @is_targa, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jinit_read_targa(ptr noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %2)
  store i32 %call1, ptr %c, align 4
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i32 0, i32 5
  store i32 41, ptr %msg_code, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error_exit, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void %7(ptr noundef %8)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %9 = load i32, ptr %c, align 4
  %10 = load ptr, ptr %infile.addr, align 8
  %call5 = call i32 @ungetc(i32 noundef %9, ptr noundef %10)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 1040, ptr %msg_code9, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end4
  %17 = load i32, ptr %c, align 4
  switch i32 %17, label %sw.default [
    i32 66, label %sw.bb
    i32 71, label %sw.bb14
    i32 80, label %sw.bb16
    i32 0, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end12
  %18 = load ptr, ptr %cinfo.addr, align 8
  %call13 = call ptr @jinit_read_bmp(ptr noundef %18)
  store ptr %call13, ptr %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %if.end12
  %19 = load ptr, ptr %cinfo.addr, align 8
  %call15 = call ptr @jinit_read_gif(ptr noundef %19)
  store ptr %call15, ptr %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %if.end12
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call17 = call ptr @jinit_read_ppm(ptr noundef %20)
  store ptr %call17, ptr %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %if.end12
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call19 = call ptr @jinit_read_targa(ptr noundef %21)
  store ptr %call19, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end12
  %22 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %err20, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5
  store i32 1041, ptr %msg_code21, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %err22, align 8
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %error_exit23, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  call void %26(ptr noundef %27)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb, %if.then
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

declare void @jpeg_default_colorspace(ptr noundef) #1

declare void @jpeg_stdio_dest(ptr noundef, ptr noundef) #1

declare void @jpeg_start_compress(ptr noundef, i32 noundef) #1

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jpeg_finish_compress(ptr noundef) #1

declare void @jpeg_destroy_compress(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

declare i32 @jpeg_quality_scaling(i32 noundef) #1

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @read_quant_tables(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @set_quant_slots(ptr noundef, ptr noundef) #1

declare i32 @set_sample_factors(ptr noundef, ptr noundef) #1

declare void @jpeg_simple_progression(ptr noundef) #1

declare i32 @read_scan_script(ptr noundef, ptr noundef) #1

declare ptr @jinit_read_targa(ptr noundef) #1

declare i32 @getc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

declare ptr @jinit_read_bmp(ptr noundef) #1

declare ptr @jinit_read_gif(ptr noundef) #1

declare ptr @jinit_read_ppm(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_0()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_1()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_2()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_3()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_4()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_5()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_6()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_7()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_8()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_9()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_10()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_11()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_12()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_13()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_14()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_15()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_16()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_17()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_18()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_19()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_20()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_21()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_cjpeg_22()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.76, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.77)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.78)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.79)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.80)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.81)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.82)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.83)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.84)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.85, ptr noundef @.str.86)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.87, ptr noundef @.str.88)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.89, ptr noundef @.str.88)
  %13 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.90)
  %14 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.91)
  %15 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.92)
  %16 = load ptr, ptr @__stderrp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.93)
  %17 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.94)
  %18 = load ptr, ptr @__stderrp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.95)
  %19 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.96)
  %20 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.97)
  %21 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.98)
  %22 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.99)
  %23 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.100)
  call void @exit(i32 noundef 1) #3
  unreachable
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
