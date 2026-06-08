; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_rdswitch.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/rdswitch.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str) #6
  store ptr %call, ptr %fp, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1) #6
  store i32 0, ptr %retval, align 4
  br label %return

while.cond:                                       ; preds = %entry, %for.end
  %storemerge = phi i32 [ %inc18, %for.end ], [ 0, %entry ]
  store i32 %storemerge, ptr %tblno, align 4
  %2 = load ptr, ptr %fp, align 8
  %call2 = call i32 @read_text_integer(ptr noundef %2, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %tblno, align 4
  %cmp3 = icmp sgt i32 %3, 3
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %while.body
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %filename.addr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %5) #6
  %6 = load ptr, ptr %fp, align 8
  %call6 = call i32 @fclose(ptr noundef %6) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %7 = load i64, ptr %val, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, ptr %table, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.end7
  %storemerge1 = phi i32 [ 1, %if.end7 ], [ %inc, %if.end15 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp8 = icmp slt i32 %storemerge1, 64
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %fp, align 8
  %call10 = call i32 @read_text_integer(ptr noundef %8, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %for.body
  %9 = load ptr, ptr @__stderrp, align 8
  %10 = load ptr, ptr %filename.addr, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %10) #6
  %11 = load ptr, ptr %fp, align 8
  %call14 = call i32 @fclose(ptr noundef %11) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.body
  %12 = load i64, ptr %val, align 8
  %conv16 = trunc i64 %12 to i32
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], ptr %table, i64 0, i64 %idxprom
  store i32 %conv16, ptr %arrayidx17, align 4
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load i32, ptr %tblno, align 4
  %17 = load i32, ptr %scale_factor.addr, align 4
  %18 = load i32, ptr %force_baseline.addr, align 4
  call void @jpeg_add_quant_table(ptr noundef %15, i32 noundef %16, ptr noundef nonnull %table, i32 noundef %17, i32 noundef %18) #6
  %inc18 = add nsw i32 %16, 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %19 = load i32, ptr %termchar, align 4
  %cmp19.not = icmp eq i32 %19, -1
  br i1 %cmp19.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %while.end
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = load ptr, ptr %filename.addr, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef %21) #6
  %22 = load ptr, ptr %fp, align 8
  %call23 = call i32 @fclose(ptr noundef %22) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %while.end
  %23 = load ptr, ptr %fp, align 8
  %call25 = call i32 @fclose(ptr noundef %23) #6
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then21, %if.then12, %if.then4, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %1 = load i32, ptr %ch, align 4
  %2 = load ptr, ptr %termchar.addr, align 8
  store i32 %1, ptr %2, align 4
  store i32 0, ptr %retval, align 4
  br label %return

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %ch, align 4
  %call1 = call i32 @isspace(i32 noundef %3) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %ch, align 4
  %isdigittmp = add i32 %4, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %if.end5, label %if.then4

if.then4:                                         ; preds = %do.end
  %5 = load i32, ptr %ch, align 4
  %6 = load ptr, ptr %termchar.addr, align 8
  store i32 %5, ptr %6, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %do.end
  %7 = load i32, ptr %ch, align 4
  %sub = add nsw i32 %7, -48
  %conv = sext i32 %sub to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.end5
  %storemerge = phi i64 [ %conv, %if.end5 ], [ %add, %if.end12 ]
  store i64 %storemerge, ptr %val, align 8
  %8 = load ptr, ptr %file.addr, align 8
  %call6 = call i32 @text_getc(ptr noundef %8)
  store i32 %call6, ptr %ch, align 4
  %cmp7.not = icmp eq i32 %call6, -1
  br i1 %cmp7.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %ch, align 4
  %isdigittmp1 = add i32 %9, -48
  %isdigit2 = icmp ult i32 %isdigittmp1, 10
  br i1 %isdigit2, label %if.end12, label %while.end

