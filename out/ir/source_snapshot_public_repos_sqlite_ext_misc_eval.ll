; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/eval.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/eval.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.EvalResult = type { ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_eval_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErrMsg.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 1, i32 noundef 524289, ptr noundef null, ptr noundef @sqlEvalFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str, i32 noundef 2, i32 noundef 524289, ptr noundef null, ptr noundef @sqlEvalFunc, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @sqlEvalFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %x = alloca %struct.EvalResult, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %zErr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %x, i8 0, i64 40, i1 false)
  %zSep = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 1
  store ptr @.str.1, ptr %zSep, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %1)
  store ptr %call, ptr %zSql, align 8
  %2 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end26

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @sqlite3_value_text(ptr noundef %5)
  %zSep5 = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 1
  store ptr %call4, ptr %zSep5, align 8
  %zSep6 = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 1
  %6 = load ptr, ptr %zSep6, align 8
  %cmp7 = icmp eq ptr %6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then2
  br label %if.end26

if.end9:                                          ; preds = %if.then2
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %zSep11 = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 1
  %7 = load ptr, ptr %zSep11, align 8
  %call12 = call i64 @strlen(ptr noundef %7)
  %conv = trunc i64 %call12 to i32
  %szSep = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 2
  store i32 %conv, ptr %szSep, align 8
  %8 = load ptr, ptr %context.addr, align 8
  %call13 = call ptr @sqlite3_context_db_handle(ptr noundef %8)
  store ptr %call13, ptr %db, align 8
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %zSql, align 8
  %call14 = call i32 @sqlite3_exec(ptr noundef %9, ptr noundef %10, ptr noundef @callback, ptr noundef %x, ptr noundef %zErr)
  store i32 %call14, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp15 = icmp ne i32 %11, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end10
  %12 = load ptr, ptr %context.addr, align 8
  %13 = load ptr, ptr %zErr, align 8
  call void @sqlite3_result_error(ptr noundef %12, ptr noundef %13, i32 noundef -1)
  %14 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %14)
  br label %if.end26

if.else:                                          ; preds = %if.end10
  %zSep18 = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 1
  %15 = load ptr, ptr %zSep18, align 8
  %cmp19 = icmp eq ptr %15, null
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  %16 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %16)
  %z = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 0
  %17 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %17)
  br label %if.end25

if.else22:                                        ; preds = %if.else
  %18 = load ptr, ptr %context.addr, align 8
  %z23 = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 0
  %19 = load ptr, ptr %z23, align 8
  %nUsed = getelementptr inbounds %struct.EvalResult, ptr %x, i32 0, i32 4
  %20 = load i64, ptr %nUsed, align 8
  %conv24 = trunc i64 %20 to i32
  call void @sqlite3_result_text(ptr noundef %18, ptr noundef %19, i32 noundef %conv24, ptr noundef @sqlite3_free)
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.then, %if.then8, %if.end25, %if.then17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @sqlite3_value_text(ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @callback(ptr noundef %pCtx, i32 noundef %argc, ptr noundef %argv, ptr noundef %colnames) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %colnames.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %z = alloca ptr, align 8
  %sz = alloca i64, align 8
  %zNew = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %colnames, ptr %colnames.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 %idxprom2
  %9 = load ptr, ptr %arrayidx3, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ @.str.2, %cond.false ]
  store ptr %cond, ptr %z, align 8
  %10 = load ptr, ptr %z, align 8
  %call = call i64 @strlen(ptr noundef %10)
  store i64 %call, ptr %sz, align 8
  %11 = load i64, ptr %sz, align 8
  %12 = load ptr, ptr %p, align 8
  %nUsed = getelementptr inbounds %struct.EvalResult, ptr %12, i32 0, i32 4
  %13 = load i64, ptr %nUsed, align 8
  %add = add nsw i64 %11, %13
  %14 = load ptr, ptr %p, align 8
  %szSep = getelementptr inbounds %struct.EvalResult, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %szSep, align 8
  %conv = sext i32 %15 to i64
  %add4 = add nsw i64 %add, %conv
  %add5 = add nsw i64 %add4, 1
  %16 = load ptr, ptr %p, align 8
  %nAlloc = getelementptr inbounds %struct.EvalResult, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %nAlloc, align 8
  %cmp6 = icmp sgt i64 %add5, %17
  br i1 %cmp6, label %if.then8, label %if.end33

if.then8:                                         ; preds = %cond.end
  %18 = load ptr, ptr %p, align 8
  %nAlloc9 = getelementptr inbounds %struct.EvalResult, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %nAlloc9, align 8
  %mul = mul nsw i64 %19, 2
  %20 = load i64, ptr %sz, align 8
  %add10 = add i64 %mul, %20
  %21 = load ptr, ptr %p, align 8
  %szSep11 = getelementptr inbounds %struct.EvalResult, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %szSep11, align 8
  %conv12 = sext i32 %22 to i64
  %add13 = add i64 %add10, %conv12
  %add14 = add i64 %add13, 1
  %23 = load ptr, ptr %p, align 8
  %nAlloc15 = getelementptr inbounds %struct.EvalResult, ptr %23, i32 0, i32 3
  store i64 %add14, ptr %nAlloc15, align 8
  %24 = load ptr, ptr %p, align 8
  %nAlloc16 = getelementptr inbounds %struct.EvalResult, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %nAlloc16, align 8
  %cmp17 = icmp sle i64 %25, 2147483647
  br i1 %cmp17, label %cond.true19, label %cond.false23

