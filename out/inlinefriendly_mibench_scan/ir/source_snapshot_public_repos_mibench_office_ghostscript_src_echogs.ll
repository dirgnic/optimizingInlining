; ModuleID = './source_snapshot/public_repos/mibench/office/ghostscript/src/echogs.c'
source_filename = "./source_snapshot/public_repos/mibench/office/ghostscript/src/echogs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@__stdinp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@hputc.hex = internal global ptr @.str.6, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %out = alloca ptr, align 8
  %in = alloca ptr, align 8
  %extn = alloca ptr, align 8
  %fmode = alloca [4 x i8], align 1
  %fnparam = alloca ptr, align 8
  %fname = alloca [100 x i8], align 1
  %newline = alloca i32, align 4
  %interact = alloca i32, align 4
  %eputc = alloca ptr, align 8
  %eputs = alloca ptr, align 8
  %line = alloca [1000 x i8], align 1
  %sw = alloca i8, align 1
  %sp = alloca i8, align 1
  %hexx = alloca i8, align 1
  %argp = alloca ptr, align 8
  %nargs = alloca i32, align 4
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %arg = alloca ptr, align 8
  %chr = alloca i8, align 1
  %t = alloca i64, align 8
  %str = alloca [26 x i8], align 1
  %count = alloca i32, align 4
  %up = alloca ptr, align 8
  %xp = alloca ptr, align 8
  %xchr = alloca i32, align 4
  %ch = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr @__stdoutp, align 8
  store ptr %0, ptr %out, align 8
  store ptr @.str, ptr %extn, align 8
  store i32 1, ptr %newline, align 4
  store i32 0, ptr %interact, align 4
  store ptr @fputc, ptr %eputc, align 8
  store ptr @"\01_fputs", ptr %eputs, align 8
  store i8 0, ptr %sw, align 1
  store i8 0, ptr %sp, align 1
  store i8 0, ptr %hexx, align 1
  %1 = load ptr, ptr %argv.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %add.ptr, ptr %argp, align 8
  %2 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %nargs, align 4
  %3 = load i32, ptr %nargs, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %argp, align 8
  %5 = load ptr, ptr %4, align 8
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %nargs, align 4
  %cmp1 = icmp slt i32 %6, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %argp, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %extn, align 8
  %9 = load ptr, ptr %argp, align 8
  %add.ptr3 = getelementptr inbounds ptr, ptr %9, i64 2
  store ptr %add.ptr3, ptr %argp, align 8
  %10 = load i32, ptr %nargs, align 4
  %sub4 = sub nsw i32 %10, 2
  store i32 %sub4, ptr %nargs, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %11 = load i32, ptr %nargs, align 4
  %cmp6 = icmp sgt i32 %11, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.else72

land.lhs.true7:                                   ; preds = %if.end5
  %12 = load ptr, ptr %argp, align 8
  %13 = load ptr, ptr %12, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %14 to i32
  %cmp9 = icmp eq i32 %conv, 45
  br i1 %cmp9, label %land.lhs.true11, label %if.else72

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %15 = load ptr, ptr %argp, align 8
  %16 = load ptr, ptr %15, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 119
  br i1 %cmp14, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %18 = load ptr, ptr %argp, align 8
  %19 = load ptr, ptr %18, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 97
  br i1 %cmp18, label %if.then20, label %if.else72

if.then20:                                        ; preds = %lor.lhs.false, %land.lhs.true11
  %21 = load ptr, ptr %argp, align 8
  %22 = load ptr, ptr %21, align 8
  %call21 = call i64 @strlen(ptr noundef %22)
  store i64 %call21, ptr %len, align 8
  %23 = load i64, ptr %len, align 8
  %cmp22 = icmp ugt i64 %23, 4
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  store i32 1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then20
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nargs, align 4
  %cmp26 = icmp slt i32 %24, %25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %argp, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %29 to i32
  %cmp31 = icmp ne i32 %conv30, 45
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body
  br label %for.end

