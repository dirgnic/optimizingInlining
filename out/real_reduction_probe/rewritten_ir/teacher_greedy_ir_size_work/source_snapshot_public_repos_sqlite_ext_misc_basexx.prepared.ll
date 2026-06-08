; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/basexx.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/basexx.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"is_base85\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"base85\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"base64.c\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"na==1\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"blob expanded to base64 too big\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"blob from base64 may be too big\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"base64 accepts only blob or text\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"base64 OOM\00", align 1
@b64Numerals = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@fromBase64.nboi = internal global [5 x i8] c"\00\00\01\02\03", align 1
@b64DigitValues = internal constant [128 x i8] c"\82\82\82\82\82\82\82\82\82\81\81\81\81\81\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\82\82\82\82\82\82\82\82\82\82>\82\82\82?456789:;<=\82\82\82\80\82\82\82\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\82\82\82\82\82\82\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\82\82\82\82\82", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"base85.c\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"is_base85 accepts only text or NULL\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"blob expanded to base85 too big\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"blob from base85 may be too big\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"base85 accepts only blob or text.\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"base85 OOM\00", align 1
@fromBase85.nboi = internal global [6 x i8] c"\00\00\01\02\03\04", align 1
@b85_cOffset = internal global [5 x i8] c"\00#\00&\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_base64_init(ptr noundef %db, ptr noundef %pzErr, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErr.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str, i32 noundef 1, i32 noundef 2623489, ptr noundef null, ptr noundef @base64, ptr noundef null, ptr noundef null)
  ret i32 %call
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @base64(ptr noundef %context, i32 noundef %na, ptr noundef %av) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %na.addr = alloca i32, align 4
  %av.addr = alloca ptr, align 8
  %nb = alloca i64, align 8
  %nv = alloca i64, align 8
  %nc = alloca i64, align 8
  %nvMax = alloca i32, align 4
  %cBuf = alloca ptr, align 8
  %bBuf = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %na, ptr %na.addr, align 4
  store ptr %av, ptr %av.addr, align 8
  %0 = load ptr, ptr %av.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %1)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %nv, align 8
  %2 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_context_db_handle(ptr noundef %2)
  %call2 = call i32 @sqlite3_limit(ptr noundef %call1, i32 noundef 0, i32 noundef -1)
  store i32 %call2, ptr %nvMax, align 4
  %3 = load i32, ptr %na.addr, align 4
  %cmp = icmp eq i32 %3, 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv4 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @.str, ptr noundef @.str.3, i32 noundef 217, ptr noundef @.str.4) #4
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %av.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @sqlite3_value_type(ptr noundef %6)
  switch i32 %call6, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %cond.end
  %7 = load i64, ptr %nv, align 8
  store i64 %7, ptr %nb, align 8
  %8 = load i64, ptr %nv, align 8
  %add = add nsw i64 %8, 2
  %div = sdiv i64 %add, 3
  %mul = mul nsw i64 4, %div
  store i64 %mul, ptr %nc, align 8
  %9 = load i64, ptr %nc, align 8
  %add7 = add nsw i64 %9, 71
  %div8 = sdiv i64 %add7, 72
  %add9 = add nsw i64 %div8, 1
  %10 = load i64, ptr %nc, align 8
  %add10 = add nsw i64 %10, %add9
  store i64 %add10, ptr %nc, align 8
  %11 = load i32, ptr %nvMax, align 4
  %conv11 = sext i32 %11 to i64
  %12 = load i64, ptr %nc, align 8
  %cmp12 = icmp slt i64 %conv11, %12
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %13, ptr noundef @.str.5, i32 noundef -1)
  br label %return

if.end:                                           ; preds = %sw.bb
  %14 = load ptr, ptr %av.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx14, align 8
  %call15 = call ptr @sqlite3_value_blob(ptr noundef %15)
  store ptr %call15, ptr %bBuf, align 8
  %16 = load ptr, ptr %bBuf, align 8
  %tobool16 = icmp ne ptr %16, null
  br i1 %tobool16, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end
  %17 = load ptr, ptr %context.addr, align 8
  %call18 = call ptr @sqlite3_context_db_handle(ptr noundef %17)
  %call19 = call i32 @sqlite3_errcode(ptr noundef %call18)
  %cmp20 = icmp eq i32 7, %call19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then17
  br label %memFail

if.end23:                                         ; preds = %if.then17
  %18 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %18, ptr noundef @.str.6, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

if.end24:                                         ; preds = %if.end
  %19 = load i64, ptr %nc, align 8
  %call25 = call ptr @sqlite3_malloc64(i64 noundef %19)
  store ptr %call25, ptr %cBuf, align 8
  %20 = load ptr, ptr %cBuf, align 8
  %tobool26 = icmp ne ptr %20, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  br label %memFail

if.end28:                                         ; preds = %if.end24
  %21 = load ptr, ptr %bBuf, align 8
  %22 = load i64, ptr %nb, align 8
  %conv29 = trunc i64 %22 to i32
  %23 = load ptr, ptr %cBuf, align 8
  %call30 = call ptr @toBase64(ptr noundef %21, i32 noundef %conv29, ptr noundef %23)
  %24 = load ptr, ptr %cBuf, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv31 = trunc i64 %sub.ptr.sub to i32
  %conv32 = sext i32 %conv31 to i64
  store i64 %conv32, ptr %nc, align 8
  %25 = load ptr, ptr %context.addr, align 8
  %26 = load ptr, ptr %cBuf, align 8
  %27 = load i64, ptr %nc, align 8
  %conv33 = trunc i64 %27 to i32
  call void @sqlite3_result_text(ptr noundef %25, ptr noundef %26, i32 noundef %conv33, ptr noundef @sqlite3_free)
  br label %sw.epilog

sw.bb34:                                          ; preds = %cond.end
  %28 = load i64, ptr %nv, align 8
  store i64 %28, ptr %nc, align 8
  %29 = load i64, ptr %nv, align 8
  %add35 = add nsw i64 %29, 3
  %div36 = sdiv i64 %add35, 4
  %mul37 = mul nsw i64 3, %div36
  store i64 %mul37, ptr %nb, align 8
  %30 = load i32, ptr %nvMax, align 4
  %conv38 = sext i32 %30 to i64
  %31 = load i64, ptr %nb, align 8
  %cmp39 = icmp slt i64 %conv38, %31
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %sw.bb34
  %32 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %32, ptr noundef @.str.7, i32 noundef -1)
  br label %return

