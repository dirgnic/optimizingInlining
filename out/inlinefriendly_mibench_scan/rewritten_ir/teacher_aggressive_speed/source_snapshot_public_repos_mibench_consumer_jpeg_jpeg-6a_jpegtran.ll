; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jpegtran.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jpegtran.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@progname = internal global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"jpegtran\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"Independent JPEG Group's JPEGTRAN, version %s\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %srcinfo = alloca %struct.jpeg_decompress_struct, align 8
  %dstinfo = alloca %struct.jpeg_compress_struct, align 8
  %jsrcerr = alloca %struct.jpeg_error_mgr, align 8
  %jdsterr = alloca %struct.jpeg_error_mgr, align 8
  %coef_arrays = alloca ptr, align 8
  %file_index = alloca i32, align 4
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
  %call = call ptr @jpeg_std_error(ptr noundef nonnull %jsrcerr) #4
  store ptr %call, ptr %srcinfo, align 8
  call void @jpeg_CreateDecompress(ptr noundef nonnull %srcinfo, i32 noundef 61, i64 noundef 616) #4
  %call4 = call ptr @jpeg_std_error(ptr noundef nonnull %jdsterr) #4
  store ptr %call4, ptr %dstinfo, align 8
  call void @jpeg_CreateCompress(ptr noundef nonnull %dstinfo, i32 noundef 61, i64 noundef 496) #4
  %3 = load i32, ptr %argc.addr, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %call6 = call i32 @parse_switches(ptr noundef nonnull %dstinfo, i32 noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef 0)
  store i32 %call6, ptr %file_index, align 4
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jdsterr, i64 0, i32 7
  %5 = load i32, ptr %trace_level, align 4
  %trace_level7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jsrcerr, i64 0, i32 7
  store i32 %5, ptr %trace_level7, align 4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i64 0, i32 1
  %6 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 11
  %7 = load i64, ptr %max_memory_to_use, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i64 0, i32 1
  %8 = load ptr, ptr %mem8, align 8
  %max_memory_to_use9 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i64 0, i32 11
  store i64 %7, ptr %max_memory_to_use9, align 8
  %9 = load i32, ptr %file_index, align 4
  %10 = load i32, ptr %argc.addr, align 4
  %sub = add nsw i32 %10, -1
  %cmp10 = icmp slt i32 %9, %sub
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr @progname, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %12) #4
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr @progname, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef %14) #4
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %15)
  %17 = load ptr, ptr @__stderrp, align 8
  %18 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %17)
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %19)
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %21)
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %23)
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %25)
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %27)
  %29 = load ptr, ptr @__stderrp, align 8
  %30 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %29)
  %31 = load ptr, ptr @__stderrp, align 8
  %32 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %31)
  %33 = load ptr, ptr @__stderrp, align 8
  %34 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %33)
  %35 = load ptr, ptr @__stderrp, align 8
  %36 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %35)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end14:                                         ; preds = %if.end
  %37 = load i32, ptr %file_index, align 4
  %38 = load i32, ptr %argc.addr, align 4
  %cmp15 = icmp slt i32 %37, %38
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %39 = load ptr, ptr %argv.addr, align 8
  %40 = load i32, ptr %file_index, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %39, i64 %idxprom
  %41 = load ptr, ptr %arrayidx18, align 8
  %call19 = call ptr @"\01_fopen"(ptr noundef %41, ptr noundef nonnull @.str.2) #4
  store ptr %call19, ptr %input_file, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.then17
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = load ptr, ptr @progname, align 8
  %44 = load ptr, ptr %argv.addr, align 8
  %45 = load i32, ptr %file_index, align 4
  %idxprom23 = sext i32 %45 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %44, i64 %idxprom23
  %46 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef %43, ptr noundef %46) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else:                                          ; preds = %if.end14
  %call27 = call ptr @read_stdin() #4
  store ptr %call27, ptr %input_file, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then17, %if.else
  %47 = load ptr, ptr @outfilename, align 8
  %cmp29.not = icmp eq ptr %47, null
  br i1 %cmp29.not, label %if.else38, label %if.then31

