; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdswitch.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/rdswitch.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @read_quant_tables(ptr noundef %cinfo, ptr noundef %filename, i32 noundef %scale_factor, i32 noundef %force_baseline) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %fp = alloca ptr, align 8
  %tblno = alloca i32, align 4
  %i = alloca i32, align 4
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %table = alloca [64 x i32], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %scale_factor, ptr %scale_factor.addr, align 4
  store i32 %force_baseline, ptr %force_baseline.addr, align 4
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %fp, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %tblno, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %3 = load ptr, ptr %fp, align 8
  %call2 = call i32 @read_text_integer(ptr noundef %3, ptr noundef %val, ptr noundef %termchar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %tblno, align 4
  %cmp3 = icmp sge i32 %4, 4
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %while.body
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr %filename.addr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.2, ptr noundef %6)
  %7 = load ptr, ptr %fp, align 8
  %call6 = call i32 @fclose(ptr noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %8 = load i64, ptr %val, align 8
  %conv = trunc i64 %8 to i32
  %arrayidx = getelementptr inbounds [64 x i32], ptr %table, i64 0, i64 0
  store i32 %conv, ptr %arrayidx, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %9, 64
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %fp, align 8
  %call10 = call i32 @read_text_integer(ptr noundef %10, ptr noundef %val, ptr noundef %termchar)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %for.body
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr %filename.addr, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.3, ptr noundef %12)
  %13 = load ptr, ptr %fp, align 8
  %call14 = call i32 @fclose(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.body
  %14 = load i64, ptr %val, align 8
  %conv16 = trunc i64 %14 to i32
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], ptr %table, i64 0, i64 %idxprom
  store i32 %conv16, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load i32, ptr %tblno, align 4
  %arraydecay = getelementptr inbounds [64 x i32], ptr %table, i64 0, i64 0
  %19 = load i32, ptr %scale_factor.addr, align 4
  %20 = load i32, ptr %force_baseline.addr, align 4
  call void @jpeg_add_quant_table(ptr noundef %17, i32 noundef %18, ptr noundef %arraydecay, i32 noundef %19, i32 noundef %20)
  %21 = load i32, ptr %tblno, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, ptr %tblno, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr %termchar, align 4
  %cmp19 = icmp ne i32 %22, -1
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %while.end
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load ptr, ptr %filename.addr, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.4, ptr noundef %24)
  %25 = load ptr, ptr %fp, align 8
  %call23 = call i32 @fclose(ptr noundef %25)
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %while.end
  %26 = load ptr, ptr %fp, align 8
  %call25 = call i32 @fclose(ptr noundef %26)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then21, %if.then12, %if.then4, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_text_integer(ptr noundef %file, ptr noundef %result, ptr noundef %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %termchar.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  %val = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %result, ptr %result.addr, align 8
  store ptr %termchar, ptr %termchar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %file.addr, align 8
  %call = call i32 @text_getc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i32, ptr %ch, align 4
  %3 = load ptr, ptr %termchar.addr, align 8
  store i32 %2, ptr %3, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %4 = load i32, ptr %ch, align 4
  %call1 = call i32 @isspace(i32 noundef %4) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %ch, align 4
  %call2 = call i32 @isdigit(i32 noundef %5) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.end
  %6 = load i32, ptr %ch, align 4
  %7 = load ptr, ptr %termchar.addr, align 8
  store i32 %6, ptr %7, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.end
  %8 = load i32, ptr %ch, align 4
  %sub = sub nsw i32 %8, 48
  %conv = sext i32 %sub to i64
  store i64 %conv, ptr %val, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.end5
  %9 = load ptr, ptr %file.addr, align 8
  %call6 = call i32 @text_getc(ptr noundef %9)
  store i32 %call6, ptr %ch, align 4
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %ch, align 4
  %call9 = call i32 @isdigit(i32 noundef %10) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %while.body
  br label %while.end

if.end12:                                         ; preds = %while.body
  %11 = load i64, ptr %val, align 8
  %mul = mul nsw i64 %11, 10
  store i64 %mul, ptr %val, align 8
  %12 = load i32, ptr %ch, align 4
  %sub13 = sub nsw i32 %12, 48
  %conv14 = sext i32 %sub13 to i64
  %13 = load i64, ptr %val, align 8
  %add = add nsw i64 %13, %conv14
  store i64 %add, ptr %val, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.then11, %while.cond
  %14 = load i64, ptr %val, align 8
  %15 = load ptr, ptr %result.addr, align 8
  store i64 %14, ptr %15, align 8
  %16 = load i32, ptr %ch, align 4
  %17 = load ptr, ptr %termchar.addr, align 8
  store i32 %16, ptr %17, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare i32 @fclose(ptr noundef) #1

declare void @jpeg_add_quant_table(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @read_scan_script(ptr noundef %cinfo, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %scanno = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %scanptr = alloca ptr, align 8
  %scans = alloca [100 x %struct.jpeg_scan_info], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %fp, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.5, ptr noundef %2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x %struct.jpeg_scan_info], ptr %scans, i64 0, i64 0
  store ptr %arraydecay, ptr %scanptr, align 8
  store i32 0, ptr %scanno, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.end
  %3 = load ptr, ptr %fp, align 8
  %call2 = call i32 @read_scan_integer(ptr noundef %3, ptr noundef %val, ptr noundef %termchar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end70

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %scanno, align 4
  %cmp3 = icmp sge i32 %4, 100
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %while.body
  %5 = load ptr, ptr @__stderrp, align 8
  %6 = load ptr, ptr %filename.addr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.6, ptr noundef %6)
  %7 = load ptr, ptr %fp, align 8
  %call6 = call i32 @fclose(ptr noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %8 = load i64, ptr %val, align 8
  %conv = trunc i64 %8 to i32
  %9 = load ptr, ptr %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], ptr %component_index, i64 0, i64 0
  store i32 %conv, ptr %arrayidx, align 4
  store i32 1, ptr %ncomps, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %if.end21, %if.end7
  %10 = load i32, ptr %termchar, align 4
  %cmp9 = icmp eq i32 %10, 32
  br i1 %cmp9, label %while.body11, label %while.end

while.body11:                                     ; preds = %while.cond8
  %11 = load i32, ptr %ncomps, align 4
  %cmp12 = icmp sge i32 %11, 4
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %while.body11
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = load ptr, ptr %filename.addr, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.7, ptr noundef %13)
  %14 = load ptr, ptr %fp, align 8
  %call16 = call i32 @fclose(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %while.body11
  %15 = load ptr, ptr %fp, align 8
  %call18 = call i32 @read_scan_integer(ptr noundef %15, ptr noundef %val, ptr noundef %termchar)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  br label %bogus

if.end21:                                         ; preds = %if.end17
  %16 = load i64, ptr %val, align 8
  %conv22 = trunc i64 %16 to i32
  %17 = load ptr, ptr %scanptr, align 8
  %component_index23 = getelementptr inbounds %struct.jpeg_scan_info, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %ncomps, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %component_index23, i64 0, i64 %idxprom
  store i32 %conv22, ptr %arrayidx24, align 4
  %19 = load i32, ptr %ncomps, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %ncomps, align 4
  br label %while.cond8, !llvm.loop !11

while.end:                                        ; preds = %while.cond8
  %20 = load i32, ptr %ncomps, align 4
  %21 = load ptr, ptr %scanptr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, ptr %21, i32 0, i32 0
  store i32 %20, ptr %comps_in_scan, align 4
  %22 = load i32, ptr %termchar, align 4
  %cmp25 = icmp eq i32 %22, 58
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %while.end
  %23 = load ptr, ptr %fp, align 8
  %call28 = call i32 @read_scan_integer(ptr noundef %23, ptr noundef %val, ptr noundef %termchar)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %if.then27
  %24 = load i32, ptr %termchar, align 4
  %cmp30 = icmp ne i32 %24, 32
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %if.then27
  br label %bogus

if.end33:                                         ; preds = %lor.lhs.false
  %25 = load i64, ptr %val, align 8
  %conv34 = trunc i64 %25 to i32
  %26 = load ptr, ptr %scanptr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %26, i32 0, i32 2
  store i32 %conv34, ptr %Ss, align 4
  %27 = load ptr, ptr %fp, align 8
  %call35 = call i32 @read_scan_integer(ptr noundef %27, ptr noundef %val, ptr noundef %termchar)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false37, label %if.then40

lor.lhs.false37:                                  ; preds = %if.end33
  %28 = load i32, ptr %termchar, align 4
  %cmp38 = icmp ne i32 %28, 32
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false37, %if.end33
  br label %bogus

if.end41:                                         ; preds = %lor.lhs.false37
  %29 = load i64, ptr %val, align 8
  %conv42 = trunc i64 %29 to i32
  %30 = load ptr, ptr %scanptr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %30, i32 0, i32 3
  store i32 %conv42, ptr %Se, align 4
  %31 = load ptr, ptr %fp, align 8
  %call43 = call i32 @read_scan_integer(ptr noundef %31, ptr noundef %val, ptr noundef %termchar)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %lor.lhs.false45, label %if.then48

lor.lhs.false45:                                  ; preds = %if.end41
  %32 = load i32, ptr %termchar, align 4
  %cmp46 = icmp ne i32 %32, 32
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false45, %if.end41
  br label %bogus

if.end49:                                         ; preds = %lor.lhs.false45
  %33 = load i64, ptr %val, align 8
  %conv50 = trunc i64 %33 to i32
  %34 = load ptr, ptr %scanptr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, ptr %34, i32 0, i32 4
  store i32 %conv50, ptr %Ah, align 4
  %35 = load ptr, ptr %fp, align 8
  %call51 = call i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdswitch_0(ptr noundef %35, ptr noundef %val, ptr noundef %termchar)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  br label %bogus

if.end54:                                         ; preds = %if.end49
  %36 = load i64, ptr %val, align 8
  %conv55 = trunc i64 %36 to i32
  %37 = load ptr, ptr %scanptr, align 8
  %Al = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i32 0, i32 5
  store i32 %conv55, ptr %Al, align 4
  br label %if.end60

if.else:                                          ; preds = %while.end
  %38 = load ptr, ptr %scanptr, align 8
  %Ss56 = getelementptr inbounds %struct.jpeg_scan_info, ptr %38, i32 0, i32 2
  store i32 0, ptr %Ss56, align 4
  %39 = load ptr, ptr %scanptr, align 8
  %Se57 = getelementptr inbounds %struct.jpeg_scan_info, ptr %39, i32 0, i32 3
  store i32 63, ptr %Se57, align 4
  %40 = load ptr, ptr %scanptr, align 8
  %Ah58 = getelementptr inbounds %struct.jpeg_scan_info, ptr %40, i32 0, i32 4
  store i32 0, ptr %Ah58, align 4
  %41 = load ptr, ptr %scanptr, align 8
  %Al59 = getelementptr inbounds %struct.jpeg_scan_info, ptr %41, i32 0, i32 5
  store i32 0, ptr %Al59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.end54
  %42 = load i32, ptr %termchar, align 4
  %cmp61 = icmp ne i32 %42, 59
  br i1 %cmp61, label %land.lhs.true, label %if.end68

land.lhs.true:                                    ; preds = %if.end60
  %43 = load i32, ptr %termchar, align 4
  %cmp63 = icmp ne i32 %43, -1
  br i1 %cmp63, label %if.then65, label %if.end68

if.then65:                                        ; preds = %land.lhs.true
  br label %bogus

bogus:                                            ; preds = %if.then65, %if.then53, %if.then48, %if.then40, %if.then32, %if.then20
  %44 = load ptr, ptr @__stderrp, align 8
  %45 = load ptr, ptr %filename.addr, align 8
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.8, ptr noundef %45)
  %46 = load ptr, ptr %fp, align 8
  %call67 = call i32 @fclose(ptr noundef %46)
  store i32 0, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %land.lhs.true, %if.end60
  %47 = load ptr, ptr %scanptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %47, i32 1
  store ptr %incdec.ptr, ptr %scanptr, align 8
  %48 = load i32, ptr %scanno, align 4
  %inc69 = add nsw i32 %48, 1
  store i32 %inc69, ptr %scanno, align 4
  br label %while.cond, !llvm.loop !12

while.end70:                                      ; preds = %while.cond
  %49 = load i32, ptr %termchar, align 4
  %cmp71 = icmp ne i32 %49, -1
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %while.end70
  %50 = load ptr, ptr @__stderrp, align 8
  %51 = load ptr, ptr %filename.addr, align 8
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.4, ptr noundef %51)
  %52 = load ptr, ptr %fp, align 8
  %call75 = call i32 @fclose(ptr noundef %52)
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %while.end70
  %53 = load i32, ptr %scanno, align 4
  %cmp77 = icmp sgt i32 %53, 0
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end76
  %54 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %alloc_small, align 8
  %57 = load ptr, ptr %cinfo.addr, align 8
  %58 = load i32, ptr %scanno, align 4
  %conv80 = sext i32 %58 to i64
  %mul = mul i64 %conv80, 36
  %call81 = call ptr %56(ptr noundef %57, i32 noundef 1, i64 noundef %mul)
  store ptr %call81, ptr %scanptr, align 8
  %59 = load ptr, ptr %scanptr, align 8
  %arraydecay82 = getelementptr inbounds [100 x %struct.jpeg_scan_info], ptr %scans, i64 0, i64 0
  %60 = load i32, ptr %scanno, align 4
  %conv83 = sext i32 %60 to i64
  %mul84 = mul i64 %conv83, 36
  %61 = load ptr, ptr %scanptr, align 8
  %62 = call i64 @llvm.objectsize.i64.p0(ptr %61, i1 false, i1 true, i1 false)
  %call85 = call ptr @__memcpy_chk(ptr noundef %59, ptr noundef %arraydecay82, i64 noundef %mul84, i64 noundef %62) #6
  %63 = load ptr, ptr %scanptr, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i32 0, i32 22
  store ptr %63, ptr %scan_info, align 8
  %65 = load i32, ptr %scanno, align 4
  %66 = load ptr, ptr %cinfo.addr, align 8
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 21
  store i32 %65, ptr %num_scans, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.end76
  %67 = load ptr, ptr %fp, align 8
  %call87 = call i32 @fclose(ptr noundef %67)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end86, %if.then73, %bogus, %if.then14, %if.then4, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_scan_integer(ptr noundef %file, ptr noundef %result, ptr noundef %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %termchar.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %result, ptr %result.addr, align 8
  store ptr %termchar, ptr %termchar.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %result.addr, align 8
  %2 = load ptr, ptr %termchar.addr, align 8
  %call = call i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %termchar.addr, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %ch, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %ch, align 4
  %cmp = icmp ne i32 %5, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %ch, align 4
  %call1 = call i32 @isspace(i32 noundef %6) #5
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %file.addr, align 8
  %call3 = call i32 @text_getc(ptr noundef %8)
  store i32 %call3, ptr %ch, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %9 = load i32, ptr %ch, align 4
  %call4 = call i32 @isdigit(i32 noundef %9) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.end
  %10 = load i32, ptr %ch, align 4
  %11 = load ptr, ptr %file.addr, align 8
  %call7 = call i32 @ungetc(i32 noundef %10, ptr noundef %11)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  store i32 32, ptr %ch, align 4
  br label %if.end17

if.else:                                          ; preds = %while.end
  %12 = load i32, ptr %ch, align 4
  %cmp11 = icmp ne i32 %12, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.else
  %13 = load i32, ptr %ch, align 4
  %cmp12 = icmp ne i32 %13, 59
  br i1 %cmp12, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr %ch, align 4
  %cmp14 = icmp ne i32 %14, 58
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true13
  store i32 32, ptr %ch, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true13, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end10
  %15 = load i32, ptr %ch, align 4
  %16 = load ptr, ptr %termchar.addr, align 8
  store i32 %15, ptr %16, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then9, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define i32 @set_quant_slots(ptr noundef %cinfo, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %ci = alloca i32, align 4
  %ch = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %val, align 4
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ci, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %arg.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 44, ptr %ch, align 1
  %3 = load ptr, ptr %arg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.9, ptr noundef %val, ptr noundef %ch)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8, ptr %ch, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 44
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr %val, align 4
  %cmp7 = icmp slt i32 %5, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load i32, ptr %val, align 4
  %cmp9 = icmp sge i32 %6, 4
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false, %if.end6
  %7 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.10, i32 noundef 3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %8 = load i32, ptr %val, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 14
  %10 = load ptr, ptr %comp_info, align 8
  %11 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 %idxprom
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx, i32 0, i32 4
  store i32 %8, ptr %quant_tbl_no, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %12 = load ptr, ptr %arg.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv14 = sext i8 %13 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %arg.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp ne i32 %conv16, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  br label %if.end23

if.else:                                          ; preds = %for.body
  %17 = load i32, ptr %val, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %comp_info19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 14
  %19 = load ptr, ptr %comp_info19, align 8
  %20 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 %idxprom20
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx21, i32 0, i32 4
  store i32 %17, ptr %quant_tbl_no22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %21 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then5, %if.then2
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @set_sample_factors(ptr noundef %cinfo, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ci, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %arg.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 44, ptr %ch2, align 1
  %3 = load ptr, ptr %arg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.11, ptr noundef %val1, ptr noundef %ch1, ptr noundef %val2, ptr noundef %ch2)
  %cmp1 = icmp slt i32 %call, 3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8, ptr %ch1, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 120
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, ptr %ch1, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 88
  br i1 %cmp6, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %6 = load i8, ptr %ch2, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp ne i32 %conv8, 44
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %7 = load i32, ptr %val1, align 4
  %cmp13 = icmp sle i32 %7, 0
  br i1 %cmp13, label %if.then24, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end12
  %8 = load i32, ptr %val1, align 4
  %cmp16 = icmp sgt i32 %8, 4
  br i1 %cmp16, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %9 = load i32, ptr %val2, align 4
  %cmp19 = icmp sle i32 %9, 0
  br i1 %cmp19, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %10 = load i32, ptr %val2, align 4
  %cmp22 = icmp sgt i32 %10, 4
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %if.end12
  %11 = load ptr, ptr @__stderrp, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.12)
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false21
  %12 = load i32, ptr %val1, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 14
  %14 = load ptr, ptr %comp_info, align 8
  %15 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 %idxprom
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx, i32 0, i32 2
  store i32 %12, ptr %h_samp_factor, align 8
  %16 = load i32, ptr %val2, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 14
  %18 = load ptr, ptr %comp_info27, align 8
  %19 = load i32, ptr %ci, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 %idxprom28
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx29, i32 0, i32 3
  store i32 %16, ptr %v_samp_factor, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end26
  %20 = load ptr, ptr %arg.addr, align 8
  %21 = load i8, ptr %20, align 1
  %conv30 = sext i8 %21 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %22 = load ptr, ptr %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %arg.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv32 = sext i8 %23 to i32
  %cmp33 = icmp ne i32 %conv32, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end
  br label %if.end43