if.else:                                          ; preds = %sw.bb34
  %33 = load i64, ptr %nb, align 8
  %cmp42 = icmp slt i64 %33, 1
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else
  store i64 1, ptr %nb, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  %34 = load ptr, ptr %av.addr, align 8
  %arrayidx47 = getelementptr inbounds ptr, ptr %34, i64 0
  %35 = load ptr, ptr %arrayidx47, align 8
  %call48 = call ptr @sqlite3_value_text(ptr noundef %35)
  store ptr %call48, ptr %cBuf, align 8
  %36 = load ptr, ptr %cBuf, align 8
  %tobool49 = icmp ne ptr %36, null
  br i1 %tobool49, label %if.end57, label %if.then50

if.then50:                                        ; preds = %if.end46
  %37 = load ptr, ptr %context.addr, align 8
  %call51 = call ptr @sqlite3_context_db_handle(ptr noundef %37)
  %call52 = call i32 @sqlite3_errcode(ptr noundef %call51)
  %cmp53 = icmp eq i32 7, %call52
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then50
  br label %memFail

if.end56:                                         ; preds = %if.then50
  %38 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_zeroblob(ptr noundef %38, i32 noundef 0)
  br label %sw.epilog

if.end57:                                         ; preds = %if.end46
  %39 = load i64, ptr %nb, align 8
  %call58 = call ptr @sqlite3_malloc64(i64 noundef %39)
  store ptr %call58, ptr %bBuf, align 8
  %40 = load ptr, ptr %bBuf, align 8
  %tobool59 = icmp ne ptr %40, null
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end57
  br label %memFail

if.end61:                                         ; preds = %if.end57
  %41 = load ptr, ptr %cBuf, align 8
  %42 = load i64, ptr %nc, align 8
  %conv62 = trunc i64 %42 to i32
  %43 = load ptr, ptr %bBuf, align 8
  %call63 = call ptr @fromBase64(ptr noundef %41, i32 noundef %conv62, ptr noundef %43)
  %44 = load ptr, ptr %bBuf, align 8
  %sub.ptr.lhs.cast64 = ptrtoint ptr %call63 to i64
  %sub.ptr.rhs.cast65 = ptrtoint ptr %44 to i64
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %conv67 = trunc i64 %sub.ptr.sub66 to i32
  %conv68 = sext i32 %conv67 to i64
  store i64 %conv68, ptr %nb, align 8
  %45 = load ptr, ptr %context.addr, align 8
  %46 = load ptr, ptr %bBuf, align 8
  %47 = load i64, ptr %nb, align 8
  %conv69 = trunc i64 %47 to i32
  call void @sqlite3_result_blob(ptr noundef %45, ptr noundef %46, i32 noundef %conv69, ptr noundef @sqlite3_free)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %48 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %48, ptr noundef @.str.8, i32 noundef -1)
  br label %return

sw.epilog:                                        ; preds = %if.end61, %if.end56, %if.end28, %if.end23
  br label %return

memFail:                                          ; preds = %if.then60, %if.then55, %if.then27, %if.then22
  %49 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %49, ptr noundef @.str.9, i32 noundef -1)
  br label %return

return:                                           ; preds = %memFail, %sw.epilog, %sw.default, %if.then41, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_base85_init(ptr noundef %db, ptr noundef %pzErr, ptr noundef %pApi) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErr.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %2, ptr noundef @.str.1, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef @is_base85, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %5, ptr noundef @.str.2, i32 noundef 1, i32 noundef 2623489, ptr noundef null, ptr noundef @base85, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define internal void @is_base85(ptr noundef %context, i32 noundef %na, ptr noundef %av) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %na.addr = alloca i32, align 4
  %av.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %na, ptr %na.addr, align 4
  store ptr %av, ptr %av.addr, align 8
  %0 = load i32, ptr %na.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @.str.1, ptr noundef @.str.10, i32 noundef 268, ptr noundef @.str.4) #4
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load ptr, ptr %av.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %3)
  switch i32 %call, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb6
  ]

sw.bb:                                            ; preds = %cond.end
  %4 = load ptr, ptr %av.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %5)
  %6 = load ptr, ptr %av.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_bytes(ptr noundef %7)
  %call5 = call i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_basexx_1(ptr noundef %call2, i32 noundef %call4)
  store i32 %call5, ptr %rv, align 4
  %8 = load ptr, ptr %context.addr, align 8
  %9 = load i32, ptr %rv, align 4
  call void @sqlite3_result_int(ptr noundef %8, i32 noundef %9)
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  %10 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_null(ptr noundef %10)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %11 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %11, ptr noundef @.str.11, i32 noundef -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @base85(ptr noundef %context, i32 noundef %na, ptr noundef %av) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %na.addr = alloca i32, align 4
  %av.addr = alloca ptr, align 8
  %nb = alloca i64, align 8
  %nc = alloca i64, align 8
  %nv = alloca i64, align 8
  %nvMax = alloca i32, align 4
  %cBuf = alloca ptr, align 8
  %bBuf = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %na, ptr %na.addr, align 4
  store ptr %av, ptr %av.addr, align 8
  %0 = load ptr, ptr %av.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %1)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %nv, align 8
  %2 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_context_db_handle(ptr noundef %2)
  %call2 = call i32 @sqlite3_limit(ptr noundef %call1, i32 noundef 0, i32 noundef -1)
  store i32 %call2, ptr %nvMax, align 4
  %3 = load i32, ptr %na.addr, align 4
  %cmp = icmp eq i32 %3, 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv4 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @.str.2, ptr noundef @.str.10, i32 noundef 294, ptr noundef @.str.4) #4
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load ptr, ptr %av.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @sqlite3_value_type(ptr noundef %6)
  switch i32 %call6, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %cond.end
  %7 = load i64, ptr %nv, align 8
  store i64 %7, ptr %nb, align 8
  %8 = load i64, ptr %nv, align 8
  %div = sdiv i64 %8, 4
  %mul = mul nsw i64 5, %div
  %9 = load i64, ptr %nv, align 8
  %rem = srem i64 %9, 4
  %add = add nsw i64 %mul, %rem
  %10 = load i64, ptr %nv, align 8
  %div7 = sdiv i64 %10, 64
  %add8 = add nsw i64 %add, %div7
  %add9 = add nsw i64 %add8, 1
  %add10 = add nsw i64 %add9, 2
  store i64 %add10, ptr %nc, align 8
  %11 = load i32, ptr %nvMax, align 4
  %conv11 = sext i32 %11 to i64
  %12 = load i64, ptr %nc, align 8
  %cmp12 = icmp slt i64 %conv11, %12
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %13, ptr noundef @.str.12, i32 noundef -1)
  br label %return

