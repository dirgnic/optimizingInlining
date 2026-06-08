; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jpegtran.prepared.ll'
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
  call void @usage()
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %13 = load i32, ptr %file_index, align 4
  %14 = load i32, ptr %argc.addr, align 4
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %15 = load ptr, ptr %argv.addr, align 8
  %16 = load i32, ptr %file_index, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx18, align 8
  %call19 = call ptr @"\01_fopen"(ptr noundef %17, ptr noundef nonnull @.str.2) #4
  store ptr %call19, ptr %input_file, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.then17
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = load ptr, ptr @progname, align 8
  %20 = load ptr, ptr %argv.addr, align 8
  %21 = load i32, ptr %file_index, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %20, i64 %idxprom23
  %22 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef %19, ptr noundef %22) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else:                                          ; preds = %if.end14
  %call27 = call ptr @read_stdin() #4
  store ptr %call27, ptr %input_file, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then17, %if.else
  %23 = load ptr, ptr @outfilename, align 8
  %cmp29.not = icmp eq ptr %23, null
  br i1 %cmp29.not, label %if.else38, label %if.then31

if.then31:                                        ; preds = %if.end28
  %24 = load ptr, ptr @outfilename, align 8
  %call32 = call ptr @"\01_fopen"(ptr noundef %24, ptr noundef nonnull @.str.4) #4
  store ptr %call32, ptr %output_file, align 8
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.then31
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = load ptr, ptr @progname, align 8
  %27 = load ptr, ptr @outfilename, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef %26, ptr noundef %27) #4
  call void @exit(i32 noundef 1) #5
  unreachable

if.else38:                                        ; preds = %if.end28
  %call39 = call ptr @write_stdout() #4
  store ptr %call39, ptr %output_file, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.else38
  %28 = load ptr, ptr %input_file, align 8
  call void @jpeg_stdio_src(ptr noundef nonnull %srcinfo, ptr noundef %28) #4
  %call41 = call i32 @jpeg_read_header(ptr noundef nonnull %srcinfo, i32 noundef 1) #4
  %call42 = call ptr @jpeg_read_coefficients(ptr noundef nonnull %srcinfo) #4
  store ptr %call42, ptr %coef_arrays, align 8
  call void @jpeg_copy_critical_parameters(ptr noundef nonnull %srcinfo, ptr noundef nonnull %dstinfo) #4
  %29 = load i32, ptr %argc.addr, align 4
  %30 = load ptr, ptr %argv.addr, align 8
  %call43 = call i32 @parse_switches(ptr noundef nonnull %dstinfo, i32 noundef %29, ptr noundef %30, i32 noundef 0, i32 noundef 1)
  store i32 %call43, ptr %file_index, align 4
  %31 = load ptr, ptr %output_file, align 8
  call void @jpeg_stdio_dest(ptr noundef nonnull %dstinfo, ptr noundef %31) #4
  %32 = load ptr, ptr %coef_arrays, align 8
  call void @jpeg_write_coefficients(ptr noundef nonnull %dstinfo, ptr noundef %32) #4
  call void @jpeg_finish_compress(ptr noundef nonnull %dstinfo) #4
  call void @jpeg_destroy_compress(ptr noundef nonnull %dstinfo) #4
  %call44 = call i32 @jpeg_finish_decompress(ptr noundef nonnull %srcinfo) #4
  call void @jpeg_destroy_decompress(ptr noundef nonnull %srcinfo) #4
  %33 = load ptr, ptr %input_file, align 8
  %34 = load ptr, ptr @__stdinp, align 8
  %cmp45.not = icmp eq ptr %33, %34
  br i1 %cmp45.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end40
  %35 = load ptr, ptr %input_file, align 8
  %call48 = call i32 @fclose(ptr noundef %35) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end40
  %36 = load ptr, ptr %output_file, align 8
  %37 = load ptr, ptr @__stdoutp, align 8
  %cmp50.not = icmp eq ptr %36, %37
  br i1 %cmp50.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end49
  %38 = load ptr, ptr %output_file, align 8
  %call53 = call i32 @fclose(ptr noundef %38) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jsrcerr, i64 0, i32 8
  %39 = load i64, ptr %num_warnings, align 8
  %num_warnings55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jdsterr, i64 0, i32 8
  %40 = load i64, ptr %num_warnings55, align 8
  %add = sub i64 0, %40
  %tobool.not = icmp eq i64 %39, %add
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
  call void @usage()
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then23
  %22 = load ptr, ptr %argv.addr, align 8
  %23 = load i32, ptr %argn, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %22, i64 %idxprom29
  %24 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %24, ptr noundef nonnull @.str.13, ptr noundef nonnull %lval, ptr noundef nonnull %ch) #4
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @usage()
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end28
  %25 = load i8, ptr %ch, align 1
  %cmp37 = icmp eq i8 %25, 109
  %26 = load i8, ptr %ch, align 1
  %cmp41 = icmp eq i8 %26, 77
  %or.cond = select i1 %cmp37, i1 true, i1 %cmp41
  br i1 %or.cond, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end35
  %27 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %27, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end35, %if.then43
  %28 = load i64, ptr %lval, align 8
  %mul45 = mul nsw i64 %28, 1000
  %29 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %30, i64 0, i32 11
  store i64 %mul45, ptr %max_memory_to_use, align 8
  br label %for.inc