if.end34:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then33, %for.cond
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %nargs, align 4
  %cmp35 = icmp eq i32 %31, %32
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.end
  %33 = load ptr, ptr %argp, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %33, i64 %idxprom39
  %35 = load ptr, ptr %arrayidx40, align 8
  store ptr %35, ptr %fnparam, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %fmode, i64 0, i64 0
  %36 = load ptr, ptr %argp, align 8
  %37 = load ptr, ptr %36, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %37, i64 1
  %call42 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef %add.ptr41, i64 noundef 4) #5
  %arraydecay43 = getelementptr inbounds [100 x i8], ptr %fname, i64 0, i64 0
  %38 = load ptr, ptr %fnparam, align 8
  %call44 = call ptr @__strcpy_chk(ptr noundef %arraydecay43, ptr noundef %38, i64 noundef 100) #5
  %arraydecay45 = getelementptr inbounds [100 x i8], ptr %fname, i64 0, i64 0
  %39 = load ptr, ptr %extn, align 8
  %call46 = call ptr @__strcat_chk(ptr noundef %arraydecay45, ptr noundef %39, i64 noundef 100) #5
  %40 = load i64, ptr %len, align 8
  %sub47 = sub i64 %40, 2
  %arrayidx48 = getelementptr inbounds [4 x i8], ptr %fmode, i64 0, i64 %sub47
  %41 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %41 to i32
  %cmp50 = icmp eq i32 %conv49, 45
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end38
  %42 = load i64, ptr %len, align 8
  %sub53 = sub i64 %42, 2
  %arrayidx54 = getelementptr inbounds [4 x i8], ptr %fmode, i64 0, i64 %sub53
  store i8 0, ptr %arrayidx54, align 1
  %43 = load ptr, ptr %argp, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %44 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %43, i64 %idxprom55
  store ptr @.str.2, ptr %arrayidx56, align 8
  %45 = load ptr, ptr %argp, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %45, i32 1
  store ptr %incdec.ptr, ptr %argp, align 8
  %46 = load i32, ptr %nargs, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, ptr %nargs, align 4
  br label %if.end71

if.else:                                          ; preds = %if.end38
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc66, %if.else
  %47 = load i32, ptr %i, align 4
  %cmp58 = icmp sgt i32 %47, 1
  br i1 %cmp58, label %for.body60, label %for.end68

for.body60:                                       ; preds = %for.cond57
  %48 = load ptr, ptr %argp, align 8
  %49 = load i32, ptr %i, align 4
  %sub61 = sub nsw i32 %49, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %48, i64 %idxprom62
  %50 = load ptr, ptr %arrayidx63, align 8
  %51 = load ptr, ptr %argp, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %51, i64 %idxprom64
  store ptr %50, ptr %arrayidx65, align 8
  br label %for.inc66

for.inc66:                                        ; preds = %for.body60
  %53 = load i32, ptr %i, align 4
  %dec67 = add nsw i32 %53, -1
  store i32 %dec67, ptr %i, align 4
  br label %for.cond57, !llvm.loop !8

for.end68:                                        ; preds = %for.cond57
  %54 = load ptr, ptr %argp, align 8
  %add.ptr69 = getelementptr inbounds ptr, ptr %54, i64 2
  store ptr %add.ptr69, ptr %argp, align 8
  %55 = load i32, ptr %nargs, align 4
  %sub70 = sub nsw i32 %55, 2
  store i32 %sub70, ptr %nargs, align 4
  br label %if.end71

if.end71:                                         ; preds = %for.end68, %if.then52
  br label %if.end75

if.else72:                                        ; preds = %lor.lhs.false, %land.lhs.true7, %if.end5
  %arraydecay73 = getelementptr inbounds [100 x i8], ptr %fname, i64 0, i64 0
  %call74 = call ptr @__strcpy_chk(ptr noundef %arraydecay73, ptr noundef @.str, i64 noundef 100) #5
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.end71
  %56 = load i32, ptr %nargs, align 4
  %cmp76 = icmp sgt i32 %56, 0
  br i1 %cmp76, label %land.lhs.true78, label %if.end84

land.lhs.true78:                                  ; preds = %if.end75
  %57 = load ptr, ptr %argp, align 8
  %58 = load ptr, ptr %57, align 8
  %call79 = call i32 @strcmp(ptr noundef %58, ptr noundef @.str.3)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end84, label %if.then81

if.then81:                                        ; preds = %land.lhs.true78
  store ptr @hputc, ptr %eputc, align 8
  store ptr @hputs, ptr %eputs, align 8
  %59 = load ptr, ptr %argp, align 8
  %incdec.ptr82 = getelementptr inbounds ptr, ptr %59, i32 1
  store ptr %incdec.ptr82, ptr %argp, align 8
  %60 = load i32, ptr %nargs, align 4
  %dec83 = add nsw i32 %60, -1
  store i32 %dec83, ptr %nargs, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true78, %if.end75
  %61 = load i32, ptr %nargs, align 4
  %cmp85 = icmp sgt i32 %61, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end93