if.end:                                           ; preds = %sw.bb
  %14 = load ptr, ptr %av.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx14, align 8
  %call15 = call ptr @sqlite3_value_blob(ptr noundef %15)
  store ptr %call15, ptr %bBuf, align 8
  %16 = load ptr, ptr %bBuf, align 8
  %tobool16 = icmp ne ptr %16, null
  br i1 %tobool16, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end
  %17 = load ptr, ptr %context.addr, align 8
  %call18 = call ptr @sqlite3_context_db_handle(ptr noundef %17)
  %call19 = call i32 @sqlite3_errcode(ptr noundef %call18)
  %cmp20 = icmp eq i32 7, %call19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then17
  br label %memFail

if.end23:                                         ; preds = %if.then17
  %18 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %18, ptr noundef @.str.6, i32 noundef -1, ptr noundef null)
  br label %sw.epilog

if.end24:                                         ; preds = %if.end
  %19 = load i64, ptr %nc, align 8
  %call25 = call ptr @sqlite3_malloc64(i64 noundef %19)
  store ptr %call25, ptr %cBuf, align 8
  %20 = load ptr, ptr %cBuf, align 8
  %tobool26 = icmp ne ptr %20, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  br label %memFail

if.end28:                                         ; preds = %if.end24
  %21 = load ptr, ptr %bBuf, align 8
  %22 = load i64, ptr %nb, align 8
  %conv29 = trunc i64 %22 to i32
  %23 = load ptr, ptr %cBuf, align 8
  %call30 = call ptr @toBase85(ptr noundef %21, i32 noundef %conv29, ptr noundef %23, ptr noundef @.str.13)
  %24 = load ptr, ptr %cBuf, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv31 = trunc i64 %sub.ptr.sub to i32
  %conv32 = sext i32 %conv31 to i64
  store i64 %conv32, ptr %nc, align 8
  %25 = load ptr, ptr %context.addr, align 8
  %26 = load ptr, ptr %cBuf, align 8
  %27 = load i64, ptr %nc, align 8
  %conv33 = trunc i64 %27 to i32
  call void @sqlite3_result_text(ptr noundef %25, ptr noundef %26, i32 noundef %conv33, ptr noundef @sqlite3_free)
  br label %sw.epilog

sw.bb34:                                          ; preds = %cond.end
  %28 = load i64, ptr %nv, align 8
  store i64 %28, ptr %nc, align 8
  %29 = load i64, ptr %nv, align 8
  %div35 = sdiv i64 %29, 5
  %mul36 = mul nsw i64 4, %div35
  %30 = load i64, ptr %nv, align 8
  %rem37 = srem i64 %30, 5
  %add38 = add nsw i64 %mul36, %rem37
  store i64 %add38, ptr %nb, align 8
  %31 = load i32, ptr %nvMax, align 4
  %conv39 = sext i32 %31 to i64
  %32 = load i64, ptr %nb, align 8
  %cmp40 = icmp slt i64 %conv39, %32
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb34
  %33 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %33, ptr noundef @.str.14, i32 noundef -1)
  br label %return

if.else:                                          ; preds = %sw.bb34
  %34 = load i64, ptr %nb, align 8
  %cmp43 = icmp slt i64 %34, 1
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else
  store i64 1, ptr %nb, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  %35 = load ptr, ptr %av.addr, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %35, i64 0
  %36 = load ptr, ptr %arrayidx48, align 8
  %call49 = call ptr @sqlite3_value_text(ptr noundef %36)
  store ptr %call49, ptr %cBuf, align 8
  %37 = load ptr, ptr %cBuf, align 8
  %tobool50 = icmp ne ptr %37, null
  br i1 %tobool50, label %if.end58, label %if.then51

if.then51:                                        ; preds = %if.end47
  %38 = load ptr, ptr %context.addr, align 8
  %call52 = call ptr @sqlite3_context_db_handle(ptr noundef %38)
  %call53 = call i32 @sqlite3_errcode(ptr noundef %call52)
  %cmp54 = icmp eq i32 7, %call53
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then51
  br label %memFail

if.end57:                                         ; preds = %if.then51
  %39 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_zeroblob(ptr noundef %39, i32 noundef 0)
  br label %sw.epilog

if.end58:                                         ; preds = %if.end47
  %40 = load i64, ptr %nb, align 8
  %call59 = call ptr @sqlite3_malloc64(i64 noundef %40)
  store ptr %call59, ptr %bBuf, align 8
  %41 = load ptr, ptr %bBuf, align 8
  %tobool60 = icmp ne ptr %41, null
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end58
  br label %memFail

if.end62:                                         ; preds = %if.end58
  %42 = load ptr, ptr %cBuf, align 8
  %43 = load i64, ptr %nc, align 8
  %conv63 = trunc i64 %43 to i32
  %44 = load ptr, ptr %bBuf, align 8
  %call64 = call ptr @fromBase85(ptr noundef %42, i32 noundef %conv63, ptr noundef %44)
  %45 = load ptr, ptr %bBuf, align 8
  %sub.ptr.lhs.cast65 = ptrtoint ptr %call64 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %45 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  %conv69 = sext i32 %conv68 to i64
  store i64 %conv69, ptr %nb, align 8
  %46 = load ptr, ptr %context.addr, align 8
  %47 = load ptr, ptr %bBuf, align 8
  %48 = load i64, ptr %nb, align 8
  %conv70 = trunc i64 %48 to i32
  call void @sqlite3_result_blob(ptr noundef %46, ptr noundef %47, i32 noundef %conv70, ptr noundef @sqlite3_free)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %49 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %49, ptr noundef @.str.15, i32 noundef -1)
  br label %return

sw.epilog:                                        ; preds = %if.end62, %if.end57, %if.end28, %if.end23
  br label %return

memFail:                                          ; preds = %if.then61, %if.then56, %if.then27, %if.then22
  %50 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %50, ptr noundef @.str.16, i32 noundef -1)
  br label %return