if.then31:                                        ; preds = %if.end28
  %48 = load ptr, ptr @outfilename, align 8
  %call32 = call ptr @"\01_fopen"(ptr noundef %48, ptr noundef nonnull @.str.4) #4
  store ptr %call32, ptr %output_file, align 8
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.then31
  %49 = load ptr, ptr @__stderrp, align 8
  %50 = load ptr, ptr @progname, align 8
  %51 = load ptr, ptr @outfilename, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.3, ptr noundef %50, ptr noundef %51) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else38:                                        ; preds = %if.end28
  %call39 = call ptr @write_stdout() #4
  store ptr %call39, ptr %output_file, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.else38
  %52 = load ptr, ptr %input_file, align 8
  call void @jpeg_stdio_src(ptr noundef nonnull %srcinfo, ptr noundef %52) #4
  %call41 = call i32 @jpeg_read_header(ptr noundef nonnull %srcinfo, i32 noundef 1) #4
  %call42 = call ptr @jpeg_read_coefficients(ptr noundef nonnull %srcinfo) #4
  store ptr %call42, ptr %coef_arrays, align 8
  call void @jpeg_copy_critical_parameters(ptr noundef nonnull %srcinfo, ptr noundef nonnull %dstinfo) #4
  %53 = load i32, ptr %argc.addr, align 4
  %54 = load ptr, ptr %argv.addr, align 8
  %call43 = call i32 @parse_switches(ptr noundef nonnull %dstinfo, i32 noundef %53, ptr noundef %54, i32 noundef 0, i32 noundef 1)
  store i32 %call43, ptr %file_index, align 4
  %55 = load ptr, ptr %output_file, align 8
  call void @jpeg_stdio_dest(ptr noundef nonnull %dstinfo, ptr noundef %55) #4
  %56 = load ptr, ptr %coef_arrays, align 8
  call void @jpeg_write_coefficients(ptr noundef nonnull %dstinfo, ptr noundef %56) #4
  call void @jpeg_finish_compress(ptr noundef nonnull %dstinfo) #4
  call void @jpeg_destroy_compress(ptr noundef nonnull %dstinfo) #4
  %call44 = call i32 @jpeg_finish_decompress(ptr noundef nonnull %srcinfo) #4
  call void @jpeg_destroy_decompress(ptr noundef nonnull %srcinfo) #4
  %57 = load ptr, ptr %input_file, align 8
  %58 = load ptr, ptr @__stdinp, align 8
  %cmp45.not = icmp eq ptr %57, %58
  br i1 %cmp45.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end40
  %59 = load ptr, ptr %input_file, align 8
  %call48 = call i32 @fclose(ptr noundef %59) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end40
  %60 = load ptr, ptr %output_file, align 8
  %61 = load ptr, ptr @__stdoutp, align 8
  %cmp50.not = icmp eq ptr %60, %61
  br i1 %cmp50.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end49
  %62 = load ptr, ptr %output_file, align 8
  %call53 = call i32 @fclose(ptr noundef %62) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jsrcerr, i64 0, i32 8
  %63 = load i64, ptr %num_warnings, align 8
  %num_warnings55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jdsterr, i64 0, i32 8
  %64 = load i64, ptr %num_warnings55, align 8
  %add = sub i64 0, %64
  %tobool.not = icmp eq i64 %63, %add
  %cond = select i1 %tobool.not, i32 0, i32 2
  call void @exit(i32 noundef %cond) #5
  unreachable
}

