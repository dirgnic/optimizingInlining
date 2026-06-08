; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jpegtran.c'
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
  %retval = alloca i32, align 4
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
  %call = call ptr @jpeg_std_error(ptr noundef %jsrcerr)
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i32 0, i32 0
  store ptr %call, ptr %err, align 8
  call void @jpeg_CreateDecompress(ptr noundef %srcinfo, i32 noundef 61, i64 noundef 616)
  %call4 = call ptr @jpeg_std_error(ptr noundef %jdsterr)
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i32 0, i32 0
  store ptr %call4, ptr %err5, align 8
  call void @jpeg_CreateCompress(ptr noundef %dstinfo, i32 noundef 61, i64 noundef 496)
  %5 = load i32, ptr %argc.addr, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %call6 = call i32 @parse_switches(ptr noundef %dstinfo, i32 noundef %5, ptr noundef %6, i32 noundef 0, i32 noundef 0)
  store i32 %call6, ptr %file_index, align 4
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jdsterr, i32 0, i32 7
  %7 = load i32, ptr %trace_level, align 4
  %trace_level7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jsrcerr, i32 0, i32 7
  store i32 %7, ptr %trace_level7, align 4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %dstinfo, i32 0, i32 1
  %8 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 11
  %9 = load i64, ptr %max_memory_to_use, align 8
  %mem8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %srcinfo, i32 0, i32 1
  %10 = load ptr, ptr %mem8, align 8
  %max_memory_to_use9 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i32 0, i32 11
  store i64 %9, ptr %max_memory_to_use9, align 8
  %11 = load i32, ptr %file_index, align 4
  %12 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %12, 1
  %cmp10 = icmp slt i32 %11, %sub
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr @progname, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1, ptr noundef %14)
  call void @usage()
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %15 = load i32, ptr %file_index, align 4
  %16 = load i32, ptr %argc.addr, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load i32, ptr %file_index, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %19 = load ptr, ptr %arrayidx18, align 8
  %call19 = call ptr @"\01_fopen"(ptr noundef %19, ptr noundef @.str.2)
  store ptr %call19, ptr %input_file, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.then17
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = load ptr, ptr @progname, align 8
  %22 = load ptr, ptr %argv.addr, align 8
  %23 = load i32, ptr %file_index, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %22, i64 %idxprom23
  %24 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.3, ptr noundef %21, ptr noundef %24)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end26:                                         ; preds = %if.then17
  br label %if.end28

if.else:                                          ; preds = %if.end14
  %call27 = call ptr @read_stdin()
  store ptr %call27, ptr %input_file, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end26
  %25 = load ptr, ptr @outfilename, align 8
  %cmp29 = icmp ne ptr %25, null
  br i1 %cmp29, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.end28
  %26 = load ptr, ptr @outfilename, align 8
  %call32 = call ptr @"\01_fopen"(ptr noundef %26, ptr noundef @.str.4)
  store ptr %call32, ptr %output_file, align 8
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then31
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = load ptr, ptr @progname, align 8
  %29 = load ptr, ptr @outfilename, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.3, ptr noundef %28, ptr noundef %29)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end37:                                         ; preds = %if.then31
  br label %if.end40