if.end12:                                         ; preds = %while.body
  %10 = load i64, ptr %val, align 8
  %mul = mul nsw i64 %10, 10
  store i64 %mul, ptr %val, align 8
  %11 = load i32, ptr %ch, align 4
  %sub13 = add nsw i32 %11, -48
  %conv14 = sext i32 %sub13 to i64
  %add = add nsw i64 %mul, %conv14
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.body, %while.cond
  %12 = load i64, ptr %val, align 8
  %13 = load ptr, ptr %result.addr, align 8
  store i64 %12, ptr %13, align 8
  %14 = load i32, ptr %ch, align 4
  %15 = load ptr, ptr %termchar.addr, align 8
  store i32 %14, ptr %15, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
  %call = call ptr @"\01_fopen"(ptr noundef %filename, ptr noundef nonnull @.str) #6
  store ptr %call, ptr %fp, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store ptr %scans, ptr %scanptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc69, %if.end68 ]
  store i32 %storemerge, ptr %scanno, align 4
  %2 = load ptr, ptr %fp, align 8
  %call2 = call i32 @read_scan_integer(ptr noundef %2, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.end70, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %scanno, align 4
  %cmp3 = icmp sgt i32 %3, 99
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %while.body
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %filename.addr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %5) #6
  %6 = load ptr, ptr %fp, align 8
  %call6 = call i32 @fclose(ptr noundef %6) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body
  %7 = load i64, ptr %val, align 8
  %conv = trunc i64 %7 to i32
  %8 = load ptr, ptr %scanptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, ptr %8, i64 0, i32 1
  store i32 %conv, ptr %component_index, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %if.end21, %if.end7
  %storemerge1 = phi i32 [ 1, %if.end7 ], [ %inc, %if.end21 ]
  store i32 %storemerge1, ptr %ncomps, align 4
  %9 = load i32, ptr %termchar, align 4
  %cmp9 = icmp eq i32 %9, 32
  br i1 %cmp9, label %while.body11, label %while.end

