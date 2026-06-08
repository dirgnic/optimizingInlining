; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/mmapwarm.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/mmapwarm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [41 x i8] c"BEGIN; SELECT * FROM %s%q%ssqlite_schema\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"PRAGMA %s%q%spage_size\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"sqlite3_mmap_warm_cache: Warmed up %d pages of %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"END\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_mmap_warm(ptr noundef %db, ptr noundef %zDb) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zSql = alloca ptr, align 8
  %pgsz = alloca i32, align 4
  %nTotal = alloca i32, align 4
  %pPgsz = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  %pFd = alloca ptr, align 8
  %iPg = alloca i64, align 8
  %p = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %zSql, align 8
  store i32 0, ptr %pgsz, align 4
  store i32 0, ptr %nTotal, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_get_autocommit(ptr noundef %0)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 21, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zDb.addr, align 8
  %tobool = icmp ne ptr %1, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.1, ptr @.str.2
  %3 = load ptr, ptr %zDb.addr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %zDb.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi ptr [ %4, %cond.true ], [ @.str.2, %cond.false ]
  %5 = load ptr, ptr %zDb.addr, align 8
  %tobool3 = icmp ne ptr %5, null
  %6 = zext i1 %tobool3 to i64
  %cond4 = select i1 %tobool3, ptr @.str.3, ptr @.str.2
  %call5 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str, ptr noundef %cond, ptr noundef %cond2, ptr noundef %cond4)
  store ptr %call5, ptr %zSql, align 8
  %7 = load ptr, ptr %zSql, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %cond.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %cond.end
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %zSql, align 8
  %call9 = call i32 @sqlite3_exec(ptr noundef %8, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call9, ptr %rc, align 4
  %10 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then11, label %if.end39

if.then11:                                        ; preds = %if.end8
  %12 = load ptr, ptr %zDb.addr, align 8
  %tobool12 = icmp ne ptr %12, null
  %13 = zext i1 %tobool12 to i64
  %cond13 = select i1 %tobool12, ptr @.str.1, ptr @.str.2
  %14 = load ptr, ptr %zDb.addr, align 8
  %tobool14 = icmp ne ptr %14, null
  br i1 %tobool14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %if.then11
  %15 = load ptr, ptr %zDb.addr, align 8
  br label %cond.end17

cond.false16:                                     ; preds = %if.then11
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi ptr [ %15, %cond.true15 ], [ @.str.2, %cond.false16 ]
  %16 = load ptr, ptr %zDb.addr, align 8
  %tobool19 = icmp ne ptr %16, null
  %17 = zext i1 %tobool19 to i64
  %cond20 = select i1 %tobool19, ptr @.str.3, ptr @.str.2
  %call21 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.4, ptr noundef %cond13, ptr noundef %cond18, ptr noundef %cond20)
  store ptr %call21, ptr %zSql, align 8
  %18 = load ptr, ptr %zSql, align 8
  %cmp22 = icmp eq ptr %18, null
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %cond.end17
  store i32 7, ptr %rc, align 4
  br label %if.end38

if.else:                                          ; preds = %cond.end17
  store ptr null, ptr %pPgsz, align 8
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %zSql, align 8
  %call24 = call i32 @sqlite3_prepare_v2(ptr noundef %19, ptr noundef %20, i32 noundef -1, ptr noundef %pPgsz, ptr noundef null)
  store i32 %call24, ptr %rc, align 4
  %21 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %21)
  %22 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %22, 0
  br i1 %cmp25, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.else
  %23 = load ptr, ptr %pPgsz, align 8
  %call27 = call i32 @sqlite3_step(ptr noundef %23)
  %cmp28 = icmp eq i32 %call27, 100
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then26
  %24 = load ptr, ptr %pPgsz, align 8
  %call30 = call i32 @sqlite3_column_int(ptr noundef %24, i32 noundef 0)
  store i32 %call30, ptr %pgsz, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then26
  %25 = load ptr, ptr %pPgsz, align 8
  %call32 = call i32 @sqlite3_finalize(ptr noundef %25)
  store i32 %call32, ptr %rc, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.else
  %26 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end33
  %27 = load i32, ptr %pgsz, align 4
  %cmp35 = icmp eq i32 %27, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true
  store i32 1, ptr %rc, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true, %if.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then23
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end8
  %28 = load i32, ptr %rc, align 4
  %cmp40 = icmp eq i32 %28, 0
  br i1 %cmp40, label %if.then41, label %if.end79

if.then41:                                        ; preds = %if.end39
  store ptr null, ptr %pFd, align 8
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %zDb.addr, align 8
  %call42 = call i32 @sqlite3_file_control(ptr noundef %29, ptr noundef %30, i32 noundef 7, ptr noundef %pFd)
  store i32 %call42, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp43 = icmp eq i32 %31, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end73

land.lhs.true44:                                  ; preds = %if.then41
  %32 = load ptr, ptr %pFd, align 8
  %pMethods = getelementptr inbounds %struct.sqlite3_file, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pMethods, align 8
  %iVersion = getelementptr inbounds %struct.sqlite3_io_methods, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %iVersion, align 8
  %cmp45 = icmp sge i32 %34, 3
  br i1 %cmp45, label %if.then46, label %if.end73

