; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/ansi2knr.c'
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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %line = alloca ptr, align 8
  %more = alloca ptr, align 8
  %convert_varargs = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %convert_varargs, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx4, align 8
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %convert_varargs, align 4
  %6 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %argc.addr, align 4
  %7 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.1, ptr noundef %10)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end:                                           ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  %11 = load i32, ptr %argc.addr, align 4
  switch i32 %11, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
  ]

sw.default:                                       ; preds = %if.end8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @exit(i32 noundef 0) #6
  unreachable

sw.bb:                                            ; preds = %if.end8
  %12 = load ptr, ptr @__stdoutp, align 8
  store ptr %12, ptr %out, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 2
  %14 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @"\01_fopen"(ptr noundef %14, ptr noundef @.str.3)
  store ptr %call12, ptr %out, align 8
  %15 = load ptr, ptr %out, align 8
  %cmp13 = icmp eq ptr %15, null
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %sw.bb10
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx16, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.4, ptr noundef %18)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end18:                                         ; preds = %sw.bb10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18, %sw.bb
  %19 = load ptr, ptr %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %19, i64 1
  %20 = load ptr, ptr %arrayidx19, align 8
  %call20 = call ptr @"\01_fopen"(ptr noundef %20, ptr noundef @.str.5)
  store ptr %call20, ptr %in, align 8
  %21 = load ptr, ptr %in, align 8
  %cmp21 = icmp eq ptr %21, null
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %sw.epilog
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = load ptr, ptr %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.6, ptr noundef %24)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end26:                                         ; preds = %sw.epilog
  %25 = load ptr, ptr %out, align 8
  %26 = load ptr, ptr %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %26, i64 1
  %27 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.7, ptr noundef %27)
  %call29 = call ptr @malloc(i32 noundef 5000)
  store ptr %call29, ptr %buf, align 8
  %28 = load ptr, ptr %buf, align 8
  store ptr %28, ptr %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog76, %if.then72, %if.end26
  %29 = load ptr, ptr %line, align 8
  %30 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 5000
  %31 = load ptr, ptr %line, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv30 = trunc i64 %sub.ptr.sub to i32
  %32 = load ptr, ptr %in, align 8
  %call31 = call ptr @fgets(ptr noundef %29, i32 noundef %conv30, ptr noundef %32)
  %cmp32 = icmp ne ptr %call31, null
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %test

test:                                             ; preds = %sw.default64, %while.body
  %33 = load ptr, ptr %line, align 8
  %call34 = call i64 @strlen(ptr noundef %33)
  %34 = load ptr, ptr %line, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %34, i64 %call34
  store ptr %add.ptr35, ptr %line, align 8
  %35 = load ptr, ptr %buf, align 8
  %call36 = call i32 @test1(ptr noundef %35)
  switch i32 %call36, label %sw.default74 [
    i32 2, label %sw.bb37
    i32 1, label %sw.bb39
    i32 -1, label %sw.bb68
  ]

sw.bb37:                                          ; preds = %test
  %36 = load ptr, ptr %buf, align 8
  %37 = load ptr, ptr %out, align 8
  %38 = load i32, ptr %convert_varargs, align 4
  %call38 = call i32 @convert1(ptr noundef %36, ptr noundef %37, i32 noundef 1, i32 noundef %38)
  br label %sw.epilog76

sw.bb39:                                          ; preds = %test
  %39 = load ptr, ptr %line, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr40, ptr %line, align 8
  store ptr %incdec.ptr40, ptr %more, align 8
  br label %f

f:                                                ; preds = %sw.bb61, %sw.bb39
  %40 = load ptr, ptr %line, align 8
  %41 = load ptr, ptr %buf, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %41, i64 4999
  %cmp42 = icmp uge ptr %40, %add.ptr41
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %f
  br label %wl

if.end45:                                         ; preds = %f
  %42 = load ptr, ptr %line, align 8
  %43 = load ptr, ptr %buf, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %43, i64 5000
  %44 = load ptr, ptr %line, align 8
  %sub.ptr.lhs.cast47 = ptrtoint ptr %add.ptr46 to i64
  %sub.ptr.rhs.cast48 = ptrtoint ptr %44 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %conv50 = trunc i64 %sub.ptr.sub49 to i32
  %45 = load ptr, ptr %in, align 8
  %call51 = call ptr @fgets(ptr noundef %42, i32 noundef %conv50, ptr noundef %45)
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end45
  br label %wl

if.end55:                                         ; preds = %if.end45
  %46 = load ptr, ptr %more, align 8
  %call56 = call ptr @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_ansi2knr_0(ptr noundef %46, i32 noundef 1)
  %47 = load i8, ptr %call56, align 1
  %conv57 = sext i8 %47 to i32
  switch i32 %conv57, label %sw.default64 [
    i32 123, label %sw.bb58
    i32 0, label %sw.bb61
  ]

sw.bb58:                                          ; preds = %if.end55
  %48 = load ptr, ptr %buf, align 8
  %49 = load ptr, ptr %out, align 8
  %50 = load i32, ptr %convert_varargs, align 4
  %call59 = call i32 @convert1(ptr noundef %48, ptr noundef %49, i32 noundef 0, i32 noundef %50)
  %51 = load ptr, ptr %more, align 8
  %52 = load ptr, ptr %out, align 8
  %call60 = call i32 @"\01_fputs"(ptr noundef %51, ptr noundef %52)
  br label %sw.epilog67

