; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_aggressive_speed/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_libtiff_mkversion.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %filename.addr.i4 = alloca ptr, align 8
  %fd.i5 = alloca ptr, align 8
  %filename.addr.i = alloca ptr, align 8
  %fd.i = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %versionFile = alloca ptr, align 8
  %alphaFile = alloca ptr, align 8
  %version = alloca [128 x i8], align 1
  %alpha = alloca [128 x i8], align 1
  %fd = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %tp = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str, ptr %versionFile, align 8
  store ptr @.str.1, ptr %alphaFile, align 8
  %dec = add nsw i32 %argc, -1
  store i32 %dec, ptr %argc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %entry
  %argv.pn = phi ptr [ %argv, %entry ], [ %23, %if.end27 ]
  %storemerge = getelementptr inbounds ptr, ptr %argv.pn, i64 1
  store ptr %storemerge, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %argv.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %cmp2 = icmp eq i8 %3, 45
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(3) @.str.2) #6
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr %argc.addr, align 4
  %cmp7 = icmp slt i32 %6, 1
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = call i64 @fwrite(ptr nonnull @.str.12, i64 61, i64 1, ptr %7)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load i32, ptr %argc.addr, align 4
  %dec10 = add nsw i32 %9, -1
  store i32 %dec10, ptr %argc.addr, align 4
  %10 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr11 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %incdec.ptr11, ptr %argv.addr, align 8
  %11 = load ptr, ptr %incdec.ptr11, align 8
  store ptr %11, ptr %versionFile, align 8
  br label %if.end27

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %argv.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %call14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.3) #6
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else25

if.then17:                                        ; preds = %if.else
  %14 = load i32, ptr %argc.addr, align 4
  %cmp18 = icmp slt i32 %14, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = call i64 @fwrite(ptr nonnull @.str.12, i64 61, i64 1, ptr %15)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end21:                                         ; preds = %if.then17
  %17 = load i32, ptr %argc.addr, align 4
  %dec22 = add nsw i32 %17, -1
  store i32 %dec22, ptr %argc.addr, align 4
  %18 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr23 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %incdec.ptr23, ptr %argv.addr, align 8
  %19 = load ptr, ptr %incdec.ptr23, align 8
  store ptr %19, ptr %alphaFile, align 8
  br label %if.end27

if.else25:                                        ; preds = %if.else
  %20 = load ptr, ptr @__stderrp, align 8
  %21 = call i64 @fwrite(ptr nonnull @.str.12, i64 61, i64 1, ptr %20)
  call void @exit(i32 noundef -1) #7
  unreachable

if.end27:                                         ; preds = %if.end21, %if.end
  %22 = load i32, ptr %argc.addr, align 4
  %dec28 = add nsw i32 %22, -1
  store i32 %dec28, ptr %argc.addr, align 4
  %23 = load ptr, ptr %argv.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %land.rhs
  %24 = load ptr, ptr %versionFile, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fd.i)
  store ptr %24, ptr %filename.addr.i, align 8
  %call.i3 = call ptr @"\01_fopen"(ptr noundef %24, ptr noundef nonnull @.str.13) #6
  store ptr %call.i3, ptr %fd.i, align 8
  %cmp.i = icmp eq ptr %call.i3, null
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_3.exit

if.then.i:                                        ; preds = %while.end
  %25 = load ptr, ptr @__stderrp, align 8
  %26 = load ptr, ptr %filename.addr.i, align 8
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.14, ptr noundef %26) #6
  call void @exit(i32 noundef -1) #7
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_3.exit: ; preds = %while.end
  %27 = load ptr, ptr %fd.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filename.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fd.i)
  store ptr %27, ptr %fd, align 8
  %call31 = call ptr @fgets(ptr noundef nonnull %version, i32 noundef 127, ptr noundef %27) #6
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_3.exit
  %28 = load ptr, ptr @__stderrp, align 8
  %29 = load ptr, ptr %versionFile, align 8
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.4, ptr noundef %29) #6
  call void @exit(i32 noundef -1) #7
  unreachable

if.end36:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_3.exit
  %call38 = call ptr @strchr(ptr noundef nonnull %version, i32 noundef 10) #6
  store ptr %call38, ptr %cp, align 8
  %tobool.not = icmp eq ptr %call38, null
  br i1 %tobool.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  %30 = load ptr, ptr %cp, align 8
  store i8 0, ptr %30, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36
  %31 = load ptr, ptr %fd, align 8
  %call41 = call i32 @fclose(ptr noundef %31) #6
  %32 = load ptr, ptr %alphaFile, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filename.addr.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fd.i5)
  store ptr %32, ptr %filename.addr.i4, align 8
  %call.i6 = call ptr @"\01_fopen"(ptr noundef %32, ptr noundef nonnull @.str.13) #6
  store ptr %call.i6, ptr %fd.i5, align 8
  %cmp.i7 = icmp eq ptr %call.i6, null
  br i1 %cmp.i7, label %if.then.i9, label %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_4.exit

