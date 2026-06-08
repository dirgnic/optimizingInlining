; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_ansi2knr.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/ansi2knr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [10 x i8] c"--varargs\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unrecognized switch: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Usage: ansi2knr input_file [output_file]\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot open output file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot open input file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"#line 1 \22%s\22\0A\00", align 1
@test1.words = internal global [25 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr null], align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Unable to allocate break table!\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"va_alist\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c")  \00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"va_dcl\00", align 1
@str = private unnamed_addr constant [41 x i8] c"Usage: ansi2knr input_file [output_file]\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %line = alloca ptr, align 8
  %more = alloca ptr, align 8
  %convert_varargs = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %convert_varargs, align 4
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = load i8, ptr %1, align 1
  %cmp2 = icmp eq i8 %2, 45
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx4, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(10) @.str) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %convert_varargs, align 4
  %5 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %argc.addr, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  br label %if.end8

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %9) #7
  call void @exit(i32 noundef 1) #8
  unreachable

if.end8:                                          ; preds = %if.then5, %land.lhs.true, %entry
  %10 = load i32, ptr %argc.addr, align 4
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
  ]

sw.default:                                       ; preds = %if.end8
  %puts = call i32 @puts(ptr nonnull @str)
  call void @exit(i32 noundef 0) #8
  unreachable

sw.bb:                                            ; preds = %if.end8
  %11 = load ptr, ptr @__stdoutp, align 8
  store ptr %11, ptr %out, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @"\01_fopen"(ptr noundef %13, ptr noundef nonnull @.str.3) #7
  store ptr %call12, ptr %out, align 8
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then15, label %sw.epilog

if.then15:                                        ; preds = %sw.bb10
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %15, i64 2
  %16 = load ptr, ptr %arrayidx16, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef %16) #7
  call void @exit(i32 noundef 1) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %17, i64 1
  %18 = load ptr, ptr %arrayidx19, align 8
  %call20 = call ptr @"\01_fopen"(ptr noundef %18, ptr noundef nonnull @.str.5) #7
  store ptr %call20, ptr %in, align 8
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %sw.epilog
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef %21) #7
  call void @exit(i32 noundef 1) #8
  unreachable

if.end26:                                         ; preds = %sw.epilog
  %22 = load ptr, ptr %out, align 8
  %23 = load ptr, ptr %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef %24) #7
  %call29 = call ptr @malloc(i32 noundef 5000) #7
  store ptr %call29, ptr %buf, align 8
  store ptr %call29, ptr %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.bb68, %sw.epilog76, %if.end26
  %25 = load ptr, ptr %line, align 8
  %26 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 5000
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv30 = trunc i64 %sub.ptr.sub to i32
  %27 = load ptr, ptr %in, align 8
  %call31 = call ptr @fgets(ptr noundef %25, i32 noundef %conv30, ptr noundef %27) #7
  %cmp32.not = icmp eq ptr %call31, null
  br i1 %cmp32.not, label %while.end, label %test

test:                                             ; preds = %while.cond, %sw.default64
  %28 = load ptr, ptr %line, align 8
  %call34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #7
  %add.ptr35 = getelementptr inbounds i8, ptr %28, i64 %call34
  store ptr %add.ptr35, ptr %line, align 8
  %29 = load ptr, ptr %buf, align 8
  %call36 = call i32 @test1(ptr noundef %29)
  switch i32 %call36, label %wl [
    i32 2, label %sw.bb37
    i32 1, label %sw.bb39
    i32 -1, label %sw.bb68
  ]

sw.bb37:                                          ; preds = %test
  %30 = load ptr, ptr %buf, align 8
  %31 = load ptr, ptr %out, align 8
  %32 = load i32, ptr %convert_varargs, align 4
  %call38 = call i32 @convert1(ptr noundef %30, ptr noundef %31, i32 noundef 1, i32 noundef %32)
  br label %sw.epilog76

sw.bb39:                                          ; preds = %test
  %33 = load ptr, ptr %line, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr40, ptr %line, align 8
  store ptr %incdec.ptr40, ptr %more, align 8
  br label %f

f:                                                ; preds = %sw.bb61, %sw.bb39
  %34 = load ptr, ptr %line, align 8
  %35 = load ptr, ptr %buf, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %35, i64 4999
  %cmp42.not = icmp ult ptr %34, %add.ptr41
  br i1 %cmp42.not, label %if.end45, label %wl

if.end45:                                         ; preds = %f
  %36 = load ptr, ptr %line, align 8
  %37 = load ptr, ptr %buf, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %37, i64 5000
  %sub.ptr.lhs.cast47 = ptrtoint ptr %add.ptr46 to i64
  %sub.ptr.rhs.cast48 = ptrtoint ptr %36 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %conv50 = trunc i64 %sub.ptr.sub49 to i32
  %38 = load ptr, ptr %in, align 8
  %call51 = call ptr @fgets(ptr noundef %36, i32 noundef %conv50, ptr noundef %38) #7
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %wl, label %if.end55

