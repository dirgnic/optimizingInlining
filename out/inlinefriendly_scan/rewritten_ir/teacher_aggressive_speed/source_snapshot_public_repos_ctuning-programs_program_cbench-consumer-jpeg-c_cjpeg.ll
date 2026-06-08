; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-c_cjpeg.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/cjpeg.c"
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
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %cinfo = alloca %struct.jpeg_compress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %file_index = alloca i32, align 4
  %src_mgr = alloca ptr, align 8
  %input_file = alloca ptr, align 8
  %output_file = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
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
  %call = call ptr @jpeg_std_error(ptr noundef nonnull %jerr) #4
  store ptr %call, ptr %cinfo, align 8
  call void @jpeg_CreateCompress(ptr noundef nonnull %cinfo, i32 noundef 61, i64 noundef 496) #4
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i64 0, i32 11
  store ptr @cdjpeg_message_table, ptr %addon_message_table, align 8
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i64 0, i32 12
  store i32 1000, ptr %first_addon_message, align 8
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jerr, i64 0, i32 13
  store i32 1043, ptr %last_addon_message, align 4
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 9
  store i32 2, ptr %in_color_space, align 4
  call void @jpeg_set_defaults(ptr noundef nonnull %cinfo) #4
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
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %6) #4
  call void @usage()
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %7 = load i32, ptr %file_index, align 4
  %8 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %file_index, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @"\01_fopen"(ptr noundef %11, ptr noundef nonnull @.str.2) #4
  store ptr %call14, ptr %input_file, align 8
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then12
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = load ptr, ptr @progname, align 8
  %14 = load ptr, ptr %argv.addr, align 8
  %15 = load i32, ptr %file_index, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %14, i64 %idxprom18
  %16 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %13, ptr noundef %16) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else:                                          ; preds = %if.end9
  %call22 = call ptr @read_stdin() #4
  store ptr %call22, ptr %input_file, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %if.else
  %17 = load ptr, ptr @outfilename, align 8
  %cmp24.not = icmp eq ptr %17, null
  br i1 %cmp24.not, label %if.else33, label %if.then26

if.then26:                                        ; preds = %if.end23
  %18 = load ptr, ptr @outfilename, align 8
  %call27 = call ptr @"\01_fopen"(ptr noundef %18, ptr noundef nonnull @.str.4) #4
  store ptr %call27, ptr %output_file, align 8
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.then26
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr @progname, align 8
  %21 = load ptr, ptr @outfilename, align 8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef %20, ptr noundef %21) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else33:                                        ; preds = %if.end23
  %call34 = call ptr @write_stdout() #4
  store ptr %call34, ptr %output_file, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.else33
  %22 = load ptr, ptr %input_file, align 8
  %call36 = call ptr @select_file_type(ptr noundef nonnull %cinfo, ptr noundef %22)
  store ptr %call36, ptr %src_mgr, align 8
  %input_file37 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %call36, i64 0, i32 3
  store ptr %22, ptr %input_file37, align 8
  %23 = load ptr, ptr %call36, align 8
  call void %23(ptr noundef nonnull %cinfo, ptr noundef nonnull %call36) #4
  call void @jpeg_default_colorspace(ptr noundef nonnull %cinfo) #4
  %24 = load i32, ptr %argc.addr, align 4
  %25 = load ptr, ptr %argv.addr, align 8
  %call38 = call i32 @parse_switches(ptr noundef nonnull %cinfo, i32 noundef %24, ptr noundef %25, i32 noundef 0, i32 noundef 1)
  store i32 %call38, ptr %file_index, align 4
  %26 = load ptr, ptr %output_file, align 8
  call void @jpeg_stdio_dest(ptr noundef nonnull %cinfo, ptr noundef %26) #4
  call void @jpeg_start_compress(ptr noundef nonnull %cinfo, i32 noundef 1) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end35
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 36
  %27 = load i32, ptr %next_scanline, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 7
  %28 = load i32, ptr %image_height, align 4
  %cmp39 = icmp ult i32 %27, %28
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %src_mgr, align 8
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %get_pixel_rows, align 8
  %call41 = call i32 %30(ptr noundef nonnull %cinfo, ptr noundef %29) #4
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %buffer, align 8
  %call42 = call i32 @jpeg_write_scanlines(ptr noundef nonnull %cinfo, ptr noundef %31, i32 noundef %call41) #4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %32 = load ptr, ptr %src_mgr, align 8
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, ptr %32, i64 0, i32 2
  %33 = load ptr, ptr %finish_input, align 8
  call void %33(ptr noundef nonnull %cinfo, ptr noundef %32) #4
  call void @jpeg_finish_compress(ptr noundef nonnull %cinfo) #4
  call void @jpeg_destroy_compress(ptr noundef nonnull %cinfo) #4
  %34 = load ptr, ptr %input_file, align 8
  %35 = load ptr, ptr @__stdinp, align 8
  %cmp43.not = icmp eq ptr %34, %35
  br i1 %cmp43.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %while.end
  %36 = load ptr, ptr %input_file, align 8
  %call46 = call i32 @fclose(ptr noundef %36) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %while.end
  %37 = load ptr, ptr %output_file, align 8
  %38 = load ptr, ptr @__stdoutp, align 8
  %cmp48.not = icmp eq ptr %37, %38
  br i1 %cmp48.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end47
  %39 = load ptr, ptr %output_file, align 8
  %call51 = call i32 @fclose(ptr noundef %39) #4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  ret i32 0
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
  %call = call i32 @keymatch(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.47, i32 noundef 1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progname, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef %11) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else:                                          ; preds = %if.end6
  %12 = load ptr, ptr %arg, align 8
  %call9 = call i32 @keymatch(ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef 1) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else
  store i32 1, ptr %force_baseline, align 4
  br label %for.inc

