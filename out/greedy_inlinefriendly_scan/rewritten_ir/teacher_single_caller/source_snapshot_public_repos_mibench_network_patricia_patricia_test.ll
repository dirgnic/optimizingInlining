; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_network_patricia_patricia_test.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/network/patricia/patricia_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.in_addr = type { i32 }
%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Found.\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argv.addr = alloca ptr, align 8
  %phead = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pm = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %line = alloca [128 x i8], align 1
  %addr = alloca %struct.in_addr, align 4
  %mask = alloca i64, align 8
  %time = alloca float, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 4294967295, ptr %mask, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %1) #11
  call void @exit(i32 noundef -1) #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  store ptr %call2, ptr %fp, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %5) #11
  call void @exit(i32 noundef 0) #12
  unreachable

if.end7:                                          ; preds = %if.end
  %call8 = call dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13
  store ptr %call8, ptr %phead, align 8
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @perror(ptr noundef nonnull @.str.3) #14
  call void @exit(i32 noundef 0) #12
  unreachable

if.end10:                                         ; preds = %if.end7
  %6 = load ptr, ptr %phead, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %6, i8 noundef 0, i64 noundef 40, i1 noundef false) #11
  %call12 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13
  %p_m = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 1
  store ptr %call12, ptr %p_m, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @perror(ptr noundef nonnull @.str.4) #14
  call void @exit(i32 noundef 0) #12
  unreachable

if.end16:                                         ; preds = %if.end10
  %7 = load ptr, ptr %phead, align 8
  %p_m17 = getelementptr inbounds %struct.ptree, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %p_m17, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memset_chk(ptr noundef %8, i32 noundef 0, i64 noundef 16, i64 noundef %9) #11
  %p_m20 = getelementptr inbounds %struct.ptree, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %p_m20, align 8
  store ptr %10, ptr %pm, align 8
  %call21 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13
  %pm_data = getelementptr inbounds %struct.ptree_mask, ptr %10, i64 0, i32 1
  store ptr %call21, ptr %pm_data, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end16
  call void @perror(ptr noundef nonnull @.str.5) #14
  call void @exit(i32 noundef 0) #12
  unreachable

if.end25:                                         ; preds = %if.end16
  %11 = load ptr, ptr %pm, align 8
  %pm_data26 = getelementptr inbounds %struct.ptree_mask, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %pm_data26, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call28 = call ptr @__memset_chk(ptr noundef %12, i32 noundef 0, i64 noundef 1, i64 noundef %13) #11
  %14 = load ptr, ptr %phead, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 2
  store i8 1, ptr %p_mlen, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 5
  store ptr %14, ptr %p_right, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %14, i64 0, i32 4
  store ptr %14, ptr %p_left, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end86, %if.end25
  %15 = load ptr, ptr %fp, align 8
  %call29 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 128, ptr noundef %15) #11
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.6, ptr noundef nonnull %time, ptr noundef nonnull %addr) #11
  %call33 = call dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13
  store ptr %call33, ptr %p, align 8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %while.body
  call void @perror(ptr noundef nonnull @.str.3) #14
  call void @exit(i32 noundef 0) #12
  unreachable

if.end36:                                         ; preds = %while.body
  %16 = load ptr, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %16, i8 noundef 0, i64 noundef 40, i1 noundef false) #11
  %call38 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13
  %p_m39 = getelementptr inbounds %struct.ptree, ptr %16, i64 0, i32 1
  store ptr %call38, ptr %p_m39, align 8
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end36
  call void @perror(ptr noundef nonnull @.str.4) #14
  call void @exit(i32 noundef 0) #12
  unreachable

if.end43:                                         ; preds = %if.end36
  %17 = load ptr, ptr %p, align 8
  %p_m44 = getelementptr inbounds %struct.ptree, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %p_m44, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %18, i1 false, i1 true, i1 false)
  %call46 = call ptr @__memset_chk(ptr noundef %18, i32 noundef 0, i64 noundef 16, i64 noundef %19) #11
  %p_m47 = getelementptr inbounds %struct.ptree, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %p_m47, align 8
  store ptr %20, ptr %pm, align 8
  %call48 = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13
  %pm_data49 = getelementptr inbounds %struct.ptree_mask, ptr %20, i64 0, i32 1
  store ptr %call48, ptr %pm_data49, align 8
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end43
  call void @perror(ptr noundef nonnull @.str.5) #14
  call void @exit(i32 noundef 0) #12
  unreachable