while.body11:                                     ; preds = %while.cond8
  %10 = load i32, ptr %ncomps, align 4
  %cmp12 = icmp sgt i32 %10, 3
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %while.body11
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load ptr, ptr %filename.addr, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.7, ptr noundef %12) #6
  %13 = load ptr, ptr %fp, align 8
  %call16 = call i32 @fclose(ptr noundef %13) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %while.body11
  %14 = load ptr, ptr %fp, align 8
  %call18 = call i32 @read_scan_integer(ptr noundef %14, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %bogus, label %if.end21

if.end21:                                         ; preds = %if.end17
  %15 = load i64, ptr %val, align 8
  %conv22 = trunc i64 %15 to i32
  %16 = load ptr, ptr %scanptr, align 8
  %17 = load i32, ptr %ncomps, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds %struct.jpeg_scan_info, ptr %16, i64 0, i32 1, i64 %idxprom
  store i32 %conv22, ptr %arrayidx24, align 4
  %inc = add nsw i32 %17, 1
  br label %while.cond8, !llvm.loop !11

while.end:                                        ; preds = %while.cond8
  %18 = load i32, ptr %ncomps, align 4
  %19 = load ptr, ptr %scanptr, align 8
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %termchar, align 4
  %cmp25 = icmp eq i32 %20, 58
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %while.end
  %21 = load ptr, ptr %fp, align 8
  %call28 = call i32 @read_scan_integer(ptr noundef %21, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool29.not = icmp ne i32 %call28, 0
  %22 = load i32, ptr %termchar, align 4
  %cmp30.not = icmp eq i32 %22, 32
  %or.cond = select i1 %tobool29.not, i1 %cmp30.not, i1 false
  br i1 %or.cond, label %if.end33, label %bogus

if.end33:                                         ; preds = %if.then27
  %23 = load i64, ptr %val, align 8
  %conv34 = trunc i64 %23 to i32
  %24 = load ptr, ptr %scanptr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, ptr %24, i64 0, i32 2
  store i32 %conv34, ptr %Ss, align 4
  %25 = load ptr, ptr %fp, align 8
  %call35 = call i32 @read_scan_integer(ptr noundef %25, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool36.not = icmp ne i32 %call35, 0
  %26 = load i32, ptr %termchar, align 4
  %cmp38.not = icmp eq i32 %26, 32
  %or.cond2 = select i1 %tobool36.not, i1 %cmp38.not, i1 false
  br i1 %or.cond2, label %if.end41, label %bogus

if.end41:                                         ; preds = %if.end33
  %27 = load i64, ptr %val, align 8
  %conv42 = trunc i64 %27 to i32
  %28 = load ptr, ptr %scanptr, align 8
  %Se = getelementptr inbounds %struct.jpeg_scan_info, ptr %28, i64 0, i32 3
  store i32 %conv42, ptr %Se, align 4
  %29 = load ptr, ptr %fp, align 8
  %call43 = call i32 @read_scan_integer(ptr noundef %29, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool44.not = icmp ne i32 %call43, 0
  %30 = load i32, ptr %termchar, align 4
  %cmp46.not = icmp eq i32 %30, 32
  %or.cond3 = select i1 %tobool44.not, i1 %cmp46.not, i1 false
  br i1 %or.cond3, label %if.end49, label %bogus

if.end49:                                         ; preds = %if.end41
  %31 = load i64, ptr %val, align 8
  %conv50 = trunc i64 %31 to i32
  %32 = load ptr, ptr %scanptr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, ptr %32, i64 0, i32 4
  store i32 %conv50, ptr %Ah, align 4
  %33 = load ptr, ptr %fp, align 8
  %call51 = call i32 @read_scan_integer(ptr noundef %33, ptr noundef nonnull %val, ptr noundef nonnull %termchar)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %bogus, label %if.end54

if.end54:                                         ; preds = %if.end49
  %34 = load i64, ptr %val, align 8
  %conv55 = trunc i64 %34 to i32
  %35 = load ptr, ptr %scanptr, align 8
  %Al = getelementptr inbounds %struct.jpeg_scan_info, ptr %35, i64 0, i32 5
  store i32 %conv55, ptr %Al, align 4
  br label %if.end60

if.else:                                          ; preds = %while.end
  %36 = load ptr, ptr %scanptr, align 8
  %Ss56 = getelementptr inbounds %struct.jpeg_scan_info, ptr %36, i64 0, i32 2
  store i32 0, ptr %Ss56, align 4
  %Se57 = getelementptr inbounds %struct.jpeg_scan_info, ptr %36, i64 0, i32 3
  store i32 63, ptr %Se57, align 4
  %Ah58 = getelementptr inbounds %struct.jpeg_scan_info, ptr %36, i64 0, i32 4
  store i32 0, ptr %Ah58, align 4
  %37 = load ptr, ptr %scanptr, align 8
  %Al59 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 5
  store i32 0, ptr %Al59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.end54
  %38 = load i32, ptr %termchar, align 4
  %cmp61.not = icmp eq i32 %38, 59
  %39 = load i32, ptr %termchar, align 4
  %cmp63.not = icmp eq i32 %39, -1
  %or.cond4 = select i1 %cmp61.not, i1 true, i1 %cmp63.not
  br i1 %or.cond4, label %if.end68, label %bogus

bogus:                                            ; preds = %if.end60, %if.end49, %if.end41, %if.end33, %if.then27, %if.end17
  %40 = load ptr, ptr @__stderrp, align 8
  %41 = load ptr, ptr %filename.addr, align 8
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.8, ptr noundef %41) #6
  %42 = load ptr, ptr %fp, align 8
  %call67 = call i32 @fclose(ptr noundef %42) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end60
  %43 = load ptr, ptr %scanptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, ptr %43, i64 1
  store ptr %incdec.ptr, ptr %scanptr, align 8
  %44 = load i32, ptr %scanno, align 4
  %inc69 = add nsw i32 %44, 1
  br label %while.cond, !llvm.loop !12

while.end70:                                      ; preds = %while.cond
  %45 = load i32, ptr %termchar, align 4
  %cmp71.not = icmp eq i32 %45, -1
  br i1 %cmp71.not, label %if.end76, label %if.then73

if.then73:                                        ; preds = %while.end70
  %46 = load ptr, ptr @__stderrp, align 8
  %47 = load ptr, ptr %filename.addr, align 8
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.4, ptr noundef %47) #6
  %48 = load ptr, ptr %fp, align 8
  %call75 = call i32 @fclose(ptr noundef %48) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %while.end70
  %49 = load i32, ptr %scanno, align 4
  %cmp77 = icmp sgt i32 %49, 0
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end76
  %50 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i64 0, i32 1
  %51 = load ptr, ptr %mem, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load i32, ptr %scanno, align 4
  %conv80 = sext i32 %53 to i64
  %mul = mul nsw i64 %conv80, 36
  %call81 = call ptr %52(ptr noundef %50, i32 noundef 1, i64 noundef %mul) #6
  store ptr %call81, ptr %scanptr, align 8
  %conv83 = sext i32 %53 to i64
  %mul84 = mul nsw i64 %conv83, 36
  %54 = call i64 @llvm.objectsize.i64.p0(ptr %call81, i1 false, i1 true, i1 false)
  %call85 = call ptr @__memcpy_chk(ptr noundef %call81, ptr noundef nonnull %scans, i64 noundef %mul84, i64 noundef %54) #6
  %55 = load ptr, ptr %cinfo.addr, align 8
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 22
  store ptr %call81, ptr %scan_info, align 8
  %56 = load i32, ptr %scanno, align 4
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 21
  store i32 %56, ptr %num_scans, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.end76
  %57 = load ptr, ptr %fp, align 8
  %call87 = call i32 @fclose(ptr noundef %57) #6
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end86, %if.then73, %bogus, %if.then14, %if.then4, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_scan_integer(ptr noundef %file, ptr noundef %result, ptr noundef %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %termchar.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %termchar, ptr %termchar.addr, align 8
  %call = call i32 @read_text_integer(ptr noundef %file, ptr noundef %result, ptr noundef %termchar)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %termchar.addr, align 8
  %1 = load i32, ptr %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi i32 [ %1, %if.end ], [ %call3, %while.body ]
  store i32 %storemerge, ptr %ch, align 4
  %cmp.not = icmp eq i32 %storemerge, -1
  br i1 %cmp.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %ch, align 4
  %call1 = call i32 @isspace(i32 noundef %2) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %3 = load ptr, ptr %file.addr, align 8
  %call3 = call i32 @text_getc(ptr noundef %3)
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond, %land.rhs
  %4 = load i32, ptr %ch, align 4
  %isdigittmp = add i32 %4, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.end
  %5 = load i32, ptr %ch, align 4
  %6 = load ptr, ptr %file.addr, align 8
  %call7 = call i32 @ungetc(i32 noundef %5, ptr noundef %6) #6
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  store i32 32, ptr %ch, align 4
  br label %if.end17

if.else:                                          ; preds = %while.end
  %7 = load i32, ptr %ch, align 4
  %cmp11.not = icmp eq i32 %7, -1
  %8 = load i32, ptr %ch, align 4
  %cmp12.not = icmp eq i32 %8, 59
  %or.cond = select i1 %cmp11.not, i1 true, i1 %cmp12.not
  %9 = load i32, ptr %ch, align 4
  %cmp14.not = icmp eq i32 %9, 58
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp14.not
  %spec.store.select = select i1 %or.cond1, i32 %9, i32 32
  store i32 %spec.store.select, ptr %ch, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end10
  %10 = load i32, ptr %ch, align 4
  %11 = load ptr, ptr %termchar.addr, align 8
  store i32 %10, ptr %11, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then9, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %cmp = icmp slt i32 %storemerge, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i8 44, ptr %ch, align 1
  %2 = load ptr, ptr %arg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull %val, ptr noundef nonnull %ch) #6
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i8, ptr %ch, align 1
  %cmp3.not = icmp eq i8 %3, 44
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %val, align 4
  %cmp7 = icmp slt i32 %4, 0
  %5 = load i32, ptr %val, align 4
  %cmp9 = icmp sgt i32 %5, 3
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  %6 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef 3) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  %7 = load i32, ptr %val, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 14
  %9 = load ptr, ptr %comp_info, align 8
  %10 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %10 to i64
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 %idxprom, i32 4
  store i32 %7, ptr %quant_tbl_no, align 8
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end13
  %11 = load ptr, ptr %arg.addr, align 8
  %12 = load i8, ptr %11, align 1
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %for.inc, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %arg.addr, align 8
  %14 = load i8, ptr %13, align 1
  %cmp17 = icmp ne i8 %14, 44
  br i1 %cmp17, label %while.cond, label %for.inc, !llvm.loop !14

if.else:                                          ; preds = %for.body
  %15 = load i32, ptr %val, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comp_info19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 14
  %17 = load ptr, ptr %comp_info19, align 8
  %18 = load i32, ptr %ci, align 4
  %idxprom20 = sext i32 %18 to i64
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 %idxprom20, i32 4
  store i32 %15, ptr %quant_tbl_no22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %while.cond, %land.rhs
  %19 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %19, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then5, %if.then2
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %cmp = icmp slt i32 %storemerge, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i8 44, ptr %ch2, align 1
  %2 = load ptr, ptr %arg.addr, align 8
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull %val1, ptr noundef nonnull %ch1, ptr noundef nonnull %val2, ptr noundef nonnull %ch2) #6
  %cmp1 = icmp slt i32 %call, 3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i8, ptr %ch1, align 1
  %cmp3.not = icmp eq i8 %3, 120
  %4 = load i8, ptr %ch1, align 1
  %cmp6.not = icmp eq i8 %4, 88
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp6.not
  %5 = load i8, ptr %ch2, align 1
  %cmp9.not = icmp eq i8 %5, 44
  %or.cond1 = select i1 %or.cond, i1 %cmp9.not, i1 false
  br i1 %or.cond1, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %6 = load i32, ptr %val1, align 4
  %cmp13 = icmp slt i32 %6, 1
  %7 = load i32, ptr %val1, align 4
  %cmp16 = icmp sgt i32 %7, 4
  %or.cond2 = select i1 %cmp13, i1 true, i1 %cmp16
  %8 = load i32, ptr %val2, align 4
  %cmp19 = icmp slt i32 %8, 1
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp19
  %9 = load i32, ptr %val2, align 4
  %cmp22 = icmp sgt i32 %9, 4
  %or.cond4 = select i1 %or.cond3, i1 true, i1 %cmp22
  br i1 %or.cond4, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end12
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end12
  %12 = load i32, ptr %val1, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 14
  %14 = load ptr, ptr %comp_info, align 8
  %15 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %15 to i64
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 %idxprom, i32 2
  store i32 %12, ptr %h_samp_factor, align 8
  %16 = load i32, ptr %val2, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 14
  %18 = load ptr, ptr %comp_info27, align 8
  %19 = load i32, ptr %ci, align 4
  %idxprom28 = sext i32 %19 to i64
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 %idxprom28, i32 3
  store i32 %16, ptr %v_samp_factor, align 4
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end26
  %20 = load ptr, ptr %arg.addr, align 8
  %21 = load i8, ptr %20, align 1
  %tobool31.not = icmp eq i8 %21, 0
  br i1 %tobool31.not, label %for.inc, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %22 = load ptr, ptr %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %arg.addr, align 8
  %23 = load i8, ptr %22, align 1
  %cmp33 = icmp ne i8 %23, 44
  br i1 %cmp33, label %while.cond, label %for.inc, !llvm.loop !16