if.else12:                                        ; preds = %if.else
  %13 = load ptr, ptr %arg, align 8
  %call13 = call i32 @keymatch(ptr noundef %13, ptr noundef nonnull @.str.50, i32 noundef 2) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else43, label %if.then15

if.then15:                                        ; preds = %if.else12
  %14 = load i32, ptr %argn, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %argn, align 4
  %15 = load i32, ptr %argc.addr, align 4
  %cmp16.not = icmp slt i32 %inc, %15
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @usage()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr %argn, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %16, i64 %idxprom20
  %18 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @keymatch(ptr noundef %18, ptr noundef nonnull @.str.51, i32 noundef 1) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.end19
  %19 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 28
  store i32 0, ptr %dct_method, align 4
  br label %for.inc

if.else25:                                        ; preds = %if.end19
  %20 = load ptr, ptr %argv.addr, align 8
  %21 = load i32, ptr %argn, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %20, i64 %idxprom26
  %22 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i32 @keymatch(ptr noundef %22, ptr noundef nonnull @.str.52, i32 noundef 2) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.else25
  %23 = load ptr, ptr %cinfo.addr, align 8
  %dct_method31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 28
  store i32 1, ptr %dct_method31, align 4
  br label %for.inc

if.else32:                                        ; preds = %if.else25
  %24 = load ptr, ptr %argv.addr, align 8
  %25 = load i32, ptr %argn, align 4
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %24, i64 %idxprom33
  %26 = load ptr, ptr %arrayidx34, align 8
  %call35 = call i32 @keymatch(ptr noundef %26, ptr noundef nonnull @.str.53, i32 noundef 2) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.else32
  %27 = load ptr, ptr %cinfo.addr, align 8
  %dct_method38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i64 0, i32 28
  store i32 2, ptr %dct_method38, align 4
  br label %for.inc

if.else39:                                        ; preds = %if.else32
  call void @usage()
  br label %for.inc

if.else43:                                        ; preds = %if.else12
  %28 = load ptr, ptr %arg, align 8
  %call44 = call i32 @keymatch(ptr noundef %28, ptr noundef nonnull @.str.54, i32 noundef 1) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %if.then48

lor.lhs.false:                                    ; preds = %if.else43
  %29 = load ptr, ptr %arg, align 8
  %call46 = call i32 @keymatch(ptr noundef %29, ptr noundef nonnull @.str.55, i32 noundef 1) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else56, label %if.then48

