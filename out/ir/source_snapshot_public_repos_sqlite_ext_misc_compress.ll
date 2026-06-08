; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/compress.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/compress.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_compress_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 1, i32 noundef 2097153, ptr noundef null, ptr noundef @compressFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str.1, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef @uncompressFunc, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @compressFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  %nIn = alloca i32, align 4
  %nOut = alloca i64, align 8
  %x = alloca [8 x i8], align 1
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_blob(ptr noundef %1)
  store ptr %call, ptr %pIn, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %3)
  store i32 %call2, ptr %nIn, align 4
  %4 = load i32, ptr %nIn, align 4
  %add = add i32 13, %4
  %5 = load i32, ptr %nIn, align 4
  %add3 = add i32 %5, 999
  %div = udiv i32 %add3, 1000
  %add4 = add i32 %add, %div
  %conv = zext i32 %add4 to i64
  store i64 %conv, ptr %nOut, align 8
  %6 = load i64, ptr %nOut, align 8
  %add5 = add i64 %6, 5
  %call6 = call ptr @sqlite3_malloc64(i64 noundef %add5)
  store ptr %call6, ptr %pOut, align 8
  %7 = load ptr, ptr %pOut, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %8)
  br label %if.end50

if.end:                                           ; preds = %entry
  store i32 4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4
  %cmp8 = icmp sge i32 %9, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %nIn, align 4
  %11 = load i32, ptr %i, align 4
  %sub = sub nsw i32 4, %11
  %mul = mul nsw i32 7, %sub
  %shr = lshr i32 %10, %mul
  %and = and i32 %shr, 127
  %conv10 = trunc i32 %and to i8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [8 x i8], ptr %x, i64 0, i64 %idxprom
  store i8 %conv10, ptr %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc21, %for.end
  %14 = load i32, ptr %i, align 4
  %cmp13 = icmp slt i32 %14, 4
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond12
  %15 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [8 x i8], ptr %x, i64 0, i64 %idxprom15
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond12
  %17 = phi i1 [ false, %for.cond12 ], [ %cmp18, %land.rhs ]
  br i1 %17, label %for.body20, label %for.end22

for.body20:                                       ; preds = %land.end
  br label %for.inc21

for.inc21:                                        ; preds = %for.body20
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond12, !llvm.loop !8

for.end22:                                        ; preds = %land.end
  store i32 0, ptr %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %for.end22
  %19 = load i32, ptr %i, align 4
  %cmp24 = icmp sle i32 %19, 4
  br i1 %cmp24, label %for.body26, label %for.end34

for.body26:                                       ; preds = %for.cond23
  %20 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [8 x i8], ptr %x, i64 0, i64 %idxprom27
  %21 = load i8, ptr %arrayidx28, align 1
  %22 = load ptr, ptr %pOut, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 %idxprom29
  store i8 %21, ptr %arrayidx30, align 1
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %24 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, ptr %i, align 4
  %25 = load i32, ptr %j, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, ptr %j, align 4
  br label %for.cond23, !llvm.loop !9

for.end34:                                        ; preds = %for.cond23
  %26 = load ptr, ptr %pOut, align 8
  %27 = load i32, ptr %j, align 4
  %sub35 = sub nsw i32 %27, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %26, i64 %idxprom36
  %28 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %28 to i32
  %or = or i32 %conv38, 128
  %conv39 = trunc i32 %or to i8
  store i8 %conv39, ptr %arrayidx37, align 1
  %29 = load ptr, ptr %pOut, align 8
  %30 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %29, i64 %idxprom40
  %31 = load ptr, ptr %pIn, align 8
  %32 = load i32, ptr %nIn, align 4
  %conv42 = zext i32 %32 to i64
  %call43 = call i32 @compress(ptr noundef %arrayidx41, ptr noundef %nOut, ptr noundef %31, i64 noundef %conv42)
  store i32 %call43, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp44 = icmp eq i32 %33, 0
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end34
  %34 = load ptr, ptr %context.addr, align 8
  %35 = load ptr, ptr %pOut, align 8
  %36 = load i64, ptr %nOut, align 8
  %37 = load i32, ptr %j, align 4
  %conv47 = sext i32 %37 to i64
  %add48 = add i64 %36, %conv47
  %conv49 = trunc i64 %add48 to i32
  call void @sqlite3_result_blob(ptr noundef %34, ptr noundef %35, i32 noundef %conv49, ptr noundef @sqlite3_free)
  br label %if.end50

if.else:                                          ; preds = %for.end34
  %38 = load ptr, ptr %pOut, align 8
  call void @sqlite3_free(ptr noundef %38)
  br label %if.end50

if.end50:                                         ; preds = %if.then, %if.else, %if.then46
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @uncompressFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  %nIn = alloca i32, align 4
  %nOut = alloca i64, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_blob(ptr noundef %1)
  store ptr %call, ptr %pIn, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %3)
  store i32 %call2, ptr %nIn, align 4
  store i64 0, ptr %nOut, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nIn, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %cmp3 = icmp ult i32 %6, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i64, ptr %nOut, align 8
  %shl = shl i64 %8, 7
  %9 = load ptr, ptr %pIn, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 127
  %conv5 = sext i32 %and to i64
  %or = or i64 %shl, %conv5
  store i64 %or, ptr %nOut, align 8
  %12 = load ptr, ptr %pIn, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 %idxprom6
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %and9 = and i32 %conv8, 128
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc12 = add i32 %16, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then, %land.end
  %17 = load i64, ptr %nOut, align 8
  %add = add i64 %17, 1
  %call13 = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call13, ptr %pOut, align 8
  %18 = load ptr, ptr %pOut, align 8
  %cmp14 = icmp eq ptr %18, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  %19 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %19)
  br label %if.end26

if.end17:                                         ; preds = %for.end
  %20 = load ptr, ptr %pOut, align 8
  %21 = load ptr, ptr %pIn, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %21, i64 %idxprom18
  %23 = load i32, ptr %nIn, align 4
  %24 = load i32, ptr %i, align 4
  %sub = sub i32 %23, %24
  %conv20 = zext i32 %sub to i64
  %call21 = call i32 @uncompress(ptr noundef %20, ptr noundef %nOut, ptr noundef %arrayidx19, i64 noundef %conv20)
  store i32 %call21, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %25, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  %26 = load ptr, ptr %context.addr, align 8
  %27 = load ptr, ptr %pOut, align 8
  %28 = load i64, ptr %nOut, align 8
  %conv25 = trunc i64 %28 to i32
  call void @sqlite3_result_blob(ptr noundef %26, ptr noundef %27, i32 noundef %conv25, ptr noundef @sqlite3_free)
  br label %if.end26

if.else:                                          ; preds = %if.end17
  %29 = load ptr, ptr %pOut, align 8
  call void @sqlite3_free(ptr noundef %29)
  br label %if.end26

if.end26:                                         ; preds = %if.then16, %if.else, %if.then24
  ret void
}

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare i32 @compress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare void @sqlite3_result_blob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
