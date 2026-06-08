; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_small_callee/source_snapshot_public_repos_mibench_office_ghostscript_src_echogs.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
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
  %sub = add nsw i32 %2, -1
  store i32 %sub, ptr %nargs, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %argp, align 8
  %4 = load ptr, ptr %3, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(3) @.str.1) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, ptr %nargs, align 4
  %cmp1 = icmp slt i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %argp, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %extn, align 8
  %add.ptr3 = getelementptr inbounds ptr, ptr %6, i64 2
  store ptr %add.ptr3, ptr %argp, align 8
  %8 = load i32, ptr %nargs, align 4
  %sub4 = add nsw i32 %8, -2
  store i32 %sub4, ptr %nargs, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %9 = load i32, ptr %nargs, align 4
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.else72

land.lhs.true7:                                   ; preds = %if.end5
  %10 = load ptr, ptr %argp, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load i8, ptr %11, align 1
  %cmp9 = icmp eq i8 %12, 45
  br i1 %cmp9, label %land.lhs.true11, label %if.else72

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %13 = load ptr, ptr %argp, align 8
  %14 = load ptr, ptr %13, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx12, align 1
  %cmp14 = icmp eq i8 %15, 119
  br i1 %cmp14, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %16 = load ptr, ptr %argp, align 8
  %17 = load ptr, ptr %16, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx16, align 1
  %cmp18 = icmp eq i8 %18, 97
  br i1 %cmp18, label %if.then20, label %if.else72

if.then20:                                        ; preds = %lor.lhs.false, %land.lhs.true11
  %19 = load ptr, ptr %argp, align 8
  %20 = load ptr, ptr %19, align 8
  %call21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #7
  store i64 %call21, ptr %len, align 8
  %cmp22 = icmp ugt i64 %call21, 4
  br i1 %cmp22, label %if.then24, label %for.cond

if.then24:                                        ; preds = %if.then20
  store i32 1, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.then20, %for.inc
  %storemerge2 = phi i32 [ %inc, %for.inc ], [ 1, %if.then20 ]
  store i32 %storemerge2, ptr %i, align 4
  %21 = load i32, ptr %nargs, align 4
  %cmp26 = icmp slt i32 %storemerge2, %21
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %argp, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %arrayidx28, align 8
  %25 = load i8, ptr %24, align 1
  %cmp31.not = icmp eq i8 %25, 45
  br i1 %cmp31.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.body, %for.cond
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %nargs, align 4
  %cmp35 = icmp eq i32 %27, %28
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.end
  %29 = load ptr, ptr %argp, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %29, i64 %idxprom39
  %31 = load ptr, ptr %arrayidx40, align 8
  store ptr %31, ptr %fnparam, align 8
  %32 = load ptr, ptr %29, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %32, i64 1
  %call42 = call ptr @__strcpy_chk(ptr noundef nonnull %fmode, ptr noundef nonnull %add.ptr41, i64 noundef 4) #7
  %call44 = call ptr @__strcpy_chk(ptr noundef nonnull %fname, ptr noundef %31, i64 noundef 100) #7
  %33 = load ptr, ptr %extn, align 8
  %call46 = call ptr @__strcat_chk(ptr noundef nonnull %fname, ptr noundef %33, i64 noundef 100) #7
  %34 = load i64, ptr %len, align 8
  %sub47 = add i64 %34, -2
  %arrayidx48 = getelementptr inbounds [4 x i8], ptr %fmode, i64 0, i64 %sub47
  %35 = load i8, ptr %arrayidx48, align 1
  %cmp50 = icmp eq i8 %35, 45
  br i1 %cmp50, label %if.then52, label %for.cond57

if.then52:                                        ; preds = %if.end38
  %36 = load i64, ptr %len, align 8
  %sub53 = add i64 %36, -2
  %arrayidx54 = getelementptr inbounds [4 x i8], ptr %fmode, i64 0, i64 %sub53
  store i8 0, ptr %arrayidx54, align 1
  %37 = load ptr, ptr %argp, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %37, i64 %idxprom55
  store ptr @.str.2, ptr %arrayidx56, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %37, i64 1
  store ptr %incdec.ptr, ptr %argp, align 8
  %39 = load i32, ptr %nargs, align 4
  %dec = add nsw i32 %39, -1
  br label %if.end71

for.cond57:                                       ; preds = %if.end38, %for.body60
  %40 = load i32, ptr %i, align 4
  %cmp58 = icmp sgt i32 %40, 1
  br i1 %cmp58, label %for.body60, label %for.end68