if.then48:                                        ; preds = %lor.lhs.false, %if.else43
  %30 = load i32, ptr @parse_switches.printed_version, align 4
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then48
  %31 = load ptr, ptr @__stderrp, align 8
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #4
  store i32 1, ptr @parse_switches.printed_version, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then48
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %trace_level54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 7
  %34 = load i32, ptr %trace_level54, align 4
  %inc55 = add nsw i32 %34, 1
  store i32 %inc55, ptr %trace_level54, align 4
  br label %for.inc

if.else56:                                        ; preds = %lor.lhs.false
  %35 = load ptr, ptr %arg, align 8
  %call57 = call i32 @keymatch(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef 2) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %if.then62

lor.lhs.false59:                                  ; preds = %if.else56
  %36 = load ptr, ptr %arg, align 8
  %call60 = call i32 @keymatch(ptr noundef %36, ptr noundef nonnull @.str.60, i32 noundef 2) #4
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else63, label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59, %if.else56
  %37 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_set_colorspace(ptr noundef %37, i32 noundef 1) #4
  br label %for.inc

if.else63:                                        ; preds = %lor.lhs.false59
  %38 = load ptr, ptr %arg, align 8
  %call64 = call i32 @keymatch(ptr noundef %38, ptr noundef nonnull @.str.61, i32 noundef 3) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.else89, label %if.then66

if.then66:                                        ; preds = %if.else63
  store i8 120, ptr %ch, align 1
  %39 = load i32, ptr %argn, align 4
  %inc67 = add nsw i32 %39, 1
  store i32 %inc67, ptr %argn, align 4
  %40 = load i32, ptr %argc.addr, align 4
  %cmp68.not = icmp slt i32 %inc67, %40
  br i1 %cmp68.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.then66
  call void @usage()
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.then66
  %41 = load ptr, ptr %argv.addr, align 8
  %42 = load i32, ptr %argn, align 4
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %41, i64 %idxprom72
  %43 = load ptr, ptr %arrayidx73, align 8
  %call74 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %43, ptr noundef nonnull @.str.62, ptr noundef nonnull %lval, ptr noundef nonnull %ch) #4
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end71
  call void @usage()
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end71
  %44 = load i8, ptr %ch, align 1
  %cmp80 = icmp eq i8 %44, 109
  %45 = load i8, ptr %ch, align 1
  %cmp84 = icmp eq i8 %45, 77
  %or.cond = select i1 %cmp80, i1 true, i1 %cmp84
  br i1 %or.cond, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end78
  %46 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %46, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.end78, %if.then86
  %47 = load i64, ptr %lval, align 8
  %mul88 = mul nsw i64 %47, 1000
  %48 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 1
  %49 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %49, i64 0, i32 11
  store i64 %mul88, ptr %max_memory_to_use, align 8
  br label %for.inc

if.else89:                                        ; preds = %if.else63
  %50 = load ptr, ptr %arg, align 8
  %call90 = call i32 @keymatch(ptr noundef %50, ptr noundef nonnull @.str.63, i32 noundef 1) #4
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %if.then95

lor.lhs.false92:                                  ; preds = %if.else89
  %51 = load ptr, ptr %arg, align 8
  %call93 = call i32 @keymatch(ptr noundef %51, ptr noundef nonnull @.str.64, i32 noundef 1) #4
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.else96, label %if.then95

if.then95:                                        ; preds = %lor.lhs.false92, %if.else89
  %52 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i64 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %for.inc

if.else96:                                        ; preds = %lor.lhs.false92
  %53 = load ptr, ptr %arg, align 8
  %call97 = call i32 @keymatch(ptr noundef %53, ptr noundef nonnull @.str.65, i32 noundef 4) #4
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.else107, label %if.then99

