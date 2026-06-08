; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_tinyexpr_repl.prepared.ll'
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
  %line.i = alloca ptr, align 8
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %cmp = icmp eq i32 %argc, 3
  br i1 %cmp, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else6

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %2, i64 2
  %3 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @eval(ptr noundef %3)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %argc.addr, align 4
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %line.i)
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i, %if.then8
  %call.i = call ptr @readline(ptr noundef nonnull @.str.5)
  store ptr %call.i, ptr %line.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %pc_inline_source_snapshot_public_repos_tinyexpr_repl_0.exit, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  %5 = load ptr, ptr %line.i, align 8
  %call1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str.6) #8
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then5.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %6 = load ptr, ptr %line.i, align 8
  %call3.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.7) #8
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %lor.lhs.false.i, %if.else.i
  %7 = load ptr, ptr %line.i, align 8
  call void @free(ptr noundef %7) #8
  br label %pc_inline_source_snapshot_public_repos_tinyexpr_repl_0.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load ptr, ptr %line.i, align 8
  %call7.i = call i32 @eval(ptr noundef %8)
  %cmp8.i.not = icmp eq i32 %call7.i, -1
  br i1 %cmp8.i.not, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %9 = load ptr, ptr %line.i, align 8
  call void @add_history(ptr noundef %9)
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i
  %10 = load ptr, ptr %line.i, align 8
  call void @free(ptr noundef %10) #8
  br label %while.body.i

pc_inline_source_snapshot_public_repos_tinyexpr_repl_0.exit: ; preds = %while.body.i, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %line.i)
  store i32 0, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else6
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, ptr noundef %12) #8
  %13 = load ptr, ptr %11, align 8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %13) #8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %pc_inline_source_snapshot_public_repos_tinyexpr_repl_0.exit, %if.else, %if.then5
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @eval(ptr noundef %str) #0 {
entry:
  %err = alloca i32, align 4
  %r = alloca double, align 8
  store i32 0, ptr %err, align 4
  %call = call double @te_interp(ptr noundef %str, ptr noundef nonnull %err) #8
  store double %call, ptr %r, align 8
  %0 = load i32, ptr %err, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %1) #8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load double, ptr %r, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, double noundef %2) #8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ -1, %if.then ]
  ret i32 %storemerge
}

declare i32 @printf(ptr noundef, ...) #1

declare double @te_interp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @readline(ptr noundef %prompt) #0 {
entry:
  %retval = alloca ptr, align 8
  %buf = alloca [1024 x i8], align 1
  %line = alloca ptr, align 8
  %len = alloca i64, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %fputs = call i32 @fputs(ptr %prompt, ptr %0)
  %1 = load ptr, ptr @__stdinp, align 8
  %call1 = call ptr @fgets(ptr noundef nonnull %buf, i32 noundef 1024, ptr noundef %1) #8
  store ptr %call1, ptr %line, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr @__stdinp, align 8
  %call2 = call i32 @feof(ptr noundef %2) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %line, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  call void @perror(ptr noundef nonnull @.str.9) #9
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.else
  %4 = load ptr, ptr %line, align 8
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #8
  store i64 %call6, ptr %len, align 8
  %cmp7 = icmp eq i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr %line, align 8
  %6 = load i64, ptr %len, align 8
  %sub = add i64 %6, -1
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %sub
  %7 = load i8, ptr %arrayidx, align 1
  %cmp10 = icmp eq i8 %7, 10
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end9
  %8 = load ptr, ptr %line, align 8
  %9 = load i64, ptr %len, align 8
  %sub13 = add i64 %9, -1
  %arrayidx14 = getelementptr inbounds i8, ptr %8, i64 %sub13
  store i8 0, ptr %arrayidx14, align 1
  %sub15 = add i64 %9, -1
  store i64 %sub15, ptr %len, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %10 = load i64, ptr %len, align 8
  %add = add i64 %10, 1
  %call17 = call ptr @malloc(i64 noundef %add) #10
  store ptr %call17, ptr %line, align 8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store ptr null, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end16
  %11 = load ptr, ptr %line, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strcpy_chk(ptr noundef %11, ptr noundef nonnull %buf, i64 noundef %12) #8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then8, %if.then4, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @add_history(ptr noundef %line) #0 {
entry:
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
