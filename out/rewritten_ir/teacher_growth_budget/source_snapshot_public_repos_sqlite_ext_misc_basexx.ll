; ModuleID = './out/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_sqlite_ext_misc_basexx.prepared.ll'
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
  %call = call i32 @sqlite3_create_function(ptr noundef %db, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 2623489, ptr noundef null, ptr noundef nonnull @base64, ptr noundef null, ptr noundef null) #6
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
  %0 = load ptr, ptr %av, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %0) #6
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %nv, align 8
  %1 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_context_db_handle(ptr noundef %1) #6
  %call2 = call i32 @sqlite3_limit(ptr noundef %call1, i32 noundef 0, i32 noundef -1) #6
  store i32 %call2, ptr %nvMax, align 4
  %2 = load i32, ptr %na.addr, align 4
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 217, ptr noundef nonnull @.str.4) #7
  unreachable

cond.end:                                         ; preds = %entry
  %3 = load ptr, ptr %av.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call6 = call i32 @sqlite3_value_type(ptr noundef %4) #6
  switch i32 %call6, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %cond.end
  %5 = load i64, ptr %nv, align 8
  store i64 %5, ptr %nb, align 8
  %add = add nsw i64 %5, 2
  %div = sdiv i64 %add, 3
  %mul = shl nsw i64 %div, 2
  %add7 = add nsw i64 %mul, 71
  %div8 = sdiv i64 %add7, 72
  %add9 = add nsw i64 %div8, 1
  %add10 = add nsw i64 %mul, %add9
  store i64 %add10, ptr %nc, align 8
  %6 = load i32, ptr %nvMax, align 4
  %conv11 = sext i32 %6 to i64
  %cmp12 = icmp sgt i64 %add10, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef -1) #6
  br label %return

if.end:                                           ; preds = %sw.bb
  %8 = load ptr, ptr %av.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %call15 = call ptr @sqlite3_value_blob(ptr noundef %9) #6
  store ptr %call15, ptr %bBuf, align 8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end
  %10 = load ptr, ptr %context.addr, align 8
  %call18 = call ptr @sqlite3_context_db_handle(ptr noundef %10) #6
  %call19 = call i32 @sqlite3_errcode(ptr noundef %call18) #6
  %cmp20 = icmp eq i32 %call19, 7
  br i1 %cmp20, label %memFail, label %if.end23

if.end23:                                         ; preds = %if.then17
  %11 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef -1, ptr noundef null) #6
  br label %return

if.end24:                                         ; preds = %if.end
  %12 = load i64, ptr %nc, align 8
  %call25 = call ptr @sqlite3_malloc64(i64 noundef %12) #6
  store ptr %call25, ptr %cBuf, align 8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %memFail, label %if.end28

if.end28:                                         ; preds = %if.end24
  %13 = load ptr, ptr %bBuf, align 8
  %14 = load i64, ptr %nb, align 8
  %conv29 = trunc i64 %14 to i32
  %15 = load ptr, ptr %cBuf, align 8
  %call30 = call ptr @toBase64(ptr noundef %13, i32 noundef %conv29, ptr noundef %15)
  %sub.ptr.lhs.cast = ptrtoint ptr %call30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext1 = shl i64 %sub.ptr.sub, 32
  %conv32 = ashr exact i64 %sext1, 32
  store i64 %conv32, ptr %nc, align 8
  %16 = load ptr, ptr %context.addr, align 8
  %17 = load ptr, ptr %cBuf, align 8
  %conv33 = trunc i64 %sub.ptr.sub to i32
  call void @sqlite3_result_text(ptr noundef %16, ptr noundef %17, i32 noundef %conv33, ptr noundef nonnull @sqlite3_free) #6
  br label %return

sw.bb34:                                          ; preds = %cond.end
  %18 = load i64, ptr %nv, align 8
  store i64 %18, ptr %nc, align 8
  %add35 = add nsw i64 %18, 3
  %div36 = sdiv i64 %add35, 4
  %mul37 = mul nsw i64 %div36, 3
  store i64 %mul37, ptr %nb, align 8
  %19 = load i32, ptr %nvMax, align 4
  %conv38 = sext i32 %19 to i64
  %cmp39 = icmp sgt i64 %mul37, %conv38
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %sw.bb34
  %20 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %20, ptr noundef nonnull @.str.7, i32 noundef -1) #6
  br label %return

if.else:                                          ; preds = %sw.bb34
  %21 = load i64, ptr %nb, align 8
  %cmp42 = icmp slt i64 %21, 1
  %spec.store.select = select i1 %cmp42, i64 1, i64 %21
  store i64 %spec.store.select, ptr %nb, align 8
  %22 = load ptr, ptr %av.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %call48 = call ptr @sqlite3_value_text(ptr noundef %23) #6
  store ptr %call48, ptr %cBuf, align 8
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then50, label %if.end57

if.then50:                                        ; preds = %if.else
  %24 = load ptr, ptr %context.addr, align 8
  %call51 = call ptr @sqlite3_context_db_handle(ptr noundef %24) #6
  %call52 = call i32 @sqlite3_errcode(ptr noundef %call51) #6
  %cmp53 = icmp eq i32 %call52, 7
  br i1 %cmp53, label %memFail, label %if.end56

if.end56:                                         ; preds = %if.then50
  %25 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_zeroblob(ptr noundef %25, i32 noundef 0) #6
  br label %return