if.end55:                                         ; preds = %if.end45
  %39 = load ptr, ptr %more, align 8
  %call56 = call ptr @skipspace(ptr noundef %39, i32 noundef 1)
  %40 = load i8, ptr %call56, align 1
  %conv57 = sext i8 %40 to i32
  switch i32 %conv57, label %sw.default64 [
    i32 123, label %sw.bb58
    i32 0, label %sw.bb61
  ]

sw.bb58:                                          ; preds = %if.end55
  %41 = load ptr, ptr %buf, align 8
  %42 = load ptr, ptr %out, align 8
  %43 = load i32, ptr %convert_varargs, align 4
  %call59 = call i32 @convert1(ptr noundef %41, ptr noundef %42, i32 noundef 0, i32 noundef %43)
  %44 = load ptr, ptr %more, align 8
  %call60 = call i32 @"\01_fputs"(ptr noundef %44, ptr noundef %42) #7
  br label %sw.epilog76

sw.bb61:                                          ; preds = %if.end55
  %45 = load ptr, ptr %line, align 8
  %call62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #7
  %add.ptr63 = getelementptr inbounds i8, ptr %45, i64 %call62
  store ptr %add.ptr63, ptr %line, align 8
  br label %f

sw.default64:                                     ; preds = %if.end55
  %46 = load ptr, ptr %buf, align 8
  %47 = load ptr, ptr %out, align 8
  %call65 = call i32 @"\01_fputs"(ptr noundef %46, ptr noundef %47) #7
  %48 = load ptr, ptr %more, align 8
  %49 = call i64 @llvm.objectsize.i64.p0(ptr %46, i1 false, i1 true, i1 false)
  %call66 = call ptr @__strcpy_chk(ptr noundef %46, ptr noundef %48, i64 noundef %49) #7
  store ptr %46, ptr %line, align 8
  br label %test

sw.bb68:                                          ; preds = %test
  %50 = load ptr, ptr %line, align 8
  %51 = load ptr, ptr %buf, align 8
  %add.ptr69 = getelementptr inbounds i8, ptr %51, i64 4999
  %cmp70.not = icmp eq ptr %50, %add.ptr69
  br i1 %cmp70.not, label %wl, label %while.cond, !llvm.loop !6

wl:                                               ; preds = %test, %sw.bb68, %if.end45, %f
  %52 = load ptr, ptr %buf, align 8
  %53 = load ptr, ptr %out, align 8
  %call75 = call i32 @"\01_fputs"(ptr noundef %52, ptr noundef %53) #7
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %wl, %sw.bb58, %sw.bb37
  %54 = load ptr, ptr %buf, align 8
  store ptr %54, ptr %line, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %55 = load ptr, ptr %line, align 8
  %56 = load ptr, ptr %buf, align 8
  %cmp77.not = icmp eq ptr %55, %56
  br i1 %cmp77.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %while.end
  %57 = load ptr, ptr %buf, align 8
  %58 = load ptr, ptr %out, align 8
  %call80 = call i32 @"\01_fputs"(ptr noundef %57, ptr noundef %58) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %while.end
  %59 = load ptr, ptr %buf, align 8
  %call82 = call i32 @free(ptr noundef %59) #7
  %60 = load ptr, ptr %out, align 8
  %call83 = call i32 @fclose(ptr noundef %60) #7
  %61 = load ptr, ptr %in, align 8
  %call84 = call i32 @fclose(ptr noundef %61) #7
  ret i32 0
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare ptr @malloc(...) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @free(...) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define ptr @skipspace(ptr noundef %p, i32 noundef %dir) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %dir, ptr %dir.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end27, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @isspace(i32 noundef %conv) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %dir.addr, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load i8, ptr %4, align 1
  %cmp = icmp eq i8 %5, 47
  br i1 %cmp, label %land.lhs.true, label %for.end

land.lhs.true:                                    ; preds = %while.end
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %dir.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %cmp4 = icmp eq i8 %8, 42
  br i1 %cmp4, label %if.end, label %for.end

if.end:                                           ; preds = %land.lhs.true
  %9 = load i32, ptr %dir.addr, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %idx.ext6 = sext i32 %9 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %10, i64 %idx.ext6
  %idx.ext8 = sext i32 %9 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr7, i64 %idx.ext8
  br label %while.cond10

while.cond10:                                     ; preds = %if.end24, %if.end
  %storemerge1 = phi ptr [ %add.ptr9, %if.end ], [ %add.ptr26, %if.end24 ]
  store ptr %storemerge1, ptr %p.addr, align 8
  %11 = load i8, ptr %storemerge1, align 1
  %cmp12 = icmp eq i8 %11, 42
  br i1 %cmp12, label %land.rhs, label %while.body19

land.rhs:                                         ; preds = %while.cond10
  %12 = load ptr, ptr %p.addr, align 8
  %13 = load i32, ptr %dir.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 %idxprom14
  %14 = load i8, ptr %arrayidx15, align 1
  %cmp17 = icmp eq i8 %14, 47
  br i1 %cmp17, label %while.end27, label %while.body19

