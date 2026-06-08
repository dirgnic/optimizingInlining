; ModuleID = './source_snapshot/public_repos/mibench/network/patricia/patricia_test.c'
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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %phead = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pfind = alloca ptr, align 8
  %pm = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %line = alloca [128 x i8], align 1
  %addr_str = alloca [16 x i8], align 1
  %addr = alloca %struct.in_addr, align 4
  %mask = alloca i64, align 8
  %time = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 4294967295, ptr %mask, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %2)
  call void @exit(i32 noundef -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef %4, ptr noundef @.str.1)
  store ptr %call2, ptr %fp, align 8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %6)
  call void @exit(i32 noundef 0) #8
  unreachable

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @malloc(i64 noundef 40) #9
  store ptr %call8, ptr %phead, align 8
  %7 = load ptr, ptr %phead, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @perror(ptr noundef @.str.3) #10
  call void @exit(i32 noundef 0) #8
  unreachable

if.end10:                                         ; preds = %if.end7
  %8 = load ptr, ptr %phead, align 8
  %9 = load ptr, ptr %phead, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %8, i32 noundef 0, i64 noundef 40, i64 noundef %10) #11
  %call12 = call ptr @malloc(i64 noundef 16) #9
  %11 = load ptr, ptr %phead, align 8
  %p_m = getelementptr inbounds %struct.ptree, ptr %11, i32 0, i32 1
  store ptr %call12, ptr %p_m, align 8
  %12 = load ptr, ptr %phead, align 8
  %p_m13 = getelementptr inbounds %struct.ptree, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %p_m13, align 8
  %tobool14 = icmp ne ptr %13, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @perror(ptr noundef @.str.4) #10
  call void @exit(i32 noundef 0) #8
  unreachable

if.end16:                                         ; preds = %if.end10
  %14 = load ptr, ptr %phead, align 8
  %p_m17 = getelementptr inbounds %struct.ptree, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %p_m17, align 8
  %16 = load ptr, ptr %phead, align 8
  %p_m18 = getelementptr inbounds %struct.ptree, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %p_m18, align 8
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call19 = call ptr @__memset_chk(ptr noundef %15, i32 noundef 0, i64 noundef 16, i64 noundef %18) #11
  %19 = load ptr, ptr %phead, align 8
  %p_m20 = getelementptr inbounds %struct.ptree, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %p_m20, align 8
  store ptr %20, ptr %pm, align 8
  %call21 = call ptr @malloc(i64 noundef 16) #9
  %21 = load ptr, ptr %pm, align 8
  %pm_data = getelementptr inbounds %struct.ptree_mask, ptr %21, i32 0, i32 1
  store ptr %call21, ptr %pm_data, align 8
  %22 = load ptr, ptr %pm, align 8
  %pm_data22 = getelementptr inbounds %struct.ptree_mask, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pm_data22, align 8
  %tobool23 = icmp ne ptr %23, null
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end16
  call void @perror(ptr noundef @.str.5) #10
  call void @exit(i32 noundef 0) #8
  unreachable

if.end25:                                         ; preds = %if.end16
  %24 = load ptr, ptr %pm, align 8
  %pm_data26 = getelementptr inbounds %struct.ptree_mask, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %pm_data26, align 8
  %26 = load ptr, ptr %pm, align 8
  %pm_data27 = getelementptr inbounds %struct.ptree_mask, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pm_data27, align 8
  %28 = call i64 @llvm.objectsize.i64.p0(ptr %27, i1 false, i1 true, i1 false)
  %call28 = call ptr @__memset_chk(ptr noundef %25, i32 noundef 0, i64 noundef 1, i64 noundef %28) #11
  %29 = load ptr, ptr %phead, align 8
  %p_mlen = getelementptr inbounds %struct.ptree, ptr %29, i32 0, i32 2
  store i8 1, ptr %p_mlen, align 8
  %30 = load ptr, ptr %phead, align 8
  %31 = load ptr, ptr %phead, align 8
  %p_right = getelementptr inbounds %struct.ptree, ptr %31, i32 0, i32 5
  store ptr %30, ptr %p_right, align 8
  %32 = load ptr, ptr %phead, align 8
  %p_left = getelementptr inbounds %struct.ptree, ptr %32, i32 0, i32 4
  store ptr %30, ptr %p_left, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end90, %if.end25
  %arraydecay = getelementptr inbounds [128 x i8], ptr %line, i64 0, i64 0
  %33 = load ptr, ptr %fp, align 8
  %call29 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 128, ptr noundef %33)
  %tobool30 = icmp ne ptr %call29, null
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay31 = getelementptr inbounds [128 x i8], ptr %line, i64 0, i64 0
  %call32 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arraydecay31, ptr noundef @.str.6, ptr noundef %time, ptr noundef %addr)
  %call33 = call ptr @malloc(i64 noundef 40) #9
  store ptr %call33, ptr %p, align 8
  %34 = load ptr, ptr %p, align 8
  %tobool34 = icmp ne ptr %34, null
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %while.body
  call void @perror(ptr noundef @.str.3) #10
  call void @exit(i32 noundef 0) #8
  unreachable