return:                                           ; preds = %memFail, %sw.epilog, %sw.default, %if.then42, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_basexx_init(ptr noundef %db, ptr noundef %pzErr, ptr noundef %pApi) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc1 = alloca i32, align 4
  %rc2 = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_basexx_0(ptr noundef %0)
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_base64_init(ptr noundef %1, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc1, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_base85_init(ptr noundef %2, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc2, align 4
  %3 = load i32, ptr %rc1, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr %rc2, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal void @init_api_ptr(ptr noundef %pApi) #0 {
entry:
  %pApi.addr = alloca ptr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  ret void
}

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare i32 @sqlite3_limit(ptr noundef, i32 noundef, i32 noundef) #1

declare ptr @sqlite3_context_db_handle(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @sqlite3_value_type(ptr noundef) #1

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

declare i32 @sqlite3_errcode(ptr noundef) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @toBase64(ptr noundef %pIn, i32 noundef %nbIn, ptr noundef %pOut) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %nbIn.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %nco = alloca i8, align 1
  %nbe = alloca i32, align 4
  %qv = alloca i64, align 8
  %ce = alloca i8, align 1
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %nbIn, ptr %nbIn.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store i32 0, ptr %nCol, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %nbIn.addr, align 4
  %cmp = icmp sge i32 %0, 3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pIn.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %shr = ashr i32 %conv, 2
  %conv1 = trunc i32 %shr to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx2 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx2, align 1
  %4 = load ptr, ptr %pOut.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 0
  store i8 %3, ptr %arrayidx3, align 1
  %5 = load ptr, ptr %pIn.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl = shl i32 %conv5, 4
  %7 = load ptr, ptr %pIn.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %shr8 = ashr i32 %conv7, 4
  %or = or i32 %shl, %shr8
  %and = and i32 %or, 63
  %conv9 = trunc i32 %and to i8
  %idxprom10 = zext i8 %conv9 to i64
  %arrayidx11 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom10
  %9 = load i8, ptr %arrayidx11, align 1
  %10 = load ptr, ptr %pOut.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %9, ptr %arrayidx12, align 1
  %11 = load ptr, ptr %pIn.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %and15 = and i32 %conv14, 15
  %shl16 = shl i32 %and15, 2
  %13 = load ptr, ptr %pIn.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %shr19 = ashr i32 %conv18, 6
  %or20 = or i32 %shl16, %shr19
  %conv21 = trunc i32 %or20 to i8
  %idxprom22 = zext i8 %conv21 to i64
  %arrayidx23 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom22
  %15 = load i8, ptr %arrayidx23, align 1
  %16 = load ptr, ptr %pOut.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %15, ptr %arrayidx24, align 1
  %17 = load ptr, ptr %pIn.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %17, i64 2
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %and27 = and i32 %conv26, 63
  %conv28 = trunc i32 %and27 to i8
  %idxprom29 = zext i8 %conv28 to i64
  %arrayidx30 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom29
  %19 = load i8, ptr %arrayidx30, align 1
  %20 = load ptr, ptr %pOut.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %20, i64 3
  store i8 %19, ptr %arrayidx31, align 1
  %21 = load ptr, ptr %pOut.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 4
  store ptr %add.ptr, ptr %pOut.addr, align 8
  %22 = load i32, ptr %nbIn.addr, align 4
  %sub = sub nsw i32 %22, 3
  store i32 %sub, ptr %nbIn.addr, align 4
  %23 = load ptr, ptr %pIn.addr, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %23, i64 3
  store ptr %add.ptr32, ptr %pIn.addr, align 8
  %24 = load i32, ptr %nCol, align 4
  %add = add nsw i32 %24, 4
  store i32 %add, ptr %nCol, align 4
  %cmp33 = icmp sge i32 %add, 72
  br i1 %cmp33, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %25 = load i32, ptr %nbIn.addr, align 4
  %cmp35 = icmp sle i32 %25, 0
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %26 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %pOut.addr, align 8
  store i8 10, ptr %26, align 1
  store i32 0, ptr %nCol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %27 = load i32, ptr %nbIn.addr, align 4
  %cmp37 = icmp sgt i32 %27, 0
  br i1 %cmp37, label %if.then39, label %if.end74

if.then39:                                        ; preds = %while.end
  %28 = load i32, ptr %nbIn.addr, align 4
  %add40 = add nsw i32 %28, 1
  %conv41 = trunc i32 %add40 to i8
  store i8 %conv41, ptr %nco, align 1
  %29 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr42, ptr %pIn.addr, align 8
  %30 = load i8, ptr %29, align 1
  %conv43 = zext i8 %30 to i64
  store i64 %conv43, ptr %qv, align 8
  store i32 1, ptr %nbe, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then39
  %31 = load i32, ptr %nbe, align 4
  %cmp44 = icmp slt i32 %31, 3
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i64, ptr %qv, align 8
  %shl46 = shl i64 %32, 8
  store i64 %shl46, ptr %qv, align 8
  %33 = load i32, ptr %nbe, align 4
  %34 = load i32, ptr %nbIn.addr, align 4
  %cmp47 = icmp slt i32 %33, %34
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %for.body
  %35 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr50, ptr %pIn.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv51 = zext i8 %36 to i64
  %37 = load i64, ptr %qv, align 8
  %or52 = or i64 %37, %conv51
  store i64 %or52, ptr %qv, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end53
  %38 = load i32, ptr %nbe, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %nbe, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 3, ptr %nbe, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc70, %for.end
  %39 = load i32, ptr %nbe, align 4
  %cmp55 = icmp sge i32 %39, 0
  br i1 %cmp55, label %for.body57, label %for.end71

for.body57:                                       ; preds = %for.cond54
  %40 = load i32, ptr %nbe, align 4
  %41 = load i8, ptr %nco, align 1
  %conv58 = sext i8 %41 to i32
  %cmp59 = icmp slt i32 %40, %conv58
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body57
  %42 = load i64, ptr %qv, align 8
  %and61 = and i64 %42, 63
  %conv62 = trunc i64 %and61 to i8
  %idxprom63 = zext i8 %conv62 to i64
  %arrayidx64 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom63
  %43 = load i8, ptr %arrayidx64, align 1
  %conv65 = sext i8 %43 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv65, %cond.true ], [ 61, %cond.false ]
  %conv66 = trunc i32 %cond to i8
  store i8 %conv66, ptr %ce, align 1
  %44 = load i64, ptr %qv, align 8
  %shr67 = lshr i64 %44, 6
  store i64 %shr67, ptr %qv, align 8
  %45 = load i8, ptr %ce, align 1
  %46 = load ptr, ptr %pOut.addr, align 8
  %47 = load i32, ptr %nbe, align 4
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %46, i64 %idxprom68
  store i8 %45, ptr %arrayidx69, align 1
  br label %for.inc70

for.inc70:                                        ; preds = %cond.end
  %48 = load i32, ptr %nbe, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, ptr %nbe, align 4
  br label %for.cond54, !llvm.loop !9

for.end71:                                        ; preds = %for.cond54
  %49 = load ptr, ptr %pOut.addr, align 8
  %add.ptr72 = getelementptr inbounds i8, ptr %49, i64 4
  store ptr %add.ptr72, ptr %pOut.addr, align 8
  %50 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr73, ptr %pOut.addr, align 8
  store i8 10, ptr %50, align 1
  br label %if.end74

if.end74:                                         ; preds = %for.end71, %while.end
  %51 = load ptr, ptr %pOut.addr, align 8
  store i8 0, ptr %51, align 1
  %52 = load ptr, ptr %pOut.addr, align 8
  ret ptr %52
}

declare void @sqlite3_free(ptr noundef) #1

declare ptr @sqlite3_value_text(ptr noundef) #1

