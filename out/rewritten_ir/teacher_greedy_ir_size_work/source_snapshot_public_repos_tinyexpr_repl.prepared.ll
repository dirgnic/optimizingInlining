; ModuleID = './source_snapshot/public_repos/tinyexpr/repl.c'
source_filename = "./source_snapshot/public_repos/tinyexpr/repl.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"       %s -e <expression>\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Error at position %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@__stderrp = external global ptr, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stdinp = external global ptr, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"fgets\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else6

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 2
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @pc_inline_source_snapshot_public_repos_tinyexpr_repl_1(ptr noundef %4)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %argc.addr, align 4
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  call void @repl()
  store i32 0, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else6
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %7)
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %9)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %if.then8, %if.else, %if.then5
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @eval(ptr noundef %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %r = alloca double, align 8
  store ptr %str, ptr %str.addr, align 8
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %str.addr, align 8
  %call = call double @te_interp(ptr noundef %0, ptr noundef %err)
  store double %call, ptr %r, align 8
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load double, ptr %r, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i32 @printf(ptr noundef, ...) #1

declare double @te_interp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @repl() #0 {
entry:
  %line = alloca ptr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end10
  %call = call ptr @readline(ptr noundef @.str.5)
  store ptr %call, ptr %line, align 8
  %0 = load ptr, ptr %line, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  %1 = load ptr, ptr %line, align 8
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.6)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load ptr, ptr %line, align 8
  %call3 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.7)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  %3 = load ptr, ptr %line, align 8
  call void @free(ptr noundef %3)
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end6

if.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %line, align 8
  %call7 = call i32 @eval(ptr noundef %4)
  %cmp8 = icmp ne i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %5 = load ptr, ptr %line, align 8
  call void @pc_inline_source_snapshot_public_repos_tinyexpr_repl_0(ptr noundef %5)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %6 = load ptr, ptr %line, align 8
  call void @free(ptr noundef %6)
  br label %while.body

while.end:                                        ; preds = %if.then5, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @readline(ptr noundef %prompt) #0 {
entry:
  %retval = alloca ptr, align 8
  %prompt.addr = alloca ptr, align 8
  %buf = alloca [1024 x i8], align 1
  %line = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %prompt, ptr %prompt.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = load ptr, ptr %prompt.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %1)
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr @__stdinp, align 8
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %2)
  store ptr %call1, ptr %line, align 8
  %3 = load ptr, ptr %line, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr @__stdinp, align 8
  %call2 = call i32 @feof(ptr noundef %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %line, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  call void @perror(ptr noundef @.str.9) #6
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %line, align 8
  %call6 = call i64 @strlen(ptr noundef %6)
  store i64 %call6, ptr %len, align 8
  %7 = load i64, ptr %len, align 8
  %cmp7 = icmp ult i64 %7, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end5
  %8 = load ptr, ptr %line, align 8
  %9 = load i64, ptr %len, align 8
  %sub = sub i64 %9, 1
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %sub
  %10 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv, 10
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end9
  %11 = load ptr, ptr %line, align 8
  %12 = load i64, ptr %len, align 8
  %sub13 = sub i64 %12, 1
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 %sub13
  store i8 0, ptr %arrayidx14, align 1
  %13 = load i64, ptr %len, align 8
  %sub15 = sub i64 %13, 1
  store i64 %sub15, ptr %len, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %14 = load i64, ptr %len, align 8
  %add = add i64 %14, 1
  %call17 = call ptr @malloc(i64 noundef %add) #7
  store ptr %call17, ptr %line, align 8
  %15 = load ptr, ptr %line, align 8
  %tobool18 = icmp ne ptr %15, null
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  store ptr null, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end16
  %16 = load ptr, ptr %line, align 8
  %arraydecay21 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %17 = load ptr, ptr %line, align 8
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strcpy_chk(ptr noundef %16, ptr noundef %arraydecay21, i64 noundef %18) #8
  %19 = load ptr, ptr %line, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then8, %if.then4, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @add_history(ptr noundef %line) #0 {
entry:
  %line.addr = alloca ptr, align 8
  store ptr %line, ptr %line.addr, align 8
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @feof(ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

declare i64 @strlen(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_tinyexpr_repl_0(ptr noundef %line)  alwaysinline#0 {
entry:
  %line.addr = alloca ptr, align 8
  store ptr %line, ptr %line.addr, align 8
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_tinyexpr_repl_1(ptr noundef %str)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %r = alloca double, align 8
  store ptr %str, ptr %str.addr, align 8
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %str.addr, align 8
  %call = call double @te_interp(ptr noundef %0, ptr noundef %err)
  store double %call, ptr %r, align 8
  %1 = load i32, ptr %err, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %2)
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load double, ptr %r, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