if.then99:                                        ; preds = %if.else96
  %54 = load i32, ptr %argn, align 4
  %inc100 = add nsw i32 %54, 1
  store i32 %inc100, ptr %argn, align 4
  %55 = load i32, ptr %argc.addr, align 4
  %cmp101.not = icmp slt i32 %inc100, %55
  br i1 %cmp101.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.then99
  call void @usage()
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.then99
  %56 = load ptr, ptr %argv.addr, align 8
  %57 = load i32, ptr %argn, align 4
  %idxprom105 = sext i32 %57 to i64
  %arrayidx106 = getelementptr inbounds ptr, ptr %56, i64 %idxprom105
  %58 = load ptr, ptr %arrayidx106, align 8
  store ptr %58, ptr @outfilename, align 8
  br label %for.inc

if.else107:                                       ; preds = %if.else96
  %59 = load ptr, ptr %arg, align 8
  %call108 = call i32 @keymatch(ptr noundef %59, ptr noundef nonnull @.str.66, i32 noundef 1) #4
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.else111, label %if.then110

if.then110:                                       ; preds = %if.else107
  store i32 1, ptr %simple_progressive, align 4
  br label %for.inc

if.else111:                                       ; preds = %if.else107
  %60 = load ptr, ptr %arg, align 8
  %call112 = call i32 @keymatch(ptr noundef %60, ptr noundef nonnull @.str.67, i32 noundef 1) #4
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.else128, label %if.then114

if.then114:                                       ; preds = %if.else111
  %61 = load i32, ptr %argn, align 4
  %inc115 = add nsw i32 %61, 1
  store i32 %inc115, ptr %argn, align 4
  %62 = load i32, ptr %argc.addr, align 4
  %cmp116.not = icmp slt i32 %inc115, %62
  br i1 %cmp116.not, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.then114
  call void @usage()
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.then114
  %63 = load ptr, ptr %argv.addr, align 8
  %64 = load i32, ptr %argn, align 4
  %idxprom120 = sext i32 %64 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %63, i64 %idxprom120
  %65 = load ptr, ptr %arrayidx121, align 8
  %call122 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %65, ptr noundef nonnull @.str.68, ptr noundef nonnull %quality) #4
  %cmp123.not = icmp eq i32 %call122, 1
  br i1 %cmp123.not, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.end119
  call void @usage()
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end119
  %66 = load i32, ptr %quality, align 4
  %call127 = call i32 @jpeg_quality_scaling(i32 noundef %66) #4
  store i32 %call127, ptr %q_scale_factor, align 4
  br label %for.inc

if.else128:                                       ; preds = %if.else111
  %67 = load ptr, ptr %arg, align 8
  %call129 = call i32 @keymatch(ptr noundef %67, ptr noundef nonnull @.str.69, i32 noundef 2) #4
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.else139, label %if.then131

if.then131:                                       ; preds = %if.else128
  %68 = load i32, ptr %argn, align 4
  %inc132 = add nsw i32 %68, 1
  store i32 %inc132, ptr %argn, align 4
  %69 = load i32, ptr %argc.addr, align 4
  %cmp133.not = icmp slt i32 %inc132, %69
  br i1 %cmp133.not, label %if.end136, label %if.then135

if.then135:                                       ; preds = %if.then131
  call void @usage()
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.then131
  %70 = load ptr, ptr %argv.addr, align 8
  %71 = load i32, ptr %argn, align 4
  %idxprom137 = sext i32 %71 to i64
  %arrayidx138 = getelementptr inbounds ptr, ptr %70, i64 %idxprom137
  %72 = load ptr, ptr %arrayidx138, align 8
  store ptr %72, ptr %qslotsarg, align 8
  br label %for.inc

if.else139:                                       ; preds = %if.else128
  %73 = load ptr, ptr %arg, align 8
  %call140 = call i32 @keymatch(ptr noundef %73, ptr noundef nonnull @.str.70, i32 noundef 2) #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.else150, label %if.then142

if.then142:                                       ; preds = %if.else139
  %74 = load i32, ptr %argn, align 4
  %inc143 = add nsw i32 %74, 1
  store i32 %inc143, ptr %argn, align 4
  %75 = load i32, ptr %argc.addr, align 4
  %cmp144.not = icmp slt i32 %inc143, %75
  br i1 %cmp144.not, label %if.end147, label %if.then146