declare void @sqlite3_result_zeroblob(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @fromBase64(ptr noundef %pIn, i32 noundef %ncIn, ptr noundef %pOut) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %ncIn.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %pUse = alloca ptr, align 8
  %qv = alloca i64, align 8
  %nti = alloca i32, align 4
  %nbo = alloca i32, align 4
  %nac = alloca i32, align 4
  %c = alloca i8, align 1
  %bdp = alloca i8, align 1
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %ncIn, ptr %ncIn.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load i32, ptr %ncIn.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pIn.addr, align 8
  %2 = load i32, ptr %ncIn.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %ncIn.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %ncIn.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog60, %if.end
  %5 = load i32, ptr %ncIn.addr, align 4
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %pIn.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %pIn.addr, align 8
  %10 = load i32, ptr %ncIn.addr, align 4
  %call = call ptr @skipNonB64(ptr noundef %9, i32 noundef %10)
  store ptr %call, ptr %pUse, align 8
  store i64 0, ptr %qv, align 8
  %11 = load ptr, ptr %pUse, align 8
  %12 = load ptr, ptr %pIn.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = load i32, ptr %ncIn.addr, align 4
  %conv8 = sext i32 %13 to i64
  %sub9 = sub nsw i64 %conv8, %sub.ptr.sub
  %conv10 = trunc i64 %sub9 to i32
  store i32 %conv10, ptr %ncIn.addr, align 4
  %14 = load ptr, ptr %pUse, align 8
  store ptr %14, ptr %pIn.addr, align 8
  %15 = load i32, ptr %ncIn.addr, align 4
  %cmp11 = icmp sgt i32 %15, 4
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %16 = load i32, ptr %ncIn.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr %nti, align 4
  %17 = load i32, ptr %nti, align 4
  %18 = load i32, ptr %ncIn.addr, align 4
  %sub13 = sub nsw i32 %18, %17
  store i32 %sub13, ptr %ncIn.addr, align 4
  %19 = load i32, ptr %nti, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [5 x i8], ptr @fromBase64.nboi, i64 0, i64 %idxprom14
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %20 to i32
  store i32 %conv16, ptr %nbo, align 4
  %21 = load i32, ptr %nbo, align 4
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %cond.end
  br label %while.end

if.end20:                                         ; preds = %cond.end
  store i32 0, ptr %nac, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %22 = load i32, ptr %nac, align 4
  %cmp21 = icmp slt i32 %22, 4
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %nac, align 4
  %24 = load i32, ptr %nti, align 4
  %cmp23 = icmp slt i32 %23, %24
  br i1 %cmp23, label %cond.true25, label %cond.false27

cond.true25:                                      ; preds = %for.body
  %25 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %pIn.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv26 = sext i8 %26 to i32
  br label %cond.end29

cond.false27:                                     ; preds = %for.body
  %27 = load i8, ptr @b64Numerals, align 1
  %conv28 = sext i8 %27 to i32
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false27, %cond.true25
  %cond30 = phi i32 [ %conv26, %cond.true25 ], [ %conv28, %cond.false27 ]
  %conv31 = trunc i32 %cond30 to i8
  store i8 %conv31, ptr %c, align 1
  %28 = load i8, ptr %c, align 1
  %conv32 = zext i8 %28 to i32
  %cmp33 = icmp slt i32 %conv32, 128
  br i1 %cmp33, label %cond.true35, label %cond.false39

cond.true35:                                      ; preds = %cond.end29
  %29 = load i8, ptr %c, align 1
  %idxprom36 = zext i8 %29 to i64
  %arrayidx37 = getelementptr inbounds [128 x i8], ptr @b64DigitValues, i64 0, i64 %idxprom36
  %30 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %30 to i32
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end29
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true35
  %cond41 = phi i32 [ %conv38, %cond.true35 ], [ 128, %cond.false39 ]
  %conv42 = trunc i32 %cond41 to i8
  store i8 %conv42, ptr %bdp, align 1
  %31 = load i8, ptr %bdp, align 1
  %conv43 = zext i8 %31 to i32
  switch i32 %conv43, label %sw.default [
    i32 130, label %sw.bb
    i32 129, label %sw.bb44
    i32 128, label %sw.bb45
  ]

sw.bb:                                            ; preds = %cond.end40
  store i32 0, ptr %ncIn.addr, align 4
  br label %sw.bb44

sw.bb44:                                          ; preds = %cond.end40, %sw.bb
  %32 = load i32, ptr %nac, align 4
  store i32 %32, ptr %nti, align 4
  br label %sw.bb45

sw.bb45:                                          ; preds = %cond.end40, %sw.bb44
  store i8 0, ptr %bdp, align 1
  %33 = load i32, ptr %nbo, align 4
  %dec46 = add nsw i32 %33, -1
  store i32 %dec46, ptr %nbo, align 4
  br label %sw.default

sw.default:                                       ; preds = %cond.end40, %sw.bb45
  %34 = load i64, ptr %qv, align 8
  %shl = shl i64 %34, 6
  %35 = load i8, ptr %bdp, align 1
  %conv47 = zext i8 %35 to i64
  %or = or i64 %shl, %conv47
  store i64 %or, ptr %qv, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %36 = load i32, ptr %nac, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %nac, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %nbo, align 4
  switch i32 %37, label %sw.epilog60 [
    i32 3, label %sw.bb48
    i32 2, label %sw.bb51
    i32 1, label %sw.bb55
  ]

sw.bb48:                                          ; preds = %for.end
  %38 = load i64, ptr %qv, align 8
  %and = and i64 %38, 255
  %conv49 = trunc i64 %and to i8
  %39 = load ptr, ptr %pOut.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %39, i64 2
  store i8 %conv49, ptr %arrayidx50, align 1
  br label %sw.bb51

sw.bb51:                                          ; preds = %for.end, %sw.bb48
  %40 = load i64, ptr %qv, align 8
  %shr = lshr i64 %40, 8
  %and52 = and i64 %shr, 255
  %conv53 = trunc i64 %and52 to i8
  %41 = load ptr, ptr %pOut.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 %conv53, ptr %arrayidx54, align 1
  br label %sw.bb55

sw.bb55:                                          ; preds = %for.end, %sw.bb51
  %42 = load i64, ptr %qv, align 8
  %shr56 = lshr i64 %42, 16
  %and57 = and i64 %shr56, 255
  %conv58 = trunc i64 %and57 to i8
  %43 = load ptr, ptr %pOut.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %43, i64 0
  store i8 %conv58, ptr %arrayidx59, align 1
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %for.end, %sw.bb55
  %44 = load i32, ptr %nbo, align 4
  %45 = load ptr, ptr %pOut.addr, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, ptr %45, i64 %idx.ext
  store ptr %add.ptr, ptr %pOut.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then19, %land.end
  %46 = load ptr, ptr %pOut.addr, align 8
  ret ptr %46
}