land.lhs.true87:                                  ; preds = %if.end84
  %62 = load ptr, ptr %argp, align 8
  %63 = load ptr, ptr %62, align 8
  %call88 = call i32 @strcmp(ptr noundef %63, ptr noundef @.str.4)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end93, label %if.then90

if.then90:                                        ; preds = %land.lhs.true87
  store i32 0, ptr %newline, align 4
  %64 = load ptr, ptr %argp, align 8
  %incdec.ptr91 = getelementptr inbounds ptr, ptr %64, i32 1
  store ptr %incdec.ptr91, ptr %argp, align 8
  %65 = load i32, ptr %nargs, align 4
  %dec92 = add nsw i32 %65, -1
  store i32 %dec92, ptr %nargs, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true87, %if.end84
  %arraydecay94 = getelementptr inbounds [100 x i8], ptr %fname, i64 0, i64 0
  %call95 = call i64 @strlen(ptr noundef %arraydecay94)
  %cmp96 = icmp ne i64 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end106

if.then98:                                        ; preds = %if.end93
  %arraydecay99 = getelementptr inbounds [100 x i8], ptr %fname, i64 0, i64 0
  %arraydecay100 = getelementptr inbounds [4 x i8], ptr %fmode, i64 0, i64 0
  %call101 = call ptr @"\01_fopen"(ptr noundef %arraydecay99, ptr noundef %arraydecay100)
  store ptr %call101, ptr %out, align 8
  %66 = load ptr, ptr %out, align 8
  %cmp102 = icmp eq ptr %66, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then98
  store i32 1, ptr %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.then98
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end93
  br label %while.body

while.body:                                       ; preds = %if.end106, %if.end118, %if.end265
  %67 = load i32, ptr %interact, align 4
  %tobool107 = icmp ne i32 %67, 0
  br i1 %tobool107, label %if.then108, label %if.else125

if.then108:                                       ; preds = %while.body
  %arraydecay109 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 0
  %68 = load ptr, ptr %in, align 8
  %call110 = call ptr @fgets(ptr noundef %arraydecay109, i32 noundef 1000, ptr noundef %68)
  %cmp111 = icmp eq ptr %call110, null
  br i1 %cmp111, label %if.then113, label %if.end119

if.then113:                                       ; preds = %if.then108
  store i32 0, ptr %interact, align 4
  %69 = load ptr, ptr %in, align 8
  %70 = load ptr, ptr @__stdinp, align 8
  %cmp114 = icmp ne ptr %69, %70
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.then113
  %71 = load ptr, ptr %in, align 8
  %call117 = call i32 @fclose(ptr noundef %71)
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.then113
  br label %while.body

if.end119:                                        ; preds = %if.then108
  %arraydecay120 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 0
  %call121 = call i64 @strlen(ptr noundef %arraydecay120)
  %sub122 = sub i64 %call121, 1
  %arrayidx123 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 %sub122
  store i8 0, ptr %arrayidx123, align 1
  %arraydecay124 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 0
  store ptr %arraydecay124, ptr %arg, align 8
  br label %if.end132

if.else125:                                       ; preds = %while.body
  %72 = load i32, ptr %nargs, align 4
  %cmp126 = icmp eq i32 %72, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.else125
  br label %while.end266

if.end129:                                        ; preds = %if.else125
  %73 = load ptr, ptr %argp, align 8
  %74 = load ptr, ptr %73, align 8
  store ptr %74, ptr %arg, align 8
  %75 = load ptr, ptr %argp, align 8
  %incdec.ptr130 = getelementptr inbounds ptr, ptr %75, i32 1
  store ptr %incdec.ptr130, ptr %argp, align 8
  %76 = load i32, ptr %nargs, align 4
  %dec131 = add nsw i32 %76, -1
  store i32 %dec131, ptr %nargs, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.end129, %if.end119
  %77 = load i8, ptr %sw, align 1
  %conv133 = sext i8 %77 to i32
  %cmp134 = icmp eq i32 %conv133, 0
  br i1 %cmp134, label %land.lhs.true136, label %if.else181