declare ptr @jpeg_std_error(ptr noundef) #1

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) #1

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) #1

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
  %simple_progressive = alloca i32, align 4
  %scansarg = alloca ptr, align 8
  %lval = alloca i64, align 8
  %ch = alloca i8, align 1
  %lval72 = alloca i64, align 8
  %ch73 = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 %last_file_arg_seen, ptr %last_file_arg_seen.addr, align 4
  store i32 %for_real, ptr %for_real.addr, align 4
  store ptr null, ptr %scansarg, align 8
  store i32 0, ptr %simple_progressive, align 4
  store ptr null, ptr @outfilename, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 7
  store i32 0, ptr %trace_level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc126, %for.inc ]
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
  %call = call i32 @keymatch(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.5, i32 noundef 1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load ptr, ptr @progname, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %11) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else:                                          ; preds = %if.end6
  %12 = load ptr, ptr %arg, align 8
  %call9 = call i32 @keymatch(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef 1) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.else
  %13 = load ptr, ptr %arg, align 8
  %call11 = call i32 @keymatch(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef 1) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else20, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  %14 = load i32, ptr @parse_switches.printed_version, align 4
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then13
  %15 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #4
  store i32 1, ptr @parse_switches.printed_version, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then13
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %trace_level19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 7
  %18 = load i32, ptr %trace_level19, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %trace_level19, align 4
  br label %for.inc

if.else20:                                        ; preds = %lor.lhs.false
  %19 = load ptr, ptr %arg, align 8
  %call21 = call i32 @keymatch(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef 3) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else46, label %if.then23

if.then23:                                        ; preds = %if.else20
  store i8 120, ptr %ch, align 1
  %20 = load i32, ptr %argn, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, ptr %argn, align 4
  %21 = load i32, ptr %argc.addr, align 4
  %cmp25.not = icmp slt i32 %inc24, %21
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then23
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = load ptr, ptr @progname, align 8
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.20, ptr noundef %23) #4
  %24 = load ptr, ptr @__stderrp, align 8
  %25 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %24)
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %26)
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %28)
  %30 = load ptr, ptr @__stderrp, align 8
  %31 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %30)
  %32 = load ptr, ptr @__stderrp, align 8
  %33 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %32)
  %34 = load ptr, ptr @__stderrp, align 8
  %35 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %34)
  %36 = load ptr, ptr @__stderrp, align 8
  %37 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %36)
  %38 = load ptr, ptr @__stderrp, align 8
  %39 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %38)
  %40 = load ptr, ptr @__stderrp, align 8
  %41 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %40)
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %42)
  %44 = load ptr, ptr @__stderrp, align 8
  %45 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %44)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end28:                                         ; preds = %if.then23
  %46 = load ptr, ptr %argv.addr, align 8
  %47 = load i32, ptr %argn, align 4
  %idxprom29 = sext i32 %47 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %46, i64 %idxprom29
  %48 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %48, ptr noundef nonnull @.str.13, ptr noundef nonnull %lval, ptr noundef nonnull %ch) #4
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  %49 = load ptr, ptr @__stderrp, align 8
  %50 = load ptr, ptr @progname, align 8
  %call.i1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.20, ptr noundef %50) #4
  %51 = load ptr, ptr @__stderrp, align 8
  %52 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %51)
  %53 = load ptr, ptr @__stderrp, align 8
  %54 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %53)
  %55 = load ptr, ptr @__stderrp, align 8
  %56 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %55)
  %57 = load ptr, ptr @__stderrp, align 8
  %58 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %57)
  %59 = load ptr, ptr @__stderrp, align 8
  %60 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %59)
  %61 = load ptr, ptr @__stderrp, align 8
  %62 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %61)
  %63 = load ptr, ptr @__stderrp, align 8
  %64 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %63)
  %65 = load ptr, ptr @__stderrp, align 8
  %66 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %65)
  %67 = load ptr, ptr @__stderrp, align 8
  %68 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %67)
  %69 = load ptr, ptr @__stderrp, align 8
  %70 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %69)
  %71 = load ptr, ptr @__stderrp, align 8
  %72 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %71)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end35:                                         ; preds = %if.end28
  %73 = load i8, ptr %ch, align 1
  %cmp37 = icmp eq i8 %73, 109
  %74 = load i8, ptr %ch, align 1
  %cmp41 = icmp eq i8 %74, 77
  %or.cond = select i1 %cmp37, i1 true, i1 %cmp41
  br i1 %or.cond, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end35
  %75 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %75, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %76 = load i64, ptr %lval, align 8
  %mul45 = mul nsw i64 %76, 1000
  %77 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %77, i64 0, i32 1
  %78 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %78, i64 0, i32 11
  store i64 %mul45, ptr %max_memory_to_use, align 8
  br label %for.inc