declare void @sqlite3_result_blob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @skipNonB64(ptr noundef %s, i32 noundef %nc) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %nc.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %nc, ptr %nc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %nc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %nc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8, ptr %c, align 1
  %conv1 = zext i8 %3 to i32
  %cmp2 = icmp slt i32 %conv1, 128
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %4 = load i8, ptr %c, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @b64DigitValues, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 128, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  %conv6 = zext i8 %conv5 to i32
  %cmp7 = icmp slt i32 %conv6, 128
  %lnot = xor i1 %cmp7, true
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %cond.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %s.addr, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @allBase85(ptr noundef %p, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8, ptr %c, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp sge i32 %conv3, 35
  %conv5 = zext i1 %cmp4 to i32
  %5 = load i8, ptr %c, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp sgt i32 %conv6, 38
  %conv8 = zext i1 %cmp7 to i32
  %add = add nsw i32 %conv5, %conv8
  %6 = load i8, ptr %c, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp sge i32 %conv9, 42
  %conv11 = zext i1 %cmp10 to i32
  %add12 = add nsw i32 %add, %conv11
  %7 = load i8, ptr %c, align 1
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp sgt i32 %conv13, 122
  %conv15 = zext i1 %cmp14 to i32
  %add16 = add nsw i32 %add12, %conv15
  %and = and i32 %add16, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8, ptr %c, align 1
  %conv17 = sext i8 %8 to i32
  %call = call i32 @isspace(i32 noundef %conv17) #5
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare void @sqlite3_result_null(ptr noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal ptr @toBase85(ptr noundef %pIn, i32 noundef %nbIn, ptr noundef %pOut, ptr noundef %pSep) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %nbIn.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %pSep.addr = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %nco = alloca i32, align 4
  %qbv = alloca i64, align 8
  %nqv = alloca i32, align 4
  %dv = alloca i8, align 1
  %nco43 = alloca i32, align 4
  %qv = alloca i64, align 8
  %nbe = alloca i32, align 4
  %dv60 = alloca i8, align 1
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %nbIn, ptr %nbIn.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %pSep, ptr %pSep.addr, align 8
  store i32 0, ptr %nCol, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %nbIn.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %while.body, label %while.end39

while.body:                                       ; preds = %while.cond
  store i32 5, ptr %nco, align 4
  %1 = load ptr, ptr %pIn.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i64
  %shl = shl i64 %conv, 24
  %3 = load ptr, ptr %pIn.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %shl3 = shl i32 %conv2, 16
  %conv4 = sext i32 %shl3 to i64
  %or = or i64 %shl, %conv4
  %5 = load ptr, ptr %pIn.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %shl7 = shl i32 %conv6, 8
  %conv8 = sext i32 %shl7 to i64
  %or9 = or i64 %or, %conv8
  %7 = load ptr, ptr %pIn.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %8 to i64
  %or12 = or i64 %or9, %conv11
  store i64 %or12, ptr %qbv, align 8
  br label %while.cond13

while.cond13:                                     ; preds = %cond.end, %while.body
  %9 = load i32, ptr %nco, align 4
  %cmp14 = icmp sgt i32 %9, 0
  br i1 %cmp14, label %while.body16, label %while.end

while.body16:                                     ; preds = %while.cond13
  %10 = load i64, ptr %qbv, align 8
  %div = udiv i64 %10, 85
  %conv17 = trunc i64 %div to i32
  store i32 %conv17, ptr %nqv, align 4
  %11 = load i64, ptr %qbv, align 8
  %12 = load i32, ptr %nqv, align 4
  %conv18 = zext i32 %12 to i64
  %mul = mul i64 85, %conv18
  %sub = sub i64 %11, %mul
  %conv19 = trunc i64 %sub to i8
  store i8 %conv19, ptr %dv, align 1
  %13 = load i32, ptr %nqv, align 4
  %conv20 = zext i32 %13 to i64
  store i64 %conv20, ptr %qbv, align 8
  %14 = load i8, ptr %dv, align 1
  %conv21 = zext i8 %14 to i32
  %cmp22 = icmp slt i32 %conv21, 4
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body16
  %15 = load i8, ptr %dv, align 1
  %conv24 = zext i8 %15 to i32
  %add = add nsw i32 %conv24, 35
  %conv25 = trunc i32 %add to i8
  %conv26 = sext i8 %conv25 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body16
  %16 = load i8, ptr %dv, align 1
  %conv27 = zext i8 %16 to i32
  %sub28 = sub nsw i32 %conv27, 4
  %add29 = add nsw i32 %sub28, 42
  %conv30 = trunc i32 %add29 to i8
  %conv31 = sext i8 %conv30 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv26, %cond.true ], [ %conv31, %cond.false ]
  %conv32 = trunc i32 %cond to i8
  %17 = load ptr, ptr %pOut.addr, align 8
  %18 = load i32, ptr %nco, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %nco, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %17, i64 %idxprom
  store i8 %conv32, ptr %arrayidx33, align 1
  br label %while.cond13, !llvm.loop !14

while.end:                                        ; preds = %while.cond13
  %19 = load i32, ptr %nbIn.addr, align 4
  %sub34 = sub nsw i32 %19, 4
  store i32 %sub34, ptr %nbIn.addr, align 4
  %20 = load ptr, ptr %pIn.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 4
  store ptr %add.ptr, ptr %pIn.addr, align 8
  %21 = load ptr, ptr %pOut.addr, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %21, i64 5
  store ptr %add.ptr35, ptr %pOut.addr, align 8
  %22 = load ptr, ptr %pSep.addr, align 8
  %tobool = icmp ne ptr %22, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %23 = load i32, ptr %nCol, align 4
  %add36 = add nsw i32 %23, 5
  store i32 %add36, ptr %nCol, align 4
  %cmp37 = icmp sge i32 %add36, 80
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %24 = load ptr, ptr %pOut.addr, align 8
  %25 = load ptr, ptr %pSep.addr, align 8
  %call = call ptr @putcs(ptr noundef %24, ptr noundef %25)
  store ptr %call, ptr %pOut.addr, align 8
  store i32 0, ptr %nCol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %while.cond, !llvm.loop !15

while.end39:                                      ; preds = %while.cond
  %26 = load i32, ptr %nbIn.addr, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %if.then42, label %if.end86

if.then42:                                        ; preds = %while.end39
  %27 = load i32, ptr %nbIn.addr, align 4
  %add44 = add nsw i32 %27, 1
  store i32 %add44, ptr %nco43, align 4
  %28 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %pIn.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv45 = zext i8 %29 to i64
  store i64 %conv45, ptr %qv, align 8
  store i32 1, ptr %nbe, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %while.body49, %if.then42
  %30 = load i32, ptr %nbe, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %nbe, align 4
  %31 = load i32, ptr %nbIn.addr, align 4
  %cmp47 = icmp slt i32 %30, %31
  br i1 %cmp47, label %while.body49, label %while.end54

while.body49:                                     ; preds = %while.cond46
  %32 = load i64, ptr %qv, align 8
  %shl50 = shl i64 %32, 8
  %33 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr51, ptr %pIn.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv52 = zext i8 %34 to i64
  %or53 = or i64 %shl50, %conv52
  store i64 %or53, ptr %qv, align 8
  br label %while.cond46, !llvm.loop !16

while.end54:                                      ; preds = %while.cond46
  %35 = load i32, ptr %nco43, align 4
  %36 = load i32, ptr %nCol, align 4
  %add55 = add nsw i32 %36, %35
  store i32 %add55, ptr %nCol, align 4
  br label %while.cond56

while.cond56:                                     ; preds = %cond.end77, %while.end54
  %37 = load i32, ptr %nco43, align 4
  %cmp57 = icmp sgt i32 %37, 0
  br i1 %cmp57, label %while.body59, label %while.end83

while.body59:                                     ; preds = %while.cond56
  %38 = load i64, ptr %qv, align 8
  %rem = urem i64 %38, 85
  %conv61 = trunc i64 %rem to i8
  store i8 %conv61, ptr %dv60, align 1
  %39 = load i64, ptr %qv, align 8
  %div62 = udiv i64 %39, 85
  store i64 %div62, ptr %qv, align 8
  %40 = load i8, ptr %dv60, align 1
  %conv63 = zext i8 %40 to i32
  %cmp64 = icmp slt i32 %conv63, 4
  br i1 %cmp64, label %cond.true66, label %cond.false71

cond.true66:                                      ; preds = %while.body59
  %41 = load i8, ptr %dv60, align 1
  %conv67 = zext i8 %41 to i32
  %add68 = add nsw i32 %conv67, 35
  %conv69 = trunc i32 %add68 to i8
  %conv70 = sext i8 %conv69 to i32
  br label %cond.end77

cond.false71:                                     ; preds = %while.body59
  %42 = load i8, ptr %dv60, align 1
  %conv72 = zext i8 %42 to i32
  %sub73 = sub nsw i32 %conv72, 4
  %add74 = add nsw i32 %sub73, 42
  %conv75 = trunc i32 %add74 to i8
  %conv76 = sext i8 %conv75 to i32
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false71, %cond.true66
  %cond78 = phi i32 [ %conv70, %cond.true66 ], [ %conv76, %cond.false71 ]
  %conv79 = trunc i32 %cond78 to i8
  %43 = load ptr, ptr %pOut.addr, align 8
  %44 = load i32, ptr %nco43, align 4
  %dec80 = add nsw i32 %44, -1
  store i32 %dec80, ptr %nco43, align 4
  %idxprom81 = sext i32 %dec80 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %43, i64 %idxprom81
  store i8 %conv79, ptr %arrayidx82, align 1
  br label %while.cond56, !llvm.loop !17

while.end83:                                      ; preds = %while.cond56
  %45 = load i32, ptr %nbIn.addr, align 4
  %add84 = add nsw i32 %45, 1
  %46 = load ptr, ptr %pOut.addr, align 8
  %idx.ext = sext i32 %add84 to i64
  %add.ptr85 = getelementptr inbounds i8, ptr %46, i64 %idx.ext
  store ptr %add.ptr85, ptr %pOut.addr, align 8
  br label %if.end86

if.end86:                                         ; preds = %while.end83, %while.end39
  %47 = load ptr, ptr %pSep.addr, align 8
  %tobool87 = icmp ne ptr %47, null
  br i1 %tobool87, label %land.lhs.true88, label %if.end93

land.lhs.true88:                                  ; preds = %if.end86
  %48 = load i32, ptr %nCol, align 4
  %cmp89 = icmp sgt i32 %48, 0
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %land.lhs.true88
  %49 = load ptr, ptr %pOut.addr, align 8
  %50 = load ptr, ptr %pSep.addr, align 8
  %call92 = call ptr @putcs(ptr noundef %49, ptr noundef %50)
  store ptr %call92, ptr %pOut.addr, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %land.lhs.true88, %if.end86
  %51 = load ptr, ptr %pOut.addr, align 8
  store i8 0, ptr %51, align 1
  %52 = load ptr, ptr %pOut.addr, align 8
  ret ptr %52
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @fromBase85(ptr noundef %pIn, i32 noundef %ncIn, ptr noundef %pOut) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %ncIn.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %pUse = alloca ptr, align 8
  %qv = alloca i64, align 8
  %nti = alloca i32, align 4
  %nbo = alloca i32, align 4
  %c = alloca i8, align 1
  %cdo = alloca i8, align 1
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %ncIn, ptr %ncIn.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load i32, ptr %ncIn.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pIn.addr, align 8
  %2 = load i32, ptr %ncIn.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %ncIn.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %ncIn.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %5 = load i32, ptr %ncIn.addr, align 4
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %while.body, label %while.end67

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %pIn.addr, align 8
  %7 = load i32, ptr %ncIn.addr, align 4
  %call = call ptr @skipNonB85(ptr noundef %6, i32 noundef %7)
  store ptr %call, ptr %pUse, align 8
  store i64 0, ptr %qv, align 8
  %8 = load ptr, ptr %pUse, align 8
  %9 = load ptr, ptr %pIn.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load i32, ptr %ncIn.addr, align 4
  %conv5 = sext i32 %10 to i64
  %sub6 = sub nsw i64 %conv5, %sub.ptr.sub
  %conv7 = trunc i64 %sub6 to i32
  store i32 %conv7, ptr %ncIn.addr, align 4
  %11 = load ptr, ptr %pUse, align 8
  store ptr %11, ptr %pIn.addr, align 8
  %12 = load i32, ptr %ncIn.addr, align 4
  %cmp8 = icmp sgt i32 %12, 5
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %13 = load i32, ptr %ncIn.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, ptr %nti, align 4
  %14 = load i32, ptr %nti, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [6 x i8], ptr @fromBase85.nboi, i64 0, i64 %idxprom10
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  store i32 %conv12, ptr %nbo, align 4
  %16 = load i32, ptr %nbo, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cond.end
  br label %while.end67

if.end16:                                         ; preds = %cond.end
  br label %while.cond17

while.cond17:                                     ; preds = %if.end42, %if.end16
  %17 = load i32, ptr %nti, align 4
  %cmp18 = icmp sgt i32 %17, 0
  br i1 %cmp18, label %while.body20, label %while.end

while.body20:                                     ; preds = %while.cond17
  %18 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %pIn.addr, align 8
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %c, align 1
  %20 = load i8, ptr %c, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp sge i32 %conv21, 35
  %conv23 = zext i1 %cmp22 to i32
  %21 = load i8, ptr %c, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp sgt i32 %conv24, 38
  %conv26 = zext i1 %cmp25 to i32
  %add = add nsw i32 %conv23, %conv26
  %22 = load i8, ptr %c, align 1
  %conv27 = sext i8 %22 to i32
  %cmp28 = icmp sge i32 %conv27, 42
  %conv29 = zext i1 %cmp28 to i32
  %add30 = add nsw i32 %add, %conv29
  %23 = load i8, ptr %c, align 1
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp sgt i32 %conv31, 122
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nsw i32 %add30, %conv33
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [5 x i8], ptr @b85_cOffset, i64 0, i64 %idxprom35
  %24 = load i8, ptr %arrayidx36, align 1
  store i8 %24, ptr %cdo, align 1
  %25 = load i32, ptr %ncIn.addr, align 4
  %dec37 = add nsw i32 %25, -1
  store i32 %dec37, ptr %ncIn.addr, align 4
  %26 = load i8, ptr %cdo, align 1
  %conv38 = zext i8 %26 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %while.body20
  br label %while.end

if.end42:                                         ; preds = %while.body20
  %27 = load i64, ptr %qv, align 8
  %mul = mul i64 85, %27
  %28 = load i8, ptr %c, align 1
  %conv43 = sext i8 %28 to i32
  %29 = load i8, ptr %cdo, align 1
  %conv44 = zext i8 %29 to i32
  %sub45 = sub nsw i32 %conv43, %conv44
  %conv46 = sext i32 %sub45 to i64
  %add47 = add i64 %mul, %conv46
  store i64 %add47, ptr %qv, align 8
  %30 = load i32, ptr %nti, align 4
  %dec48 = add nsw i32 %30, -1
  store i32 %dec48, ptr %nti, align 4
  br label %while.cond17, !llvm.loop !18

while.end:                                        ; preds = %if.then41, %while.cond17
  %31 = load i32, ptr %nti, align 4
  %32 = load i32, ptr %nbo, align 4
  %sub49 = sub nsw i32 %32, %31
  store i32 %sub49, ptr %nbo, align 4
  %33 = load i32, ptr %nbo, align 4
  switch i32 %33, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb52
    i32 2, label %sw.bb57
    i32 1, label %sw.bb62
    i32 0, label %sw.bb66
  ]