if.then146:                                       ; preds = %if.then142
  call void @usage()
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.then142
  %76 = load ptr, ptr %argv.addr, align 8
  %77 = load i32, ptr %argn, align 4
  %idxprom148 = sext i32 %77 to i64
  %arrayidx149 = getelementptr inbounds ptr, ptr %76, i64 %idxprom148
  %78 = load ptr, ptr %arrayidx149, align 8
  store ptr %78, ptr %qtablefile, align 8
  br label %for.inc

if.else150:                                       ; preds = %if.else139
  %79 = load ptr, ptr %arg, align 8
  %call151 = call i32 @keymatch(ptr noundef %79, ptr noundef nonnull @.str.71, i32 noundef 1) #4
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else188, label %if.then153

if.then153:                                       ; preds = %if.else150
  store i8 120, ptr %ch155, align 1
  %80 = load i32, ptr %argn, align 4
  %inc156 = add nsw i32 %80, 1
  store i32 %inc156, ptr %argn, align 4
  %81 = load i32, ptr %argc.addr, align 4
  %cmp157.not = icmp slt i32 %inc156, %81
  br i1 %cmp157.not, label %if.end160, label %if.then159

if.then159:                                       ; preds = %if.then153
  call void @usage()
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.then153
  %82 = load ptr, ptr %argv.addr, align 8
  %83 = load i32, ptr %argn, align 4
  %idxprom161 = sext i32 %83 to i64
  %arrayidx162 = getelementptr inbounds ptr, ptr %82, i64 %idxprom161
  %84 = load ptr, ptr %arrayidx162, align 8
  %call163 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %84, ptr noundef nonnull @.str.62, ptr noundef nonnull %lval154, ptr noundef nonnull %ch155) #4
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.end160
  call void @usage()
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end160
  %85 = load i64, ptr %lval154, align 8
  %cmp168 = icmp slt i64 %85, 0
  %86 = load i64, ptr %lval154, align 8
  %cmp171 = icmp sgt i64 %86, 65535
  %or.cond1 = select i1 %cmp168, i1 true, i1 %cmp171
  br i1 %or.cond1, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end167
  call void @usage()
  br label %if.end174

if.end174:                                        ; preds = %if.end167, %if.then173
  %87 = load i8, ptr %ch155, align 1
  %cmp176 = icmp eq i8 %87, 98
  %88 = load i8, ptr %ch155, align 1
  %cmp180 = icmp eq i8 %88, 66
  %or.cond2 = select i1 %cmp176, i1 true, i1 %cmp180
  br i1 %or.cond2, label %if.then182, label %if.else184

if.then182:                                       ; preds = %if.end174
  %89 = load i64, ptr %lval154, align 8
  %conv183 = trunc i64 %89 to i32
  %90 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %90, i64 0, i32 29
  store i32 %conv183, ptr %restart_interval, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %90, i64 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  br label %for.inc

if.else184:                                       ; preds = %if.end174
  %91 = load i64, ptr %lval154, align 8
  %conv185 = trunc i64 %91 to i32
  %92 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows186 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %92, i64 0, i32 30
  store i32 %conv185, ptr %restart_in_rows186, align 4
  br label %for.inc

if.else188:                                       ; preds = %if.else150
  %93 = load ptr, ptr %arg, align 8
  %call189 = call i32 @keymatch(ptr noundef %93, ptr noundef nonnull @.str.72, i32 noundef 2) #4
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.else199, label %if.then191

if.then191:                                       ; preds = %if.else188
  %94 = load i32, ptr %argn, align 4
  %inc192 = add nsw i32 %94, 1
  store i32 %inc192, ptr %argn, align 4
  %95 = load i32, ptr %argc.addr, align 4
  %cmp193.not = icmp slt i32 %inc192, %95
  br i1 %cmp193.not, label %if.end196, label %if.then195

if.then195:                                       ; preds = %if.then191
  call void @usage()
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %if.then191
  %96 = load ptr, ptr %argv.addr, align 8
  %97 = load i32, ptr %argn, align 4
  %idxprom197 = sext i32 %97 to i64
  %arrayidx198 = getelementptr inbounds ptr, ptr %96, i64 %idxprom197
  %98 = load ptr, ptr %arrayidx198, align 8
  store ptr %98, ptr %samplearg, align 8
  br label %for.inc