if.end57:                                         ; preds = %if.else
  %26 = load i64, ptr %nb, align 8
  %call58 = call ptr @sqlite3_malloc64(i64 noundef %26) #6
  store ptr %call58, ptr %bBuf, align 8
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %memFail, label %if.end61

if.end61:                                         ; preds = %if.end57
  %27 = load ptr, ptr %cBuf, align 8
  %28 = load i64, ptr %nc, align 8
  %conv62 = trunc i64 %28 to i32
  %29 = load ptr, ptr %bBuf, align 8
  %call63 = call ptr @fromBase64(ptr noundef %27, i32 noundef %conv62, ptr noundef %29)
  %sub.ptr.lhs.cast64 = ptrtoint ptr %call63 to i64
  %sub.ptr.rhs.cast65 = ptrtoint ptr %29 to i64
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %sext = shl i64 %sub.ptr.sub66, 32
  %conv68 = ashr exact i64 %sext, 32
  store i64 %conv68, ptr %nb, align 8
  %30 = load ptr, ptr %context.addr, align 8
  %31 = load ptr, ptr %bBuf, align 8
  %conv69 = trunc i64 %sub.ptr.sub66 to i32
  call void @sqlite3_result_blob(ptr noundef %30, ptr noundef %31, i32 noundef %conv69, ptr noundef nonnull @sqlite3_free) #6
  br label %return

sw.default:                                       ; preds = %cond.end
  %32 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef -1) #6
  br label %return

memFail:                                          ; preds = %if.end57, %if.then50, %if.end24, %if.then17
  %33 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef -1) #6
  br label %return

return:                                           ; preds = %if.end23, %if.end28, %if.end56, %if.end61, %memFail, %sw.default, %if.then41, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_base85_init(ptr noundef %db, ptr noundef %pzErr, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %db, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef nonnull @is_base85, ptr noundef null, ptr noundef null) #6
  store i32 %call, ptr %rc, align 4
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %rc, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3_create_function(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 2623489, ptr noundef null, ptr noundef nonnull @base85, ptr noundef null, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %call1, %if.end ], [ %0, %if.then ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @is_base85(ptr noundef %context, i32 noundef %na, ptr noundef %av) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %av.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store ptr %av, ptr %av.addr, align 8
  %cmp.not = icmp eq i32 %na, 1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 268, ptr noundef nonnull @.str.4) #7
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %av.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %1) #6
  switch i32 %call, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb6
  ]

sw.bb:                                            ; preds = %cond.end
  %2 = load ptr, ptr %av.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %call2 = call ptr @sqlite3_value_text(ptr noundef %3) #6
  %4 = load ptr, ptr %2, align 8
  %call4 = call i32 @sqlite3_value_bytes(ptr noundef %4) #6
  %call5 = call i32 @allBase85(ptr noundef %call2, i32 noundef %call4)
  %5 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_int(ptr noundef %5, i32 noundef %call5) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  %6 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_null(ptr noundef %6) #6
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %7 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef -1) #6
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
  %0 = load ptr, ptr %av, align 8
  %call = call i32 @sqlite3_value_bytes(ptr noundef %0) #6
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %nv, align 8
  %1 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_context_db_handle(ptr noundef %1) #6
  %call2 = call i32 @sqlite3_limit(ptr noundef %call1, i32 noundef 0, i32 noundef -1) #6
  store i32 %call2, ptr %nvMax, align 4
  %2 = load i32, ptr %na.addr, align 4
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, i32 noundef 294, ptr noundef nonnull @.str.4) #7
  unreachable

cond.end:                                         ; preds = %entry
  %3 = load ptr, ptr %av.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call6 = call i32 @sqlite3_value_type(ptr noundef %4) #6
  switch i32 %call6, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %cond.end
  %5 = load i64, ptr %nv, align 8
  store i64 %5, ptr %nb, align 8
  %div = sdiv i64 %5, 4
  %mul = mul nsw i64 %div, 5
  %rem = srem i64 %5, 4
  %add = add nsw i64 %mul, %rem
  %div7 = sdiv i64 %5, 64
  %add8 = add nsw i64 %add, %div7
  %add10 = add nsw i64 %add8, 3
  store i64 %add10, ptr %nc, align 8
  %6 = load i32, ptr %nvMax, align 4
  %conv11 = sext i32 %6 to i64
  %cmp12 = icmp sgt i64 %add10, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %7 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef -1) #6
  br label %return

if.end:                                           ; preds = %sw.bb
  %8 = load ptr, ptr %av.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %call15 = call ptr @sqlite3_value_blob(ptr noundef %9) #6
  store ptr %call15, ptr %bBuf, align 8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end
  %10 = load ptr, ptr %context.addr, align 8
  %call18 = call ptr @sqlite3_context_db_handle(ptr noundef %10) #6
  %call19 = call i32 @sqlite3_errcode(ptr noundef %call18) #6
  %cmp20 = icmp eq i32 %call19, 7
  br i1 %cmp20, label %memFail, label %if.end23

if.end23:                                         ; preds = %if.then17
  %11 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_text(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef -1, ptr noundef null) #6
  br label %return

if.end24:                                         ; preds = %if.end
  %12 = load i64, ptr %nc, align 8
  %call25 = call ptr @sqlite3_malloc64(i64 noundef %12) #6
  store ptr %call25, ptr %cBuf, align 8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %memFail, label %if.end28