while.body19:                                     ; preds = %while.cond10, %land.rhs
  %15 = load ptr, ptr %p.addr, align 8
  %16 = load i8, ptr %15, align 1
  %cmp21 = icmp eq i8 %16, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body19
  %17 = load ptr, ptr %p.addr, align 8
  br label %return

if.end24:                                         ; preds = %while.body19
  %18 = load i32, ptr %dir.addr, align 4
  %19 = load ptr, ptr %p.addr, align 8
  %idx.ext25 = sext i32 %18 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %19, i64 %idx.ext25
  br label %while.cond10, !llvm.loop !9

while.end27:                                      ; preds = %land.rhs
  %20 = load i32, ptr %dir.addr, align 4
  %21 = load ptr, ptr %p.addr, align 8
  %idx.ext28 = sext i32 %20 to i64
  %add.ptr29 = getelementptr inbounds i8, ptr %21, i64 %idx.ext28
  %idx.ext30 = sext i32 %20 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %add.ptr29, i64 %idx.ext30
  store ptr %add.ptr31, ptr %p.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %while.end, %land.lhs.true
  %22 = load ptr, ptr %p.addr, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then23
  %storemerge = phi ptr [ %22, %for.end ], [ %17, %if.then23 ]
  ret ptr %storemerge
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define i32 @writeblanks(ptr noundef %start, ptr noundef %end) #0 {
entry:
  %end.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %end, ptr %end.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi ptr [ %start, %entry ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge, ptr %p, align 8
  %0 = load ptr, ptr %end.addr, align 8
  %cmp = icmp ult ptr %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %cmp1.not = icmp eq i8 %2, 13
  br i1 %cmp1.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %3 = load ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %cmp4.not = icmp eq i8 %4, 10
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %p, align 8
  store i8 32, ptr %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %6 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @test1(ptr noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %endfn = alloca ptr, align 8
  %contin = alloca i32, align 4
  %key = alloca ptr, align 8
  %kp = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %buf, ptr %p, align 8
  %0 = load i8, ptr %buf, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 @isalpha(i32 noundef %conv) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %cmp = icmp eq i8 %2, 95
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %buf.addr, align 8
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #7
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %call3
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %call5 = call ptr @skipspace(ptr noundef nonnull %add.ptr4, i32 noundef -1)
  %4 = load i8, ptr %call5, align 1
  %conv6 = sext i8 %4 to i32
  switch i32 %conv6, label %sw.default [
    i32 59, label %sw.bb
    i32 41, label %sw.bb7
    i32 123, label %sw.bb8
    i32 125, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %contin, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  store i32 1, ptr %contin, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -1, ptr %contin, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %5 = load ptr, ptr %p, align 8
  %6 = load i8, ptr %5, align 1
  %conv10 = sext i8 %6 to i32
  %call11 = call i32 @isalnum(i32 noundef %conv10) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %while.cond
  %7 = load ptr, ptr %p, align 8
  %8 = load i8, ptr %7, align 1
  %cmp14 = icmp eq i8 %8, 95
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %lor.rhs
  %9 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %lor.rhs
  %10 = load ptr, ptr %p, align 8
  store ptr %10, ptr %endfn, align 8
  %call16 = call ptr @skipspace(ptr noundef %10, i32 noundef 1)
  %incdec.ptr17 = getelementptr inbounds i8, ptr %call16, i64 1
  store ptr %incdec.ptr17, ptr %p, align 8
  %11 = load i8, ptr %call16, align 1
  %cmp19.not = icmp eq i8 %11, 40
  br i1 %cmp19.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %while.end
  %12 = load ptr, ptr %p, align 8
  %call23 = call ptr @skipspace(ptr noundef %12, i32 noundef 1)
  store ptr %call23, ptr %p, align 8
  %13 = load i8, ptr %call23, align 1
  %cmp25 = icmp eq i8 %13, 41
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end22
  store ptr @test1.words, ptr %key, align 8
  %14 = load ptr, ptr %endfn, align 8
  %15 = load ptr, ptr %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv29 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv29, ptr %len, align 4
  br label %while.cond30

while.cond30:                                     ; preds = %if.end42, %if.end28
  %16 = load ptr, ptr %key, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %kp, align 8
  %cmp31.not = icmp eq ptr %17, null
  br i1 %cmp31.not, label %while.end44, label %while.body33

while.body33:                                     ; preds = %while.cond30
  %18 = load ptr, ptr %kp, align 8
  %call34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #7
  %19 = load i32, ptr %len, align 4
  %conv35 = sext i32 %19 to i64
  %cmp36 = icmp eq i64 %call34, %conv35
  br i1 %cmp36, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %while.body33
  %20 = load ptr, ptr %kp, align 8
  %21 = load ptr, ptr %buf.addr, align 8
  %22 = load i32, ptr %len, align 4
  %conv38 = sext i32 %22 to i64
  %call39 = call i32 @strncmp(ptr noundef %20, ptr noundef %21, i64 noundef %conv38) #7
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %land.lhs.true, %while.body33
  %23 = load ptr, ptr %key, align 8
  %incdec.ptr43 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr %incdec.ptr43, ptr %key, align 8
  br label %while.cond30, !llvm.loop !12

while.end44:                                      ; preds = %while.cond30
  %24 = load i32, ptr %contin, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end44, %if.then41, %if.then27, %if.then21, %sw.bb9, %sw.bb8, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @isalnum(i32 noundef) #5

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @convert1(ptr noundef %buf, ptr noundef %out, i32 noundef %header, i32 noundef %convert_varargs) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %header.addr = alloca i32, align 4
  %convert_varargs.addr = alloca i32, align 4
  %endfn = alloca ptr, align 8
  %p = alloca ptr, align 8
  %breaks = alloca ptr, align 8
  %num_breaks = alloca i32, align 4
  %btop = alloca ptr, align 8
  %bp = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %vararg = alloca ptr, align 8
  %level = alloca i32, align 4
  %lp = alloca ptr, align 8
  %rp = alloca ptr, align 8
  %end = alloca ptr, align 8
  %level48 = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i32 %header, ptr %header.addr, align 4
  store i32 %convert_varargs, ptr %convert_varargs.addr, align 4
  store i32 2, ptr %num_breaks, align 4
  store ptr null, ptr %vararg, align 8
  store ptr %buf, ptr %endfn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %0 = load ptr, ptr %endfn, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %endfn, align 8
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 40
  br i1 %cmp.not, label %top, label %for.cond, !llvm.loop !13

top:                                              ; preds = %for.cond, %if.then12
  %2 = load ptr, ptr %endfn, align 8
  store ptr %2, ptr %p, align 8
  %3 = load i32, ptr %num_breaks, align 4
  %conv2 = zext i32 %3 to i64
  %mul3 = shl nuw nsw i64 %conv2, 4
  %call = call ptr @malloc(i64 noundef %mul3) #7
  store ptr %call, ptr %breaks, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %top
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = call i64 @fwrite(ptr nonnull @.str.32, i64 32, i64 1, ptr %4)
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load ptr, ptr %out.addr, align 8
  %call7 = call i32 @"\01_fputs"(ptr noundef %6, ptr noundef %7) #7
  br label %return

if.end:                                           ; preds = %top
  %8 = load ptr, ptr %breaks, align 8
  %9 = load i32, ptr %num_breaks, align 4
  %mul8 = shl i32 %9, 1
  %idx.ext = zext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %8, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds ptr, ptr %add.ptr, i64 -2
  store ptr %add.ptr9, ptr %btop, align 8
  %10 = load ptr, ptr %breaks, align 8
  store ptr %10, ptr %bp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end131, %if.end
  store i32 0, ptr %level, align 4
  store ptr null, ptr %lp, align 8
  store ptr null, ptr %end, align 8
  %11 = load ptr, ptr %bp, align 8
  %12 = load ptr, ptr %btop, align 8
  %cmp10.not = icmp ult ptr %11, %12
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %do.body
  %13 = load ptr, ptr %breaks, align 8
  %call13 = call i32 @free(ptr noundef %13) #7
  %14 = load i32, ptr %num_breaks, align 4
  %shl = shl i32 %14, 1
  store i32 %shl, ptr %num_breaks, align 4
  br label %top

if.end14:                                         ; preds = %do.body
  %15 = load ptr, ptr %p, align 8
  %16 = load ptr, ptr %bp, align 8
  %incdec.ptr15 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr %incdec.ptr15, ptr %bp, align 8
  store ptr %15, ptr %16, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end14
  %17 = load ptr, ptr %end, align 8
  %cmp17 = icmp eq ptr %17, null
  br i1 %cmp17, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond16
  %18 = load ptr, ptr %p, align 8
  %19 = load i8, ptr %18, align 1
  %conv20 = sext i8 %19 to i32
  switch i32 %conv20, label %for.inc [
    i32 44, label %sw.bb
    i32 40, label %sw.bb23
    i32 41, label %sw.bb27
    i32 47, label %sw.bb32
  ]

sw.bb:                                            ; preds = %for.body19
  %20 = load i32, ptr %level, align 4
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.then21, label %for.inc

if.then21:                                        ; preds = %sw.bb
  %21 = load ptr, ptr %p, align 8
  store ptr %21, ptr %end, align 8
  br label %for.inc

sw.bb23:                                          ; preds = %for.body19
  %22 = load i32, ptr %level, align 4
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb23
  %23 = load ptr, ptr %p, align 8
  store ptr %23, ptr %lp, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.bb23
  %24 = load i32, ptr %level, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %level, align 4
  br label %for.inc

sw.bb27:                                          ; preds = %for.body19
  %25 = load i32, ptr %level, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %level, align 4
  %cmp28 = icmp slt i32 %25, 1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb27
  %26 = load ptr, ptr %p, align 8
  store ptr %26, ptr %end, align 8
  br label %for.inc

if.else:                                          ; preds = %sw.bb27
  %27 = load ptr, ptr %p, align 8
  store ptr %27, ptr %rp, align 8
  br label %for.inc

sw.bb32:                                          ; preds = %for.body19
  %28 = load ptr, ptr %p, align 8
  %call33 = call ptr @skipspace(ptr noundef %28, i32 noundef 1)
  %add.ptr34 = getelementptr inbounds i8, ptr %call33, i64 -1
  store ptr %add.ptr34, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %sw.bb32, %if.then21, %sw.bb, %if.else, %if.then30, %for.body19
  %29 = load ptr, ptr %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr35, ptr %p, align 8
  br label %for.cond16, !llvm.loop !14

for.end36:                                        ; preds = %for.cond16
  %30 = load ptr, ptr %lp, align 8
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %if.end41, label %if.then38

if.then38:                                        ; preds = %for.end36
  %31 = load ptr, ptr %lp, align 8
  %add.ptr39 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load ptr, ptr %rp, align 8
  %call40 = call i32 @writeblanks(ptr noundef nonnull %add.ptr39, ptr noundef %32)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.end36
  %33 = load ptr, ptr %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %33, i64 -1
  store ptr %incdec.ptr42, ptr %p, align 8
  br label %for.cond43

for.cond43:                                       ; preds = %sw.epilog83, %if.end41
  %34 = load ptr, ptr %p, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %34, i64 -1
  %call45 = call ptr @skipspace(ptr noundef nonnull %add.ptr44, i32 noundef -1)
  store ptr %call45, ptr %p, align 8
  %35 = load i8, ptr %call45, align 1
  %conv46 = sext i8 %35 to i32
  switch i32 %conv46, label %found [
    i32 93, label %sw.bb47
    i32 41, label %sw.bb47
  ]

sw.bb47:                                          ; preds = %for.cond43, %for.cond43
  store i32 1, ptr %level48, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog60, %sw.bb47
  %36 = load i32, ptr %level48, align 4
  %tobool49.not = icmp eq i32 %36, 0
  br i1 %tobool49.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %37 = load ptr, ptr %p, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %37, i64 -1
  store ptr %incdec.ptr50, ptr %p, align 8
  %38 = load i8, ptr %incdec.ptr50, align 1
  %conv51 = sext i8 %38 to i32
  switch i32 %conv51, label %sw.epilog60 [
    i32 93, label %sw.bb52
    i32 41, label %sw.bb52
    i32 91, label %sw.bb54
    i32 40, label %sw.bb54
    i32 47, label %sw.bb56
  ]

sw.bb52:                                          ; preds = %while.body, %while.body
  %39 = load i32, ptr %level48, align 4
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, ptr %level48, align 4
  br label %sw.epilog60

sw.bb54:                                          ; preds = %while.body, %while.body
  %40 = load i32, ptr %level48, align 4
  %dec55 = add nsw i32 %40, -1
  store i32 %dec55, ptr %level48, align 4
  br label %sw.epilog60

sw.bb56:                                          ; preds = %while.body
  %41 = load ptr, ptr %p, align 8
  %call57 = call ptr @skipspace(ptr noundef %41, i32 noundef -1)
  %add.ptr58 = getelementptr inbounds i8, ptr %call57, i64 1
  store ptr %add.ptr58, ptr %p, align 8
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %while.body, %sw.bb56, %sw.bb54, %sw.bb52
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %42 = load ptr, ptr %p, align 8
  %43 = load i8, ptr %42, align 1
  %cmp62 = icmp eq i8 %43, 40
  br i1 %cmp62, label %land.lhs.true, label %sw.epilog83

land.lhs.true:                                    ; preds = %while.end
  %44 = load ptr, ptr %p, align 8
  %add.ptr64 = getelementptr inbounds i8, ptr %44, i64 1
  %call65 = call ptr @skipspace(ptr noundef nonnull %add.ptr64, i32 noundef 1)
  %45 = load i8, ptr %call65, align 1
  %cmp67 = icmp eq i8 %45, 42
  br i1 %cmp67, label %while.cond70, label %sw.epilog83

while.cond70:                                     ; preds = %land.lhs.true, %while.body77
  %46 = load ptr, ptr %p, align 8
  %47 = load i8, ptr %46, align 1
  %conv71 = sext i8 %47 to i32
  %call72 = call i32 @isalpha(i32 noundef %conv71) #9
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %lor.rhs, label %found

lor.rhs:                                          ; preds = %while.cond70
  %48 = load ptr, ptr %p, align 8
  %49 = load i8, ptr %48, align 1
  %cmp75 = icmp eq i8 %49, 95
  br i1 %cmp75, label %found, label %while.body77

while.body77:                                     ; preds = %lor.rhs
  %50 = load ptr, ptr %p, align 8
  %call78 = call ptr @skipspace(ptr noundef %50, i32 noundef 1)
  %add.ptr79 = getelementptr inbounds i8, ptr %call78, i64 1
  store ptr %add.ptr79, ptr %p, align 8
  br label %while.cond70, !llvm.loop !16

sw.epilog83:                                      ; preds = %while.end, %land.lhs.true
  br label %for.cond43

found:                                            ; preds = %for.cond43, %lor.rhs, %while.cond70
  %51 = load ptr, ptr %p, align 8
  %52 = load i8, ptr %51, align 1
  %cmp85 = icmp eq i8 %52, 46
  br i1 %cmp85, label %land.lhs.true87, label %if.else116

land.lhs.true87:                                  ; preds = %found
  %53 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i8, ptr %53, i64 -1
  %54 = load i8, ptr %arrayidx, align 1
  %cmp89 = icmp eq i8 %54, 46
  br i1 %cmp89, label %land.lhs.true91, label %if.else116

land.lhs.true91:                                  ; preds = %land.lhs.true87
  %55 = load ptr, ptr %p, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %55, i64 -2
  %56 = load i8, ptr %arrayidx92, align 1
  %cmp94 = icmp eq i8 %56, 46
  br i1 %cmp94, label %if.then96, label %if.else116

if.then96:                                        ; preds = %land.lhs.true91
  %57 = load i32, ptr %convert_varargs.addr, align 4
  %tobool97.not = icmp eq i32 %57, 0
  br i1 %tobool97.not, label %if.else101, label %if.then98

if.then98:                                        ; preds = %if.then96
  %58 = load ptr, ptr %bp, align 8
  %incdec.ptr99 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %incdec.ptr99, ptr %bp, align 8
  store ptr @.str.33, ptr %58, align 8
  %59 = load ptr, ptr %p, align 8
  %add.ptr100 = getelementptr inbounds i8, ptr %59, i64 -2
  store ptr %add.ptr100, ptr %vararg, align 8
  br label %if.end131

if.else101:                                       ; preds = %if.then96
  %60 = load ptr, ptr %p, align 8
  %incdec.ptr102 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr102, ptr %p, align 8
  %61 = load ptr, ptr %bp, align 8
  %62 = load ptr, ptr %breaks, align 8
  %add.ptr103 = getelementptr inbounds ptr, ptr %62, i64 1
  %cmp104 = icmp eq ptr %61, %add.ptr103
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.else101
  %63 = load ptr, ptr %breaks, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr %p, align 8
  %call108 = call i32 @writeblanks(ptr noundef %64, ptr noundef %65)
  br label %if.end113

if.else109:                                       ; preds = %if.else101
  %66 = load ptr, ptr %bp, align 8
  %arrayidx110 = getelementptr inbounds ptr, ptr %66, i64 -1
  %67 = load ptr, ptr %arrayidx110, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %67, i64 -1
  %68 = load ptr, ptr %p, align 8
  %call112 = call i32 @writeblanks(ptr noundef nonnull %add.ptr111, ptr noundef %68)
  br label %if.end113

if.end113:                                        ; preds = %if.else109, %if.then106
  %69 = load ptr, ptr %bp, align 8
  %incdec.ptr114 = getelementptr inbounds ptr, ptr %69, i64 -1
  store ptr %incdec.ptr114, ptr %bp, align 8
  br label %if.end131

if.else116:                                       ; preds = %land.lhs.true91, %land.lhs.true87, %found
  br label %while.cond117

while.cond117:                                    ; preds = %while.body126, %if.else116
  %70 = load ptr, ptr %p, align 8
  %71 = load i8, ptr %70, align 1
  %conv118 = sext i8 %71 to i32
  %call119 = call i32 @isalnum(i32 noundef %conv118) #9
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %lor.rhs121, label %while.body126

lor.rhs121:                                       ; preds = %while.cond117
  %72 = load ptr, ptr %p, align 8
  %73 = load i8, ptr %72, align 1
  %cmp123 = icmp eq i8 %73, 95
  br i1 %cmp123, label %while.body126, label %while.end128

while.body126:                                    ; preds = %while.cond117, %lor.rhs121
  %74 = load ptr, ptr %p, align 8
  %incdec.ptr127 = getelementptr inbounds i8, ptr %74, i64 -1
  store ptr %incdec.ptr127, ptr %p, align 8
  br label %while.cond117, !llvm.loop !17

while.end128:                                     ; preds = %lor.rhs121
  %75 = load ptr, ptr %p, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %75, i64 1
  %76 = load ptr, ptr %bp, align 8
  %incdec.ptr130 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %incdec.ptr130, ptr %bp, align 8
  store ptr %add.ptr129, ptr %76, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then98, %if.end113, %while.end128
  %77 = load ptr, ptr %end, align 8
  store ptr %77, ptr %p, align 8
  %78 = load ptr, ptr %p, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %incdec.ptr132, ptr %p, align 8
  %79 = load i8, ptr %78, align 1
  %cmp134 = icmp eq i8 %79, 44
  br i1 %cmp134, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %if.end131
  %80 = load ptr, ptr %p, align 8
  %81 = load ptr, ptr %bp, align 8
  store ptr %80, ptr %81, align 8
  %82 = load ptr, ptr %breaks, align 8
  %add.ptr136 = getelementptr inbounds ptr, ptr %82, i64 2
  %cmp137 = icmp eq ptr %81, %add.ptr136
  br i1 %cmp137, label %if.then139, label %if.end157

if.then139:                                       ; preds = %do.end
  %83 = load ptr, ptr %breaks, align 8
  %84 = load ptr, ptr %83, align 8
  %call141 = call ptr @skipspace(ptr noundef %84, i32 noundef 1)
  store ptr %call141, ptr %p, align 8
  %call142 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %call141, ptr noundef nonnull dereferenceable(5) @.str.29, i64 noundef 4) #7
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %if.end157

if.then144:                                       ; preds = %if.then139
  %85 = load ptr, ptr %p, align 8
  %add.ptr145 = getelementptr inbounds i8, ptr %85, i64 4
  %call146 = call ptr @skipspace(ptr noundef nonnull %add.ptr145, i32 noundef 1)
  store ptr %call146, ptr %p, align 8
  %86 = load ptr, ptr %breaks, align 8
  %arrayidx147 = getelementptr inbounds ptr, ptr %86, i64 2
  %87 = load ptr, ptr %arrayidx147, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %87, i64 -1
  %cmp149 = icmp eq ptr %call146, %add.ptr148
  br i1 %cmp149, label %if.then151, label %if.end157

if.then151:                                       ; preds = %if.then144
  %88 = load ptr, ptr %breaks, align 8
  store ptr %88, ptr %bp, align 8
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr %p, align 8
  %add.ptr153 = getelementptr inbounds i8, ptr %90, i64 1
  %call154 = call i32 @writeblanks(ptr noundef %89, ptr noundef nonnull %add.ptr153)
  br label %if.end157

if.end157:                                        ; preds = %if.then139, %if.then151, %if.then144, %do.end
  %91 = load ptr, ptr %buf.addr, align 8
  br label %while.cond158

while.cond158:                                    ; preds = %while.body161, %if.end157
  %storemerge = phi ptr [ %91, %if.end157 ], [ %incdec.ptr164, %while.body161 ]
  store ptr %storemerge, ptr %p, align 8
  %92 = load ptr, ptr %endfn, align 8
  %cmp159.not = icmp eq ptr %storemerge, %92
  br i1 %cmp159.not, label %while.end165, label %while.body161

while.body161:                                    ; preds = %while.cond158
  %93 = load ptr, ptr %p, align 8
  %94 = load i8, ptr %93, align 1
  %conv162 = sext i8 %94 to i32
  %95 = load ptr, ptr %out.addr, align 8
  %call163 = call i32 @putc(i32 noundef %conv162, ptr noundef %95) #7
  %incdec.ptr164 = getelementptr inbounds i8, ptr %93, i64 1
  br label %while.cond158, !llvm.loop !19

while.end165:                                     ; preds = %while.cond158
  %96 = load i32, ptr %header.addr, align 4
  %tobool166.not = icmp eq i32 %96, 0
  br i1 %tobool166.not, label %if.else186, label %if.then167

if.then167:                                       ; preds = %while.end165
  %97 = load ptr, ptr %out.addr, align 8
  %call168 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.34, ptr noundef %97) #7
  %98 = load ptr, ptr %breaks, align 8
  %99 = load ptr, ptr %98, align 8
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc183, %if.then167
  %storemerge5 = phi ptr [ %99, %if.then167 ], [ %incdec.ptr184, %for.inc183 ]
  store ptr %storemerge5, ptr %p, align 8
  %100 = load i8, ptr %storemerge5, align 1
  %tobool171.not = icmp eq i8 %100, 0
  br i1 %tobool171.not, label %if.end237, label %for.body172

for.body172:                                      ; preds = %for.cond170
  %101 = load ptr, ptr %p, align 8
  %102 = load i8, ptr %101, align 1
  %cmp174 = icmp eq i8 %102, 13
  br i1 %cmp174, label %if.then179, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body172
  %103 = load ptr, ptr %p, align 8
  %104 = load i8, ptr %103, align 1
  %cmp177 = icmp eq i8 %104, 10
  br i1 %cmp177, label %if.then179, label %for.inc183

if.then179:                                       ; preds = %lor.lhs.false, %for.body172
  %105 = load ptr, ptr %p, align 8
  %106 = load i8, ptr %105, align 1
  %conv180 = sext i8 %106 to i32
  %107 = load ptr, ptr %out.addr, align 8
  %call181 = call i32 @putc(i32 noundef %conv180, ptr noundef %107) #7
  br label %for.inc183

for.inc183:                                       ; preds = %lor.lhs.false, %if.then179
  %108 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %108, i64 1
  br label %for.cond170, !llvm.loop !20

if.else186:                                       ; preds = %while.end165
  %109 = load ptr, ptr %breaks, align 8
  %add.ptr187 = getelementptr inbounds ptr, ptr %109, i64 1
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc212, %if.else186
  %storemerge1 = phi ptr [ %add.ptr187, %if.else186 ], [ %add.ptr213, %for.inc212 ]
  store ptr %storemerge1, ptr %ap, align 8
  %110 = load ptr, ptr %bp, align 8
  %cmp189 = icmp ult ptr %storemerge1, %110
  br i1 %cmp189, label %for.body191, label %for.end214

for.body191:                                      ; preds = %for.cond188
  %111 = load ptr, ptr %ap, align 8
  %112 = load ptr, ptr %111, align 8
  br label %while.cond192

while.cond192:                                    ; preds = %while.body201, %for.body191
  %storemerge4 = phi ptr [ %112, %for.body191 ], [ %incdec.ptr204, %while.body201 ]
  store ptr %storemerge4, ptr %p, align 8
  %113 = load i8, ptr %storemerge4, align 1
  %conv193 = sext i8 %113 to i32
  %call194 = call i32 @isalnum(i32 noundef %conv193) #9
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %lor.rhs196, label %while.body201

lor.rhs196:                                       ; preds = %while.cond192
  %114 = load ptr, ptr %p, align 8
  %115 = load i8, ptr %114, align 1
  %cmp198 = icmp eq i8 %115, 95
  br i1 %cmp198, label %while.body201, label %while.end205

while.body201:                                    ; preds = %while.cond192, %lor.rhs196
  %116 = load ptr, ptr %p, align 8
  %117 = load i8, ptr %116, align 1
  %conv202 = sext i8 %117 to i32
  %118 = load ptr, ptr %out.addr, align 8
  %call203 = call i32 @putc(i32 noundef %conv202, ptr noundef %118) #7
  %incdec.ptr204 = getelementptr inbounds i8, ptr %116, i64 1
  br label %while.cond192, !llvm.loop !21

while.end205:                                     ; preds = %lor.rhs196
  %119 = load ptr, ptr %ap, align 8
  %120 = load ptr, ptr %bp, align 8
  %add.ptr206 = getelementptr inbounds ptr, ptr %120, i64 -1
  %cmp207 = icmp ult ptr %119, %add.ptr206
  br i1 %cmp207, label %if.then209, label %for.inc212

if.then209:                                       ; preds = %while.end205
  %121 = load ptr, ptr %out.addr, align 8
  %call210 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.35, ptr noundef %121) #7
  br label %for.inc212