sw.bb:                                            ; preds = %while.end
  %34 = load i64, ptr %qv, align 8
  %shr = lshr i64 %34, 24
  %and = and i64 %shr, 255
  %conv50 = trunc i64 %and to i8
  %35 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr51, ptr %pOut.addr, align 8
  store i8 %conv50, ptr %35, align 1
  br label %sw.bb52

sw.bb52:                                          ; preds = %while.end, %sw.bb
  %36 = load i64, ptr %qv, align 8
  %shr53 = lshr i64 %36, 16
  %and54 = and i64 %shr53, 255
  %conv55 = trunc i64 %and54 to i8
  %37 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr56, ptr %pOut.addr, align 8
  store i8 %conv55, ptr %37, align 1
  br label %sw.bb57

sw.bb57:                                          ; preds = %while.end, %sw.bb52
  %38 = load i64, ptr %qv, align 8
  %shr58 = lshr i64 %38, 8
  %and59 = and i64 %shr58, 255
  %conv60 = trunc i64 %and59 to i8
  %39 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr61, ptr %pOut.addr, align 8
  store i8 %conv60, ptr %39, align 1
  br label %sw.bb62

sw.bb62:                                          ; preds = %while.end, %sw.bb57
  %40 = load i64, ptr %qv, align 8
  %and63 = and i64 %40, 255
  %conv64 = trunc i64 %and63 to i8
  %41 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr65, ptr %pOut.addr, align 8
  store i8 %conv64, ptr %41, align 1
  br label %sw.bb66