if.else199:                                       ; preds = %if.else188
  %99 = load ptr, ptr %arg, align 8
  %call200 = call i32 @keymatch(ptr noundef %99, ptr noundef nonnull @.str.73, i32 noundef 2) #4
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.else210, label %if.then202

if.then202:                                       ; preds = %if.else199
  %100 = load i32, ptr %argn, align 4
  %inc203 = add nsw i32 %100, 1
  store i32 %inc203, ptr %argn, align 4
  %101 = load i32, ptr %argc.addr, align 4
  %cmp204.not = icmp slt i32 %inc203, %101
  br i1 %cmp204.not, label %if.end207, label %if.then206

if.then206:                                       ; preds = %if.then202
  call void @usage()
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.then202
  %102 = load ptr, ptr %argv.addr, align 8
  %103 = load i32, ptr %argn, align 4
  %idxprom208 = sext i32 %103 to i64
  %arrayidx209 = getelementptr inbounds ptr, ptr %102, i64 %idxprom208
  %104 = load ptr, ptr %arrayidx209, align 8
  store ptr %104, ptr %scansarg, align 8
  br label %for.inc

if.else210:                                       ; preds = %if.else199
  %105 = load ptr, ptr %arg, align 8
  %call211 = call i32 @keymatch(ptr noundef %105, ptr noundef nonnull @.str.74, i32 noundef 2) #4
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.else233, label %if.then213

if.then213:                                       ; preds = %if.else210
  %106 = load i32, ptr %argn, align 4
  %inc214 = add nsw i32 %106, 1
  store i32 %inc214, ptr %argn, align 4
  %107 = load i32, ptr %argc.addr, align 4
  %cmp215.not = icmp slt i32 %inc214, %107
  br i1 %cmp215.not, label %if.end218, label %if.then217

if.then217:                                       ; preds = %if.then213
  call void @usage()
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %if.then213
  %108 = load ptr, ptr %argv.addr, align 8
  %109 = load i32, ptr %argn, align 4
  %idxprom219 = sext i32 %109 to i64
  %arrayidx220 = getelementptr inbounds ptr, ptr %108, i64 %idxprom219
  %110 = load ptr, ptr %arrayidx220, align 8
  %call221 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %110, ptr noundef nonnull @.str.68, ptr noundef nonnull %val) #4
  %cmp222.not = icmp eq i32 %call221, 1
  br i1 %cmp222.not, label %if.end225, label %if.then224

if.then224:                                       ; preds = %if.end218
  call void @usage()
  br label %if.end225

if.end225:                                        ; preds = %if.then224, %if.end218
  %111 = load i32, ptr %val, align 4
  %cmp226 = icmp slt i32 %111, 0
  %112 = load i32, ptr %val, align 4
  %cmp229 = icmp sgt i32 %112, 100
  %or.cond3 = select i1 %cmp226, i1 true, i1 %cmp229
  br i1 %or.cond3, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end225
  call void @usage()
  br label %if.end232

if.end232:                                        ; preds = %if.end225, %if.then231
  %113 = load i32, ptr %val, align 4
  %114 = load ptr, ptr %cinfo.addr, align 8
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %114, i64 0, i32 27
  store i32 %113, ptr %smoothing_factor, align 8
  br label %for.inc

if.else233:                                       ; preds = %if.else210
  %115 = load ptr, ptr %arg, align 8
  %call234 = call i32 @keymatch(ptr noundef %115, ptr noundef nonnull @.str.75, i32 noundef 1) #4
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.else237, label %if.then236

if.then236:                                       ; preds = %if.else233
  store i32 1, ptr @is_targa, align 4
  br label %for.inc