for.body60:                                       ; preds = %for.cond57
  %41 = load ptr, ptr %argp, align 8
  %42 = load i32, ptr %i, align 4
  %sub61 = add nsw i32 %42, -1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %41, i64 %idxprom62
  %43 = load ptr, ptr %arrayidx63, align 8
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %41, i64 %idxprom64
  store ptr %43, ptr %arrayidx65, align 8
  %44 = load i32, ptr %i, align 4
  %dec67 = add nsw i32 %44, -1
  store i32 %dec67, ptr %i, align 4
  br label %for.cond57, !llvm.loop !8

for.end68:                                        ; preds = %for.cond57
  %45 = load ptr, ptr %argp, align 8
  %add.ptr69 = getelementptr inbounds ptr, ptr %45, i64 2
  store ptr %add.ptr69, ptr %argp, align 8
  %46 = load i32, ptr %nargs, align 4
  %sub70 = add nsw i32 %46, -2
  br label %if.end71

if.end71:                                         ; preds = %for.end68, %if.then52
  %storemerge3 = phi i32 [ %sub70, %for.end68 ], [ %dec, %if.then52 ]
  store i32 %storemerge3, ptr %nargs, align 4
  br label %if.end75

if.else72:                                        ; preds = %lor.lhs.false, %land.lhs.true7, %if.end5
  store i8 0, ptr %fname, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.end71
  %47 = load i32, ptr %nargs, align 4
  %cmp76 = icmp sgt i32 %47, 0
  br i1 %cmp76, label %land.lhs.true78, label %if.end84

land.lhs.true78:                                  ; preds = %if.end75
  %48 = load ptr, ptr %argp, align 8
  %49 = load ptr, ptr %48, align 8
  %call79 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(3) @.str.3) #7
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %if.end84

if.then81:                                        ; preds = %land.lhs.true78
  store ptr @hputc, ptr %eputc, align 8
  store ptr @hputs, ptr %eputs, align 8
  %50 = load ptr, ptr %argp, align 8
  %incdec.ptr82 = getelementptr inbounds ptr, ptr %50, i64 1
  store ptr %incdec.ptr82, ptr %argp, align 8
  %51 = load i32, ptr %nargs, align 4
  %dec83 = add nsw i32 %51, -1
  store i32 %dec83, ptr %nargs, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true78, %if.end75
  %52 = load i32, ptr %nargs, align 4
  %cmp85 = icmp sgt i32 %52, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end93

land.lhs.true87:                                  ; preds = %if.end84
  %53 = load ptr, ptr %argp, align 8
  %54 = load ptr, ptr %53, align 8
  %call88 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(3) @.str.4) #7
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end93

if.then90:                                        ; preds = %land.lhs.true87
  store i32 0, ptr %newline, align 4
  %55 = load ptr, ptr %argp, align 8
  %incdec.ptr91 = getelementptr inbounds ptr, ptr %55, i64 1
  store ptr %incdec.ptr91, ptr %argp, align 8
  %56 = load i32, ptr %nargs, align 4
  %dec92 = add nsw i32 %56, -1
  store i32 %dec92, ptr %nargs, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true87, %if.end84
  %char0 = load i8, ptr %fname, align 1
  %cmp96.not = icmp eq i8 %char0, 0
  br i1 %cmp96.not, label %if.end106, label %if.then98

if.then98:                                        ; preds = %if.end93
  %call101 = call ptr @"\01_fopen"(ptr noundef nonnull %fname, ptr noundef nonnull %fmode) #7
  store ptr %call101, ptr %out, align 8
  %cmp102 = icmp eq ptr %call101, null
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then98
  store i32 1, ptr %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.then98, %if.end93
  br label %while.body

while.body:                                       ; preds = %if.end265, %if.end118, %if.end106
  %57 = load i32, ptr %interact, align 4
  %tobool107.not = icmp eq i32 %57, 0
  br i1 %tobool107.not, label %if.else125, label %if.then108

if.then108:                                       ; preds = %while.body
  %58 = load ptr, ptr %in, align 8
  %call110 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 1000, ptr noundef %58) #7
  %cmp111 = icmp eq ptr %call110, null
  br i1 %cmp111, label %if.then113, label %if.end119