if.else46:                                        ; preds = %if.else20
  %79 = load ptr, ptr %arg, align 8
  %call47 = call i32 @keymatch(ptr noundef %79, ptr noundef nonnull @.str.14, i32 noundef 1) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.then52

lor.lhs.false49:                                  ; preds = %if.else46
  %80 = load ptr, ptr %arg, align 8
  %call50 = call i32 @keymatch(ptr noundef %80, ptr noundef nonnull @.str.15, i32 noundef 1) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49, %if.else46
  %81 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %81, i64 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %for.inc

if.else53:                                        ; preds = %lor.lhs.false49
  %82 = load ptr, ptr %arg, align 8
  %call54 = call i32 @keymatch(ptr noundef %82, ptr noundef nonnull @.str.16, i32 noundef 4) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else64, label %if.then56

if.then56:                                        ; preds = %if.else53
  %83 = load i32, ptr %argn, align 4
  %inc57 = add nsw i32 %83, 1
  store i32 %inc57, ptr %argn, align 4
  %84 = load i32, ptr %argc.addr, align 4
  %cmp58.not = icmp slt i32 %inc57, %84
  br i1 %cmp58.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.then56
  %85 = load ptr, ptr @__stderrp, align 8
  %86 = load ptr, ptr @progname, align 8
  %call.i13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.20, ptr noundef %86) #4
  %87 = load ptr, ptr @__stderrp, align 8
  %88 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %87)
  %89 = load ptr, ptr @__stderrp, align 8
  %90 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %89)
  %91 = load ptr, ptr @__stderrp, align 8
  %92 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %91)
  %93 = load ptr, ptr @__stderrp, align 8
  %94 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %93)
  %95 = load ptr, ptr @__stderrp, align 8
  %96 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %95)
  %97 = load ptr, ptr @__stderrp, align 8
  %98 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %97)
  %99 = load ptr, ptr @__stderrp, align 8
  %100 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %99)
  %101 = load ptr, ptr @__stderrp, align 8
  %102 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %101)
  %103 = load ptr, ptr @__stderrp, align 8
  %104 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %103)
  %105 = load ptr, ptr @__stderrp, align 8
  %106 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %105)
  %107 = load ptr, ptr @__stderrp, align 8
  %108 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %107)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end61:                                         ; preds = %if.then56
  %109 = load ptr, ptr %argv.addr, align 8
  %110 = load i32, ptr %argn, align 4
  %idxprom62 = sext i32 %110 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %109, i64 %idxprom62
  %111 = load ptr, ptr %arrayidx63, align 8
  store ptr %111, ptr @outfilename, align 8
  br label %for.inc