if.else38:                                        ; preds = %if.end28
  %call39 = call ptr @write_stdout()
  store ptr %call39, ptr %output_file, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.end37
  %30 = load ptr, ptr %input_file, align 8
  call void @jpeg_stdio_src(ptr noundef %srcinfo, ptr noundef %30)
  %call41 = call i32 @jpeg_read_header(ptr noundef %srcinfo, i32 noundef 1)
  %call42 = call ptr @jpeg_read_coefficients(ptr noundef %srcinfo)
  store ptr %call42, ptr %coef_arrays, align 8
  call void @jpeg_copy_critical_parameters(ptr noundef %srcinfo, ptr noundef %dstinfo)
  %31 = load i32, ptr %argc.addr, align 4
  %32 = load ptr, ptr %argv.addr, align 8
  %call43 = call i32 @parse_switches(ptr noundef %dstinfo, i32 noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1)
  store i32 %call43, ptr %file_index, align 4
  %33 = load ptr, ptr %output_file, align 8
  call void @jpeg_stdio_dest(ptr noundef %dstinfo, ptr noundef %33)
  %34 = load ptr, ptr %coef_arrays, align 8
  call void @jpeg_write_coefficients(ptr noundef %dstinfo, ptr noundef %34)
  call void @jpeg_finish_compress(ptr noundef %dstinfo)
  call void @jpeg_destroy_compress(ptr noundef %dstinfo)
  %call44 = call i32 @jpeg_finish_decompress(ptr noundef %srcinfo)
  call void @jpeg_destroy_decompress(ptr noundef %srcinfo)
  %35 = load ptr, ptr %input_file, align 8
  %36 = load ptr, ptr @__stdinp, align 8
  %cmp45 = icmp ne ptr %35, %36
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end40
  %37 = load ptr, ptr %input_file, align 8
  %call48 = call i32 @fclose(ptr noundef %37)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end40
  %38 = load ptr, ptr %output_file, align 8
  %39 = load ptr, ptr @__stdoutp, align 8
  %cmp50 = icmp ne ptr %38, %39
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %40 = load ptr, ptr %output_file, align 8
  %call53 = call i32 @fclose(ptr noundef %40)
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jsrcerr, i32 0, i32 8
  %41 = load i64, ptr %num_warnings, align 8
  %num_warnings55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %jdsterr, i32 0, i32 8
  %42 = load i64, ptr %num_warnings55, align 8
  %add = add nsw i64 %41, %42
  %tobool = icmp ne i64 %add, 0
  %43 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 0
  call void @exit(i32 noundef %cond) #3
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
  %call = call i32 @keymatch(ptr noundef %12, ptr noundef @.str.5, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load ptr, ptr @progname, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.6, ptr noundef %14)
  call void @exit(i32 noundef 1) #3
  unreachable

if.else:                                          ; preds = %if.end6
  %15 = load ptr, ptr %arg, align 8
  %call9 = call i32 @keymatch(ptr noundef %15, ptr noundef @.str.7, i32 noundef 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %16 = load ptr, ptr %arg, align 8
  %call11 = call i32 @keymatch(ptr noundef %16, ptr noundef @.str.8, i32 noundef 1)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.else20

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  %17 = load i32, ptr @parse_switches.printed_version, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then13
  %18 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef @.str.11)
  store i32 1, ptr @parse_switches.printed_version, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then13
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err18, align 8
  %trace_level19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %trace_level19, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %trace_level19, align 4
  br label %if.end124

if.else20:                                        ; preds = %lor.lhs.false
  %22 = load ptr, ptr %arg, align 8
  %call21 = call i32 @keymatch(ptr noundef %22, ptr noundef @.str.12, i32 noundef 3)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.else46

if.then23:                                        ; preds = %if.else20
  store i8 120, ptr %ch, align 1
  %23 = load i32, ptr %argn, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, ptr %argn, align 4
  %24 = load i32, ptr %argc.addr, align 4
  %cmp25 = icmp sge i32 %inc24, %24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  call void @usage()
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then23
  %25 = load ptr, ptr %argv.addr, align 8
  %26 = load i32, ptr %argn, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %25, i64 %idxprom29
  %27 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %27, ptr noundef @.str.13, ptr noundef %lval, ptr noundef %ch)
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @usage()
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end28
  %28 = load i8, ptr %ch, align 1
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp eq i32 %conv36, 109
  br i1 %cmp37, label %if.then43, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end35
  %29 = load i8, ptr %ch, align 1
  %conv40 = sext i8 %29 to i32
  %cmp41 = icmp eq i32 %conv40, 77
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false39, %if.end35
  %30 = load i64, ptr %lval, align 8
  %mul = mul nsw i64 %30, 1000
  store i64 %mul, ptr %lval, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %lor.lhs.false39
  %31 = load i64, ptr %lval, align 8
  %mul45 = mul nsw i64 %31, 1000
  %32 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %mem, align 8
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %33, i32 0, i32 11
  store i64 %mul45, ptr %max_memory_to_use, align 8
  br label %if.end123