if.else:                                          ; preds = %for.body
  %24 = load ptr, ptr %cinfo.addr, align 8
  %comp_info35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i64 0, i32 14
  %25 = load ptr, ptr %comp_info35, align 8
  %26 = load i32, ptr %ci, align 4
  %idxprom36 = sext i32 %26 to i64
  %h_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 %idxprom36, i32 2
  store i32 1, ptr %h_samp_factor38, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %comp_info39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i64 0, i32 14
  %28 = load ptr, ptr %comp_info39, align 8
  %29 = load i32, ptr %ci, align 4
  %idxprom40 = sext i32 %29 to i64
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 %idxprom40, i32 3
  store i32 1, ptr %v_samp_factor42, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %while.cond, %land.rhs
  %30 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %30, 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then24, %if.then11, %if.then2
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @text_getc(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  %call = call i32 @getc(ptr noundef %file) #6
  store i32 %call, ptr %ch, align 4
  %cmp = icmp eq i32 %call, 35
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry, %do.body
  %0 = load ptr, ptr %file.addr, align 8
  %call1 = call i32 @getc(ptr noundef %0) #6
  store i32 %call1, ptr %ch, align 4
  %1 = load i32, ptr %ch, align 4
  %cmp2.not = icmp eq i32 %1, 10
  %2 = load i32, ptr %ch, align 4
  %cmp3 = icmp ne i32 %2, -1
  %3 = select i1 %cmp2.not, i1 false, i1 %cmp3
  br i1 %3, label %do.body, label %if.end, !llvm.loop !18

if.end:                                           ; preds = %do.body, %entry
  %4 = load i32, ptr %ch, align 4
  ret i32 %4
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #4

declare i32 @getc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nofree nounwind }
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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