if.else64:                                        ; preds = %if.else53
  %112 = load ptr, ptr %arg, align 8
  %call65 = call i32 @keymatch(ptr noundef %112, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.else64
  store i32 1, ptr %simple_progressive, align 4
  br label %for.inc

if.else68:                                        ; preds = %if.else64
  %113 = load ptr, ptr %arg, align 8
  %call69 = call i32 @keymatch(ptr noundef %113, ptr noundef nonnull @.str.18, i32 noundef 1) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.else106, label %if.then71

if.then71:                                        ; preds = %if.else68
  store i8 120, ptr %ch73, align 1
  %114 = load i32, ptr %argn, align 4
  %inc74 = add nsw i32 %114, 1
  store i32 %inc74, ptr %argn, align 4
  %115 = load i32, ptr %argc.addr, align 4
  %cmp75.not = icmp slt i32 %inc74, %115
  br i1 %cmp75.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.then71
  %116 = load ptr, ptr @__stderrp, align 8
  %117 = load ptr, ptr @progname, align 8
  %call.i25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.20, ptr noundef %117) #4
  %118 = load ptr, ptr @__stderrp, align 8
  %119 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %118)
  %120 = load ptr, ptr @__stderrp, align 8
  %121 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %120)
  %122 = load ptr, ptr @__stderrp, align 8
  %123 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %122)
  %124 = load ptr, ptr @__stderrp, align 8
  %125 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %124)
  %126 = load ptr, ptr @__stderrp, align 8
  %127 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %126)
  %128 = load ptr, ptr @__stderrp, align 8
  %129 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %128)
  %130 = load ptr, ptr @__stderrp, align 8
  %131 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %130)
  %132 = load ptr, ptr @__stderrp, align 8
  %133 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %132)
  %134 = load ptr, ptr @__stderrp, align 8
  %135 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %134)
  %136 = load ptr, ptr @__stderrp, align 8
  %137 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %136)
  %138 = load ptr, ptr @__stderrp, align 8
  %139 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %138)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end78:                                         ; preds = %if.then71
  %140 = load ptr, ptr %argv.addr, align 8
  %141 = load i32, ptr %argn, align 4
  %idxprom79 = sext i32 %141 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %140, i64 %idxprom79
  %142 = load ptr, ptr %arrayidx80, align 8
  %call81 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %142, ptr noundef nonnull @.str.13, ptr noundef nonnull %lval72, ptr noundef nonnull %ch73) #4
  %cmp82 = icmp slt i32 %call81, 1
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end78
  %143 = load ptr, ptr @__stderrp, align 8
  %144 = load ptr, ptr @progname, align 8
  %call.i37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.20, ptr noundef %144) #4
  %145 = load ptr, ptr @__stderrp, align 8
  %146 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %145)
  %147 = load ptr, ptr @__stderrp, align 8
  %148 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %147)
  %149 = load ptr, ptr @__stderrp, align 8
  %150 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %149)
  %151 = load ptr, ptr @__stderrp, align 8
  %152 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %151)
  %153 = load ptr, ptr @__stderrp, align 8
  %154 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %153)
  %155 = load ptr, ptr @__stderrp, align 8
  %156 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %155)
  %157 = load ptr, ptr @__stderrp, align 8
  %158 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %157)
  %159 = load ptr, ptr @__stderrp, align 8
  %160 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %159)
  %161 = load ptr, ptr @__stderrp, align 8
  %162 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %161)
  %163 = load ptr, ptr @__stderrp, align 8
  %164 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %163)
  %165 = load ptr, ptr @__stderrp, align 8
  %166 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %165)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end85:                                         ; preds = %if.end78
  %167 = load i64, ptr %lval72, align 8
  %cmp86 = icmp slt i64 %167, 0
  %168 = load i64, ptr %lval72, align 8
  %cmp89 = icmp sgt i64 %168, 65535
  %or.cond97 = select i1 %cmp86, i1 true, i1 %cmp89
  br i1 %or.cond97, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end85
  %169 = load ptr, ptr @__stderrp, align 8
  %170 = load ptr, ptr @progname, align 8
  %call.i49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.20, ptr noundef %170) #4
  %171 = load ptr, ptr @__stderrp, align 8
  %172 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %171)
  %173 = load ptr, ptr @__stderrp, align 8
  %174 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %173)
  %175 = load ptr, ptr @__stderrp, align 8
  %176 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %175)
  %177 = load ptr, ptr @__stderrp, align 8
  %178 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %177)
  %179 = load ptr, ptr @__stderrp, align 8
  %180 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %179)
  %181 = load ptr, ptr @__stderrp, align 8
  %182 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %181)
  %183 = load ptr, ptr @__stderrp, align 8
  %184 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %183)
  %185 = load ptr, ptr @__stderrp, align 8
  %186 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %185)
  %187 = load ptr, ptr @__stderrp, align 8
  %188 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %187)
  %189 = load ptr, ptr @__stderrp, align 8
  %190 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %189)
  %191 = load ptr, ptr @__stderrp, align 8
  %192 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %191)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end92:                                         ; preds = %if.end85
  %193 = load i8, ptr %ch73, align 1
  %cmp94 = icmp eq i8 %193, 98
  %194 = load i8, ptr %ch73, align 1
  %cmp98 = icmp eq i8 %194, 66
  %or.cond98 = select i1 %cmp94, i1 true, i1 %cmp98
  br i1 %or.cond98, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end92
  %195 = load i64, ptr %lval72, align 8
  %conv101 = trunc i64 %195 to i32
  %196 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %196, i64 0, i32 29
  store i32 %conv101, ptr %restart_interval, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %196, i64 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  br label %for.inc