if.then.i9:                                       ; preds = %if.end40
  %33 = load ptr, ptr @__stderrp, align 8
  %34 = load ptr, ptr %filename.addr.i4, align 8
  %call1.i8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.14, ptr noundef %34) #6
  call void @exit(i32 noundef -1) #7
  unreachable

pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_4.exit: ; preds = %if.end40
  %35 = load ptr, ptr %fd.i5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filename.addr.i4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fd.i5)
  store ptr %35, ptr %fd, align 8
  %call44 = call ptr @fgets(ptr noundef nonnull %alpha, i32 noundef 127, ptr noundef %35) #6
  %cmp45 = icmp eq ptr %call44, null
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_4.exit
  %36 = load ptr, ptr @__stderrp, align 8
  %37 = load ptr, ptr %alphaFile, align 8
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.5, ptr noundef %37) #6
  call void @exit(i32 noundef -1) #7
  unreachable

if.end49:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_libtiff_mkversion_4.exit
  %38 = load ptr, ptr %fd, align 8
  %call50 = call i32 @fclose(ptr noundef %38) #6
  %call52 = call ptr @strchr(ptr noundef nonnull %alpha, i32 noundef 32) #6
  store ptr %call52, ptr %cp, align 8
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end49
  %39 = load ptr, ptr %cp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 1
  %call55 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 32) #6
  store ptr %call55, ptr %cp, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end49
  %40 = load ptr, ptr %cp, align 8
  %tobool57.not = icmp eq ptr %40, null
  br i1 %tobool57.not, label %if.else74, label %if.then58

if.then58:                                        ; preds = %if.end56
  %strlen = call i64 @strlen(ptr noundef nonnull %version)
  %strchr = getelementptr inbounds i8, ptr %version, i64 %strlen
  store ptr %strchr, ptr %tp, align 8
  %41 = load ptr, ptr %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then58
  %.pn = phi ptr [ %41, %if.then58 ], [ %45, %for.inc ]
  %storemerge10 = getelementptr inbounds i8, ptr %.pn, i64 1
  store ptr %storemerge10, ptr %cp, align 8
  %42 = load i8, ptr %storemerge10, align 1
  %43 = load ptr, ptr %tp, align 8
  store i8 %42, ptr %43, align 1
  %cmp63.not = icmp eq i8 %42, 0
  br i1 %cmp63.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %44 = load ptr, ptr %tp, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr65, ptr %tp, align 8
  %45 = load ptr, ptr %cp, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %tp, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %46, i64 -1
  %47 = load i8, ptr %arrayidx67, align 1
  %cmp69 = icmp eq i8 %47, 10
  br i1 %cmp69, label %if.then71, label %if.end76

if.then71:                                        ; preds = %for.end
  %48 = load ptr, ptr %tp, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %48, i64 -1
  store i8 0, ptr %arrayidx72, align 1
  br label %if.end76

if.else74:                                        ; preds = %if.end56
  %49 = load ptr, ptr @__stderrp, align 8
  %50 = load ptr, ptr %alphaFile, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.6, ptr noundef %50) #6
  call void @exit(i32 noundef -1) #7
  unreachable

if.end76:                                         ; preds = %for.end, %if.then71
  %51 = load i32, ptr %argc.addr, align 4
  %cmp77 = icmp sgt i32 %51, 0
  br i1 %cmp77, label %if.then79, label %if.else88

if.then79:                                        ; preds = %if.end76
  %52 = load ptr, ptr %argv.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %call81 = call ptr @"\01_fopen"(ptr noundef %53, ptr noundef nonnull @.str.7) #6
  store ptr %call81, ptr %fd, align 8
  %cmp82 = icmp eq ptr %call81, null
  br i1 %cmp82, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.then79
  %54 = load ptr, ptr @__stderrp, align 8
  %55 = load ptr, ptr %argv.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef %56) #6
  call void @exit(i32 noundef -1) #7
  unreachable

if.else88:                                        ; preds = %if.end76
  %57 = load ptr, ptr @__stdoutp, align 8
  store ptr %57, ptr %fd, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then79, %if.else88
  %58 = load ptr, ptr %fd, align 8
  %call91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.9, ptr noundef nonnull %version) #6
  %59 = call i64 @fwrite(ptr nonnull @.str.10, i64 37, i64 1, ptr %58)
  %60 = call i64 @fwrite(ptr nonnull @.str.11, i64 48, i64 1, ptr %58)
  %61 = load ptr, ptr @__stdoutp, align 8
  %cmp94.not = icmp eq ptr %58, %61
  br i1 %cmp94.not, label %if.end98, label %if.then96

if.then96:                                        ; preds = %if.end89
  %62 = load ptr, ptr %fd, align 8
  %call97 = call i32 @fclose(ptr noundef %62) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end89
  ret i32 0
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @strchr(ptr noundef, i32 noundef) #1

declare i32 @fclose(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