if.else46:                                        ; preds = %if.else20
  %34 = load ptr, ptr %arg, align 8
  %call47 = call i32 @keymatch(ptr noundef %34, ptr noundef @.str.14, i32 noundef 1)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then52, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.else46
  %35 = load ptr, ptr %arg, align 8
  %call50 = call i32 @keymatch(ptr noundef %35, ptr noundef @.str.15, i32 noundef 1)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %lor.lhs.false49, %if.else46
  %36 = load ptr, ptr %cinfo.addr, align 8
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 25
  store i32 1, ptr %optimize_coding, align 8
  br label %if.end122

if.else53:                                        ; preds = %lor.lhs.false49
  %37 = load ptr, ptr %arg, align 8
  %call54 = call i32 @keymatch(ptr noundef %37, ptr noundef @.str.16, i32 noundef 4)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.else64

if.then56:                                        ; preds = %if.else53
  %38 = load i32, ptr %argn, align 4
  %inc57 = add nsw i32 %38, 1
  store i32 %inc57, ptr %argn, align 4
  %39 = load i32, ptr %argc.addr, align 4
  %cmp58 = icmp sge i32 %inc57, %39
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then56
  call void @usage()
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.then56
  %40 = load ptr, ptr %argv.addr, align 8
  %41 = load i32, ptr %argn, align 4
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %40, i64 %idxprom62
  %42 = load ptr, ptr %arrayidx63, align 8
  store ptr %42, ptr @outfilename, align 8
  br label %if.end121

if.else64:                                        ; preds = %if.else53
  %43 = load ptr, ptr %arg, align 8
  %call65 = call i32 @keymatch(ptr noundef %43, ptr noundef @.str.17, i32 noundef 1)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else64
  store i32 1, ptr %simple_progressive, align 4
  br label %if.end120

if.else68:                                        ; preds = %if.else64
  %44 = load ptr, ptr %arg, align 8
  %call69 = call i32 @keymatch(ptr noundef %44, ptr noundef @.str.18, i32 noundef 1)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.else106

if.then71:                                        ; preds = %if.else68
  store i8 120, ptr %ch73, align 1
  %45 = load i32, ptr %argn, align 4
  %inc74 = add nsw i32 %45, 1
  store i32 %inc74, ptr %argn, align 4
  %46 = load i32, ptr %argc.addr, align 4
  %cmp75 = icmp sge i32 %inc74, %46
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then71
  call void @usage()
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then71
  %47 = load ptr, ptr %argv.addr, align 8
  %48 = load i32, ptr %argn, align 4
  %idxprom79 = sext i32 %48 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %47, i64 %idxprom79
  %49 = load ptr, ptr %arrayidx80, align 8
  %call81 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %49, ptr noundef @.str.13, ptr noundef %lval72, ptr noundef %ch73)
  %cmp82 = icmp slt i32 %call81, 1
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end78
  call void @usage()
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end78
  %50 = load i64, ptr %lval72, align 8
  %cmp86 = icmp slt i64 %50, 0
  br i1 %cmp86, label %if.then91, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end85
  %51 = load i64, ptr %lval72, align 8
  %cmp89 = icmp sgt i64 %51, 65535
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %lor.lhs.false88, %if.end85
  call void @usage()
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %lor.lhs.false88
  %52 = load i8, ptr %ch73, align 1
  %conv93 = sext i8 %52 to i32
  %cmp94 = icmp eq i32 %conv93, 98
  br i1 %cmp94, label %if.then100, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end92
  %53 = load i8, ptr %ch73, align 1
  %conv97 = sext i8 %53 to i32
  %cmp98 = icmp eq i32 %conv97, 66
  br i1 %cmp98, label %if.then100, label %if.else102