if.else237:                                       ; preds = %if.else233
  call void @usage()
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.else39, %if.then37, %if.then24, %if.then62, %if.then95, %if.then110, %if.end136, %if.else184, %if.then182, %if.end207, %if.then236, %if.else237, %if.end232, %if.end196, %if.end147, %if.end126, %if.end104, %if.end87, %if.end52, %if.then11, %if.then5
  %116 = load i32, ptr %argn, align 4
  %inc255 = add nsw i32 %116, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then, %for.cond
  %117 = load i32, ptr %for_real.addr, align 4
  %tobool256.not = icmp eq i32 %117, 0
  br i1 %tobool256.not, label %if.end293, label %if.then257

if.then257:                                       ; preds = %for.end
  %118 = load ptr, ptr %cinfo.addr, align 8
  %119 = load i32, ptr %quality, align 4
  %120 = load i32, ptr %force_baseline, align 4
  call void @jpeg_set_quality(ptr noundef %118, i32 noundef %119, i32 noundef %120) #4
  %121 = load ptr, ptr %qtablefile, align 8
  %cmp258.not = icmp eq ptr %121, null
  br i1 %cmp258.not, label %if.end265, label %if.then260

if.then260:                                       ; preds = %if.then257
  %122 = load ptr, ptr %cinfo.addr, align 8
  %123 = load ptr, ptr %qtablefile, align 8
  %124 = load i32, ptr %q_scale_factor, align 4
  %125 = load i32, ptr %force_baseline, align 4
  %call261 = call i32 @read_quant_tables(ptr noundef %122, ptr noundef %123, i32 noundef %124, i32 noundef %125) #4
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.then263, label %if.end265

if.then263:                                       ; preds = %if.then260
  call void @usage()
  br label %if.end265

if.end265:                                        ; preds = %if.then260, %if.then263, %if.then257
  %126 = load ptr, ptr %qslotsarg, align 8
  %cmp266.not = icmp eq ptr %126, null
  br i1 %cmp266.not, label %if.end273, label %if.then268

if.then268:                                       ; preds = %if.end265
  %127 = load ptr, ptr %cinfo.addr, align 8
  %128 = load ptr, ptr %qslotsarg, align 8
  %call269 = call i32 @set_quant_slots(ptr noundef %127, ptr noundef %128) #4
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.then271, label %if.end273

if.then271:                                       ; preds = %if.then268
  call void @usage()
  br label %if.end273

if.end273:                                        ; preds = %if.then268, %if.then271, %if.end265
  %129 = load ptr, ptr %samplearg, align 8
  %cmp274.not = icmp eq ptr %129, null
  br i1 %cmp274.not, label %if.end281, label %if.then276

if.then276:                                       ; preds = %if.end273
  %130 = load ptr, ptr %cinfo.addr, align 8
  %131 = load ptr, ptr %samplearg, align 8
  %call277 = call i32 @set_sample_factors(ptr noundef %130, ptr noundef %131) #4
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.then279, label %if.end281

if.then279:                                       ; preds = %if.then276
  call void @usage()
  br label %if.end281

if.end281:                                        ; preds = %if.then276, %if.then279, %if.end273
  %132 = load i32, ptr %simple_progressive, align 4
  %tobool282.not = icmp eq i32 %132, 0
  br i1 %tobool282.not, label %if.end284, label %if.then283

if.then283:                                       ; preds = %if.end281
  %133 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_simple_progression(ptr noundef %133) #4
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %if.end281
  %134 = load ptr, ptr %scansarg, align 8
  %cmp285.not = icmp eq ptr %134, null
  br i1 %cmp285.not, label %if.end293, label %if.then287

if.then287:                                       ; preds = %if.end284
  %135 = load ptr, ptr %cinfo.addr, align 8
  %136 = load ptr, ptr %scansarg, align 8
  %call288 = call i32 @read_scan_script(ptr noundef %135, ptr noundef %136) #4
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.then290, label %if.end293

if.then290:                                       ; preds = %if.then287
  call void @usage()
  br label %if.end293