if.else46:                                        ; preds = %if.else20
  %31 = load ptr, ptr %arg, align 8
  %call47 = call i32 @keymatch(ptr noundef %31, ptr noundef nonnull @.str.14, i32 noundef 1) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.then52

lor.lhs.false49:                                  ; preds = %if.else46
  %32 = load ptr, ptr %arg, align 8
  %call50 = call i32 @keymatch(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef 1) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.else53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false49, %if.else46
  %33 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i64 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %for.inc

if.else53:                                        ; preds = %lor.lhs.false49
  %34 = load ptr, ptr %arg, align 8
  %call54 = call i32 @keymatch(ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef 4) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else64, label %if.then56

if.then56:                                        ; preds = %if.else53
  %35 = load i32, ptr %argn, align 4
  %inc57 = add nsw i32 %35, 1
  store i32 %inc57, ptr %argn, align 4
  %36 = load i32, ptr %argc.addr, align 4
  %cmp58.not = icmp slt i32 %inc57, %36
  br i1 %cmp58.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.then56
  call void @usage()
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then56
  %37 = load ptr, ptr %argv.addr, align 8
  %38 = load i32, ptr %argn, align 4
  %idxprom62 = sext i32 %38 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %37, i64 %idxprom62
  %39 = load ptr, ptr %arrayidx63, align 8
  store ptr %39, ptr @outfilename, align 8
  br label %for.inc

if.else64:                                        ; preds = %if.else53
  %40 = load ptr, ptr %arg, align 8
  %call65 = call i32 @keymatch(ptr noundef %40, ptr noundef nonnull @.str.17, i32 noundef 1) #4
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.else64
  store i32 1, ptr %simple_progressive, align 4
  br label %for.inc

if.else68:                                        ; preds = %if.else64
  %41 = load ptr, ptr %arg, align 8
  %call69 = call i32 @keymatch(ptr noundef %41, ptr noundef nonnull @.str.18, i32 noundef 1) #4
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.else106, label %if.then71

if.then71:                                        ; preds = %if.else68
  store i8 120, ptr %ch73, align 1
  %42 = load i32, ptr %argn, align 4
  %inc74 = add nsw i32 %42, 1
  store i32 %inc74, ptr %argn, align 4
  %43 = load i32, ptr %argc.addr, align 4
  %cmp75.not = icmp slt i32 %inc74, %43
  br i1 %cmp75.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.then71
  call void @usage()
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then71
  %44 = load ptr, ptr %argv.addr, align 8
  %45 = load i32, ptr %argn, align 4
  %idxprom79 = sext i32 %45 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %44, i64 %idxprom79
  %46 = load ptr, ptr %arrayidx80, align 8
  %call81 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %46, ptr noundef nonnull @.str.13, ptr noundef nonnull %lval72, ptr noundef nonnull %ch73) #4
  %cmp82 = icmp slt i32 %call81, 1
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end78
  call void @usage()
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end78
  %47 = load i64, ptr %lval72, align 8
  %cmp86 = icmp slt i64 %47, 0
  %48 = load i64, ptr %lval72, align 8
  %cmp89 = icmp sgt i64 %48, 65535
  %or.cond1 = select i1 %cmp86, i1 true, i1 %cmp89
  br i1 %or.cond1, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end85
  call void @usage()
  br label %if.end92