land.lhs.true136:                                 ; preds = %if.end132
  %78 = load ptr, ptr %arg, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %78, i64 0
  %79 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %79 to i32
  %cmp139 = icmp eq i32 %conv138, 45
  br i1 %cmp139, label %if.then141, label %if.else181

if.then141:                                       ; preds = %land.lhs.true136
  %80 = load ptr, ptr %arg, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %80, i64 1
  %81 = load i8, ptr %arrayidx142, align 1
  store i8 %81, ptr %chr, align 1
  store i8 0, ptr %sp, align 1
  br label %swc

swc:                                              ; preds = %sw.bb, %if.then141
  %82 = load i8, ptr %chr, align 1
  %conv143 = sext i8 %82 to i32
  switch i32 %conv143, label %sw.epilog [
    i32 43, label %sw.bb
    i32 108, label %sw.bb149
    i32 113, label %sw.bb150
    i32 81, label %sw.bb150
    i32 114, label %sw.bb165
    i32 82, label %sw.bb165
    i32 117, label %sw.bb165
    i32 120, label %sw.bb165
    i32 115, label %sw.bb166
    i32 105, label %sw.bb168
    i32 100, label %sw.bb169
    i32 68, label %sw.bb169
    i32 102, label %sw.bb177
    i32 70, label %sw.bb177
    i32 88, label %sw.bb179
    i32 0, label %sw.bb180
  ]

sw.bb:                                            ; preds = %swc
  %83 = load ptr, ptr %arg, align 8
  %incdec.ptr144 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr144, ptr %arg, align 8
  %84 = load ptr, ptr %arg, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %84, i64 1
  %85 = load i8, ptr %arrayidx145, align 1
  %conv146 = sext i8 %85 to i32
  %call147 = call i32 @toupper(i32 noundef %conv146) #6
  %conv148 = trunc i32 %call147 to i8
  store i8 %conv148, ptr %chr, align 1
  br label %swc

sw.bb149:                                         ; preds = %swc
  store i8 81, ptr %chr, align 1
  br label %sw.bb150

sw.bb150:                                         ; preds = %swc, %swc, %sw.bb149
  %86 = load ptr, ptr %arg, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %86, i64 2
  %87 = load i8, ptr %arrayidx151, align 1
  %conv152 = sext i8 %87 to i32
  %cmp153 = icmp ne i32 %conv152, 0
  br i1 %cmp153, label %if.then155, label %if.end164

if.then155:                                       ; preds = %sw.bb150
  %88 = load ptr, ptr %eputs, align 8
  %89 = load ptr, ptr %arg, align 8
  %add.ptr156 = getelementptr inbounds i8, ptr %89, i64 2
  %90 = load ptr, ptr %out, align 8
  %call157 = call i32 %88(ptr noundef %add.ptr156, ptr noundef %90)
  %91 = load i8, ptr %chr, align 1
  %conv158 = sext i8 %91 to i32
  %cmp159 = icmp eq i32 %conv158, 81
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %if.then155
  %92 = load ptr, ptr %eputc, align 8
  %93 = load ptr, ptr %out, align 8
  %call162 = call i32 %92(i32 noundef 32, ptr noundef %93)
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.then155
  br label %sw.epilog

if.end164:                                        ; preds = %sw.bb150
  br label %sw.bb165

sw.bb165:                                         ; preds = %swc, %swc, %swc, %swc, %if.end164
  %94 = load i8, ptr %chr, align 1
  store i8 %94, ptr %sw, align 1
  br label %sw.epilog

sw.bb166:                                         ; preds = %swc
  %95 = load ptr, ptr %eputc, align 8
  %96 = load ptr, ptr %out, align 8
  %call167 = call i32 %95(i32 noundef 32, ptr noundef %96)
  br label %sw.epilog

sw.bb168:                                         ; preds = %swc
  store i32 1, ptr %interact, align 4
  %97 = load ptr, ptr @__stdinp, align 8
  store ptr %97, ptr %in, align 8
  br label %sw.epilog