sw.bb66:                                          ; preds = %while.end, %sw.bb62
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb66
  br label %while.cond, !llvm.loop !19

while.end67:                                      ; preds = %if.then15, %while.cond
  %42 = load ptr, ptr %pOut.addr, align 8
  ret ptr %42
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @putcs(ptr noundef %pc, ptr noundef %s) #0 {
entry:
  %pc.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %pc, ptr %pc.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, ptr %c, align 1
  %3 = load ptr, ptr %pc.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr2, ptr %pc.addr, align 8
  store i8 %2, ptr %3, align 1
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %pc.addr, align 8
  ret ptr %4
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @skipNonB85(ptr noundef %s, i32 noundef %nc) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %nc.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %nc, ptr %nc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %nc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %nc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8, ptr %c, align 1
  %conv1 = sext i8 %3 to i32
  %cmp2 = icmp sge i32 %conv1, 35
  %conv3 = zext i1 %cmp2 to i32
  %4 = load i8, ptr %c, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp sgt i32 %conv4, 38
  %conv6 = zext i1 %cmp5 to i32
  %add = add nsw i32 %conv3, %conv6
  %5 = load i8, ptr %c, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp sge i32 %conv7, 42
  %conv9 = zext i1 %cmp8 to i32
  %add10 = add nsw i32 %add, %conv9
  %6 = load i8, ptr %c, align 1
  %conv11 = sext i8 %6 to i32
  %cmp12 = icmp sgt i32 %conv11, 122
  %conv13 = zext i1 %cmp12 to i32
  %add14 = add nsw i32 %add10, %conv13
  %and = and i32 %add14, 1
  %tobool15 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %s.addr, align 8
  ret ptr %9
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { cold noreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_basexx_0(ptr noundef %pApi)  alwaysinline#0 {
entry:
  %pApi.addr = alloca ptr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  %0 = load ptr, ptr %pApi.addr, align 8
  ret void
}

define internal i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_basexx_1(ptr noundef %p, i32 noundef %len)  alwaysinline#0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8, ptr %c, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp sge i32 %conv3, 35
  %conv5 = zext i1 %cmp4 to i32
  %5 = load i8, ptr %c, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp sgt i32 %conv6, 38
  %conv8 = zext i1 %cmp7 to i32
  %add = add nsw i32 %conv5, %conv8
  %6 = load i8, ptr %c, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp sge i32 %conv9, 42
  %conv11 = zext i1 %cmp10 to i32
  %add12 = add nsw i32 %add, %conv11
  %7 = load i8, ptr %c, align 1
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp sgt i32 %conv13, 122
  %conv15 = zext i1 %cmp14 to i32
  %add16 = add nsw i32 %add12, %conv15
  %and = and i32 %add16, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8, ptr %c, align 1
  %conv17 = sext i8 %8 to i32
  %call = call i32 @isspace(i32 noundef %conv17) #5
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