sw.bb61:                                          ; preds = %if.end55
  %53 = load ptr, ptr %line, align 8
  %call62 = call i64 @strlen(ptr noundef %53)
  %54 = load ptr, ptr %line, align 8
  %add.ptr63 = getelementptr inbounds i8, ptr %54, i64 %call62
  store ptr %add.ptr63, ptr %line, align 8
  br label %f

sw.default64:                                     ; preds = %if.end55
  %55 = load ptr, ptr %buf, align 8
  %56 = load ptr, ptr %out, align 8
  %call65 = call i32 @"\01_fputs"(ptr noundef %55, ptr noundef %56)
  %57 = load ptr, ptr %buf, align 8
  %58 = load ptr, ptr %more, align 8
  %59 = load ptr, ptr %buf, align 8
  %60 = call i64 @llvm.objectsize.i64.p0(ptr %59, i1 false, i1 true, i1 false)
  %call66 = call ptr @__strcpy_chk(ptr noundef %57, ptr noundef %58, i64 noundef %60) #7
  %61 = load ptr, ptr %buf, align 8
  store ptr %61, ptr %line, align 8
  br label %test

sw.epilog67:                                      ; preds = %sw.bb58
  br label %sw.epilog76

sw.bb68:                                          ; preds = %test
  %62 = load ptr, ptr %line, align 8
  %63 = load ptr, ptr %buf, align 8
  %add.ptr69 = getelementptr inbounds i8, ptr %63, i64 4999
  %cmp70 = icmp ne ptr %62, %add.ptr69
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %sw.bb68
  br label %while.cond, !llvm.loop !6

if.end73:                                         ; preds = %sw.bb68
  br label %sw.default74

sw.default74:                                     ; preds = %test, %if.end73
  br label %wl