sw.bb169:                                         ; preds = %swc, %swc
  %call170 = call i64 @time(ptr noundef %t)
  %arraydecay171 = getelementptr inbounds [26 x i8], ptr %str, i64 0, i64 0
  %call172 = call ptr @ctime(ptr noundef %t)
  %call173 = call ptr @__strcpy_chk(ptr noundef %arraydecay171, ptr noundef %call172, i64 noundef 26) #5
  %arrayidx174 = getelementptr inbounds [26 x i8], ptr %str, i64 0, i64 24
  store i8 0, ptr %arrayidx174, align 1
  %98 = load ptr, ptr %eputs, align 8
  %arraydecay175 = getelementptr inbounds [26 x i8], ptr %str, i64 0, i64 0
  %99 = load ptr, ptr %out, align 8
  %call176 = call i32 %98(ptr noundef %arraydecay175, ptr noundef %99)
  br label %sw.epilog

sw.bb177:                                         ; preds = %swc, %swc
  %100 = load ptr, ptr %eputs, align 8
  %101 = load ptr, ptr %fnparam, align 8
  %102 = load ptr, ptr %out, align 8
  %call178 = call i32 %100(ptr noundef %101, ptr noundef %102)
  br label %sw.epilog

sw.bb179:                                         ; preds = %swc
  store i8 1, ptr %hexx, align 1
  br label %sw.epilog

sw.bb180:                                         ; preds = %swc
  store i8 45, ptr %sw, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %swc, %sw.bb180, %sw.bb179, %sw.bb177, %sw.bb169, %sw.bb168, %sw.bb166, %sw.bb165, %if.end163
  br label %if.end265

if.else181:                                       ; preds = %land.lhs.true136, %if.end132
  %103 = load i8, ptr %sw, align 1
  %conv182 = sext i8 %103 to i32
  switch i32 %conv182, label %sw.epilog264 [
    i32 0, label %sw.bb183
    i32 45, label %sw.bb183
    i32 113, label %sw.bb192
    i32 81, label %sw.bb194
    i32 114, label %sw.bb197
    i32 82, label %sw.bb203
    i32 117, label %sw.bb220
    i32 120, label %sw.bb230
  ]

sw.bb183:                                         ; preds = %if.else181, %if.else181
  %104 = load i8, ptr %hexx, align 1
  %tobool184 = icmp ne i8 %104, 0
  br i1 %tobool184, label %if.then185, label %if.end186

if.then185:                                       ; preds = %sw.bb183
  br label %xx

if.end186:                                        ; preds = %sw.bb183
  %105 = load i8, ptr %sp, align 1
  %tobool187 = icmp ne i8 %105, 0
  br i1 %tobool187, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.end186
  %106 = load ptr, ptr %eputc, align 8
  %107 = load ptr, ptr %out, align 8
  %call189 = call i32 %106(i32 noundef 32, ptr noundef %107)
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.end186
  %108 = load ptr, ptr %eputs, align 8
  %109 = load ptr, ptr %arg, align 8
  %110 = load ptr, ptr %out, align 8
  %call191 = call i32 %108(ptr noundef %109, ptr noundef %110)
  store i8 1, ptr %sp, align 1
  br label %sw.epilog264

sw.bb192:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %111 = load ptr, ptr %eputs, align 8
  %112 = load ptr, ptr %arg, align 8
  %113 = load ptr, ptr %out, align 8
  %call193 = call i32 %111(ptr noundef %112, ptr noundef %113)
  br label %sw.epilog264

sw.bb194:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %114 = load ptr, ptr %eputs, align 8
  %115 = load ptr, ptr %arg, align 8
  %116 = load ptr, ptr %out, align 8
  %call195 = call i32 %114(ptr noundef %115, ptr noundef %116)
  %117 = load ptr, ptr %eputc, align 8
  %118 = load ptr, ptr %out, align 8
  %call196 = call i32 %117(i32 noundef 32, ptr noundef %118)
  br label %sw.epilog264

sw.bb197:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %119 = load ptr, ptr %arg, align 8
  %call198 = call ptr @"\01_fopen"(ptr noundef %119, ptr noundef @.str.5)
  store ptr %call198, ptr %in, align 8
  %120 = load ptr, ptr %in, align 8
  %cmp199 = icmp eq ptr %120, null
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %sw.bb197
  call void @exit(i32 noundef 1) #7
  unreachable

if.end202:                                        ; preds = %sw.bb197
  store i32 1, ptr %interact, align 4
  br label %sw.epilog264

sw.bb203:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %121 = load ptr, ptr %arg, align 8
  %call204 = call ptr @"\01_fopen"(ptr noundef %121, ptr noundef @.str.5)
  store ptr %call204, ptr %in, align 8
  %122 = load ptr, ptr %in, align 8
  %cmp205 = icmp eq ptr %122, null
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %sw.bb203
  call void @exit(i32 noundef 1) #7
  unreachable