if.end293:                                        ; preds = %if.end284, %if.then290, %if.then287, %for.end
  %137 = load i32, ptr %argn, align 4
  ret i32 %137
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %1) #4
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = call i64 @fwrite(ptr nonnull @.str.77, i64 12, i64 1, ptr %2)
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = call i64 @fwrite(ptr nonnull @.str.78, i64 37, i64 1, ptr %4)
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = call i64 @fwrite(ptr nonnull @.str.79, i64 68, i64 1, ptr %6)
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = call i64 @fwrite(ptr nonnull @.str.80, i64 45, i64 1, ptr %8)
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str.81, i64 77, i64 1, ptr %10)
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = call i64 @fwrite(ptr nonnull @.str.82, i64 46, i64 1, ptr %12)
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = call i64 @fwrite(ptr nonnull @.str.83, i64 65, i64 1, ptr %14)
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = call i64 @fwrite(ptr nonnull @.str.84, i64 29, i64 1, ptr %16)
  %18 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #4
  %19 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #4
  %20 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88) #4
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = call i64 @fwrite(ptr nonnull @.str.90, i64 67, i64 1, ptr %21)
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = call i64 @fwrite(ptr nonnull @.str.91, i64 62, i64 1, ptr %23)
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = call i64 @fwrite(ptr nonnull @.str.92, i64 51, i64 1, ptr %25)
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = call i64 @fwrite(ptr nonnull @.str.93, i64 46, i64 1, ptr %27)
  %29 = load ptr, ptr @__stderrp, align 8
  %30 = call i64 @fwrite(ptr nonnull @.str.94, i64 43, i64 1, ptr %29)
  %31 = load ptr, ptr @__stderrp, align 8
  %32 = call i64 @fwrite(ptr nonnull @.str.95, i64 22, i64 1, ptr %31)
  %33 = load ptr, ptr @__stderrp, align 8
  %34 = call i64 @fwrite(ptr nonnull @.str.96, i64 39, i64 1, ptr %33)
  %35 = load ptr, ptr @__stderrp, align 8
  %36 = call i64 @fwrite(ptr nonnull @.str.97, i64 55, i64 1, ptr %35)
  %37 = load ptr, ptr @__stderrp, align 8
  %38 = call i64 @fwrite(ptr nonnull @.str.98, i64 55, i64 1, ptr %37)
  %39 = load ptr, ptr @__stderrp, align 8
  %40 = call i64 @fwrite(ptr nonnull @.str.99, i64 52, i64 1, ptr %39)
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = call i64 @fwrite(ptr nonnull @.str.100, i64 56, i64 1, ptr %41)
  call void @exit(i32 noundef 1) #5
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
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jinit_read_targa(ptr noundef %1) #4
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %infile.addr, align 8
  %call1 = call i32 @getc(ptr noundef %2) #4
  store i32 %call1, ptr %c, align 4
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 41, ptr %msg_code, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr noundef nonnull %3) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load i32, ptr %c, align 4
  %8 = load ptr, ptr %infile.addr, align 8
  %call5 = call i32 @ungetc(i32 noundef %7, ptr noundef %8) #4
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 1040, ptr %msg_code9, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr noundef nonnull %9) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end4
  %13 = load i32, ptr %c, align 4
  switch i32 %13, label %sw.default [
    i32 66, label %sw.bb
    i32 71, label %sw.bb14
    i32 80, label %sw.bb16
    i32 0, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end12
  %14 = load ptr, ptr %cinfo.addr, align 8
  %call13 = call ptr @jinit_read_bmp(ptr noundef %14) #4
  store ptr %call13, ptr %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %if.end12
  %15 = load ptr, ptr %cinfo.addr, align 8
  %call15 = call ptr @jinit_read_gif(ptr noundef %15) #4
  store ptr %call15, ptr %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %if.end12
  %16 = load ptr, ptr %cinfo.addr, align 8
  %call17 = call ptr @jinit_read_ppm(ptr noundef %16) #4
  store ptr %call17, ptr %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %if.end12
  %17 = load ptr, ptr %cinfo.addr, align 8
  %call19 = call ptr @jinit_read_targa(ptr noundef %17) #4
  store ptr %call19, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end12
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 1041, ptr %msg_code21, align 8
  %20 = load ptr, ptr %18, align 8
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull %18) #4
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb, %if.then
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