if.end92:                                         ; preds = %if.end85, %if.then91
  %49 = load i8, ptr %ch73, align 1
  %cmp94 = icmp eq i8 %49, 98
  %50 = load i8, ptr %ch73, align 1
  %cmp98 = icmp eq i8 %50, 66
  %or.cond2 = select i1 %cmp94, i1 true, i1 %cmp98
  br i1 %or.cond2, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end92
  %51 = load i64, ptr %lval72, align 8
  %conv101 = trunc i64 %51 to i32
  %52 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i64 0, i32 29
  store i32 %conv101, ptr %restart_interval, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %52, i64 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  br label %for.inc

if.else102:                                       ; preds = %if.end92
  %53 = load i64, ptr %lval72, align 8
  %conv103 = trunc i64 %53 to i32
  %54 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %54, i64 0, i32 30
  store i32 %conv103, ptr %restart_in_rows104, align 4
  br label %for.inc

if.else106:                                       ; preds = %if.else68
  %55 = load ptr, ptr %arg, align 8
  %call107 = call i32 @keymatch(ptr noundef %55, ptr noundef nonnull @.str.19, i32 noundef 2) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.else117, label %if.then109

if.then109:                                       ; preds = %if.else106
  %56 = load i32, ptr %argn, align 4
  %inc110 = add nsw i32 %56, 1
  store i32 %inc110, ptr %argn, align 4
  %57 = load i32, ptr %argc.addr, align 4
  %cmp111.not = icmp slt i32 %inc110, %57
  br i1 %cmp111.not, label %if.end114, label %if.then113

if.then113:                                       ; preds = %if.then109
  call void @usage()
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then109
  %58 = load ptr, ptr %argv.addr, align 8
  %59 = load i32, ptr %argn, align 4
  %idxprom115 = sext i32 %59 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %58, i64 %idxprom115
  %60 = load ptr, ptr %arrayidx116, align 8
  store ptr %60, ptr %scansarg, align 8
  br label %for.inc

if.else117:                                       ; preds = %if.else106
  call void @usage()
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %if.end61, %if.else102, %if.then100, %if.else117, %if.end114, %if.then67, %if.then52, %if.end17, %if.then5
  %61 = load i32, ptr %argn, align 4
  %inc126 = add nsw i32 %61, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %62 = load i32, ptr %for_real.addr, align 4
  %tobool127.not = icmp eq i32 %62, 0
  br i1 %tobool127.not, label %if.end140, label %if.then128

if.then128:                                       ; preds = %for.end
  %63 = load i32, ptr %simple_progressive, align 4
  %tobool129.not = icmp eq i32 %63, 0
  br i1 %tobool129.not, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.then128
  %64 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_simple_progression(ptr noundef %64) #4
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.then128
  %65 = load ptr, ptr %scansarg, align 8
  %cmp132.not = icmp eq ptr %65, null
  br i1 %cmp132.not, label %if.end140, label %if.then134

if.then134:                                       ; preds = %if.end131
  %66 = load ptr, ptr %cinfo.addr, align 8
  %67 = load ptr, ptr %scansarg, align 8
  %call135 = call i32 @read_scan_script(ptr noundef %66, ptr noundef %67) #4
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then137, label %if.end140

if.then137:                                       ; preds = %if.then134
  call void @usage()
  br label %if.end140

if.end140:                                        ; preds = %if.end131, %if.then137, %if.then134, %for.end
  %68 = load i32, ptr %argn, align 4
  ret i32 %68
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %1) #4
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %2)
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = call i64 @fwrite(ptr nonnull @.str.22, i64 37, i64 1, ptr %4)
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = call i64 @fwrite(ptr nonnull @.str.23, i64 77, i64 1, ptr %6)
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = call i64 @fwrite(ptr nonnull @.str.24, i64 46, i64 1, ptr %8)
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str.25, i64 29, i64 1, ptr %10)
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = call i64 @fwrite(ptr nonnull @.str.26, i64 67, i64 1, ptr %12)
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = call i64 @fwrite(ptr nonnull @.str.27, i64 51, i64 1, ptr %14)
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = call i64 @fwrite(ptr nonnull @.str.28, i64 46, i64 1, ptr %16)
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = call i64 @fwrite(ptr nonnull @.str.29, i64 43, i64 1, ptr %18)
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = call i64 @fwrite(ptr nonnull @.str.30, i64 22, i64 1, ptr %20)
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %22)
  call void @exit(i32 noundef 1) #5
  unreachable
}

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