if.end208:                                        ; preds = %sw.bb203
  br label %while.cond209

while.cond209:                                    ; preds = %while.body215, %if.end208
  %arraydecay210 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 0
  %123 = load ptr, ptr %in, align 8
  %call211 = call i64 @fread(ptr noundef %arraydecay210, i64 noundef 1, i64 noundef 1, ptr noundef %123)
  %conv212 = trunc i64 %call211 to i32
  store i32 %conv212, ptr %count, align 4
  %cmp213 = icmp sgt i32 %conv212, 0
  br i1 %cmp213, label %while.body215, label %while.end

while.body215:                                    ; preds = %while.cond209
  %124 = load ptr, ptr %eputc, align 8
  %arrayidx216 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 0
  %125 = load i8, ptr %arrayidx216, align 1
  %conv217 = sext i8 %125 to i32
  %126 = load ptr, ptr %out, align 8
  %call218 = call i32 %124(i32 noundef %conv217, ptr noundef %126)
  br label %while.cond209, !llvm.loop !9

while.end:                                        ; preds = %while.cond209
  %127 = load ptr, ptr %in, align 8
  %call219 = call i32 @fclose(ptr noundef %127)
  br label %sw.epilog264

sw.bb220:                                         ; preds = %if.else181
  %128 = load ptr, ptr %arg, align 8
  store ptr %128, ptr %up, align 8
  br label %for.cond221

for.cond221:                                      ; preds = %for.inc227, %sw.bb220
  %129 = load ptr, ptr %up, align 8
  %130 = load i8, ptr %129, align 1
  %tobool222 = icmp ne i8 %130, 0
  br i1 %tobool222, label %for.body223, label %for.end229

for.body223:                                      ; preds = %for.cond221
  %131 = load ptr, ptr %eputc, align 8
  %132 = load ptr, ptr %up, align 8
  %133 = load i8, ptr %132, align 1
  %conv224 = sext i8 %133 to i32
  %call225 = call i32 @toupper(i32 noundef %conv224) #6
  %134 = load ptr, ptr %out, align 8
  %call226 = call i32 %131(i32 noundef %call225, ptr noundef %134)
  br label %for.inc227

for.inc227:                                       ; preds = %for.body223
  %135 = load ptr, ptr %up, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr228, ptr %up, align 8
  br label %for.cond221, !llvm.loop !10

for.end229:                                       ; preds = %for.cond221
  store i8 0, ptr %sw, align 1
  br label %sw.epilog264

sw.bb230:                                         ; preds = %if.else181
  br label %xx

xx:                                               ; preds = %sw.bb230, %if.then185
  store i32 1, ptr %xchr, align 4
  %136 = load ptr, ptr %arg, align 8
  store ptr %136, ptr %xp, align 8
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc261, %xx
  %137 = load ptr, ptr %xp, align 8
  %138 = load i8, ptr %137, align 1
  %tobool232 = icmp ne i8 %138, 0
  br i1 %tobool232, label %for.body233, label %for.end263

for.body233:                                      ; preds = %for.cond231
  %139 = load ptr, ptr %xp, align 8
  %140 = load i8, ptr %139, align 1
  store i8 %140, ptr %ch, align 1
  %141 = load i8, ptr %ch, align 1
  %conv234 = sext i8 %141 to i32
  %call235 = call i32 @isxdigit(i32 noundef %conv234) #6
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.end238, label %if.then237

if.then237:                                       ; preds = %for.body233
  store i32 1, ptr %retval, align 4
  br label %return

if.end238:                                        ; preds = %for.body233
  %142 = load i32, ptr %xchr, align 4
  %shl = shl i32 %142, 4
  store i32 %shl, ptr %xchr, align 4
  %143 = load i8, ptr %ch, align 1
  %conv239 = sext i8 %143 to i32
  %call240 = call i32 @isdigit(i32 noundef %conv239) #6
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end238
  %144 = load i8, ptr %ch, align 1
  %conv242 = sext i8 %144 to i32
  %sub243 = sub nsw i32 %conv242, 48
  br label %cond.end253

cond.false:                                       ; preds = %if.end238
  %145 = load i8, ptr %ch, align 1
  %conv244 = sext i8 %145 to i32
  %call245 = call i32 @isupper(i32 noundef %conv244) #6
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %cond.true247, label %cond.false250