if.else102:                                       ; preds = %if.end92
  %197 = load i64, ptr %lval72, align 8
  %conv103 = trunc i64 %197 to i32
  %198 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %198, i64 0, i32 30
  store i32 %conv103, ptr %restart_in_rows104, align 4
  br label %for.inc

if.else106:                                       ; preds = %if.else68
  %199 = load ptr, ptr %arg, align 8
  %call107 = call i32 @keymatch(ptr noundef %199, ptr noundef nonnull @.str.19, i32 noundef 2) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.else117, label %if.then109

if.then109:                                       ; preds = %if.else106
  %200 = load i32, ptr %argn, align 4
  %inc110 = add nsw i32 %200, 1
  store i32 %inc110, ptr %argn, align 4
  %201 = load i32, ptr %argc.addr, align 4
  %cmp111.not = icmp slt i32 %inc110, %201
  br i1 %cmp111.not, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.then109
  %202 = load ptr, ptr @__stderrp, align 8
  %203 = load ptr, ptr @progname, align 8
  %call.i61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.20, ptr noundef %203) #4
  %204 = load ptr, ptr @__stderrp, align 8
  %205 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %204)
  %206 = load ptr, ptr @__stderrp, align 8
  %207 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %206)
  %208 = load ptr, ptr @__stderrp, align 8
  %209 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %208)
  %210 = load ptr, ptr @__stderrp, align 8
  %211 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %210)
  %212 = load ptr, ptr @__stderrp, align 8
  %213 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %212)
  %214 = load ptr, ptr @__stderrp, align 8
  %215 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %214)
  %216 = load ptr, ptr @__stderrp, align 8
  %217 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %216)
  %218 = load ptr, ptr @__stderrp, align 8
  %219 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %218)
  %220 = load ptr, ptr @__stderrp, align 8
  %221 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %220)
  %222 = load ptr, ptr @__stderrp, align 8
  %223 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %222)
  %224 = load ptr, ptr @__stderrp, align 8
  %225 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %224)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end114:                                        ; preds = %if.then109
  %226 = load ptr, ptr %argv.addr, align 8
  %227 = load i32, ptr %argn, align 4
  %idxprom115 = sext i32 %227 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %226, i64 %idxprom115
  %228 = load ptr, ptr %arrayidx116, align 8
  store ptr %228, ptr %scansarg, align 8
  br label %for.inc

if.else117:                                       ; preds = %if.else106
  %229 = load ptr, ptr @__stderrp, align 8
  %230 = load ptr, ptr @progname, align 8
  %call.i73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef nonnull @.str.20, ptr noundef %230) #4
  %231 = load ptr, ptr @__stderrp, align 8
  %232 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %231)
  %233 = load ptr, ptr @__stderrp, align 8
  %234 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %233)
  %235 = load ptr, ptr @__stderrp, align 8
  %236 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %235)
  %237 = load ptr, ptr @__stderrp, align 8
  %238 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %237)
  %239 = load ptr, ptr @__stderrp, align 8
  %240 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %239)
  %241 = load ptr, ptr @__stderrp, align 8
  %242 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %241)
  %243 = load ptr, ptr @__stderrp, align 8
  %244 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %243)
  %245 = load ptr, ptr @__stderrp, align 8
  %246 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %245)
  %247 = load ptr, ptr @__stderrp, align 8
  %248 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %247)
  %249 = load ptr, ptr @__stderrp, align 8
  %250 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %249)
  %251 = load ptr, ptr @__stderrp, align 8
  %252 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %251)
  call void @exit(i32 noundef 1) #5
  unreachable

