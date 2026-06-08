; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/blobio.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/blobio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [9 x i8] c"readblob\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"writeblob\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bad table name\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bad column name\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot open BLOB pointer\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"BLOB read failed\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"6th argument must be a BLOB\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"BLOB write failed\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_blobio_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
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
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 6, i32 noundef 1, ptr noundef null, ptr noundef @readblobFunc, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %4, ptr noundef @.str.1, i32 noundef 6, i32 noundef 1, ptr noundef null, ptr noundef @writeblobFunc, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readblobFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  %zSchema = alloca ptr, align 8
  %zTable = alloca ptr, align 8
  %zColumn = alloca ptr, align 8
  %iRowid = alloca i64, align 8
  %iOfst = alloca i32, align 4
  %aData = alloca ptr, align 8
  %nData = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %pBlob, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %1)
  store ptr %call, ptr %zSchema, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call2, ptr %zTable, align 8
  %4 = load ptr, ptr %zTable, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %5, ptr noundef @.str.2, i32 noundef -1)
  br label %if.end30

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 2
  %7 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @sqlite3_value_text(ptr noundef %7)
  store ptr %call4, ptr %zColumn, align 8
  %8 = load ptr, ptr %zTable, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %9, ptr noundef @.str.3, i32 noundef -1)
  br label %if.end30

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 3
  %11 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i64 @sqlite3_value_int64(ptr noundef %11)
  store i64 %call9, ptr %iRowid, align 8
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %12, i64 4
  %13 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @sqlite3_value_int(ptr noundef %13)
  store i32 %call11, ptr %iOfst, align 4
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %14, i64 5
  %15 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_value_int(ptr noundef %15)
  store i32 %call13, ptr %nData, align 4
  %16 = load i32, ptr %nData, align 4
  %cmp14 = icmp sle i32 %16, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end7
  br label %if.end30

if.end16:                                         ; preds = %if.end7
  %17 = load i32, ptr %nData, align 4
  %add = add nsw i32 %17, 1
  %conv = sext i32 %add to i64
  %call17 = call ptr @sqlite3_malloc64(i64 noundef %conv)
  store ptr %call17, ptr %aData, align 8
  %18 = load ptr, ptr %aData, align 8
  %cmp18 = icmp eq ptr %18, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %19 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %19)
  br label %if.end30

if.end21:                                         ; preds = %if.end16
  %20 = load ptr, ptr %context.addr, align 8
  %call22 = call ptr @sqlite3_context_db_handle(ptr noundef %20)
  store ptr %call22, ptr %db, align 8
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %zSchema, align 8
  %23 = load ptr, ptr %zTable, align 8
  %24 = load ptr, ptr %zColumn, align 8
  %25 = load i64, ptr %iRowid, align 8
  %call23 = call i32 @sqlite3_blob_open(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i32 noundef 0, ptr noundef %pBlob)
  store i32 %call23, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %27 = load ptr, ptr %aData, align 8
  call void @sqlite3_free(ptr noundef %27)
  %28 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %28, ptr noundef @.str.4, i32 noundef -1)
  br label %if.end30

if.end25:                                         ; preds = %if.end21
  %29 = load ptr, ptr %pBlob, align 8
  %30 = load ptr, ptr %aData, align 8
  %31 = load i32, ptr %nData, align 4
  %32 = load i32, ptr %iOfst, align 4
  %call26 = call i32 @sqlite3_blob_read(ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  store i32 %call26, ptr %rc, align 4
  %33 = load ptr, ptr %pBlob, align 8
  %call27 = call i32 @sqlite3_blob_close(ptr noundef %33)
  %34 = load i32, ptr %rc, align 4
  %tobool28 = icmp ne i32 %34, 0
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  %35 = load ptr, ptr %aData, align 8
  call void @sqlite3_free(ptr noundef %35)
  %36 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %36, ptr noundef @.str.5, i32 noundef -1)
  br label %if.end30