cond.true19:                                      ; preds = %if.then8
  %26 = load ptr, ptr %p, align 8
  %z20 = getelementptr inbounds %struct.EvalResult, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %z20, align 8
  %28 = load ptr, ptr %p, align 8
  %nAlloc21 = getelementptr inbounds %struct.EvalResult, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %nAlloc21, align 8
  %call22 = call ptr @sqlite3_realloc64(ptr noundef %27, i64 noundef %29)
  br label %cond.end24

cond.false23:                                     ; preds = %if.then8
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.true19
  %cond25 = phi ptr [ %call22, %cond.true19 ], [ null, %cond.false23 ]
  store ptr %cond25, ptr %zNew, align 8
  %30 = load ptr, ptr %zNew, align 8
  %cmp26 = icmp eq ptr %30, null
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %cond.end24
  %31 = load ptr, ptr %p, align 8
  %z29 = getelementptr inbounds %struct.EvalResult, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %z29, align 8
  call void @sqlite3_free(ptr noundef %32)
  %33 = load ptr, ptr %p, align 8
  %34 = load ptr, ptr %p, align 8
  %35 = call i64 @llvm.objectsize.i64.p0(ptr %34, i1 false, i1 true, i1 false)
  %call30 = call ptr @__memset_chk(ptr noundef %33, i32 noundef 0, i64 noundef 40, i64 noundef %35) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %cond.end24
  %36 = load ptr, ptr %zNew, align 8
  %37 = load ptr, ptr %p, align 8
  %z32 = getelementptr inbounds %struct.EvalResult, ptr %37, i32 0, i32 0
  store ptr %36, ptr %z32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %cond.end
  %38 = load ptr, ptr %p, align 8
  %nUsed34 = getelementptr inbounds %struct.EvalResult, ptr %38, i32 0, i32 4
  %39 = load i64, ptr %nUsed34, align 8
  %cmp35 = icmp sgt i64 %39, 0
  br i1 %cmp35, label %if.then37, label %if.end51

if.then37:                                        ; preds = %if.end33
  %40 = load ptr, ptr %p, align 8
  %z38 = getelementptr inbounds %struct.EvalResult, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %z38, align 8
  %42 = load ptr, ptr %p, align 8
  %nUsed39 = getelementptr inbounds %struct.EvalResult, ptr %42, i32 0, i32 4
  %43 = load i64, ptr %nUsed39, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %41, i64 %43
  %44 = load ptr, ptr %p, align 8
  %zSep = getelementptr inbounds %struct.EvalResult, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %zSep, align 8
  %46 = load ptr, ptr %p, align 8
  %szSep41 = getelementptr inbounds %struct.EvalResult, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %szSep41, align 8
  %conv42 = sext i32 %47 to i64
  %48 = load ptr, ptr %p, align 8
  %z43 = getelementptr inbounds %struct.EvalResult, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %z43, align 8
  %50 = load ptr, ptr %p, align 8
  %nUsed44 = getelementptr inbounds %struct.EvalResult, ptr %50, i32 0, i32 4
  %51 = load i64, ptr %nUsed44, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %49, i64 %51
  %52 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx45, i1 false, i1 true, i1 false)
  %call46 = call ptr @__memcpy_chk(ptr noundef %arrayidx40, ptr noundef %45, i64 noundef %conv42, i64 noundef %52) #5
  %53 = load ptr, ptr %p, align 8
  %szSep47 = getelementptr inbounds %struct.EvalResult, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %szSep47, align 8
  %conv48 = sext i32 %54 to i64
  %55 = load ptr, ptr %p, align 8
  %nUsed49 = getelementptr inbounds %struct.EvalResult, ptr %55, i32 0, i32 4
  %56 = load i64, ptr %nUsed49, align 8
  %add50 = add nsw i64 %56, %conv48
  store i64 %add50, ptr %nUsed49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then37, %if.end33
  %57 = load ptr, ptr %p, align 8
  %z52 = getelementptr inbounds %struct.EvalResult, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %z52, align 8
  %59 = load ptr, ptr %p, align 8
  %nUsed53 = getelementptr inbounds %struct.EvalResult, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %nUsed53, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %58, i64 %60
  %61 = load ptr, ptr %z, align 8
  %62 = load i64, ptr %sz, align 8
  %63 = load ptr, ptr %p, align 8
  %z55 = getelementptr inbounds %struct.EvalResult, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %z55, align 8
  %65 = load ptr, ptr %p, align 8
  %nUsed56 = getelementptr inbounds %struct.EvalResult, ptr %65, i32 0, i32 4
  %66 = load i64, ptr %nUsed56, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %64, i64 %66
  %67 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx57, i1 false, i1 true, i1 false)
  %call58 = call ptr @__memcpy_chk(ptr noundef %arrayidx54, ptr noundef %61, i64 noundef %62, i64 noundef %67) #5
  %68 = load i64, ptr %sz, align 8
  %69 = load ptr, ptr %p, align 8
  %nUsed59 = getelementptr inbounds %struct.EvalResult, ptr %69, i32 0, i32 4
  %70 = load i64, ptr %nUsed59, align 8
  %add60 = add i64 %70, %68
  store i64 %add60, ptr %nUsed59, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %71 = load i32, ptr %i, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then28, %if.then
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