if.then113:                                       ; preds = %if.then108
  store i32 0, ptr %interact, align 4
  %59 = load ptr, ptr %in, align 8
  %60 = load ptr, ptr @__stdinp, align 8
  %cmp114.not = icmp eq ptr %59, %60
  br i1 %cmp114.not, label %if.end118, label %if.then116

if.then116:                                       ; preds = %if.then113
  %61 = load ptr, ptr %in, align 8
  %call117 = call i32 @fclose(ptr noundef %61) #7
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.then113
  br label %while.body

if.end119:                                        ; preds = %if.then108
  %call121 = call i64 @strlen(ptr noundef nonnull %line) #7
  %sub122 = add i64 %call121, -1
  %arrayidx123 = getelementptr inbounds [1000 x i8], ptr %line, i64 0, i64 %sub122
  store i8 0, ptr %arrayidx123, align 1
  store ptr %line, ptr %arg, align 8
  br label %if.end132

if.else125:                                       ; preds = %while.body
  %62 = load i32, ptr %nargs, align 4
  %cmp126 = icmp eq i32 %62, 0
  br i1 %cmp126, label %while.end266, label %if.end129

if.end129:                                        ; preds = %if.else125
  %63 = load ptr, ptr %argp, align 8
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %arg, align 8
  %incdec.ptr130 = getelementptr inbounds ptr, ptr %63, i64 1
  store ptr %incdec.ptr130, ptr %argp, align 8
  %65 = load i32, ptr %nargs, align 4
  %dec131 = add nsw i32 %65, -1
  store i32 %dec131, ptr %nargs, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.end129, %if.end119
  %66 = load i8, ptr %sw, align 1
  %cmp134 = icmp eq i8 %66, 0
  br i1 %cmp134, label %land.lhs.true136, label %if.else181

land.lhs.true136:                                 ; preds = %if.end132
  %67 = load ptr, ptr %arg, align 8
  %68 = load i8, ptr %67, align 1
  %cmp139 = icmp eq i8 %68, 45
  br i1 %cmp139, label %if.then141, label %if.else181

if.then141:                                       ; preds = %land.lhs.true136
  %69 = load ptr, ptr %arg, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %69, i64 1
  %70 = load i8, ptr %arrayidx142, align 1
  store i8 %70, ptr %chr, align 1
  store i8 0, ptr %sp, align 1
  br label %swc

