; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/mkversion.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/libtiff/mkversion.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [11 x i8] c"../VERSION\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"../dist/tiff.alpha\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@__stderrp = external global ptr, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"mkversion: No version information in %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"mkversion: No alpha information in %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"mkversion: Malformed alpha information in %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"mkversion: %s: Could not open for writing.\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"#define VERSION \22LIBTIFF, Version %s\\n\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Copyright (c) 1988-1996 Sam Leffler\\n\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Copyright (c) 1991-1996 Silicon Graphics, Inc.\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"usage: mkversion [-v version-file] [-a alpha-file] [outfile]\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"mkversion: %s: Could not open for reading.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %versionFile = alloca ptr, align 8
  %alphaFile = alloca ptr, align 8
  %version = alloca [128 x i8], align 1
  %alpha = alloca [128 x i8], align 1
  %fd = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str, ptr %versionFile, align 8
  store ptr @.str.1, ptr %alphaFile, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %entry
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx4, align 8
  %call = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.2)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %argc.addr, align 4
  %cmp7 = icmp slt i32 %9, 1
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  call void @usage()
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %10 = load i32, ptr %argc.addr, align 4
  %dec10 = add nsw i32 %10, -1
  store i32 %dec10, ptr %argc.addr, align 4
  %11 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr11 = getelementptr inbounds ptr, ptr %11, i32 1
  store ptr %incdec.ptr11, ptr %argv.addr, align 8
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx12, align 8
  store ptr %13, ptr %versionFile, align 8
  br label %if.end27

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.3)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else25

if.then17:                                        ; preds = %if.else
  %16 = load i32, ptr %argc.addr, align 4
  %cmp18 = icmp slt i32 %16, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  call void @usage()
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %17 = load i32, ptr %argc.addr, align 4
  %dec22 = add nsw i32 %17, -1
  store i32 %dec22, ptr %argc.addr, align 4
  %18 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr23 = getelementptr inbounds ptr, ptr %18, i32 1
  store ptr %incdec.ptr23, ptr %argv.addr, align 8
  %19 = load ptr, ptr %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx24, align 8
  store ptr %20, ptr %alphaFile, align 8
  br label %if.end26

if.else25:                                        ; preds = %if.else
  call void @usage()
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.end21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %21 = load i32, ptr %argc.addr, align 4
  %dec28 = add nsw i32 %21, -1
  store i32 %dec28, ptr %argc.addr, align 4
  %22 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr29 = getelementptr inbounds ptr, ptr %22, i32 1
  store ptr %incdec.ptr29, ptr %argv.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %23 = load ptr, ptr %versionFile, align 8
  %call30 = call ptr @openFile(ptr noundef %23)
  store ptr %call30, ptr %fd, align 8
  %arraydecay = getelementptr inbounds [128 x i8], ptr %version, i64 0, i64 0
  %24 = load ptr, ptr %fd, align 8
  %call31 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 127, ptr noundef %24)
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %while.end
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = load ptr, ptr %versionFile, align 8
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.4, ptr noundef %26)
  call void @exit(i32 noundef -1) #3
  unreachable

if.end36:                                         ; preds = %while.end
  %arraydecay37 = getelementptr inbounds [128 x i8], ptr %version, i64 0, i64 0
  %call38 = call ptr @strchr(ptr noundef %arraydecay37, i32 noundef 10)
  store ptr %call38, ptr %cp, align 8
  %27 = load ptr, ptr %cp, align 8
  %tobool = icmp ne ptr %27, null
  br i1 %tobool, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  %28 = load ptr, ptr %cp, align 8
  store i8 0, ptr %28, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36
  %29 = load ptr, ptr %fd, align 8
  %call41 = call i32 @fclose(ptr noundef %29)
  %30 = load ptr, ptr %alphaFile, align 8
  %call42 = call ptr @openFile(ptr noundef %30)
  store ptr %call42, ptr %fd, align 8
  %arraydecay43 = getelementptr inbounds [128 x i8], ptr %alpha, i64 0, i64 0
  %31 = load ptr, ptr %fd, align 8
  %call44 = call ptr @fgets(ptr noundef %arraydecay43, i32 noundef 127, ptr noundef %31)
  %cmp45 = icmp eq ptr %call44, null
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end40
  %32 = load ptr, ptr @__stderrp, align 8
  %33 = load ptr, ptr %alphaFile, align 8
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.5, ptr noundef %33)
  call void @exit(i32 noundef -1) #3
  unreachable