cond.true247:                                     ; preds = %cond.false
  %146 = load i8, ptr %ch, align 1
  %conv248 = sext i8 %146 to i32
  %call249 = call i32 @tolower(i32 noundef %conv248) #6
  br label %cond.end

cond.false250:                                    ; preds = %cond.false
  %147 = load i8, ptr %ch, align 1
  %conv251 = sext i8 %147 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false250, %cond.true247
  %cond = phi i32 [ %call249, %cond.true247 ], [ %conv251, %cond.false250 ]
  %sub252 = sub nsw i32 %cond, 97
  %add = add nsw i32 %sub252, 10
  br label %cond.end253

cond.end253:                                      ; preds = %cond.end, %cond.true
  %cond254 = phi i32 [ %sub243, %cond.true ], [ %add, %cond.end ]
  %148 = load i32, ptr %xchr, align 4
  %add255 = add i32 %148, %cond254
  store i32 %add255, ptr %xchr, align 4
  %149 = load i32, ptr %xchr, align 4
  %cmp256 = icmp uge i32 %149, 256
  br i1 %cmp256, label %if.then258, label %if.end260

if.then258:                                       ; preds = %cond.end253
  %150 = load ptr, ptr %eputc, align 8
  %151 = load i32, ptr %xchr, align 4
  %and = and i32 %151, 255
  %152 = load ptr, ptr %out, align 8
  %call259 = call i32 %150(i32 noundef %and, ptr noundef %152)
  store i32 1, ptr %xchr, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %cond.end253
  br label %for.inc261

for.inc261:                                       ; preds = %if.end260
  %153 = load ptr, ptr %xp, align 8
  %incdec.ptr262 = getelementptr inbounds i8, ptr %153, i32 1
  store ptr %incdec.ptr262, ptr %xp, align 8
  br label %for.cond231, !llvm.loop !11

for.end263:                                       ; preds = %for.cond231
  store i8 0, ptr %sw, align 1
  br label %sw.epilog264

sw.epilog264:                                     ; preds = %if.else181, %for.end263, %for.end229, %while.end, %if.end202, %sw.bb194, %sw.bb192, %if.end190
  br label %if.end265

if.end265:                                        ; preds = %sw.epilog264, %sw.epilog
  br label %while.body

while.end266:                                     ; preds = %if.then128
  %154 = load i32, ptr %newline, align 4
  %tobool267 = icmp ne i32 %154, 0
  br i1 %tobool267, label %if.then268, label %if.end270

if.then268:                                       ; preds = %while.end266
  %155 = load ptr, ptr %eputc, align 8
  %156 = load ptr, ptr %out, align 8
  %call269 = call i32 %155(i32 noundef 10, ptr noundef %156)
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %while.end266
  %157 = load ptr, ptr %out, align 8
  %158 = load ptr, ptr @__stdoutp, align 8
  %cmp271 = icmp ne ptr %157, %158
  br i1 %cmp271, label %if.then273, label %if.end275

if.then273:                                       ; preds = %if.end270
  %159 = load ptr, ptr %out, align 8
  %call274 = call i32 @fclose(ptr noundef %159)
  br label %if.end275

if.end275:                                        ; preds = %if.then273, %if.end270
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end275, %if.then237, %if.then104, %if.then37, %if.then24, %if.then2
  %160 = load i32, ptr %retval, align 4
  ret i32 %160
}

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32 noundef) #3

declare i64 @time(ptr noundef) #1

declare ptr @ctime(ptr noundef) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isxdigit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @isupper(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @tolower(i32 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @hputc(i32 noundef %ch, ptr noundef %out) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr @hputc.hex, align 8
  %1 = load i32, ptr %ch.addr, align 4
  %shr = ashr i32 %1, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %out.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %3)
  %4 = load ptr, ptr @hputc.hex, align 8
  %5 = load i32, ptr %ch.addr, align 4
  %and = and i32 %5, 15
  %idxprom1 = sext i32 %and to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %7 = load ptr, ptr %out.addr, align 8
  %call4 = call i32 @putc(i32 noundef %conv3, ptr noundef %7)
  ret i32 0
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @hputs(ptr noundef %str, ptr noundef %out) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %4 = load ptr, ptr %out.addr, align 8
  %call = call i32 @hputc(i32 noundef %and, ptr noundef %4)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn }

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