wl:                                               ; preds = %sw.default74, %if.then54, %if.then44
  %64 = load ptr, ptr %buf, align 8
  %65 = load ptr, ptr %out, align 8
  %call75 = call i32 @"\01_fputs"(ptr noundef %64, ptr noundef %65)
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %wl, %sw.epilog67, %sw.bb37
  %66 = load ptr, ptr %buf, align 8
  store ptr %66, ptr %line, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %67 = load ptr, ptr %line, align 8
  %68 = load ptr, ptr %buf, align 8
  %cmp77 = icmp ne ptr %67, %68
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %while.end
  %69 = load ptr, ptr %buf, align 8
  %70 = load ptr, ptr %out, align 8
  %call80 = call i32 @"\01_fputs"(ptr noundef %69, ptr noundef %70)
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %while.end
  %71 = load ptr, ptr %buf, align 8
  %call82 = call i32 @free(ptr noundef %71)
  %72 = load ptr, ptr %out, align 8
  %call83 = call i32 @fclose(ptr noundef %72)
  %73 = load ptr, ptr %in, align 8
  %call84 = call i32 @fclose(ptr noundef %73)
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
  %retval = alloca ptr, align 8
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
  %call = call i32 @isspace(i32 noundef %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

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
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, 47
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.end
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %dir.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 42
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %while.end
  br label %for.end

if.end:                                           ; preds = %land.lhs.true
  %9 = load i32, ptr %dir.addr, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %idx.ext6 = sext i32 %9 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %10, i64 %idx.ext6
  store ptr %add.ptr7, ptr %p.addr, align 8
  %11 = load i32, ptr %dir.addr, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %12, i64 %idx.ext8
  store ptr %add.ptr9, ptr %p.addr, align 8
  br label %while.cond10

while.cond10:                                     ; preds = %if.end24, %if.end
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond10
  %15 = load ptr, ptr %p.addr, align 8
  %16 = load i32, ptr %dir.addr, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 %idxprom14
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond10
  %18 = phi i1 [ false, %while.cond10 ], [ %cmp17, %land.rhs ]
  %lnot = xor i1 %18, true
  br i1 %lnot, label %while.body19, label %while.end27

while.body19:                                     ; preds = %land.end
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body19
  %21 = load ptr, ptr %p.addr, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %while.body19
  %22 = load i32, ptr %dir.addr, align 4
  %23 = load ptr, ptr %p.addr, align 8
  %idx.ext25 = sext i32 %22 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %23, i64 %idx.ext25
  store ptr %add.ptr26, ptr %p.addr, align 8
  br label %while.cond10, !llvm.loop !9

while.end27:                                      ; preds = %land.end
  %24 = load i32, ptr %dir.addr, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %idx.ext28 = sext i32 %24 to i64
  %add.ptr29 = getelementptr inbounds i8, ptr %25, i64 %idx.ext28
  store ptr %add.ptr29, ptr %p.addr, align 8
  %26 = load i32, ptr %dir.addr, align 4
  %27 = load ptr, ptr %p.addr, align 8
  %idx.ext30 = sext i32 %26 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %27, i64 %idx.ext30
  store ptr %add.ptr31, ptr %p.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %28 = load ptr, ptr %p.addr, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then23
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define i32 @writeblanks(ptr noundef %start, ptr noundef %end) #0 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  %0 = load ptr, ptr %start.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8
  %2 = load ptr, ptr %end.addr, align 8
  %cmp = icmp ult ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 13
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %6 = load i8, ptr %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %p, align 8
  store i8 32, ptr %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
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
  %bend = alloca ptr, align 8
  %endfn = alloca ptr, align 8
  %contin = alloca i32, align 4
  %key = alloca ptr, align 8
  %kp = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 @isalpha(i32 noundef %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv1, 95
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load ptr, ptr %buf.addr, align 8
  %call3 = call i64 @strlen(ptr noundef %6)
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %call3
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %call5 = call ptr @skipspace(ptr noundef %add.ptr4, i32 noundef -1)
  store ptr %call5, ptr %bend, align 8
  %7 = load ptr, ptr %bend, align 8
  %8 = load i8, ptr %7, align 1
  %conv6 = sext i8 %8 to i32
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
  %9 = load ptr, ptr %p, align 8
  %10 = load i8, ptr %9, align 1
  %conv10 = sext i8 %10 to i32
  %call11 = call i32 @isalnum(i32 noundef %conv10) #8
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %11 = load ptr, ptr %p, align 8
  %12 = load i8, ptr %11, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %cmp14, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %lor.end
  %15 = load ptr, ptr %p, align 8
  store ptr %15, ptr %endfn, align 8
  %16 = load ptr, ptr %p, align 8
  %call16 = call ptr @skipspace(ptr noundef %16, i32 noundef 1)
  store ptr %call16, ptr %p, align 8
  %17 = load ptr, ptr %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr17, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %conv18 = sext i8 %18 to i32
  %cmp19 = icmp ne i32 %conv18, 40
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %while.end
  %19 = load ptr, ptr %p, align 8
  %call23 = call ptr @skipspace(ptr noundef %19, i32 noundef 1)
  store ptr %call23, ptr %p, align 8
  %20 = load ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv24, 41
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end22
  store ptr @test1.words, ptr %key, align 8
  %22 = load ptr, ptr %endfn, align 8
  %23 = load ptr, ptr %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv29 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv29, ptr %len, align 4
  br label %while.cond30

while.cond30:                                     ; preds = %if.end42, %if.end28
  %24 = load ptr, ptr %key, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %kp, align 8
  %cmp31 = icmp ne ptr %25, null
  br i1 %cmp31, label %while.body33, label %while.end44

while.body33:                                     ; preds = %while.cond30
  %26 = load ptr, ptr %kp, align 8
  %call34 = call i64 @strlen(ptr noundef %26)
  %27 = load i32, ptr %len, align 4
  %conv35 = sext i32 %27 to i64
  %cmp36 = icmp eq i64 %call34, %conv35
  br i1 %cmp36, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %while.body33
  %28 = load ptr, ptr %kp, align 8
  %29 = load ptr, ptr %buf.addr, align 8
  %30 = load i32, ptr %len, align 4
  %conv38 = sext i32 %30 to i64
  %call39 = call i32 @strncmp(ptr noundef %28, ptr noundef %29, i64 noundef %conv38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %land.lhs.true, %while.body33
  %31 = load ptr, ptr %key, align 8
  %incdec.ptr43 = getelementptr inbounds ptr, ptr %31, i32 1
  store ptr %incdec.ptr43, ptr %key, align 8
  br label %while.cond30, !llvm.loop !12

while.end44:                                      ; preds = %while.cond30
  %32 = load i32, ptr %contin, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end44, %if.then41, %if.then27, %if.then21, %sw.bb9, %sw.bb8, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @isalnum(i32 noundef) #5

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @convert1(ptr noundef %buf, ptr noundef %out, i32 noundef %header, i32 noundef %convert_varargs) #0 {
entry:
  %retval = alloca i32, align 4
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
  %0 = load ptr, ptr %buf.addr, align 8
  store ptr %0, ptr %endfn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load ptr, ptr %endfn, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %endfn, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %top

top:                                              ; preds = %if.then12, %for.end
  %3 = load ptr, ptr %endfn, align 8
  store ptr %3, ptr %p, align 8
  %4 = load i32, ptr %num_breaks, align 4
  %conv2 = zext i32 %4 to i64
  %mul = mul i64 8, %conv2
  %mul3 = mul i64 %mul, 2
  %call = call ptr @malloc(i64 noundef %mul3)
  store ptr %call, ptr %breaks, align 8
  %5 = load ptr, ptr %breaks, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %top
  %6 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.32)
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %out.addr, align 8
  %call7 = call i32 @"\01_fputs"(ptr noundef %7, ptr noundef %8)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %top
  %9 = load ptr, ptr %breaks, align 8
  %10 = load i32, ptr %num_breaks, align 4
  %mul8 = mul i32 %10, 2
  %idx.ext = zext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds ptr, ptr %add.ptr, i64 -2
  store ptr %add.ptr9, ptr %btop, align 8
  %11 = load ptr, ptr %breaks, align 8
  store ptr %11, ptr %bp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  store i32 0, ptr %level, align 4
  store ptr null, ptr %lp, align 8
  store ptr null, ptr %end, align 8
  %12 = load ptr, ptr %bp, align 8
  %13 = load ptr, ptr %btop, align 8
  %cmp10 = icmp uge ptr %12, %13
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.body
  %14 = load ptr, ptr %breaks, align 8
  %call13 = call i32 @free(ptr noundef %14)
  %15 = load i32, ptr %num_breaks, align 4
  %shl = shl i32 %15, 1
  store i32 %shl, ptr %num_breaks, align 4
  br label %top

if.end14:                                         ; preds = %do.body
  %16 = load ptr, ptr %p, align 8
  %17 = load ptr, ptr %bp, align 8
  %incdec.ptr15 = getelementptr inbounds ptr, ptr %17, i32 1
  store ptr %incdec.ptr15, ptr %bp, align 8
  store ptr %16, ptr %17, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end14
  %18 = load ptr, ptr %end, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond16
  %19 = load ptr, ptr %p, align 8
  %20 = load i8, ptr %19, align 1
  %conv20 = sext i8 %20 to i32
  switch i32 %conv20, label %sw.default [
    i32 44, label %sw.bb
    i32 40, label %sw.bb23
    i32 41, label %sw.bb27
    i32 47, label %sw.bb32
  ]

sw.bb:                                            ; preds = %for.body19
  %21 = load i32, ptr %level, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end22, label %if.then21

if.then21:                                        ; preds = %sw.bb
  %22 = load ptr, ptr %p, align 8
  store ptr %22, ptr %end, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %sw.bb
  br label %sw.epilog

sw.bb23:                                          ; preds = %for.body19
  %23 = load i32, ptr %level, align 4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %sw.bb23
  %24 = load ptr, ptr %p, align 8
  store ptr %24, ptr %lp, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.bb23
  %25 = load i32, ptr %level, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %level, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body19
  %26 = load i32, ptr %level, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, ptr %level, align 4
  %cmp28 = icmp slt i32 %dec, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb27
  %27 = load ptr, ptr %p, align 8
  store ptr %27, ptr %end, align 8
  br label %if.end31

if.else:                                          ; preds = %sw.bb27
  %28 = load ptr, ptr %p, align 8
  store ptr %28, ptr %rp, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.body19
  %29 = load ptr, ptr %p, align 8
  %call33 = call ptr @skipspace(ptr noundef %29, i32 noundef 1)
  %add.ptr34 = getelementptr inbounds i8, ptr %call33, i64 -1
  store ptr %add.ptr34, ptr %p, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %if.end31, %if.end26, %if.end22
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %30 = load ptr, ptr %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr35, ptr %p, align 8
  br label %for.cond16, !llvm.loop !14

for.end36:                                        ; preds = %for.cond16
  %31 = load ptr, ptr %lp, align 8
  %tobool37 = icmp ne ptr %31, null
  br i1 %tobool37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.end36
  %32 = load ptr, ptr %lp, align 8
  %add.ptr39 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load ptr, ptr %rp, align 8
  %call40 = call i32 @writeblanks(ptr noundef %add.ptr39, ptr noundef %33)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.end36
  %34 = load ptr, ptr %p, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %34, i32 -1
  store ptr %incdec.ptr42, ptr %p, align 8
  br label %for.cond43

for.cond43:                                       ; preds = %sw.epilog83, %if.end41
  %35 = load ptr, ptr %p, align 8
  %add.ptr44 = getelementptr inbounds i8, ptr %35, i64 -1
  %call45 = call ptr @skipspace(ptr noundef %add.ptr44, i32 noundef -1)
  store ptr %call45, ptr %p, align 8
  %36 = load ptr, ptr %p, align 8
  %37 = load i8, ptr %36, align 1
  %conv46 = sext i8 %37 to i32
  switch i32 %conv46, label %sw.default82 [
    i32 93, label %sw.bb47
    i32 41, label %sw.bb47
  ]

sw.bb47:                                          ; preds = %for.cond43, %for.cond43
  store i32 1, ptr %level48, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog60, %sw.bb47
  %38 = load i32, ptr %level48, align 4
  %tobool49 = icmp ne i32 %38, 0
  br i1 %tobool49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %p, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %39, i32 -1
  store ptr %incdec.ptr50, ptr %p, align 8
  %40 = load i8, ptr %incdec.ptr50, align 1
  %conv51 = sext i8 %40 to i32
  switch i32 %conv51, label %sw.default59 [
    i32 93, label %sw.bb52
    i32 41, label %sw.bb52
    i32 91, label %sw.bb54
    i32 40, label %sw.bb54
    i32 47, label %sw.bb56
  ]

sw.bb52:                                          ; preds = %while.body, %while.body
  %41 = load i32, ptr %level48, align 4
  %inc53 = add nsw i32 %41, 1
  store i32 %inc53, ptr %level48, align 4
  br label %sw.epilog60

sw.bb54:                                          ; preds = %while.body, %while.body
  %42 = load i32, ptr %level48, align 4
  %dec55 = add nsw i32 %42, -1
  store i32 %dec55, ptr %level48, align 4
  br label %sw.epilog60

sw.bb56:                                          ; preds = %while.body
  %43 = load ptr, ptr %p, align 8
  %call57 = call ptr @skipspace(ptr noundef %43, i32 noundef -1)
  %add.ptr58 = getelementptr inbounds i8, ptr %call57, i64 1
  store ptr %add.ptr58, ptr %p, align 8
  br label %sw.epilog60

sw.default59:                                     ; preds = %while.body
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.default59, %sw.bb56, %sw.bb54, %sw.bb52
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %44 = load ptr, ptr %p, align 8
  %45 = load i8, ptr %44, align 1
  %conv61 = sext i8 %45 to i32
  %cmp62 = icmp eq i32 %conv61, 40
  br i1 %cmp62, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %while.end
  %46 = load ptr, ptr %p, align 8
  %add.ptr64 = getelementptr inbounds i8, ptr %46, i64 1
  %call65 = call ptr @skipspace(ptr noundef %add.ptr64, i32 noundef 1)
  %47 = load i8, ptr %call65, align 1
  %conv66 = sext i8 %47 to i32
  %cmp67 = icmp eq i32 %conv66, 42
  br i1 %cmp67, label %if.then69, label %if.end81

if.then69:                                        ; preds = %land.lhs.true
  br label %while.cond70

while.cond70:                                     ; preds = %while.body77, %if.then69
  %48 = load ptr, ptr %p, align 8
  %49 = load i8, ptr %48, align 1
  %conv71 = sext i8 %49 to i32
  %call72 = call i32 @isalpha(i32 noundef %conv71) #8
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond70
  %50 = load ptr, ptr %p, align 8
  %51 = load i8, ptr %50, align 1
  %conv74 = sext i8 %51 to i32
  %cmp75 = icmp eq i32 %conv74, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond70
  %52 = phi i1 [ true, %while.cond70 ], [ %cmp75, %lor.rhs ]
  %lnot = xor i1 %52, true
  br i1 %lnot, label %while.body77, label %while.end80

while.body77:                                     ; preds = %lor.end
  %53 = load ptr, ptr %p, align 8
  %call78 = call ptr @skipspace(ptr noundef %53, i32 noundef 1)
  %add.ptr79 = getelementptr inbounds i8, ptr %call78, i64 1
  store ptr %add.ptr79, ptr %p, align 8
  br label %while.cond70, !llvm.loop !16

while.end80:                                      ; preds = %lor.end
  br label %found

if.end81:                                         ; preds = %land.lhs.true, %while.end
  br label %sw.epilog83

sw.default82:                                     ; preds = %for.cond43
  br label %found

sw.epilog83:                                      ; preds = %if.end81
  br label %for.cond43

found:                                            ; preds = %sw.default82, %while.end80
  %54 = load ptr, ptr %p, align 8
  %55 = load i8, ptr %54, align 1
  %conv84 = sext i8 %55 to i32
  %cmp85 = icmp eq i32 %conv84, 46
  br i1 %cmp85, label %land.lhs.true87, label %if.else116

land.lhs.true87:                                  ; preds = %found
  %56 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i8, ptr %56, i64 -1
  %57 = load i8, ptr %arrayidx, align 1
  %conv88 = sext i8 %57 to i32
  %cmp89 = icmp eq i32 %conv88, 46
  br i1 %cmp89, label %land.lhs.true91, label %if.else116

land.lhs.true91:                                  ; preds = %land.lhs.true87
  %58 = load ptr, ptr %p, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %58, i64 -2
  %59 = load i8, ptr %arrayidx92, align 1
  %conv93 = sext i8 %59 to i32
  %cmp94 = icmp eq i32 %conv93, 46
  br i1 %cmp94, label %if.then96, label %if.else116

if.then96:                                        ; preds = %land.lhs.true91
  %60 = load i32, ptr %convert_varargs.addr, align 4
  %tobool97 = icmp ne i32 %60, 0
  br i1 %tobool97, label %if.then98, label %if.else101

if.then98:                                        ; preds = %if.then96
  %61 = load ptr, ptr %bp, align 8
  %incdec.ptr99 = getelementptr inbounds ptr, ptr %61, i32 1
  store ptr %incdec.ptr99, ptr %bp, align 8
  store ptr @.str.33, ptr %61, align 8
  %62 = load ptr, ptr %p, align 8
  %add.ptr100 = getelementptr inbounds i8, ptr %62, i64 -2
  store ptr %add.ptr100, ptr %vararg, align 8
  br label %if.end115

if.else101:                                       ; preds = %if.then96
  %63 = load ptr, ptr %p, align 8
  %incdec.ptr102 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr102, ptr %p, align 8
  %64 = load ptr, ptr %bp, align 8
  %65 = load ptr, ptr %breaks, align 8
  %add.ptr103 = getelementptr inbounds ptr, ptr %65, i64 1
  %cmp104 = icmp eq ptr %64, %add.ptr103
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.else101
  %66 = load ptr, ptr %breaks, align 8
  %arrayidx107 = getelementptr inbounds ptr, ptr %66, i64 0
  %67 = load ptr, ptr %arrayidx107, align 8
  %68 = load ptr, ptr %p, align 8
  %call108 = call i32 @writeblanks(ptr noundef %67, ptr noundef %68)
  br label %if.end113

if.else109:                                       ; preds = %if.else101
  %69 = load ptr, ptr %bp, align 8
  %arrayidx110 = getelementptr inbounds ptr, ptr %69, i64 -1
  %70 = load ptr, ptr %arrayidx110, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %70, i64 -1
  %71 = load ptr, ptr %p, align 8
  %call112 = call i32 @writeblanks(ptr noundef %add.ptr111, ptr noundef %71)
  br label %if.end113

if.end113:                                        ; preds = %if.else109, %if.then106
  %72 = load ptr, ptr %bp, align 8
  %incdec.ptr114 = getelementptr inbounds ptr, ptr %72, i32 -1
  store ptr %incdec.ptr114, ptr %bp, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end113, %if.then98
  br label %if.end131

if.else116:                                       ; preds = %land.lhs.true91, %land.lhs.true87, %found
  br label %while.cond117

while.cond117:                                    ; preds = %while.body126, %if.else116
  %73 = load ptr, ptr %p, align 8
  %74 = load i8, ptr %73, align 1
  %conv118 = sext i8 %74 to i32
  %call119 = call i32 @isalnum(i32 noundef %conv118) #8
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %lor.end125, label %lor.rhs121

lor.rhs121:                                       ; preds = %while.cond117
  %75 = load ptr, ptr %p, align 8
  %76 = load i8, ptr %75, align 1
  %conv122 = sext i8 %76 to i32
  %cmp123 = icmp eq i32 %conv122, 95
  br label %lor.end125

lor.end125:                                       ; preds = %lor.rhs121, %while.cond117
  %77 = phi i1 [ true, %while.cond117 ], [ %cmp123, %lor.rhs121 ]
  br i1 %77, label %while.body126, label %while.end128

while.body126:                                    ; preds = %lor.end125
  %78 = load ptr, ptr %p, align 8
  %incdec.ptr127 = getelementptr inbounds i8, ptr %78, i32 -1
  store ptr %incdec.ptr127, ptr %p, align 8
  br label %while.cond117, !llvm.loop !17

while.end128:                                     ; preds = %lor.end125
  %79 = load ptr, ptr %p, align 8
  %add.ptr129 = getelementptr inbounds i8, ptr %79, i64 1
  %80 = load ptr, ptr %bp, align 8
  %incdec.ptr130 = getelementptr inbounds ptr, ptr %80, i32 1
  store ptr %incdec.ptr130, ptr %bp, align 8
  store ptr %add.ptr129, ptr %80, align 8
  br label %if.end131

if.end131:                                        ; preds = %while.end128, %if.end115
  %81 = load ptr, ptr %end, align 8
  store ptr %81, ptr %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end131
  %82 = load ptr, ptr %p, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %incdec.ptr132, ptr %p, align 8
  %83 = load i8, ptr %82, align 1
  %conv133 = sext i8 %83 to i32
  %cmp134 = icmp eq i32 %conv133, 44
  br i1 %cmp134, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %do.cond
  %84 = load ptr, ptr %p, align 8
  %85 = load ptr, ptr %bp, align 8
  store ptr %84, ptr %85, align 8
  %86 = load ptr, ptr %bp, align 8
  %87 = load ptr, ptr %breaks, align 8
  %add.ptr136 = getelementptr inbounds ptr, ptr %87, i64 2
  %cmp137 = icmp eq ptr %86, %add.ptr136
  br i1 %cmp137, label %if.then139, label %if.end157

if.then139:                                       ; preds = %do.end
  %88 = load ptr, ptr %breaks, align 8
  %arrayidx140 = getelementptr inbounds ptr, ptr %88, i64 0
  %89 = load ptr, ptr %arrayidx140, align 8
  %call141 = call ptr @skipspace(ptr noundef %89, i32 noundef 1)
  store ptr %call141, ptr %p, align 8
  %90 = load ptr, ptr %p, align 8
  %call142 = call i32 @strncmp(ptr noundef %90, ptr noundef @.str.29, i64 noundef 4)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end156, label %if.then144

if.then144:                                       ; preds = %if.then139
  %91 = load ptr, ptr %p, align 8
  %add.ptr145 = getelementptr inbounds i8, ptr %91, i64 4
  %call146 = call ptr @skipspace(ptr noundef %add.ptr145, i32 noundef 1)
  store ptr %call146, ptr %p, align 8
  %92 = load ptr, ptr %p, align 8
  %93 = load ptr, ptr %breaks, align 8
  %arrayidx147 = getelementptr inbounds ptr, ptr %93, i64 2
  %94 = load ptr, ptr %arrayidx147, align 8
  %add.ptr148 = getelementptr inbounds i8, ptr %94, i64 -1
  %cmp149 = icmp eq ptr %92, %add.ptr148
  br i1 %cmp149, label %if.then151, label %if.end155

if.then151:                                       ; preds = %if.then144
  %95 = load ptr, ptr %breaks, align 8
  store ptr %95, ptr %bp, align 8
  %96 = load ptr, ptr %breaks, align 8
  %arrayidx152 = getelementptr inbounds ptr, ptr %96, i64 0
  %97 = load ptr, ptr %arrayidx152, align 8
  %98 = load ptr, ptr %p, align 8
  %add.ptr153 = getelementptr inbounds i8, ptr %98, i64 1
  %call154 = call i32 @writeblanks(ptr noundef %97, ptr noundef %add.ptr153)
  br label %if.end155

if.end155:                                        ; preds = %if.then151, %if.then144
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then139
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %do.end
  %99 = load ptr, ptr %buf.addr, align 8
  store ptr %99, ptr %p, align 8
  br label %while.cond158

while.cond158:                                    ; preds = %while.body161, %if.end157
  %100 = load ptr, ptr %p, align 8
  %101 = load ptr, ptr %endfn, align 8
  %cmp159 = icmp ne ptr %100, %101
  br i1 %cmp159, label %while.body161, label %while.end165

while.body161:                                    ; preds = %while.cond158
  %102 = load ptr, ptr %p, align 8
  %103 = load i8, ptr %102, align 1
  %conv162 = sext i8 %103 to i32
  %104 = load ptr, ptr %out.addr, align 8
  %call163 = call i32 @putc(i32 noundef %conv162, ptr noundef %104)
  %105 = load ptr, ptr %p, align 8
  %incdec.ptr164 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr164, ptr %p, align 8
  br label %while.cond158, !llvm.loop !19

while.end165:                                     ; preds = %while.cond158
  %106 = load i32, ptr %header.addr, align 4
  %tobool166 = icmp ne i32 %106, 0
  br i1 %tobool166, label %if.then167, label %if.else186

if.then167:                                       ; preds = %while.end165
  %107 = load ptr, ptr %out.addr, align 8
  %call168 = call i32 @"\01_fputs"(ptr noundef @.str.34, ptr noundef %107)
  %108 = load ptr, ptr %breaks, align 8
  %arrayidx169 = getelementptr inbounds ptr, ptr %108, i64 0
  %109 = load ptr, ptr %arrayidx169, align 8
  store ptr %109, ptr %p, align 8
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc183, %if.then167
  %110 = load ptr, ptr %p, align 8
  %111 = load i8, ptr %110, align 1
  %tobool171 = icmp ne i8 %111, 0
  br i1 %tobool171, label %for.body172, label %for.end185

for.body172:                                      ; preds = %for.cond170
  %112 = load ptr, ptr %p, align 8
  %113 = load i8, ptr %112, align 1
  %conv173 = sext i8 %113 to i32
  %cmp174 = icmp eq i32 %conv173, 13
  br i1 %cmp174, label %if.then179, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body172
  %114 = load ptr, ptr %p, align 8
  %115 = load i8, ptr %114, align 1
  %conv176 = sext i8 %115 to i32
  %cmp177 = icmp eq i32 %conv176, 10
  br i1 %cmp177, label %if.then179, label %if.end182

if.then179:                                       ; preds = %lor.lhs.false, %for.body172
  %116 = load ptr, ptr %p, align 8
  %117 = load i8, ptr %116, align 1
  %conv180 = sext i8 %117 to i32
  %118 = load ptr, ptr %out.addr, align 8
  %call181 = call i32 @putc(i32 noundef %conv180, ptr noundef %118)
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %lor.lhs.false
  br label %for.inc183

for.inc183:                                       ; preds = %if.end182
  %119 = load ptr, ptr %p, align 8
  %incdec.ptr184 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr184, ptr %p, align 8
  br label %for.cond170, !llvm.loop !20

for.end185:                                       ; preds = %for.cond170
  br label %if.end237

if.else186:                                       ; preds = %while.end165
  %120 = load ptr, ptr %breaks, align 8
  %add.ptr187 = getelementptr inbounds ptr, ptr %120, i64 1
  store ptr %add.ptr187, ptr %ap, align 8
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc212, %if.else186
  %121 = load ptr, ptr %ap, align 8
  %122 = load ptr, ptr %bp, align 8
  %cmp189 = icmp ult ptr %121, %122
  br i1 %cmp189, label %for.body191, label %for.end214

for.body191:                                      ; preds = %for.cond188
  %123 = load ptr, ptr %ap, align 8
  %124 = load ptr, ptr %123, align 8
  store ptr %124, ptr %p, align 8
  br label %while.cond192

while.cond192:                                    ; preds = %while.body201, %for.body191
  %125 = load ptr, ptr %p, align 8
  %126 = load i8, ptr %125, align 1
  %conv193 = sext i8 %126 to i32
  %call194 = call i32 @isalnum(i32 noundef %conv193) #8
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %lor.end200, label %lor.rhs196

lor.rhs196:                                       ; preds = %while.cond192
  %127 = load ptr, ptr %p, align 8
  %128 = load i8, ptr %127, align 1
  %conv197 = sext i8 %128 to i32
  %cmp198 = icmp eq i32 %conv197, 95
  br label %lor.end200

lor.end200:                                       ; preds = %lor.rhs196, %while.cond192
  %129 = phi i1 [ true, %while.cond192 ], [ %cmp198, %lor.rhs196 ]
  br i1 %129, label %while.body201, label %while.end205

while.body201:                                    ; preds = %lor.end200
  %130 = load ptr, ptr %p, align 8
  %131 = load i8, ptr %130, align 1
  %conv202 = sext i8 %131 to i32
  %132 = load ptr, ptr %out.addr, align 8
  %call203 = call i32 @putc(i32 noundef %conv202, ptr noundef %132)
  %133 = load ptr, ptr %p, align 8
  %incdec.ptr204 = getelementptr inbounds i8, ptr %133, i32 1
  store ptr %incdec.ptr204, ptr %p, align 8
  br label %while.cond192, !llvm.loop !21

while.end205:                                     ; preds = %lor.end200
  %134 = load ptr, ptr %ap, align 8
  %135 = load ptr, ptr %bp, align 8
  %add.ptr206 = getelementptr inbounds ptr, ptr %135, i64 -1
  %cmp207 = icmp ult ptr %134, %add.ptr206
  br i1 %cmp207, label %if.then209, label %if.end211

if.then209:                                       ; preds = %while.end205
  %136 = load ptr, ptr %out.addr, align 8
  %call210 = call i32 @"\01_fputs"(ptr noundef @.str.35, ptr noundef %136)
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %while.end205
  br label %for.inc212

for.inc212:                                       ; preds = %if.end211
  %137 = load ptr, ptr %ap, align 8
  %add.ptr213 = getelementptr inbounds ptr, ptr %137, i64 2
  store ptr %add.ptr213, ptr %ap, align 8
  br label %for.cond188, !llvm.loop !22

for.end214:                                       ; preds = %for.cond188
  %138 = load ptr, ptr %out.addr, align 8
  %call215 = call i32 @"\01_fputs"(ptr noundef @.str.36, ptr noundef %138)
  %139 = load ptr, ptr %breaks, align 8
  %add.ptr216 = getelementptr inbounds ptr, ptr %139, i64 2
  store ptr %add.ptr216, ptr %ap, align 8
  br label %for.cond217

for.cond217:                                      ; preds = %for.inc222, %for.end214
  %140 = load ptr, ptr %ap, align 8
  %141 = load ptr, ptr %bp, align 8
  %cmp218 = icmp ule ptr %140, %141
  br i1 %cmp218, label %for.body220, label %for.end224

for.body220:                                      ; preds = %for.cond217
  %142 = load ptr, ptr %ap, align 8
  %143 = load ptr, ptr %142, align 8
  %arrayidx221 = getelementptr inbounds i8, ptr %143, i64 -1
  store i8 59, ptr %arrayidx221, align 1
  br label %for.inc222

for.inc222:                                       ; preds = %for.body220
  %144 = load ptr, ptr %ap, align 8
  %add.ptr223 = getelementptr inbounds ptr, ptr %144, i64 2
  store ptr %add.ptr223, ptr %ap, align 8
  br label %for.cond217, !llvm.loop !23

for.end224:                                       ; preds = %for.cond217
  %145 = load ptr, ptr %vararg, align 8
  %cmp225 = icmp ne ptr %145, null
  br i1 %cmp225, label %if.then227, label %if.else233

if.then227:                                       ; preds = %for.end224
  %146 = load ptr, ptr %vararg, align 8
  store i8 0, ptr %146, align 1
  %147 = load ptr, ptr %breaks, align 8
  %arrayidx228 = getelementptr inbounds ptr, ptr %147, i64 0
  %148 = load ptr, ptr %arrayidx228, align 8
  %149 = load ptr, ptr %out.addr, align 8
  %call229 = call i32 @"\01_fputs"(ptr noundef %148, ptr noundef %149)
  %150 = load ptr, ptr %out.addr, align 8
  %call230 = call i32 @"\01_fputs"(ptr noundef @.str.37, ptr noundef %150)
  %151 = load ptr, ptr %bp, align 8
  %arrayidx231 = getelementptr inbounds ptr, ptr %151, i64 0
  %152 = load ptr, ptr %arrayidx231, align 8
  %153 = load ptr, ptr %out.addr, align 8
  %call232 = call i32 @"\01_fputs"(ptr noundef %152, ptr noundef %153)
  br label %if.end236

if.else233:                                       ; preds = %for.end224
  %154 = load ptr, ptr %breaks, align 8
  %arrayidx234 = getelementptr inbounds ptr, ptr %154, i64 0
  %155 = load ptr, ptr %arrayidx234, align 8
  %156 = load ptr, ptr %out.addr, align 8
  %call235 = call i32 @"\01_fputs"(ptr noundef %155, ptr noundef %156)
  br label %if.end236

if.end236:                                        ; preds = %if.else233, %if.then227
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %for.end185
  %157 = load ptr, ptr %breaks, align 8
  %call238 = call i32 @free(ptr noundef %157)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end237, %if.then
  %158 = load i32, ptr %retval, align 4
  ret i32 %158
}

declare i32 @putc(i32 noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define ptr @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_ansi2knr_0(ptr noundef %p, i32 noundef %dir)  alwaysinline#0 {
entry:
  %retval = alloca ptr, align 8
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
  %call = call i32 @isspace(i32 noundef %conv) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

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
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv1, 47
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.end
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %dir.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 42
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %while.end
  br label %for.end

if.end:                                           ; preds = %land.lhs.true
  %9 = load i32, ptr %dir.addr, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %idx.ext6 = sext i32 %9 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %10, i64 %idx.ext6
  store ptr %add.ptr7, ptr %p.addr, align 8
  %11 = load i32, ptr %dir.addr, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %12, i64 %idx.ext8
  store ptr %add.ptr9, ptr %p.addr, align 8
  br label %while.cond10

while.cond10:                                     ; preds = %if.end24, %if.end
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond10
  %15 = load ptr, ptr %p.addr, align 8
  %16 = load i32, ptr %dir.addr, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 %idxprom14
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond10
  %18 = phi i1 [ false, %while.cond10 ], [ %cmp17, %land.rhs ]
  %lnot = xor i1 %18, true
  br i1 %lnot, label %while.body19, label %while.end27

while.body19:                                     ; preds = %land.end
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load i8, ptr %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body19
  %21 = load ptr, ptr %p.addr, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %while.body19
  %22 = load i32, ptr %dir.addr, align 4
  %23 = load ptr, ptr %p.addr, align 8
  %idx.ext25 = sext i32 %22 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %23, i64 %idx.ext25
  store ptr %add.ptr26, ptr %p.addr, align 8
  br label %while.cond10, !llvm.loop !9

while.end27:                                      ; preds = %land.end
  %24 = load i32, ptr %dir.addr, align 4
  %25 = load ptr, ptr %p.addr, align 8
  %idx.ext28 = sext i32 %24 to i64
  %add.ptr29 = getelementptr inbounds i8, ptr %25, i64 %idx.ext28
  store ptr %add.ptr29, ptr %p.addr, align 8
  %26 = load i32, ptr %dir.addr, align 4
  %27 = load ptr, ptr %p.addr, align 8
  %idx.ext30 = sext i32 %26 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %27, i64 %idx.ext30
  store ptr %add.ptr31, ptr %p.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %28 = load ptr, ptr %p.addr, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then23
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