if.end53:                                         ; preds = %if.end43
  %21 = load ptr, ptr %pm, align 8
  %pm_data54 = getelementptr inbounds %struct.ptree_mask, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %pm_data54, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call56 = call ptr @__memset_chk(ptr noundef %22, i32 noundef 0, i64 noundef 1, i64 noundef %23) #11
  %24 = load i32, ptr %addr, align 4
  %conv = zext i32 %24 to i64
  %25 = load ptr, ptr %p, align 8
  store i64 %conv, ptr %25, align 8
  %26 = load i64, ptr %mask, align 8
  %27 = call i1 @llvm.is.constant.i64(i64 %26)
  br i1 %27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end53
  %28 = load i64, ptr %mask, align 8
  %conv57 = trunc i64 %28 to i32
  %shr = lshr i32 %conv57, 24
  %conv58 = trunc i64 %28 to i32
  %and59 = lshr i32 %conv58, 8
  %shr60 = and i32 %and59, 65280
  %or = or i32 %shr, %shr60
  %29 = load i64, ptr %mask, align 8
  %conv61 = trunc i64 %29 to i32
  %and62 = shl i32 %conv61, 8
  %shl = and i32 %and62, 16711680
  %or63 = or i32 %or, %shl
  %conv64 = trunc i64 %29 to i32
  %shl66 = shl i32 %conv64, 24
  %or67 = or i32 %or63, %shl66
  br label %cond.end

cond.false:                                       ; preds = %if.end53
  %30 = load i64, ptr %mask, align 8
  %conv68 = trunc i64 %30 to i32
  %31 = call i32 @llvm.bswap.i32(i32 %conv68)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or67, %cond.true ], [ %31, %cond.false ]
  %conv70 = zext i32 %cond to i64
  %32 = load ptr, ptr %p, align 8
  %p_m71 = getelementptr inbounds %struct.ptree, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %p_m71, align 8
  store i64 %conv70, ptr %33, align 8
  %34 = load i32, ptr %addr, align 4
  %conv73 = zext i32 %34 to i64
  %35 = load ptr, ptr %phead, align 8
  %call74 = call ptr @pat_search(i64 noundef %conv73, ptr noundef %35) #11
  %36 = load i64, ptr %call74, align 8
  %37 = load i32, ptr %addr, align 4
  %conv77 = zext i32 %37 to i64
  %cmp78 = icmp eq i64 %36, %conv77
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %cond.end
  %38 = load float, ptr %time, align 4
  %conv81 = fpext float %38 to double
  %39 = load i32, ptr %addr, align 4
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, double noundef %conv81, i32 noundef %39) #11
  %puts = call i32 @puts(ptr nonnull @str)
  br label %if.end86

if.else:                                          ; preds = %cond.end
  %40 = load ptr, ptr %p, align 8
  %41 = load ptr, ptr %phead, align 8
  %call85 = call ptr @pat_insert(ptr noundef %40, ptr noundef %41) #11
  store ptr %call85, ptr %p, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then80
  %42 = load ptr, ptr %p, align 8
  %tobool87.not = icmp eq ptr %42, null
  br i1 %tobool87.not, label %if.then88, label %while.cond, !llvm.loop !6

if.then88:                                        ; preds = %if.end86
  %43 = load ptr, ptr @__stderrp, align 8
  %44 = call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr %43)
  call void @exit(i32 noundef 0) #12
  unreachable

while.end:                                        ; preds = %while.cond
  call void @exit(i32 noundef 1) #12
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: cold
declare void @perror(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

declare ptr @pat_search(i64 noundef, ptr noundef) #1

declare ptr @pat_insert(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #10

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

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