if.then100:                                       ; preds = %lor.lhs.false96, %if.end92
  %54 = load i64, ptr %lval72, align 8
  %conv101 = trunc i64 %54 to i32
  %55 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i32 0, i32 29
  store i32 %conv101, ptr %restart_interval, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i32 0, i32 30
  store i32 0, ptr %restart_in_rows, align 4
  br label %if.end105

if.else102:                                       ; preds = %lor.lhs.false96
  %57 = load i64, ptr %lval72, align 8
  %conv103 = trunc i64 %57 to i32
  %58 = load ptr, ptr %cinfo.addr, align 8
  %restart_in_rows104 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i32 0, i32 30
  store i32 %conv103, ptr %restart_in_rows104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then100
  br label %if.end119

if.else106:                                       ; preds = %if.else68
  %59 = load ptr, ptr %arg, align 8
  %call107 = call i32 @keymatch(ptr noundef %59, ptr noundef @.str.19, i32 noundef 2)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.else117

if.then109:                                       ; preds = %if.else106
  %60 = load i32, ptr %argn, align 4
  %inc110 = add nsw i32 %60, 1
  store i32 %inc110, ptr %argn, align 4
  %61 = load i32, ptr %argc.addr, align 4
  %cmp111 = icmp sge i32 %inc110, %61
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then109
  call void @usage()
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then109
  %62 = load ptr, ptr %argv.addr, align 8
  %63 = load i32, ptr %argn, align 4
  %idxprom115 = sext i32 %63 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %62, i64 %idxprom115
  %64 = load ptr, ptr %arrayidx116, align 8
  store ptr %64, ptr %scansarg, align 8
  br label %if.end118

if.else117:                                       ; preds = %if.else106
  call void @usage()
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.end114
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end105
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then67
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end61
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then52
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end44
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end17
  br label %if.end125

if.end125:                                        ; preds = %if.end124
  br label %for.inc

for.inc:                                          ; preds = %if.end125, %if.then5
  %65 = load i32, ptr %argn, align 4
  %inc126 = add nsw i32 %65, 1
  store i32 %inc126, ptr %argn, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end, %for.cond
  %66 = load i32, ptr %for_real.addr, align 4
  %tobool127 = icmp ne i32 %66, 0
  br i1 %tobool127, label %if.then128, label %if.end140

if.then128:                                       ; preds = %for.end
  %67 = load i32, ptr %simple_progressive, align 4
  %tobool129 = icmp ne i32 %67, 0
  br i1 %tobool129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then128
  %68 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_simple_progression(ptr noundef %68)
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.then128
  %69 = load ptr, ptr %scansarg, align 8
  %cmp132 = icmp ne ptr %69, null
  br i1 %cmp132, label %if.then134, label %if.end139

if.then134:                                       ; preds = %if.end131
  %70 = load ptr, ptr %cinfo.addr, align 8
  %71 = load ptr, ptr %scansarg, align 8
  %call135 = call i32 @read_scan_script(ptr noundef %70, ptr noundef %71)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.then134
  call void @usage()
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.then134
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end131
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %for.end
  %72 = load i32, ptr %argn, align 4
  ret i32 %72
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr @progname, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.20, ptr noundef %1)
  %2 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.21)
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.22)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.23)
  %5 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.24)
  %6 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.25)
  %7 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.26)
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.27)
  %9 = load ptr, ptr @__stderrp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.28)
  %10 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.29)
  %11 = load ptr, ptr @__stderrp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.30)
  %12 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.31)
  call void @exit(i32 noundef 1) #3
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

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