if.end36:                                         ; preds = %while.body
  %35 = load ptr, ptr %p, align 8
  %36 = load ptr, ptr %p, align 8
  %37 = call i64 @llvm.objectsize.i64.p0(ptr %36, i1 false, i1 true, i1 false)
  %call37 = call ptr @__memset_chk(ptr noundef %35, i32 noundef 0, i64 noundef 40, i64 noundef %37) #11
  %call38 = call ptr @malloc(i64 noundef 16) #9
  %38 = load ptr, ptr %p, align 8
  %p_m39 = getelementptr inbounds %struct.ptree, ptr %38, i32 0, i32 1
  store ptr %call38, ptr %p_m39, align 8
  %39 = load ptr, ptr %p, align 8
  %p_m40 = getelementptr inbounds %struct.ptree, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %p_m40, align 8
  %tobool41 = icmp ne ptr %40, null
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end36
  call void @perror(ptr noundef @.str.4) #10
  call void @exit(i32 noundef 0) #8
  unreachable

if.end43:                                         ; preds = %if.end36
  %41 = load ptr, ptr %p, align 8
  %p_m44 = getelementptr inbounds %struct.ptree, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %p_m44, align 8
  %43 = load ptr, ptr %p, align 8
  %p_m45 = getelementptr inbounds %struct.ptree, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %p_m45, align 8
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %44, i1 false, i1 true, i1 false)
  %call46 = call ptr @__memset_chk(ptr noundef %42, i32 noundef 0, i64 noundef 16, i64 noundef %45) #11
  %46 = load ptr, ptr %p, align 8
  %p_m47 = getelementptr inbounds %struct.ptree, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %p_m47, align 8
  store ptr %47, ptr %pm, align 8
  %call48 = call ptr @malloc(i64 noundef 16) #9
  %48 = load ptr, ptr %pm, align 8
  %pm_data49 = getelementptr inbounds %struct.ptree_mask, ptr %48, i32 0, i32 1
  store ptr %call48, ptr %pm_data49, align 8
  %49 = load ptr, ptr %pm, align 8
  %pm_data50 = getelementptr inbounds %struct.ptree_mask, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %pm_data50, align 8
  %tobool51 = icmp ne ptr %50, null
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end43
  call void @perror(ptr noundef @.str.5) #10
  call void @exit(i32 noundef 0) #8
  unreachable

if.end53:                                         ; preds = %if.end43
  %51 = load ptr, ptr %pm, align 8
  %pm_data54 = getelementptr inbounds %struct.ptree_mask, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %pm_data54, align 8
  %53 = load ptr, ptr %pm, align 8
  %pm_data55 = getelementptr inbounds %struct.ptree_mask, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %pm_data55, align 8
  %55 = call i64 @llvm.objectsize.i64.p0(ptr %54, i1 false, i1 true, i1 false)
  %call56 = call ptr @__memset_chk(ptr noundef %52, i32 noundef 0, i64 noundef 1, i64 noundef %55) #11
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %addr, i32 0, i32 0
  %56 = load i32, ptr %s_addr, align 4
  %conv = zext i32 %56 to i64
  %57 = load ptr, ptr %p, align 8
  %p_key = getelementptr inbounds %struct.ptree, ptr %57, i32 0, i32 0
  store i64 %conv, ptr %p_key, align 8
  %58 = load i64, ptr %mask, align 8
  %59 = call i1 @llvm.is.constant.i64(i64 %58)
  br i1 %59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end53
  %60 = load i64, ptr %mask, align 8
  %conv57 = trunc i64 %60 to i32
  %and = and i32 %conv57, -16777216
  %shr = lshr i32 %and, 24
  %61 = load i64, ptr %mask, align 8
  %conv58 = trunc i64 %61 to i32
  %and59 = and i32 %conv58, 16711680
  %shr60 = lshr i32 %and59, 8
  %or = or i32 %shr, %shr60
  %62 = load i64, ptr %mask, align 8
  %conv61 = trunc i64 %62 to i32
  %and62 = and i32 %conv61, 65280
  %shl = shl i32 %and62, 8
  %or63 = or i32 %or, %shl
  %63 = load i64, ptr %mask, align 8
  %conv64 = trunc i64 %63 to i32
  %and65 = and i32 %conv64, 255
  %shl66 = shl i32 %and65, 24
  %or67 = or i32 %or63, %shl66
  br label %cond.end