swc:                                              ; preds = %sw.bb, %if.then141
  %71 = load i8, ptr %chr, align 1
  %conv143 = sext i8 %71 to i32
  switch i32 %conv143, label %if.end265 [
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
  %72 = load ptr, ptr %arg, align 8
  %incdec.ptr144 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %incdec.ptr144, ptr %arg, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx145, align 1
  %conv146 = sext i8 %73 to i32
  %call147 = call i32 @toupper(i32 noundef %conv146) #8
  %conv148 = trunc i32 %call147 to i8
  store i8 %conv148, ptr %chr, align 1
  br label %swc

sw.bb149:                                         ; preds = %swc
  store i8 81, ptr %chr, align 1
  br label %sw.bb150

sw.bb150:                                         ; preds = %sw.bb149, %swc, %swc
  %74 = load ptr, ptr %arg, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %74, i64 2
  %75 = load i8, ptr %arrayidx151, align 1
  %cmp153.not = icmp eq i8 %75, 0
  br i1 %cmp153.not, label %sw.bb165, label %if.then155

if.then155:                                       ; preds = %sw.bb150
  %76 = load ptr, ptr %eputs, align 8
  %77 = load ptr, ptr %arg, align 8
  %add.ptr156 = getelementptr inbounds i8, ptr %77, i64 2
  %78 = load ptr, ptr %out, align 8
  %call157 = call i32 %76(ptr noundef nonnull %add.ptr156, ptr noundef %78) #7
  %79 = load i8, ptr %chr, align 1
  %cmp159 = icmp eq i8 %79, 81
  br i1 %cmp159, label %if.then161, label %if.end265

if.then161:                                       ; preds = %if.then155
  %80 = load ptr, ptr %eputc, align 8
  %81 = load ptr, ptr %out, align 8
  %call162 = call i32 %80(i32 noundef 32, ptr noundef %81) #7
  br label %if.end265

sw.bb165:                                         ; preds = %sw.bb150, %swc, %swc, %swc, %swc
  %82 = load i8, ptr %chr, align 1
  store i8 %82, ptr %sw, align 1
  br label %if.end265

sw.bb166:                                         ; preds = %swc
  %83 = load ptr, ptr %eputc, align 8
  %84 = load ptr, ptr %out, align 8
  %call167 = call i32 %83(i32 noundef 32, ptr noundef %84) #7
  br label %if.end265

sw.bb168:                                         ; preds = %swc
  store i32 1, ptr %interact, align 4
  %85 = load ptr, ptr @__stdinp, align 8
  store ptr %85, ptr %in, align 8
  br label %if.end265

sw.bb169:                                         ; preds = %swc, %swc
  %call170 = call i64 @time(ptr noundef nonnull %t) #7
  %call172 = call ptr @ctime(ptr noundef nonnull %t) #7
  %call173 = call ptr @__strcpy_chk(ptr noundef nonnull %str, ptr noundef %call172, i64 noundef 26) #7
  %arrayidx174 = getelementptr inbounds [26 x i8], ptr %str, i64 0, i64 24
  store i8 0, ptr %arrayidx174, align 1
  %86 = load ptr, ptr %eputs, align 8
  %87 = load ptr, ptr %out, align 8
  %call176 = call i32 %86(ptr noundef nonnull %str, ptr noundef %87) #7
  br label %if.end265

sw.bb177:                                         ; preds = %swc, %swc
  %88 = load ptr, ptr %eputs, align 8
  %89 = load ptr, ptr %fnparam, align 8
  %90 = load ptr, ptr %out, align 8
  %call178 = call i32 %88(ptr noundef %89, ptr noundef %90) #7
  br label %if.end265

sw.bb179:                                         ; preds = %swc
  store i8 1, ptr %hexx, align 1
  br label %if.end265

sw.bb180:                                         ; preds = %swc
  store i8 45, ptr %sw, align 1
  br label %if.end265

if.else181:                                       ; preds = %land.lhs.true136, %if.end132
  %91 = load i8, ptr %sw, align 1
  %conv182 = sext i8 %91 to i32
  switch i32 %conv182, label %if.end265 [
    i32 0, label %sw.bb183
    i32 45, label %sw.bb183
    i32 113, label %sw.bb192
    i32 81, label %sw.bb194
    i32 114, label %sw.bb197
    i32 82, label %sw.bb203
    i32 117, label %sw.bb220
    i32 120, label %xx
  ]

sw.bb183:                                         ; preds = %if.else181, %if.else181
  %92 = load i8, ptr %hexx, align 1
  %tobool184.not = icmp eq i8 %92, 0
  br i1 %tobool184.not, label %if.end186, label %xx

if.end186:                                        ; preds = %sw.bb183
  %93 = load i8, ptr %sp, align 1
  %tobool187.not = icmp eq i8 %93, 0
  br i1 %tobool187.not, label %if.end190, label %if.then188

if.then188:                                       ; preds = %if.end186
  %94 = load ptr, ptr %eputc, align 8
  %95 = load ptr, ptr %out, align 8
  %call189 = call i32 %94(i32 noundef 32, ptr noundef %95) #7
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.end186
  %96 = load ptr, ptr %eputs, align 8
  %97 = load ptr, ptr %arg, align 8
  %98 = load ptr, ptr %out, align 8
  %call191 = call i32 %96(ptr noundef %97, ptr noundef %98) #7
  store i8 1, ptr %sp, align 1
  br label %if.end265

sw.bb192:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %99 = load ptr, ptr %eputs, align 8
  %100 = load ptr, ptr %arg, align 8
  %101 = load ptr, ptr %out, align 8
  %call193 = call i32 %99(ptr noundef %100, ptr noundef %101) #7
  br label %if.end265

sw.bb194:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %102 = load ptr, ptr %eputs, align 8
  %103 = load ptr, ptr %arg, align 8
  %104 = load ptr, ptr %out, align 8
  %call195 = call i32 %102(ptr noundef %103, ptr noundef %104) #7
  %105 = load ptr, ptr %eputc, align 8
  %call196 = call i32 %105(i32 noundef 32, ptr noundef %104) #7
  br label %if.end265

sw.bb197:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %106 = load ptr, ptr %arg, align 8
  %call198 = call ptr @"\01_fopen"(ptr noundef %106, ptr noundef nonnull @.str.5) #7
  store ptr %call198, ptr %in, align 8
  %cmp199 = icmp eq ptr %call198, null
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %sw.bb197
  call void @exit(i32 noundef 1) #9
  unreachable

if.end202:                                        ; preds = %sw.bb197
  store i32 1, ptr %interact, align 4
  br label %if.end265

sw.bb203:                                         ; preds = %if.else181
  store i8 0, ptr %sw, align 1
  %107 = load ptr, ptr %arg, align 8
  %call204 = call ptr @"\01_fopen"(ptr noundef %107, ptr noundef nonnull @.str.5) #7
  store ptr %call204, ptr %in, align 8
  %cmp205 = icmp eq ptr %call204, null
  br i1 %cmp205, label %if.then207, label %while.cond209

if.then207:                                       ; preds = %sw.bb203
  call void @exit(i32 noundef 1) #9
  unreachable

while.cond209:                                    ; preds = %sw.bb203, %while.body215
  %108 = load ptr, ptr %in, align 8
  %call211 = call i64 @fread(ptr noundef nonnull %line, i64 noundef 1, i64 noundef 1, ptr noundef %108) #7
  %conv212 = trunc i64 %call211 to i32
  %cmp213 = icmp sgt i32 %conv212, 0
  br i1 %cmp213, label %while.body215, label %while.end

while.body215:                                    ; preds = %while.cond209
  %109 = load ptr, ptr %eputc, align 8
  %110 = load i8, ptr %line, align 1
  %conv217 = sext i8 %110 to i32
  %111 = load ptr, ptr %out, align 8
  %call218 = call i32 %109(i32 noundef %conv217, ptr noundef %111) #7
  br label %while.cond209, !llvm.loop !9

while.end:                                        ; preds = %while.cond209
  %112 = load ptr, ptr %in, align 8
  %call219 = call i32 @fclose(ptr noundef %112) #7
  br label %if.end265

sw.bb220:                                         ; preds = %if.else181
  %113 = load ptr, ptr %arg, align 8
  br label %for.cond221

for.cond221:                                      ; preds = %for.body223, %sw.bb220
  %storemerge1 = phi ptr [ %113, %sw.bb220 ], [ %incdec.ptr228, %for.body223 ]
  store ptr %storemerge1, ptr %up, align 8
  %114 = load i8, ptr %storemerge1, align 1
  %tobool222.not = icmp eq i8 %114, 0
  br i1 %tobool222.not, label %for.end229, label %for.body223

for.body223:                                      ; preds = %for.cond221
  %115 = load ptr, ptr %eputc, align 8
  %116 = load ptr, ptr %up, align 8
  %117 = load i8, ptr %116, align 1
  %conv224 = sext i8 %117 to i32
  %call225 = call i32 @toupper(i32 noundef %conv224) #8
  %118 = load ptr, ptr %out, align 8
  %call226 = call i32 %115(i32 noundef %call225, ptr noundef %118) #7
  %119 = load ptr, ptr %up, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %119, i64 1
  br label %for.cond221, !llvm.loop !10

for.end229:                                       ; preds = %for.cond221
  store i8 0, ptr %sw, align 1
  br label %if.end265

xx:                                               ; preds = %if.else181, %sw.bb183
  store i32 1, ptr %xchr, align 4
  %120 = load ptr, ptr %arg, align 8
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc261, %xx
  %storemerge = phi ptr [ %120, %xx ], [ %incdec.ptr262, %for.inc261 ]
  store ptr %storemerge, ptr %xp, align 8
  %121 = load i8, ptr %storemerge, align 1
  %tobool232.not = icmp eq i8 %121, 0
  br i1 %tobool232.not, label %for.end263, label %for.body233

for.body233:                                      ; preds = %for.cond231
  %122 = load ptr, ptr %xp, align 8
  %123 = load i8, ptr %122, align 1
  store i8 %123, ptr %ch, align 1
  %conv234 = sext i8 %123 to i32
  %call235 = call i32 @isxdigit(i32 noundef %conv234) #8
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.then237, label %if.end238

if.then237:                                       ; preds = %for.body233
  store i32 1, ptr %retval, align 4
  br label %return

if.end238:                                        ; preds = %for.body233
  %124 = load i32, ptr %xchr, align 4
  %shl = shl i32 %124, 4
  store i32 %shl, ptr %xchr, align 4
  %125 = load i8, ptr %ch, align 1
  %conv239 = sext i8 %125 to i32
  %isdigittmp = add nsw i32 %conv239, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end238
  %126 = load i8, ptr %ch, align 1
  %conv242 = sext i8 %126 to i32
  %sub243 = add nsw i32 %conv242, -48
  br label %cond.end253

cond.false:                                       ; preds = %if.end238
  %127 = load i8, ptr %ch, align 1
  %conv244 = sext i8 %127 to i32
  %call245 = call i32 @isupper(i32 noundef %conv244) #8
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %cond.false250, label %cond.true247

cond.true247:                                     ; preds = %cond.false
  %128 = load i8, ptr %ch, align 1
  %conv248 = sext i8 %128 to i32
  %call249 = call i32 @tolower(i32 noundef %conv248) #8
  br label %cond.end

cond.false250:                                    ; preds = %cond.false
  %129 = load i8, ptr %ch, align 1
  %conv251 = sext i8 %129 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false250, %cond.true247
  %cond = phi i32 [ %call249, %cond.true247 ], [ %conv251, %cond.false250 ]
  %add = add nsw i32 %cond, -87
  br label %cond.end253

cond.end253:                                      ; preds = %cond.end, %cond.true
  %cond254 = phi i32 [ %sub243, %cond.true ], [ %add, %cond.end ]
  %130 = load i32, ptr %xchr, align 4
  %add255 = add i32 %130, %cond254
  store i32 %add255, ptr %xchr, align 4
  %cmp256 = icmp ugt i32 %add255, 255
  br i1 %cmp256, label %if.then258, label %for.inc261

if.then258:                                       ; preds = %cond.end253
  %131 = load ptr, ptr %eputc, align 8
  %132 = load i32, ptr %xchr, align 4
  %and = and i32 %132, 255
  %133 = load ptr, ptr %out, align 8
  %call259 = call i32 %131(i32 noundef %and, ptr noundef %133) #7
  store i32 1, ptr %xchr, align 4
  br label %for.inc261

for.inc261:                                       ; preds = %cond.end253, %if.then258
  %134 = load ptr, ptr %xp, align 8
  %incdec.ptr262 = getelementptr inbounds i8, ptr %134, i64 1
  br label %for.cond231, !llvm.loop !11

for.end263:                                       ; preds = %for.cond231
  store i8 0, ptr %sw, align 1
  br label %if.end265

if.end265:                                        ; preds = %if.else181, %if.end190, %sw.bb192, %sw.bb194, %if.end202, %while.end, %for.end229, %for.end263, %swc, %sw.bb165, %sw.bb166, %sw.bb168, %sw.bb169, %sw.bb177, %sw.bb179, %sw.bb180, %if.then161, %if.then155
  br label %while.body

while.end266:                                     ; preds = %if.else125
  %135 = load i32, ptr %newline, align 4
  %tobool267.not = icmp eq i32 %135, 0
  br i1 %tobool267.not, label %if.end270, label %if.then268

if.then268:                                       ; preds = %while.end266
  %136 = load ptr, ptr %eputc, align 8
  %137 = load ptr, ptr %out, align 8
  %call269 = call i32 %136(i32 noundef 10, ptr noundef %137) #7
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %while.end266
  %138 = load ptr, ptr %out, align 8
  %139 = load ptr, ptr @__stdoutp, align 8
  %cmp271.not = icmp eq ptr %138, %139
  br i1 %cmp271.not, label %if.end275, label %if.then273

if.then273:                                       ; preds = %if.end270
  %140 = load ptr, ptr %out, align 8
  %call274 = call i32 @fclose(ptr noundef %140) #7
  br label %if.end275

if.end275:                                        ; preds = %if.then273, %if.end270
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end275, %if.then237, %if.then104, %if.then37, %if.then24, %if.then2
  %141 = load i32, ptr %retval, align 4
  ret i32 %141
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

; Function Attrs: nounwind ssp uwtable
define internal i32 @hputc(i32 noundef %ch, ptr noundef %out) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr @hputc.hex, align 8
  %shr = ashr i32 %ch, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load ptr, ptr %out.addr, align 8
  %call = call i32 @putc(i32 noundef %conv, ptr noundef %2) #7
  %3 = load ptr, ptr @hputc.hex, align 8
  %4 = load i32, ptr %ch.addr, align 4
  %and = and i32 %4, 15
  %idxprom1 = zext i32 %and to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load ptr, ptr %out.addr, align 8
  %call4 = call i32 @putc(i32 noundef %conv3, ptr noundef %6) #7
  ret i32 0
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv1 = zext i8 %3 to i32
  %4 = load ptr, ptr %out.addr, align 8
  %call = call i32 @hputc(i32 noundef %conv1, ptr noundef %4)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { noreturn nounwind }

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