for.inc:                                          ; preds = %if.end44, %if.end61, %if.end114, %if.else102, %if.then100, %if.then67, %if.then52, %if.end17, %if.then5
  %253 = load i32, ptr %argn, align 4
  %inc126 = add nsw i32 %253, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %254 = load i32, ptr %for_real.addr, align 4
  %tobool127.not = icmp eq i32 %254, 0
  br i1 %tobool127.not, label %if.end140, label %if.then128

if.then128:                                       ; preds = %for.end
  %255 = load i32, ptr %simple_progressive, align 4
  %tobool129.not = icmp eq i32 %255, 0
  br i1 %tobool129.not, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.then128
  %256 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_simple_progression(ptr noundef %256) #4
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.then128
  %257 = load ptr, ptr %scansarg, align 8
  %cmp132.not = icmp eq ptr %257, null
  br i1 %cmp132.not, label %if.end140, label %if.then134

if.then134:                                       ; preds = %if.end131
  %258 = load ptr, ptr %cinfo.addr, align 8
  %259 = load ptr, ptr %scansarg, align 8
  %call135 = call i32 @read_scan_script(ptr noundef %258, ptr noundef %259) #4
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then137, label %if.end140

if.then137:                                       ; preds = %if.then134
  %260 = load ptr, ptr @__stderrp, align 8
  %261 = load ptr, ptr @progname, align 8
  %call.i85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.20, ptr noundef %261) #4
  %262 = load ptr, ptr @__stderrp, align 8
  %263 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %262)
  %264 = load ptr, ptr @__stderrp, align 8
  %265 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %264)
  %266 = load ptr, ptr @__stderrp, align 8
  %267 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %266)
  %268 = load ptr, ptr @__stderrp, align 8
  %269 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %268)
  %270 = load ptr, ptr @__stderrp, align 8
  %271 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %270)
  %272 = load ptr, ptr @__stderrp, align 8
  %273 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %272)
  %274 = load ptr, ptr @__stderrp, align 8
  %275 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %274)
  %276 = load ptr, ptr @__stderrp, align 8
  %277 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %276)
  %278 = load ptr, ptr @__stderrp, align 8
  %279 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %278)
  %280 = load ptr, ptr @__stderrp, align 8
  %281 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %280)
  %282 = load ptr, ptr @__stderrp, align 8
  %283 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %282)
  call void @exit(i32 noundef 1) #5
  unreachable

if.end140:                                        ; preds = %if.end131, %if.then134, %for.end
  %284 = load i32, ptr %argn, align 4
  ret i32 %284
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @read_stdin() #1

declare ptr @write_stdout() #1

declare void @jpeg_stdio_src(ptr noundef, ptr noundef) #1

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) #1

declare ptr @jpeg_read_coefficients(ptr noundef) #1

declare void @jpeg_copy_critical_parameters(ptr noundef, ptr noundef) #1

declare void @jpeg_stdio_dest(ptr noundef, ptr noundef) #1

declare void @jpeg_write_coefficients(ptr noundef, ptr noundef) #1

declare void @jpeg_finish_compress(ptr noundef) #1

declare void @jpeg_destroy_compress(ptr noundef) #1

declare i32 @jpeg_finish_decompress(ptr noundef) #1

declare void @jpeg_destroy_decompress(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

declare void @jpeg_simple_progression(ptr noundef) #1

declare i32 @read_scan_script(ptr noundef, ptr noundef) #1

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