if.else:                                          ; preds = %for.body
  %25 = load ptr, ptr %cinfo.addr, align 8
  %comp_info35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 14
  %26 = load ptr, ptr %comp_info35, align 8
  %27 = load i32, ptr %ci, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 %idxprom36
  %h_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx37, i32 0, i32 2
  store i32 1, ptr %h_samp_factor38, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %comp_info39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 14
  %29 = load ptr, ptr %comp_info39, align 8
  %30 = load i32, ptr %ci, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds %struct.jpeg_component_info, ptr %29, i64 %idxprom40
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx41, i32 0, i32 3
  store i32 1, ptr %v_samp_factor42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %31 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then24, %if.then11, %if.then2
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @text_getc(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %2 = load ptr, ptr %file.addr, align 8
  %call1 = call i32 @getc(ptr noundef %2)
  store i32 %call1, ptr %ch, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %ch, align 4
  %cmp2 = icmp ne i32 %3, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %4 = load i32, ptr %ch, align 4
  %cmp3 = icmp ne i32 %4, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %5, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %6 = load i32, ptr %ch, align 4
  ret i32 %6
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #4

declare i32 @getc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_rdswitch_0(ptr noundef %file, ptr noundef %result, ptr noundef %termchar)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %termchar.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %result, ptr %result.addr, align 8
  store ptr %termchar, ptr %termchar.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %result.addr, align 8
  %2 = load ptr, ptr %termchar.addr, align 8
  %call = call i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %termchar.addr, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %ch, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %ch, align 4
  %cmp = icmp ne i32 %5, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %ch, align 4
  %call1 = call i32 @isspace(i32 noundef %6) #5
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %file.addr, align 8
  %call3 = call i32 @text_getc(ptr noundef %8)
  store i32 %call3, ptr %ch, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %9 = load i32, ptr %ch, align 4
  %call4 = call i32 @isdigit(i32 noundef %9) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.end
  %10 = load i32, ptr %ch, align 4
  %11 = load ptr, ptr %file.addr, align 8
  %call7 = call i32 @ungetc(i32 noundef %10, ptr noundef %11)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  store i32 32, ptr %ch, align 4
  br label %if.end17

if.else:                                          ; preds = %while.end
  %12 = load i32, ptr %ch, align 4
  %cmp11 = icmp ne i32 %12, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.else
  %13 = load i32, ptr %ch, align 4
  %cmp12 = icmp ne i32 %13, 59
  br i1 %cmp12, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr %ch, align 4
  %cmp14 = icmp ne i32 %14, 58
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true13
  store i32 32, ptr %ch, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true13, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end10
  %15 = load i32, ptr %ch, align 4
  %16 = load ptr, ptr %termchar.addr, align 8
  store i32 %15, ptr %16, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then9, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