if.else:                                          ; preds = %if.end25
  %37 = load ptr, ptr %context.addr, align 8
  %38 = load ptr, ptr %aData, align 8
  %39 = load i32, ptr %nData, align 4
  call void @sqlite3_result_blob(ptr noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef @sqlite3_free)
  br label %if.end30

if.end30:                                         ; preds = %if.then, %if.then6, %if.then15, %if.then20, %if.then24, %if.else, %if.then29
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @writeblobFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  %zSchema = alloca ptr, align 8
  %zTable = alloca ptr, align 8
  %zColumn = alloca ptr, align 8
  %iRowid = alloca i64, align 8
  %iOfst = alloca i32, align 4
  %aData = alloca ptr, align 8
  %nData = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %pBlob, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %1)
  store ptr %call, ptr %zSchema, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call2, ptr %zTable, align 8
  %4 = load ptr, ptr %zTable, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %5, ptr noundef @.str.2, i32 noundef -1)
  br label %if.end29

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 2
  %7 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @sqlite3_value_text(ptr noundef %7)
  store ptr %call4, ptr %zColumn, align 8
  %8 = load ptr, ptr %zTable, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %9, ptr noundef @.str.3, i32 noundef -1)
  br label %if.end29

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 3
  %11 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i64 @sqlite3_value_int64(ptr noundef %11)
  store i64 %call9, ptr %iRowid, align 8
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %12, i64 4
  %13 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @sqlite3_value_int(ptr noundef %13)
  store i32 %call11, ptr %iOfst, align 4
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %14, i64 5
  %15 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_value_type(ptr noundef %15)
  %cmp14 = icmp ne i32 %call13, 4
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end7
  %16 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %16, ptr noundef @.str.6, i32 noundef -1)
  br label %if.end29

if.end16:                                         ; preds = %if.end7
  %17 = load ptr, ptr %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %17, i64 5
  %18 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @sqlite3_value_bytes(ptr noundef %18)
  store i32 %call18, ptr %nData, align 4
  %19 = load ptr, ptr %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %19, i64 5
  %20 = load ptr, ptr %arrayidx19, align 8
  %call20 = call ptr @sqlite3_value_blob(ptr noundef %20)
  store ptr %call20, ptr %aData, align 8
  %21 = load ptr, ptr %context.addr, align 8
  %call21 = call ptr @sqlite3_context_db_handle(ptr noundef %21)
  store ptr %call21, ptr %db, align 8
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %zSchema, align 8
  %24 = load ptr, ptr %zTable, align 8
  %25 = load ptr, ptr %zColumn, align 8
  %26 = load i64, ptr %iRowid, align 8
  %call22 = call i32 @sqlite3_blob_open(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, i64 noundef %26, i32 noundef 1, ptr noundef %pBlob)
  store i32 %call22, ptr %rc, align 4
  %27 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  %28 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %28, ptr noundef @.str.4, i32 noundef -1)
  br label %if.end29

if.end24:                                         ; preds = %if.end16
  %29 = load ptr, ptr %pBlob, align 8
  %30 = load ptr, ptr %aData, align 8
  %31 = load i32, ptr %nData, align 4
  %32 = load i32, ptr %iOfst, align 4
  %call25 = call i32 @sqlite3_blob_write(ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  store i32 %call25, ptr %rc, align 4
  %33 = load ptr, ptr %pBlob, align 8
  %call26 = call i32 @sqlite3_blob_close(ptr noundef %33)
  %34 = load i32, ptr %rc, align 4
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  %35 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %35, ptr noundef @.str.7, i32 noundef -1)
  br label %if.end29

if.end29:                                         ; preds = %if.then, %if.then6, %if.then15, %if.then23, %if.then28, %if.end24
  ret void
}

declare ptr @sqlite3_value_text(ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @sqlite3_value_int64(ptr noundef) #1

declare i32 @sqlite3_value_int(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

declare void @sqlite3_result_error_nomem(ptr noundef) #1

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

declare i32 @sqlite3_blob_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_blob_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @sqlite3_blob_close(ptr noundef) #1

declare void @sqlite3_result_blob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @sqlite3_value_type(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare i32 @sqlite3_blob_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

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