for.inc212:                                       ; preds = %while.end205, %if.then209
  %122 = load ptr, ptr %ap, align 8
  %add.ptr213 = getelementptr inbounds ptr, ptr %122, i64 2
  br label %for.cond188, !llvm.loop !22

for.end214:                                       ; preds = %for.cond188
  %123 = load ptr, ptr %out.addr, align 8
  %call215 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.36, ptr noundef %123) #7
  %124 = load ptr, ptr %breaks, align 8
  br label %for.cond217

for.cond217:                                      ; preds = %for.body220, %for.end214
  %.pn = phi ptr [ %124, %for.end214 ], [ %128, %for.body220 ]
  %storemerge2 = getelementptr inbounds ptr, ptr %.pn, i64 2
  store ptr %storemerge2, ptr %ap, align 8
  %125 = load ptr, ptr %bp, align 8
  %cmp218.not = icmp ugt ptr %storemerge2, %125
  br i1 %cmp218.not, label %for.end224, label %for.body220

for.body220:                                      ; preds = %for.cond217
  %126 = load ptr, ptr %ap, align 8
  %127 = load ptr, ptr %126, align 8
  %arrayidx221 = getelementptr inbounds i8, ptr %127, i64 -1
  store i8 59, ptr %arrayidx221, align 1
  %128 = load ptr, ptr %ap, align 8
  br label %for.cond217, !llvm.loop !23