if.end28:                                         ; preds = %if.end24
  %13 = load ptr, ptr %bBuf, align 8
  %14 = load i64, ptr %nb, align 8
  %conv29 = trunc i64 %14 to i32
  %15 = load ptr, ptr %cBuf, align 8
  %call30 = call ptr @toBase85(ptr noundef %13, i32 noundef %conv29, ptr noundef %15, ptr noundef nonnull @.str.13)
  %sub.ptr.lhs.cast = ptrtoint ptr %call30 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext1 = shl i64 %sub.ptr.sub, 32
  %conv32 = ashr exact i64 %sext1, 32
  store i64 %conv32, ptr %nc, align 8
  %16 = load ptr, ptr %context.addr, align 8
  %17 = load ptr, ptr %cBuf, align 8
  %conv33 = trunc i64 %sub.ptr.sub to i32
  call void @sqlite3_result_text(ptr noundef %16, ptr noundef %17, i32 noundef %conv33, ptr noundef nonnull @sqlite3_free) #6
  br label %return

sw.bb34:                                          ; preds = %cond.end
  %18 = load i64, ptr %nv, align 8
  store i64 %18, ptr %nc, align 8
  %div35 = sdiv i64 %18, 5
  %mul36 = shl nsw i64 %div35, 2
  %rem37 = srem i64 %18, 5
  %add38 = add nsw i64 %mul36, %rem37
  store i64 %add38, ptr %nb, align 8
  %19 = load i32, ptr %nvMax, align 4
  %conv39 = sext i32 %19 to i64
  %cmp40 = icmp sgt i64 %add38, %conv39
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb34
  %20 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %20, ptr noundef nonnull @.str.14, i32 noundef -1) #6
  br label %return

if.else:                                          ; preds = %sw.bb34
  %21 = load i64, ptr %nb, align 8
  %cmp43 = icmp slt i64 %21, 1
  %spec.store.select = select i1 %cmp43, i64 1, i64 %21
  store i64 %spec.store.select, ptr %nb, align 8
  %22 = load ptr, ptr %av.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %call49 = call ptr @sqlite3_value_text(ptr noundef %23) #6
  store ptr %call49, ptr %cBuf, align 8
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.else
  %24 = load ptr, ptr %context.addr, align 8
  %call52 = call ptr @sqlite3_context_db_handle(ptr noundef %24) #6
  %call53 = call i32 @sqlite3_errcode(ptr noundef %call52) #6
  %cmp54 = icmp eq i32 %call53, 7
  br i1 %cmp54, label %memFail, label %if.end57

if.end57:                                         ; preds = %if.then51
  %25 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_zeroblob(ptr noundef %25, i32 noundef 0) #6
  br label %return

if.end58:                                         ; preds = %if.else
  %26 = load i64, ptr %nb, align 8
  %call59 = call ptr @sqlite3_malloc64(i64 noundef %26) #6
  store ptr %call59, ptr %bBuf, align 8
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %memFail, label %if.end62

if.end62:                                         ; preds = %if.end58
  %27 = load ptr, ptr %cBuf, align 8
  %28 = load i64, ptr %nc, align 8
  %conv63 = trunc i64 %28 to i32
  %29 = load ptr, ptr %bBuf, align 8
  %call64 = call ptr @fromBase85(ptr noundef %27, i32 noundef %conv63, ptr noundef %29)
  %sub.ptr.lhs.cast65 = ptrtoint ptr %call64 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %29 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %sext = shl i64 %sub.ptr.sub67, 32
  %conv69 = ashr exact i64 %sext, 32
  store i64 %conv69, ptr %nb, align 8
  %30 = load ptr, ptr %context.addr, align 8
  %31 = load ptr, ptr %bBuf, align 8
  %conv70 = trunc i64 %sub.ptr.sub67 to i32
  call void @sqlite3_result_blob(ptr noundef %30, ptr noundef %31, i32 noundef %conv70, ptr noundef nonnull @sqlite3_free) #6
  br label %return

sw.default:                                       ; preds = %cond.end
  %32 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef -1) #6
  br label %return

memFail:                                          ; preds = %if.end58, %if.then51, %if.end24, %if.then17
  %33 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %33, ptr noundef nonnull @.str.16, i32 noundef -1) #6
  br label %return