if.end49:                                         ; preds = %if.end40
  %34 = load ptr, ptr %fd, align 8
  %call50 = call i32 @fclose(ptr noundef %34)
  %arraydecay51 = getelementptr inbounds [128 x i8], ptr %alpha, i64 0, i64 0
  %call52 = call ptr @strchr(ptr noundef %arraydecay51, i32 noundef 32)
  store ptr %call52, ptr %cp, align 8
  %35 = load ptr, ptr %cp, align 8
  %tobool53 = icmp ne ptr %35, null
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end49
  %36 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %36, i64 1
  %call55 = call ptr @strchr(ptr noundef %add.ptr, i32 noundef 32)
  store ptr %call55, ptr %cp, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end49
  %37 = load ptr, ptr %cp, align 8
  %tobool57 = icmp ne ptr %37, null
  br i1 %tobool57, label %if.then58, label %if.else74

if.then58:                                        ; preds = %if.end56
  %arraydecay59 = getelementptr inbounds [128 x i8], ptr %version, i64 0, i64 0
  %call60 = call ptr @strchr(ptr noundef %arraydecay59, i32 noundef 0)
  store ptr %call60, ptr %tp, align 8
  %38 = load ptr, ptr %cp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr61, ptr %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then58
  %39 = load ptr, ptr %cp, align 8
  %40 = load i8, ptr %39, align 1
  %41 = load ptr, ptr %tp, align 8
  store i8 %40, ptr %41, align 1
  %conv62 = sext i8 %40 to i32
  %cmp63 = icmp ne i32 %conv62, 0
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load ptr, ptr %tp, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr65, ptr %tp, align 8
  %43 = load ptr, ptr %cp, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr66, ptr %cp, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %44 = load ptr, ptr %tp, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %44, i64 -1
  %45 = load i8, ptr %arrayidx67, align 1
  %conv68 = sext i8 %45 to i32
  %cmp69 = icmp eq i32 %conv68, 10
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %for.end
  %46 = load ptr, ptr %tp, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %46, i64 -1
  store i8 0, ptr %arrayidx72, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %for.end
  br label %if.end76

if.else74:                                        ; preds = %if.end56
  %47 = load ptr, ptr @__stderrp, align 8
  %48 = load ptr, ptr %alphaFile, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.6, ptr noundef %48)
  call void @exit(i32 noundef -1) #3
  unreachable

if.end76:                                         ; preds = %if.end73
  %49 = load i32, ptr %argc.addr, align 4
  %cmp77 = icmp sgt i32 %49, 0
  br i1 %cmp77, label %if.then79, label %if.else88

if.then79:                                        ; preds = %if.end76
  %50 = load ptr, ptr %argv.addr, align 8
  %arrayidx80 = getelementptr inbounds ptr, ptr %50, i64 0
  %51 = load ptr, ptr %arrayidx80, align 8
  %call81 = call ptr @"\01_fopen"(ptr noundef %51, ptr noundef @.str.7)
  store ptr %call81, ptr %fd, align 8
  %52 = load ptr, ptr %fd, align 8
  %cmp82 = icmp eq ptr %52, null
  br i1 %cmp82, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.then79
  %53 = load ptr, ptr @__stderrp, align 8
  %54 = load ptr, ptr %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds ptr, ptr %54, i64 0
  %55 = load ptr, ptr %arrayidx85, align 8
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.8, ptr noundef %55)
  call void @exit(i32 noundef -1) #3
  unreachable

if.end87:                                         ; preds = %if.then79
  br label %if.end89

if.else88:                                        ; preds = %if.end76
  %56 = load ptr, ptr @__stdoutp, align 8
  store ptr %56, ptr %fd, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.end87
  %57 = load ptr, ptr %fd, align 8
  %arraydecay90 = getelementptr inbounds [128 x i8], ptr %version, i64 0, i64 0
  %call91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.9, ptr noundef %arraydecay90)
  %58 = load ptr, ptr %fd, align 8
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.10)
  %59 = load ptr, ptr %fd, align 8
  %call93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.11)
  %60 = load ptr, ptr %fd, align 8
  %61 = load ptr, ptr @__stdoutp, align 8
  %cmp94 = icmp ne ptr %60, %61
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end89
  %62 = load ptr, ptr %fd, align 8
  %call97 = call i32 @fclose(ptr noundef %62)
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end89
  ret i32 0
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.12)
  call void @exit(i32 noundef -1) #3
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @openFile(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str.13)
  store ptr %call, ptr %fd, align 8
  %1 = load ptr, ptr %fd, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load ptr, ptr %filename.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.14, ptr noundef %3)
  call void @exit(i32 noundef -1) #3
  unreachable

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fd, align 8
  ret ptr %4
}

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @strchr(ptr noundef, i32 noundef) #1

declare i32 @fclose(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!8 = distinct !{!8, !7}