if.then46:                                        ; preds = %land.lhs.true44
  store i64 1, ptr %iPg, align 8
  %35 = load ptr, ptr %pFd, align 8
  %pMethods47 = getelementptr inbounds %struct.sqlite3_file, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pMethods47, align 8
  store ptr %36, ptr %p, align 8
  br label %while.body

while.body:                                       ; preds = %if.then46, %if.end65
  %37 = load ptr, ptr %p, align 8
  %xFetch = getelementptr inbounds %struct.sqlite3_io_methods, ptr %37, i32 0, i32 17
  %38 = load ptr, ptr %xFetch, align 8
  %39 = load ptr, ptr %pFd, align 8
  %40 = load i32, ptr %pgsz, align 4
  %conv = sext i32 %40 to i64
  %41 = load i64, ptr %iPg, align 8
  %mul = mul nsw i64 %conv, %41
  %42 = load i32, ptr %pgsz, align 4
  %call48 = call i32 %38(ptr noundef %39, i64 noundef %mul, i32 noundef %42, ptr noundef %pMap)
  store i32 %call48, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %43, 0
  br i1 %cmp49, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %44 = load ptr, ptr %pMap, align 8
  %cmp51 = icmp eq ptr %44, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end54:                                         ; preds = %lor.lhs.false
  %45 = load ptr, ptr %pMap, align 8
  %arrayidx = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx, align 1
  %conv55 = zext i8 %46 to i32
  %47 = load i32, ptr %nTotal, align 4
  %add = add i32 %47, %conv55
  store i32 %add, ptr %nTotal, align 4
  %48 = load ptr, ptr %pMap, align 8
  %49 = load i32, ptr %pgsz, align 4
  %sub = sub nsw i32 %49, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx56 = getelementptr inbounds i8, ptr %48, i64 %idxprom
  %50 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %50 to i32
  %51 = load i32, ptr %nTotal, align 4
  %add58 = add i32 %51, %conv57
  store i32 %add58, ptr %nTotal, align 4
  %52 = load ptr, ptr %p, align 8
  %xUnfetch = getelementptr inbounds %struct.sqlite3_io_methods, ptr %52, i32 0, i32 18
  %53 = load ptr, ptr %xUnfetch, align 8
  %54 = load ptr, ptr %pFd, align 8
  %55 = load i32, ptr %pgsz, align 4
  %conv59 = sext i32 %55 to i64
  %56 = load i64, ptr %iPg, align 8
  %mul60 = mul nsw i64 %conv59, %56
  %57 = load ptr, ptr %pMap, align 8
  %call61 = call i32 %53(ptr noundef %54, i64 noundef %mul60, ptr noundef %57)
  store i32 %call61, ptr %rc, align 4
  %58 = load i32, ptr %rc, align 4
  %cmp62 = icmp ne i32 %58, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end54
  br label %while.end

if.end65:                                         ; preds = %if.end54
  %59 = load i64, ptr %iPg, align 8
  %inc = add nsw i64 %59, 1
  store i64 %inc, ptr %iPg, align 8
  br label %while.body

while.end:                                        ; preds = %if.then64, %if.then53
  %60 = load i64, ptr %iPg, align 8
  %cmp66 = icmp eq i64 %60, 1
  br i1 %cmp66, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %while.end
  br label %cond.end70

cond.false69:                                     ; preds = %while.end
  %61 = load i64, ptr %iPg, align 8
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %cond.true68
  %cond71 = phi i64 [ 0, %cond.true68 ], [ %61, %cond.false69 ]
  %62 = load ptr, ptr %db.addr, align 8
  %63 = load ptr, ptr %zDb.addr, align 8
  %call72 = call ptr @sqlite3_db_filename(ptr noundef %62, ptr noundef %63)
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 0, ptr noundef @.str.5, i64 noundef %cond71, ptr noundef %call72)
  br label %if.end73

if.end73:                                         ; preds = %cond.end70, %land.lhs.true44, %if.then41
  %64 = load ptr, ptr %db.addr, align 8
  %call74 = call i32 @sqlite3_exec(ptr noundef %64, ptr noundef @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call74, ptr %rc2, align 4
  %65 = load i32, ptr %rc, align 4
  %cmp75 = icmp eq i32 %65, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  %66 = load i32, ptr %rc2, align 4
  store i32 %66, ptr %rc, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end73
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end39
  %67 = load i32, ptr %nTotal, align 4
  %68 = load i32, ptr %rc, align 4
  store i32 %68, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end79, %if.then7, %if.then
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

declare i32 @sqlite3_get_autocommit(ptr noundef) #1

declare ptr @sqlite3_mprintf(ptr noundef, ...) #1

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_step(ptr noundef) #1

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #1

declare i32 @sqlite3_finalize(ptr noundef) #1

declare i32 @sqlite3_file_control(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_log(i32 noundef, ptr noundef, ...) #1

declare ptr @sqlite3_db_filename(ptr noundef, ptr noundef) #1

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