return:                                           ; preds = %if.end23, %if.end28, %if.end57, %if.end62, %memFail, %sw.default, %if.then42, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @sqlite3_basexx_init(ptr noundef %db, ptr noundef %pzErr, ptr noundef %pApi) #0 {
entry:
  %rc2 = alloca i32, align 4
  %call.i = call i32 @sqlite3_create_function(ptr noundef %db, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 2623489, ptr noundef null, ptr noundef nonnull @base64, ptr noundef null, ptr noundef null) #6
  %call1 = call i32 @sqlite3_base85_init(ptr noundef %db, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc2, align 4
  %cmp = icmp eq i32 %call.i, 0
  %0 = load i32, ptr %rc2, align 4
  %cmp2 = icmp eq i32 %0, 0
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  %storemerge = select i1 %or.cond, i32 0, i32 1
  ret i32 %storemerge
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
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %nbIn, ptr %nbIn.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store i32 0, ptr %nCol, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %nbIn.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pIn.addr, align 8
  %2 = load i8, ptr %1, align 1
  %3 = lshr i8 %2, 2
  %idxprom = zext i8 %3 to i64
  %arrayidx2 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = load ptr, ptr %pOut.addr, align 8
  store i8 %4, ptr %5, align 1
  %6 = load ptr, ptr %pIn.addr, align 8
  %7 = load i8, ptr %6, align 1
  %shl = shl i8 %7, 4
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx6, align 1
  %9 = lshr i8 %8, 4
  %shl.masked = and i8 %shl, 48
  %and = or i8 %shl.masked, %9
  %idxprom10 = zext i8 %and to i64
  %arrayidx11 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom10
  %10 = load i8, ptr %arrayidx11, align 1
  %11 = load ptr, ptr %pOut.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %10, ptr %arrayidx12, align 1
  %12 = load ptr, ptr %pIn.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx13, align 1
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 60
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 2
  %16 = load i8, ptr %arrayidx17, align 1
  %17 = lshr i8 %16, 6
  %or202 = or i8 %15, %17
  %idxprom22 = zext i8 %or202 to i64
  %arrayidx23 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom22
  %18 = load i8, ptr %arrayidx23, align 1
  %19 = load ptr, ptr %pOut.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %19, i64 2
  store i8 %18, ptr %arrayidx24, align 1
  %20 = load ptr, ptr %pIn.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load i8, ptr %arrayidx25, align 1
  %22 = and i8 %21, 63
  %idxprom29 = zext i8 %22 to i64
  %arrayidx30 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %idxprom29
  %23 = load i8, ptr %arrayidx30, align 1
  %24 = load ptr, ptr %pOut.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %24, i64 3
  store i8 %23, ptr %arrayidx31, align 1
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 4
  store ptr %add.ptr, ptr %pOut.addr, align 8
  %25 = load i32, ptr %nbIn.addr, align 4
  %sub = add nsw i32 %25, -3
  store i32 %sub, ptr %nbIn.addr, align 4
  %26 = load ptr, ptr %pIn.addr, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %26, i64 3
  store ptr %add.ptr32, ptr %pIn.addr, align 8
  %27 = load i32, ptr %nCol, align 4
  %add = add nsw i32 %27, 4
  store i32 %add, ptr %nCol, align 4
  %cmp33 = icmp sgt i32 %27, 67
  %28 = load i32, ptr %nbIn.addr, align 4
  %cmp35 = icmp slt i32 %28, 1
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp35
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %29 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr, ptr %pOut.addr, align 8
  store i8 10, ptr %29, align 1
  store i32 0, ptr %nCol, align 4
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %30 = load i32, ptr %nbIn.addr, align 4
  %cmp37 = icmp sgt i32 %30, 0
  br i1 %cmp37, label %if.then39, label %if.end74

if.then39:                                        ; preds = %while.end
  %31 = load i32, ptr %nbIn.addr, align 4
  %32 = trunc i32 %31 to i8
  %conv41 = add i8 %32, 1
  store i8 %conv41, ptr %nco, align 1
  %33 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr42, ptr %pIn.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv43 = zext i8 %34 to i64
  store i64 %conv43, ptr %qv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then39
  %storemerge = phi i32 [ 1, %if.then39 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %nbe, align 4
  %cmp44 = icmp slt i32 %storemerge, 3
  br i1 %cmp44, label %for.body, label %for.cond54

for.body:                                         ; preds = %for.cond
  %35 = load i64, ptr %qv, align 8
  %shl46 = shl i64 %35, 8
  store i64 %shl46, ptr %qv, align 8
  %36 = load i32, ptr %nbe, align 4
  %37 = load i32, ptr %nbIn.addr, align 4
  %cmp47 = icmp slt i32 %36, %37
  br i1 %cmp47, label %if.then49, label %for.inc

if.then49:                                        ; preds = %for.body
  %38 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr50, ptr %pIn.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv51 = zext i8 %39 to i64
  %40 = load i64, ptr %qv, align 8
  %or52 = or i64 %40, %conv51
  store i64 %or52, ptr %qv, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then49
  %41 = load i32, ptr %nbe, align 4
  %inc = add nsw i32 %41, 1
  br label %for.cond, !llvm.loop !8

for.cond54:                                       ; preds = %for.cond, %cond.end
  %storemerge1 = phi i32 [ %dec, %cond.end ], [ 3, %for.cond ]
  store i32 %storemerge1, ptr %nbe, align 4
  %cmp55 = icmp sgt i32 %storemerge1, -1
  br i1 %cmp55, label %for.body57, label %for.end71

for.body57:                                       ; preds = %for.cond54
  %42 = load i32, ptr %nbe, align 4
  %43 = load i8, ptr %nco, align 1
  %conv58 = sext i8 %43 to i32
  %cmp59 = icmp slt i32 %42, %conv58
  br i1 %cmp59, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body57
  %44 = load i64, ptr %qv, align 8
  %conv62 = and i64 %44, 63
  %arrayidx64 = getelementptr inbounds [65 x i8], ptr @b64Numerals, i64 0, i64 %conv62
  %45 = load i8, ptr %arrayidx64, align 1
  br label %cond.end

cond.end:                                         ; preds = %for.body57, %cond.true
  %cond = phi i8 [ %45, %cond.true ], [ 61, %for.body57 ]
  %46 = load i64, ptr %qv, align 8
  %shr67 = lshr i64 %46, 6
  store i64 %shr67, ptr %qv, align 8
  %47 = load ptr, ptr %pOut.addr, align 8
  %48 = load i32, ptr %nbe, align 4
  %idxprom68 = sext i32 %48 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %47, i64 %idxprom68
  store i8 %cond, ptr %arrayidx69, align 1
  %49 = load i32, ptr %nbe, align 4
  %dec = add nsw i32 %49, -1
  br label %for.cond54, !llvm.loop !9

for.end71:                                        ; preds = %for.cond54
  %50 = load ptr, ptr %pOut.addr, align 8
  %add.ptr72 = getelementptr inbounds i8, ptr %50, i64 4
  %incdec.ptr73 = getelementptr inbounds i8, ptr %50, i64 5
  store ptr %incdec.ptr73, ptr %pOut.addr, align 8
  store i8 10, ptr %add.ptr72, align 1
  br label %if.end74

if.end74:                                         ; preds = %for.end71, %while.end
  %51 = load ptr, ptr %pOut.addr, align 8
  store i8 0, ptr %51, align 1
  ret ptr %51
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
  %cmp = icmp sgt i32 %ncIn, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %pIn.addr, align 8
  %1 = load i32, ptr %ncIn.addr, align 4
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp eq i8 %2, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %ncIn.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %ncIn.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog60, %if.end
  %4 = load i32, ptr %ncIn.addr, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %pIn.addr, align 8
  %6 = load i8, ptr %5, align 1
  %cmp6 = icmp ne i8 %6, 61
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %7 = load ptr, ptr %pIn.addr, align 8
  %8 = load i32, ptr %ncIn.addr, align 4
  %call = call ptr @skipNonB64(ptr noundef %7, i32 noundef %8)
  store ptr %call, ptr %pUse, align 8
  store i64 0, ptr %qv, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %9 = load i32, ptr %ncIn.addr, align 4
  %10 = trunc i64 %sub.ptr.sub.neg to i32
  %conv10 = add i32 %9, %10
  store i32 %conv10, ptr %ncIn.addr, align 4
  %11 = load ptr, ptr %pUse, align 8
  store ptr %11, ptr %pIn.addr, align 8
  %cmp11 = icmp sgt i32 %conv10, 4
  %12 = load i32, ptr %ncIn.addr, align 4
  %cond = select i1 %cmp11, i32 4, i32 %12
  store i32 %cond, ptr %nti, align 4
  %13 = load i32, ptr %ncIn.addr, align 4
  %sub13 = sub nsw i32 %13, %cond
  store i32 %sub13, ptr %ncIn.addr, align 4
  %idxprom14 = sext i32 %cond to i64
  %arrayidx15 = getelementptr inbounds [5 x i8], ptr @fromBase64.nboi, i64 0, i64 %idxprom14
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %14 to i32
  store i32 %conv16, ptr %nbo, align 4
  %cmp17 = icmp eq i8 %14, 0
  br i1 %cmp17, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.body, %sw.default
  %storemerge = phi i32 [ %inc, %sw.default ], [ 0, %while.body ]
  store i32 %storemerge, ptr %nac, align 4
  %cmp21 = icmp slt i32 %storemerge, 4
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %nac, align 4
  %16 = load i32, ptr %nti, align 4
  %cmp23 = icmp slt i32 %15, %16
  br i1 %cmp23, label %cond.true25, label %cond.end29

cond.true25:                                      ; preds = %for.body
  %17 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr, ptr %pIn.addr, align 8
  %18 = load i8, ptr %17, align 1
  br label %cond.end29

cond.end29:                                       ; preds = %for.body, %cond.true25
  %cond30 = phi i8 [ %18, %cond.true25 ], [ 65, %for.body ]
  store i8 %cond30, ptr %c, align 1
  %cmp33 = icmp sgt i8 %cond30, -1
  br i1 %cmp33, label %cond.true35, label %cond.end40

cond.true35:                                      ; preds = %cond.end29
  %19 = load i8, ptr %c, align 1
  %idxprom36 = zext i8 %19 to i64
  %arrayidx37 = getelementptr inbounds [128 x i8], ptr @b64DigitValues, i64 0, i64 %idxprom36
  %20 = load i8, ptr %arrayidx37, align 1
  br label %cond.end40

cond.end40:                                       ; preds = %cond.end29, %cond.true35
  %cond41 = phi i8 [ %20, %cond.true35 ], [ -128, %cond.end29 ]
  store i8 %cond41, ptr %bdp, align 1
  switch i8 %cond41, label %sw.default [
    i8 -126, label %sw.bb
    i8 -127, label %sw.bb44
    i8 -128, label %sw.bb45
  ]

sw.bb:                                            ; preds = %cond.end40
  store i32 0, ptr %ncIn.addr, align 4
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb, %cond.end40
  %21 = load i32, ptr %nac, align 4
  store i32 %21, ptr %nti, align 4
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.bb44, %cond.end40
  store i8 0, ptr %bdp, align 1
  %22 = load i32, ptr %nbo, align 4
  %dec46 = add nsw i32 %22, -1
  store i32 %dec46, ptr %nbo, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb45, %cond.end40
  %23 = load i64, ptr %qv, align 8
  %shl = shl i64 %23, 6
  %24 = load i8, ptr %bdp, align 1
  %conv47 = zext i8 %24 to i64
  %or = or i64 %shl, %conv47
  store i64 %or, ptr %qv, align 8
  %25 = load i32, ptr %nac, align 4
  %inc = add nsw i32 %25, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %nbo, align 4
  switch i32 %26, label %sw.epilog60 [
    i32 3, label %sw.bb48
    i32 2, label %sw.bb51
    i32 1, label %sw.bb55
  ]

sw.bb48:                                          ; preds = %for.end
  %27 = load i64, ptr %qv, align 8
  %conv49 = trunc i64 %27 to i8
  %28 = load ptr, ptr %pOut.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %conv49, ptr %arrayidx50, align 1
  br label %sw.bb51

sw.bb51:                                          ; preds = %sw.bb48, %for.end
  %29 = load i64, ptr %qv, align 8
  %shr = lshr i64 %29, 8
  %conv53 = trunc i64 %shr to i8
  %30 = load ptr, ptr %pOut.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %conv53, ptr %arrayidx54, align 1
  br label %sw.bb55

sw.bb55:                                          ; preds = %sw.bb51, %for.end
  %31 = load i64, ptr %qv, align 8
  %shr56 = lshr i64 %31, 16
  %conv58 = trunc i64 %shr56 to i8
  %32 = load ptr, ptr %pOut.addr, align 8
  store i8 %conv58, ptr %32, align 1
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.bb55, %for.end
  %33 = load i32, ptr %nbo, align 4
  %34 = load ptr, ptr %pOut.addr, align 8
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, ptr %34, i64 %idx.ext
  store ptr %add.ptr, ptr %pOut.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond, %while.body, %land.rhs
  %35 = load ptr, ptr %pOut.addr, align 8
  ret ptr %35
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
  br i1 %cmp, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8, ptr %c, align 1
  %cmp2 = icmp sgt i8 %3, -1
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.rhs
  %4 = load i8, ptr %c, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [128 x i8], ptr @b64DigitValues, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  br label %cond.end

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi i8 [ %5, %cond.true ], [ -128, %land.rhs ]
  %cmp7 = icmp slt i8 %cond, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %6 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.lhs.true, %while.cond, %cond.end
  %7 = load ptr, ptr %s.addr, align 8
  ret ptr %7
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @allBase85(ptr noundef %p, i32 noundef %len) #0 {
entry:
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
  br i1 %cmp, label %land.rhs, label %return

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %cmp1 = icmp ne i8 %2, 0
  br i1 %cmp1, label %while.body, label %return

while.body:                                       ; preds = %land.rhs
  %3 = load i8, ptr %c, align 1
  %4 = add i8 %3, -35
  %5 = icmp ult i8 %4, 4
  %cmp10 = icmp sgt i8 %3, 41
  %add12 = xor i1 %5, %cmp10
  %cmp14 = icmp sgt i8 %3, 122
  %add16.narrow = xor i1 %add12, %cmp14
  br i1 %add16.narrow, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8, ptr %c, align 1
  %conv17 = sext i8 %6 to i32
  %call = call i32 @isspace(i32 noundef %conv17) #8
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !13

return:                                           ; preds = %land.rhs, %while.cond, %land.lhs.true
  %storemerge = phi i32 [ 0, %land.lhs.true ], [ 1, %while.cond ], [ 1, %land.rhs ]
  ret i32 %storemerge
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
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %while.body, label %while.end39

while.body:                                       ; preds = %while.cond
  store i32 5, ptr %nco, align 4
  %1 = load ptr, ptr %pIn.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv, 24
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl, %shl3
  %4 = load ptr, ptr %pIn.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or9 = or i64 %or, %shl7
  %arrayidx10 = getelementptr inbounds i8, ptr %4, i64 3
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i64
  %or12 = or i64 %or9, %conv11
  store i64 %or12, ptr %qbv, align 8
  br label %while.cond13

while.cond13:                                     ; preds = %while.body16, %while.body
  %7 = load i32, ptr %nco, align 4
  %cmp14 = icmp sgt i32 %7, 0
  br i1 %cmp14, label %while.body16, label %while.end

while.body16:                                     ; preds = %while.cond13
  %8 = load i64, ptr %qbv, align 8
  %div = udiv i64 %8, 85
  %mul.neg = mul i64 %div, 171
  %sub = add i64 %mul.neg, %8
  %conv19 = trunc i64 %sub to i8
  store i8 %conv19, ptr %dv, align 1
  %conv20 = and i64 %div, 4294967295
  store i64 %conv20, ptr %qbv, align 8
  %conv211 = and i64 %sub, 252
  %cmp22 = icmp eq i64 %conv211, 0
  %9 = load i8, ptr %dv, align 1
  %add = add i8 %9, 35
  %10 = load i8, ptr %dv, align 1
  %add29 = add i8 %10, 38
  %cond.in = select i1 %cmp22, i8 %add, i8 %add29
  %11 = load ptr, ptr %pOut.addr, align 8
  %12 = load i32, ptr %nco, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %nco, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  store i8 %cond.in, ptr %arrayidx33, align 1
  br label %while.cond13, !llvm.loop !14

while.end:                                        ; preds = %while.cond13
  %13 = load i32, ptr %nbIn.addr, align 4
  %sub34 = add nsw i32 %13, -4
  store i32 %sub34, ptr %nbIn.addr, align 4
  %14 = load ptr, ptr %pIn.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 4
  store ptr %add.ptr, ptr %pIn.addr, align 8
  %15 = load ptr, ptr %pOut.addr, align 8
  %add.ptr35 = getelementptr inbounds i8, ptr %15, i64 5
  store ptr %add.ptr35, ptr %pOut.addr, align 8
  %16 = load ptr, ptr %pSep.addr, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %17 = load i32, ptr %nCol, align 4
  %add36 = add nsw i32 %17, 5
  store i32 %add36, ptr %nCol, align 4
  %cmp37 = icmp sgt i32 %17, 74
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load ptr, ptr %pOut.addr, align 8
  %19 = load ptr, ptr %pSep.addr, align 8
  %call = call ptr @putcs(ptr noundef %18, ptr noundef %19)
  store ptr %call, ptr %pOut.addr, align 8
  store i32 0, ptr %nCol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %while.cond, !llvm.loop !15

while.end39:                                      ; preds = %while.cond
  %20 = load i32, ptr %nbIn.addr, align 4
  %cmp40 = icmp sgt i32 %20, 0
  br i1 %cmp40, label %if.then42, label %if.end86

if.then42:                                        ; preds = %while.end39
  %21 = load i32, ptr %nbIn.addr, align 4
  %add44 = add nsw i32 %21, 1
  store i32 %add44, ptr %nco43, align 4
  %22 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %pIn.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv45 = zext i8 %23 to i64
  store i64 %conv45, ptr %qv, align 8
  store i32 1, ptr %nbe, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %while.body49, %if.then42
  %24 = load i32, ptr %nbe, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %nbe, align 4
  %25 = load i32, ptr %nbIn.addr, align 4
  %cmp47 = icmp slt i32 %24, %25
  br i1 %cmp47, label %while.body49, label %while.end54

while.body49:                                     ; preds = %while.cond46
  %26 = load i64, ptr %qv, align 8
  %shl50 = shl i64 %26, 8
  %27 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr51, ptr %pIn.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv52 = zext i8 %28 to i64
  %or53 = or i64 %shl50, %conv52
  store i64 %or53, ptr %qv, align 8
  br label %while.cond46, !llvm.loop !16

while.end54:                                      ; preds = %while.cond46
  %29 = load i32, ptr %nco43, align 4
  %30 = load i32, ptr %nCol, align 4
  %add55 = add nsw i32 %30, %29
  store i32 %add55, ptr %nCol, align 4
  br label %while.cond56

while.cond56:                                     ; preds = %while.body59, %while.end54
  %31 = load i32, ptr %nco43, align 4
  %cmp57 = icmp sgt i32 %31, 0
  br i1 %cmp57, label %while.body59, label %while.end83

while.body59:                                     ; preds = %while.cond56
  %32 = load i64, ptr %qv, align 8
  %rem = urem i64 %32, 85
  %conv61 = trunc i64 %rem to i8
  store i8 %conv61, ptr %dv60, align 1
  %div62 = udiv i64 %32, 85
  store i64 %div62, ptr %qv, align 8
  %cmp64 = icmp ult i64 %rem, 4
  %33 = load i8, ptr %dv60, align 1
  %add68 = add i8 %33, 35
  %34 = load i8, ptr %dv60, align 1
  %add74 = add i8 %34, 38
  %cond78.in = select i1 %cmp64, i8 %add68, i8 %add74
  %35 = load ptr, ptr %pOut.addr, align 8
  %36 = load i32, ptr %nco43, align 4
  %dec80 = add nsw i32 %36, -1
  store i32 %dec80, ptr %nco43, align 4
  %idxprom81 = sext i32 %dec80 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %35, i64 %idxprom81
  store i8 %cond78.in, ptr %arrayidx82, align 1
  br label %while.cond56, !llvm.loop !17

while.end83:                                      ; preds = %while.cond56
  %37 = load i32, ptr %nbIn.addr, align 4
  %add84 = add nsw i32 %37, 1
  %38 = load ptr, ptr %pOut.addr, align 8
  %idx.ext = sext i32 %add84 to i64
  %add.ptr85 = getelementptr inbounds i8, ptr %38, i64 %idx.ext
  store ptr %add.ptr85, ptr %pOut.addr, align 8
  br label %if.end86

if.end86:                                         ; preds = %while.end83, %while.end39
  %39 = load ptr, ptr %pSep.addr, align 8
  %tobool87.not = icmp ne ptr %39, null
  %40 = load i32, ptr %nCol, align 4
  %cmp89 = icmp sgt i32 %40, 0
  %or.cond = select i1 %tobool87.not, i1 %cmp89, i1 false
  br i1 %or.cond, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end86
  %41 = load ptr, ptr %pOut.addr, align 8
  %42 = load ptr, ptr %pSep.addr, align 8
  %call92 = call ptr @putcs(ptr noundef %41, ptr noundef %42)
  store ptr %call92, ptr %pOut.addr, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end86
  %43 = load ptr, ptr %pOut.addr, align 8
  store i8 0, ptr %43, align 1
  ret ptr %43
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
  %cmp = icmp sgt i32 %ncIn, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %pIn.addr, align 8
  %1 = load i32, ptr %ncIn.addr, align 4
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp eq i8 %2, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %ncIn.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %ncIn.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load i32, ptr %ncIn.addr, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %while.body, label %while.end67

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pIn.addr, align 8
  %6 = load i32, ptr %ncIn.addr, align 4
  %call = call ptr @skipNonB85(ptr noundef %5, i32 noundef %6)
  store ptr %call, ptr %pUse, align 8
  store i64 0, ptr %qv, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %7 = load i32, ptr %ncIn.addr, align 4
  %8 = trunc i64 %sub.ptr.sub.neg to i32
  %conv7 = add i32 %7, %8
  store i32 %conv7, ptr %ncIn.addr, align 4
  %9 = load ptr, ptr %pUse, align 8
  store ptr %9, ptr %pIn.addr, align 8
  %cmp8 = icmp sgt i32 %conv7, 5
  %10 = load i32, ptr %ncIn.addr, align 4
  %cond = select i1 %cmp8, i32 5, i32 %10
  store i32 %cond, ptr %nti, align 4
  %idxprom10 = sext i32 %cond to i64
  %arrayidx11 = getelementptr inbounds [6 x i8], ptr @fromBase85.nboi, i64 0, i64 %idxprom10
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  store i32 %conv12, ptr %nbo, align 4
  %cmp13 = icmp eq i8 %11, 0
  br i1 %cmp13, label %while.end67, label %while.cond17

while.cond17:                                     ; preds = %while.body, %if.end42
  %12 = load i32, ptr %nti, align 4
  %cmp18 = icmp sgt i32 %12, 0
  br i1 %cmp18, label %while.body20, label %while.end

while.body20:                                     ; preds = %while.cond17
  %13 = load ptr, ptr %pIn.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr, ptr %pIn.addr, align 8
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr %c, align 1
  %cmp22 = icmp sgt i8 %14, 34
  %conv23 = zext i1 %cmp22 to i64
  %cmp25 = icmp sgt i8 %14, 38
  %conv26 = zext i1 %cmp25 to i64
  %add = add nuw nsw i64 %conv23, %conv26
  %cmp28 = icmp sgt i8 %14, 41
  %conv29 = zext i1 %cmp28 to i64
  %add30 = add nuw nsw i64 %add, %conv29
  %15 = load i8, ptr %c, align 1
  %cmp32 = icmp sgt i8 %15, 122
  %conv33 = zext i1 %cmp32 to i64
  %add34 = add nuw nsw i64 %add30, %conv33
  %arrayidx36 = getelementptr inbounds [5 x i8], ptr @b85_cOffset, i64 0, i64 %add34
  %16 = load i8, ptr %arrayidx36, align 1
  store i8 %16, ptr %cdo, align 1
  %17 = load i32, ptr %ncIn.addr, align 4
  %dec37 = add nsw i32 %17, -1
  store i32 %dec37, ptr %ncIn.addr, align 4
  %cmp39 = icmp eq i8 %16, 0
  br i1 %cmp39, label %while.end, label %if.end42

if.end42:                                         ; preds = %while.body20
  %18 = load i64, ptr %qv, align 8
  %mul = mul i64 %18, 85
  %19 = load i8, ptr %c, align 1
  %conv43 = sext i8 %19 to i64
  %20 = load i8, ptr %cdo, align 1
  %conv44 = zext i8 %20 to i64
  %sub45 = sub nsw i64 %conv43, %conv44
  %add47 = add i64 %mul, %sub45
  store i64 %add47, ptr %qv, align 8
  %21 = load i32, ptr %nti, align 4
  %dec48 = add nsw i32 %21, -1
  store i32 %dec48, ptr %nti, align 4
  br label %while.cond17, !llvm.loop !18

while.end:                                        ; preds = %while.body20, %while.cond17
  %22 = load i32, ptr %nti, align 4
  %23 = load i32, ptr %nbo, align 4
  %sub49 = sub nsw i32 %23, %22
  store i32 %sub49, ptr %nbo, align 4
  switch i32 %sub49, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb52
    i32 2, label %sw.bb57
    i32 1, label %sw.bb62
  ]

sw.bb:                                            ; preds = %while.end
  %24 = load i64, ptr %qv, align 8
  %shr = lshr i64 %24, 24
  %conv50 = trunc i64 %shr to i8
  %25 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr51, ptr %pOut.addr, align 8
  store i8 %conv50, ptr %25, align 1
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb, %while.end
  %26 = load i64, ptr %qv, align 8
  %shr53 = lshr i64 %26, 16
  %conv55 = trunc i64 %shr53 to i8
  %27 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr56, ptr %pOut.addr, align 8
  store i8 %conv55, ptr %27, align 1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end
  %28 = load i64, ptr %qv, align 8
  %shr58 = lshr i64 %28, 8
  %conv60 = trunc i64 %shr58 to i8
  %29 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr61, ptr %pOut.addr, align 8
  store i8 %conv60, ptr %29, align 1
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end
  %30 = load i64, ptr %qv, align 8
  %conv64 = trunc i64 %30 to i8
  %31 = load ptr, ptr %pOut.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr65, ptr %pOut.addr, align 8
  store i8 %conv64, ptr %31, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb62, %while.end
  br label %while.cond, !llvm.loop !19

while.end67:                                      ; preds = %while.body, %while.cond
  %32 = load ptr, ptr %pOut.addr, align 8
  ret ptr %32
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
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load i8, ptr %c, align 1
  %3 = load ptr, ptr %pc.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %3, i64 1
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
  br i1 %cmp, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i8, ptr %1, align 1
  store i8 %2, ptr %c, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8, ptr %c, align 1
  %4 = add i8 %3, -35
  %5 = icmp ult i8 %4, 4
  %cmp8 = icmp sgt i8 %3, 41
  %add10 = xor i1 %5, %cmp8
  %cmp12 = icmp slt i8 %3, 123
  %lnot = xor i1 %cmp12, %add10
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %land.lhs.true, %while.cond, %land.rhs
  %7 = load ptr, ptr %s.addr, align 8
  ret ptr %7
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define i32 @pc_inline_source_snapshot_public_repos_sqlite_ext_misc_basexx_1(ptr noundef %db, ptr noundef %pzErr, ptr noundef %pApi) #4 {
entry:
  %call = call i32 @sqlite3_create_function(ptr noundef %db, ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 2623489, ptr noundef null, ptr noundef nonnull @base64, ptr noundef null, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }

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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