cond.false:                                       ; preds = %if.end53
  %64 = load i64, ptr %mask, align 8
  %conv68 = trunc i64 %64 to i32
  %call69 = call i32 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_test_0(i32 noundef %conv68)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or67, %cond.true ], [ %call69, %cond.false ]
  %conv70 = zext i32 %cond to i64
  %65 = load ptr, ptr %p, align 8
  %p_m71 = getelementptr inbounds %struct.ptree, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %p_m71, align 8
  %pm_mask = getelementptr inbounds %struct.ptree_mask, ptr %66, i32 0, i32 0
  store i64 %conv70, ptr %pm_mask, align 8
  %s_addr72 = getelementptr inbounds %struct.in_addr, ptr %addr, i32 0, i32 0
  %67 = load i32, ptr %s_addr72, align 4
  %conv73 = zext i32 %67 to i64
  %68 = load ptr, ptr %phead, align 8
  %call74 = call ptr @pat_search(i64 noundef %conv73, ptr noundef %68)
  store ptr %call74, ptr %pfind, align 8
  %69 = load ptr, ptr %pfind, align 8
  %p_key75 = getelementptr inbounds %struct.ptree, ptr %69, i32 0, i32 0
  %70 = load i64, ptr %p_key75, align 8
  %s_addr76 = getelementptr inbounds %struct.in_addr, ptr %addr, i32 0, i32 0
  %71 = load i32, ptr %s_addr76, align 4
  %conv77 = zext i32 %71 to i64
  %cmp78 = icmp eq i64 %70, %conv77
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %cond.end
  %72 = load float, ptr %time, align 4
  %conv81 = fpext float %72 to double
  %s_addr82 = getelementptr inbounds %struct.in_addr, ptr %addr, i32 0, i32 0
  %73 = load i32, ptr %s_addr82, align 4
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %conv81, i32 noundef %73)
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end86

if.else:                                          ; preds = %cond.end
  %74 = load ptr, ptr %p, align 8
  %75 = load ptr, ptr %phead, align 8
  %call85 = call ptr @pat_insert(ptr noundef %74, ptr noundef %75)
  store ptr %call85, ptr %p, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then80
  %76 = load ptr, ptr %p, align 8
  %tobool87 = icmp ne ptr %76, null
  br i1 %tobool87, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.end86
  %77 = load ptr, ptr @__stderrp, align 8
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.9)
  call void @exit(i32 noundef 0) #8
  unreachable

if.end90:                                         ; preds = %if.end86
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  call void @exit(i32 noundef 1) #8
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

; Function Attrs: nounwind ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, ptr %_data.addr, align 4
  %0 = load i32, ptr %_data.addr, align 4
  %1 = call i32 @llvm.bswap.i32(i32 %0)
  store i32 %1, ptr %_data.addr, align 4
  %2 = load i32, ptr %_data.addr, align 4
  ret i32 %2
}

declare ptr @pat_search(i64 noundef, ptr noundef) #1

declare ptr @pat_insert(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { noreturn }
attributes #9 = { allocsize(0) }
attributes #10 = { cold }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_network_patricia_patricia_test_0(i32 noundef %_data)  alwaysinline#0 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, ptr %_data.addr, align 4
  %0 = load i32, ptr %_data.addr, align 4
  %1 = call i32 @llvm.bswap.i32(i32 %0)
  store i32 %1, ptr %_data.addr, align 4
  %2 = load i32, ptr %_data.addr, align 4
  ret i32 %2
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