for.end224:                                       ; preds = %for.cond217
  %129 = load ptr, ptr %vararg, align 8
  %cmp225.not = icmp eq ptr %129, null
  br i1 %cmp225.not, label %if.else233, label %if.then227

if.then227:                                       ; preds = %for.end224
  %130 = load ptr, ptr %vararg, align 8
  store i8 0, ptr %130, align 1
  %131 = load ptr, ptr %breaks, align 8
  %132 = load ptr, ptr %131, align 8
  %133 = load ptr, ptr %out.addr, align 8
  %call229 = call i32 @"\01_fputs"(ptr noundef %132, ptr noundef %133) #7
  %call230 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.37, ptr noundef %133) #7
  %134 = load ptr, ptr %bp, align 8
  %135 = load ptr, ptr %134, align 8
  %call232 = call i32 @"\01_fputs"(ptr noundef %135, ptr noundef %133) #7
  br label %if.end237

if.else233:                                       ; preds = %for.end224
  %136 = load ptr, ptr %breaks, align 8
  %137 = load ptr, ptr %136, align 8
  %138 = load ptr, ptr %out.addr, align 8
  %call235 = call i32 @"\01_fputs"(ptr noundef %137, ptr noundef %138) #7
  br label %if.end237

if.end237:                                        ; preds = %if.then227, %if.else233, %for.cond170
  %139 = load ptr, ptr %breaks, align 8
  %call238 = call i32 @free(ptr noundef %139) #7
  br label %return

return:                                           ; preds = %if.end237, %if.then
  %storemerge3 = phi i32 [ 0, %if.end237 ], [ -1, %if.then ]
  ret i32 %storemerge3
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
