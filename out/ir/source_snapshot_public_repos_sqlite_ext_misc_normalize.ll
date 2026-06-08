; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/normalize.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/normalize.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@sqlite3CtypeMap = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\80\00@\00\00\80\00\00\00\00\00\00\00\00\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\80\00\00\00@\80******\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\00\00\00\00\00@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@sqlite3UpperToLower = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"in(\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"in(select\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"in(with\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"?,?,?\00", align 1
@aiClass = internal constant [256 x i8] c"\1B\1B\1B\1B\1B\1B\1B\1B\1B\07\07\1B\07\07\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\07\0F\08\05\04\16\18\08\11\12\15\14\17\0B\1A\10\03\03\03\03\03\03\03\03\03\03\05\13\0C\0E\0D\06\05\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\09\1B\1B\1B\01\08\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\1B\0A\1B\19\1B\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @sqlite3_normalize(ptr noundef %zSql) #0 {
entry:
  %retval = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %nZ = alloca i64, align 8
  %nSql = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tokenType = alloca i32, align 4
  %n = alloca i64, align 8
  %k = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %nParen = alloca i32, align 4
  store ptr %zSql, ptr %zSql.addr, align 8
  %0 = load ptr, ptr %zSql.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  store i64 %call, ptr %nSql, align 8
  %1 = load i64, ptr %nSql, align 8
  store i64 %1, ptr %nZ, align 8
  %2 = load i64, ptr %nZ, align 8
  %add = add nsw i64 %2, 2
  %call1 = call ptr @sqlite3_malloc64(i64 noundef %add)
  store ptr %call1, ptr %z, align 8
  %3 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.end
  %4 = load ptr, ptr %zSql.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %for.body, label %for.end97

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %zSql.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  %call2 = call i64 @sqlite3GetToken(ptr noundef %add.ptr, ptr noundef %tokenType)
  store i64 %call2, ptr %n, align 8
  %9 = load i32, ptr %tokenType, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %10 = load ptr, ptr %z, align 8
  call void @sqlite3_free(ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %for.body
  %11 = load ptr, ptr %z, align 8
  %12 = load i32, ptr %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 %idxprom5
  store i8 63, ptr %arrayidx6, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body, %for.body
  %13 = load i64, ptr %n, align 8
  %cmp8 = icmp eq i64 %13, 4
  br i1 %cmp8, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %sw.bb7
  %14 = load ptr, ptr %zSql.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idx.ext9 = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %14, i64 %idx.ext9
  %call11 = call i32 @sqlite3_strnicmp(ptr noundef %add.ptr10, ptr noundef @.str, i32 noundef 4)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end52

if.then13:                                        ; preds = %land.lhs.true
  %16 = load i32, ptr %j, align 4
  %cmp14 = icmp sge i32 %16, 3
  br i1 %cmp14, label %land.lhs.true15, label %lor.lhs.false

land.lhs.true15:                                  ; preds = %if.then13
  %17 = load ptr, ptr %z, align 8
  %18 = load i32, ptr %j, align 4
  %idx.ext16 = sext i32 %18 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %17, i64 %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, ptr %add.ptr17, i64 -2
  %call19 = call i32 @strncmp(ptr noundef %add.ptr18, ptr noundef @.str.1, i64 noundef 2)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true21, label %lor.lhs.false

land.lhs.true21:                                  ; preds = %land.lhs.true15
  %19 = load ptr, ptr %z, align 8
  %20 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %20, 3
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %19, i64 %idxprom22
  %21 = load i8, ptr %arrayidx23, align 1
  %idxprom24 = zext i8 %21 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom24
  %22 = load i8, ptr %arrayidx25, align 1
  %conv = zext i8 %22 to i32
  %and = and i32 %conv, 70
  %cmp26 = icmp ne i32 %and, 0
  br i1 %cmp26, label %lor.lhs.false, label %if.then47

lor.lhs.false:                                    ; preds = %land.lhs.true21, %land.lhs.true15, %if.then13
  %23 = load i32, ptr %j, align 4
  %cmp28 = icmp sge i32 %23, 4
  br i1 %cmp28, label %land.lhs.true30, label %if.else

land.lhs.true30:                                  ; preds = %lor.lhs.false
  %24 = load ptr, ptr %z, align 8
  %25 = load i32, ptr %j, align 4
  %idx.ext31 = sext i32 %25 to i64
  %add.ptr32 = getelementptr inbounds i8, ptr %24, i64 %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, ptr %add.ptr32, i64 -3
  %call34 = call i32 @strncmp(ptr noundef %add.ptr33, ptr noundef @.str.2, i64 noundef 3)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.else

land.lhs.true37:                                  ; preds = %land.lhs.true30
  %26 = load ptr, ptr %z, align 8
  %27 = load i32, ptr %j, align 4
  %sub38 = sub nsw i32 %27, 4
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %26, i64 %idxprom39
  %28 = load i8, ptr %arrayidx40, align 1
  %idxprom41 = zext i8 %28 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom41
  %29 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %29 to i32
  %and44 = and i32 %conv43, 70
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.else, label %if.then47

if.then47:                                        ; preds = %land.lhs.true37, %land.lhs.true21
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true37, %land.lhs.true30, %lor.lhs.false
  %30 = load ptr, ptr %z, align 8
  %31 = load i32, ptr %j, align 4
  %inc48 = add nsw i32 %31, 1
  store i32 %inc48, ptr %j, align 4
  %idxprom49 = sext i32 %31 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %30, i64 %idxprom49
  store i8 63, ptr %arrayidx50, align 1
  br label %sw.epilog

if.end51:                                         ; preds = %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %land.lhs.true, %sw.bb7
  %32 = load i32, ptr %j, align 4
  %cmp53 = icmp sgt i32 %32, 0
  br i1 %cmp53, label %land.lhs.true55, label %if.end78

land.lhs.true55:                                  ; preds = %if.end52
  %33 = load ptr, ptr %z, align 8
  %34 = load i32, ptr %j, align 4
  %sub56 = sub nsw i32 %34, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %33, i64 %idxprom57
  %35 = load i8, ptr %arrayidx58, align 1
  %idxprom59 = zext i8 %35 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom59
  %36 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %36 to i32
  %and62 = and i32 %conv61, 70
  %cmp63 = icmp ne i32 %and62, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end78

land.lhs.true65:                                  ; preds = %land.lhs.true55
  %37 = load ptr, ptr %zSql.addr, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds i8, ptr %37, i64 %idxprom66
  %39 = load i8, ptr %arrayidx67, align 1
  %idxprom68 = zext i8 %39 to i64
  %arrayidx69 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom68
  %40 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %40 to i32
  %and71 = and i32 %conv70, 70
  %cmp72 = icmp ne i32 %and71, 0
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %land.lhs.true65
  %41 = load ptr, ptr %z, align 8
  %42 = load i32, ptr %j, align 4
  %inc75 = add nsw i32 %42, 1
  store i32 %inc75, ptr %j, align 4
  %idxprom76 = sext i32 %42 to i64
  %arrayidx77 = getelementptr inbounds i8, ptr %41, i64 %idxprom76
  store i8 32, ptr %arrayidx77, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %land.lhs.true65, %land.lhs.true55, %if.end52
  store i32 0, ptr %k, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc, %if.end78
  %43 = load i32, ptr %k, align 4
  %conv80 = sext i32 %43 to i64
  %44 = load i64, ptr %n, align 8
  %cmp81 = icmp slt i64 %conv80, %44
  br i1 %cmp81, label %for.body83, label %for.end

for.body83:                                       ; preds = %for.cond79
  %45 = load ptr, ptr %zSql.addr, align 8
  %46 = load i32, ptr %i, align 4
  %47 = load i32, ptr %k, align 4
  %add84 = add nsw i32 %46, %47
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %45, i64 %idxprom85
  %48 = load i8, ptr %arrayidx86, align 1
  %idxprom87 = zext i8 %48 to i64
  %arrayidx88 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom87
  %49 = load i8, ptr %arrayidx88, align 1
  %50 = load ptr, ptr %z, align 8
  %51 = load i32, ptr %j, align 4
  %inc89 = add nsw i32 %51, 1
  store i32 %inc89, ptr %j, align 4
  %idxprom90 = sext i32 %51 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %50, i64 %idxprom90
  store i8 %49, ptr %arrayidx91, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body83
  %52 = load i32, ptr %k, align 4
  %inc92 = add nsw i32 %52, 1
  store i32 %inc92, ptr %k, align 4
  br label %for.cond79, !llvm.loop !6

for.end:                                          ; preds = %for.cond79
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %for.end, %if.else, %sw.bb4, %sw.bb
  br label %for.inc93

for.inc93:                                        ; preds = %sw.epilog
  %53 = load i64, ptr %n, align 8
  %54 = load i32, ptr %i, align 4
  %conv94 = sext i32 %54 to i64
  %add95 = add nsw i64 %conv94, %53
  %conv96 = trunc i64 %add95 to i32
  store i32 %conv96, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end97:                                        ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end97
  %55 = load i32, ptr %j, align 4
  %cmp98 = icmp sgt i32 %55, 0
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %56 = load ptr, ptr %z, align 8
  %57 = load i32, ptr %j, align 4
  %sub100 = sub nsw i32 %57, 1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds i8, ptr %56, i64 %idxprom101
  %58 = load i8, ptr %arrayidx102, align 1
  %conv103 = sext i8 %58 to i32
  %cmp104 = icmp eq i32 %conv103, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %59 = phi i1 [ false, %while.cond ], [ %cmp104, %land.rhs ]
  br i1 %59, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %60 = load i32, ptr %j, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %61 = load i32, ptr %j, align 4
  %cmp106 = icmp sgt i32 %61, 0
  br i1 %cmp106, label %land.lhs.true108, label %if.end119

land.lhs.true108:                                 ; preds = %while.end
  %62 = load ptr, ptr %z, align 8
  %63 = load i32, ptr %j, align 4
  %sub109 = sub nsw i32 %63, 1
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds i8, ptr %62, i64 %idxprom110
  %64 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %64 to i32
  %cmp113 = icmp ne i32 %conv112, 59
  br i1 %cmp113, label %if.then115, label %if.end119

if.then115:                                       ; preds = %land.lhs.true108
  %65 = load ptr, ptr %z, align 8
  %66 = load i32, ptr %j, align 4
  %inc116 = add nsw i32 %66, 1
  store i32 %inc116, ptr %j, align 4
  %idxprom117 = sext i32 %66 to i64
  %arrayidx118 = getelementptr inbounds i8, ptr %65, i64 %idxprom117
  store i8 59, ptr %arrayidx118, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %land.lhs.true108, %while.end
  %67 = load ptr, ptr %z, align 8
  %68 = load i32, ptr %j, align 4
  %idxprom120 = sext i32 %68 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %67, i64 %idxprom120
  store i8 0, ptr %arrayidx121, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc253, %if.end119
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %j, align 4
  %cmp123 = icmp slt i32 %69, %70
  br i1 %cmp123, label %for.body125, label %for.end255

for.body125:                                      ; preds = %for.cond122
  %71 = load ptr, ptr %z, align 8
  %72 = load i32, ptr %i, align 4
  %idx.ext126 = sext i32 %72 to i64
  %add.ptr127 = getelementptr inbounds i8, ptr %71, i64 %idx.ext126
  %call128 = call ptr @strstr(ptr noundef %add.ptr127, ptr noundef @.str.3)
  store ptr %call128, ptr %zIn, align 8
  %73 = load ptr, ptr %zIn, align 8
  %cmp129 = icmp eq ptr %73, null
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %for.body125
  br label %for.end255

if.end132:                                        ; preds = %for.body125
  %74 = load ptr, ptr %zIn, align 8
  %75 = load ptr, ptr %z, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %74 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %75 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv133 = trunc i64 %sub.ptr.sub to i32
  %add134 = add nsw i32 %conv133, 3
  %conv135 = sext i32 %add134 to i64
  store i64 %conv135, ptr %n, align 8
  %76 = load i64, ptr %n, align 8
  %tobool136 = icmp ne i64 %76, 0
  br i1 %tobool136, label %land.lhs.true137, label %if.end146

land.lhs.true137:                                 ; preds = %if.end132
  %77 = load ptr, ptr %zIn, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %77, i64 -1
  %78 = load i8, ptr %arrayidx138, align 1
  %idxprom139 = zext i8 %78 to i64
  %arrayidx140 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom139
  %79 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %79 to i32
  %and142 = and i32 %conv141, 70
  %cmp143 = icmp ne i32 %and142, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %land.lhs.true137
  br label %for.inc253

if.end146:                                        ; preds = %land.lhs.true137, %if.end132
  %80 = load ptr, ptr %zIn, align 8
  %call147 = call i32 @strncmp(ptr noundef %80, ptr noundef @.str.4, i64 noundef 9)
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %land.lhs.true150, label %if.end159

land.lhs.true150:                                 ; preds = %if.end146
  %81 = load ptr, ptr %zIn, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %81, i64 9
  %82 = load i8, ptr %arrayidx151, align 1
  %idxprom152 = zext i8 %82 to i64
  %arrayidx153 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom152
  %83 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %83 to i32
  %and155 = and i32 %conv154, 70
  %cmp156 = icmp ne i32 %and155, 0
  br i1 %cmp156, label %if.end159, label %if.then158

if.then158:                                       ; preds = %land.lhs.true150
  br label %for.inc253

if.end159:                                        ; preds = %land.lhs.true150, %if.end146
  %84 = load ptr, ptr %zIn, align 8
  %call160 = call i32 @strncmp(ptr noundef %84, ptr noundef @.str.5, i64 noundef 7)
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %land.lhs.true163, label %if.end172

land.lhs.true163:                                 ; preds = %if.end159
  %85 = load ptr, ptr %zIn, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %85, i64 7
  %86 = load i8, ptr %arrayidx164, align 1
  %idxprom165 = zext i8 %86 to i64
  %arrayidx166 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom165
  %87 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %87 to i32
  %and168 = and i32 %conv167, 70
  %cmp169 = icmp ne i32 %and168, 0
  br i1 %cmp169, label %if.end172, label %if.then171

if.then171:                                       ; preds = %land.lhs.true163
  br label %for.inc253

if.end172:                                        ; preds = %land.lhs.true163, %if.end159
  store i32 1, ptr %nParen, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc201, %if.end172
  %88 = load ptr, ptr %z, align 8
  %89 = load i64, ptr %n, align 8
  %90 = load i32, ptr %k, align 4
  %conv174 = sext i32 %90 to i64
  %add175 = add nsw i64 %89, %conv174
  %arrayidx176 = getelementptr inbounds i8, ptr %88, i64 %add175
  %91 = load i8, ptr %arrayidx176, align 1
  %tobool177 = icmp ne i8 %91, 0
  br i1 %tobool177, label %for.body178, label %for.end203

for.body178:                                      ; preds = %for.cond173
  %92 = load ptr, ptr %z, align 8
  %93 = load i64, ptr %n, align 8
  %94 = load i32, ptr %k, align 4
  %conv179 = sext i32 %94 to i64
  %add180 = add nsw i64 %93, %conv179
  %arrayidx181 = getelementptr inbounds i8, ptr %92, i64 %add180
  %95 = load i8, ptr %arrayidx181, align 1
  %conv182 = sext i8 %95 to i32
  %cmp183 = icmp eq i32 %conv182, 40
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %for.body178
  %96 = load i32, ptr %nParen, align 4
  %inc186 = add nsw i32 %96, 1
  store i32 %inc186, ptr %nParen, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %for.body178
  %97 = load ptr, ptr %z, align 8
  %98 = load i64, ptr %n, align 8
  %99 = load i32, ptr %k, align 4
  %conv188 = sext i32 %99 to i64
  %add189 = add nsw i64 %98, %conv188
  %arrayidx190 = getelementptr inbounds i8, ptr %97, i64 %add189
  %100 = load i8, ptr %arrayidx190, align 1
  %conv191 = sext i8 %100 to i32
  %cmp192 = icmp eq i32 %conv191, 41
  br i1 %cmp192, label %if.then194, label %if.end200

if.then194:                                       ; preds = %if.end187
  %101 = load i32, ptr %nParen, align 4
  %dec195 = add nsw i32 %101, -1
  store i32 %dec195, ptr %nParen, align 4
  %102 = load i32, ptr %nParen, align 4
  %cmp196 = icmp eq i32 %102, 0
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then194
  br label %for.end203

if.end199:                                        ; preds = %if.then194
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end187
  br label %for.inc201

for.inc201:                                       ; preds = %if.end200
  %103 = load i32, ptr %k, align 4
  %inc202 = add nsw i32 %103, 1
  store i32 %inc202, ptr %k, align 4
  br label %for.cond173, !llvm.loop !10

for.end203:                                       ; preds = %if.then198, %for.cond173
  %104 = load i32, ptr %k, align 4
  %cmp204 = icmp slt i32 %104, 5
  br i1 %cmp204, label %if.then206, label %if.else228

if.then206:                                       ; preds = %for.end203
  %105 = load ptr, ptr %z, align 8
  %106 = load i32, ptr %j, align 4
  %107 = load i32, ptr %k, align 4
  %sub207 = sub nsw i32 5, %107
  %add208 = add nsw i32 %106, %sub207
  %add209 = add nsw i32 %add208, 1
  %conv210 = sext i32 %add209 to i64
  %call211 = call ptr @sqlite3_realloc64(ptr noundef %105, i64 noundef %conv210)
  store ptr %call211, ptr %z, align 8
  %108 = load ptr, ptr %z, align 8
  %cmp212 = icmp eq ptr %108, null
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %if.then206
  store ptr null, ptr %retval, align 8
  br label %return

if.end215:                                        ; preds = %if.then206
  %109 = load ptr, ptr %z, align 8
  %110 = load i64, ptr %n, align 8
  %add.ptr216 = getelementptr inbounds i8, ptr %109, i64 %110
  %add.ptr217 = getelementptr inbounds i8, ptr %add.ptr216, i64 5
  %111 = load ptr, ptr %z, align 8
  %112 = load i64, ptr %n, align 8
  %add.ptr218 = getelementptr inbounds i8, ptr %111, i64 %112
  %113 = load i32, ptr %k, align 4
  %idx.ext219 = sext i32 %113 to i64
  %add.ptr220 = getelementptr inbounds i8, ptr %add.ptr218, i64 %idx.ext219
  %114 = load i32, ptr %j, align 4
  %conv221 = sext i32 %114 to i64
  %115 = load i64, ptr %n, align 8
  %116 = load i32, ptr %k, align 4
  %conv222 = sext i32 %116 to i64
  %add223 = add nsw i64 %115, %conv222
  %sub224 = sub nsw i64 %conv221, %add223
  %117 = load ptr, ptr %z, align 8
  %118 = load i64, ptr %n, align 8
  %add.ptr225 = getelementptr inbounds i8, ptr %117, i64 %118
  %add.ptr226 = getelementptr inbounds i8, ptr %add.ptr225, i64 5
  %119 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr226, i1 false, i1 true, i1 false)
  %call227 = call ptr @__memmove_chk(ptr noundef %add.ptr217, ptr noundef %add.ptr220, i64 noundef %sub224, i64 noundef %119) #4
  br label %if.end245

if.else228:                                       ; preds = %for.end203
  %120 = load i32, ptr %k, align 4
  %cmp229 = icmp sgt i32 %120, 5
  br i1 %cmp229, label %if.then231, label %if.end244

if.then231:                                       ; preds = %if.else228
  %121 = load ptr, ptr %z, align 8
  %122 = load i64, ptr %n, align 8
  %add.ptr232 = getelementptr inbounds i8, ptr %121, i64 %122
  %add.ptr233 = getelementptr inbounds i8, ptr %add.ptr232, i64 5
  %123 = load ptr, ptr %z, align 8
  %124 = load i64, ptr %n, align 8
  %add.ptr234 = getelementptr inbounds i8, ptr %123, i64 %124
  %125 = load i32, ptr %k, align 4
  %idx.ext235 = sext i32 %125 to i64
  %add.ptr236 = getelementptr inbounds i8, ptr %add.ptr234, i64 %idx.ext235
  %126 = load i32, ptr %j, align 4
  %conv237 = sext i32 %126 to i64
  %127 = load i64, ptr %n, align 8
  %128 = load i32, ptr %k, align 4
  %conv238 = sext i32 %128 to i64
  %add239 = add nsw i64 %127, %conv238
  %sub240 = sub nsw i64 %conv237, %add239
  %129 = load ptr, ptr %z, align 8
  %130 = load i64, ptr %n, align 8
  %add.ptr241 = getelementptr inbounds i8, ptr %129, i64 %130
  %add.ptr242 = getelementptr inbounds i8, ptr %add.ptr241, i64 5
  %131 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr242, i1 false, i1 true, i1 false)
  %call243 = call ptr @__memmove_chk(ptr noundef %add.ptr233, ptr noundef %add.ptr236, i64 noundef %sub240, i64 noundef %131) #4
  br label %if.end244

if.end244:                                        ; preds = %if.then231, %if.else228
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.end215
  %132 = load i32, ptr %j, align 4
  %133 = load i32, ptr %k, align 4
  %sub246 = sub nsw i32 %132, %133
  %add247 = add nsw i32 %sub246, 5
  store i32 %add247, ptr %j, align 4
  %134 = load ptr, ptr %z, align 8
  %135 = load i32, ptr %j, align 4
  %idxprom248 = sext i32 %135 to i64
  %arrayidx249 = getelementptr inbounds i8, ptr %134, i64 %idxprom248
  store i8 0, ptr %arrayidx249, align 1
  %136 = load ptr, ptr %z, align 8
  %137 = load i64, ptr %n, align 8
  %add.ptr250 = getelementptr inbounds i8, ptr %136, i64 %137
  %138 = load ptr, ptr %z, align 8
  %139 = load i64, ptr %n, align 8
  %add.ptr251 = getelementptr inbounds i8, ptr %138, i64 %139
  %140 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr251, i1 false, i1 true, i1 false)
  %call252 = call ptr @__memcpy_chk(ptr noundef %add.ptr250, ptr noundef @.str.6, i64 noundef 5, i64 noundef %140) #4
  br label %for.inc253

for.inc253:                                       ; preds = %if.end245, %if.then171, %if.then158, %if.then145
  %141 = load i64, ptr %n, align 8
  %conv254 = trunc i64 %141 to i32
  store i32 %conv254, ptr %i, align 4
  br label %for.cond122, !llvm.loop !11

for.end255:                                       ; preds = %if.then131, %for.cond122
  %142 = load ptr, ptr %z, align 8
  store ptr %142, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end255, %if.then214, %sw.bb3, %if.then
  %143 = load ptr, ptr %retval, align 8
  ret ptr %143
}

declare i64 @strlen(ptr noundef) #1

declare ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @sqlite3GetToken(ptr noundef %z, ptr noundef %tokenType) #0 {
entry:
  %retval = alloca i64, align 8
  %z.addr = alloca ptr, align 8
  %tokenType.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  %delim = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store ptr %tokenType, ptr %tokenType.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i8, ptr %0, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @aiClass, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 11, label %sw.bb5
    i32 17, label %sw.bb20
    i32 18, label %sw.bb21
    i32 19, label %sw.bb22
    i32 20, label %sw.bb23
    i32 21, label %sw.bb24
    i32 16, label %sw.bb25
    i32 22, label %sw.bb60
    i32 14, label %sw.bb61
    i32 12, label %sw.bb67
    i32 13, label %sw.bb81
    i32 15, label %sw.bb92
    i32 10, label %sw.bb99
    i32 23, label %sw.bb106
    i32 24, label %sw.bb107
    i32 25, label %sw.bb108
    i32 8, label %sw.bb109
    i32 26, label %sw.bb144
    i32 3, label %sw.bb153
    i32 9, label %sw.bb273
    i32 6, label %sw.bb291
    i32 4, label %sw.bb303
    i32 5, label %sw.bb303
    i32 1, label %sw.bb370
    i32 0, label %sw.bb392
    i32 2, label %sw.bb436
  ]

sw.bb:                                            ; preds = %entry
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 %4
  %5 = load i8, ptr %arrayidx1, align 1
  %idxprom2 = zext i8 %5 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom2
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %and = and i32 %conv4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %tokenType.addr, align 8
  store i32 0, ptr %8, align 4
  %9 = load i64, ptr %i, align 8
  store i64 %9, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  %10 = load ptr, ptr %z.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv7, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb5
  store i64 2, ptr %i, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %if.then
  %12 = load ptr, ptr %z.addr, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  store i32 %conv11, ptr %c, align 4
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond9
  %15 = load i32, ptr %c, align 4
  %cmp14 = icmp ne i32 %15, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond9
  %16 = phi i1 [ false, %for.cond9 ], [ %cmp14, %land.rhs ]
  br i1 %16, label %for.body16, label %for.end19

for.body16:                                       ; preds = %land.end
  br label %for.inc17

for.inc17:                                        ; preds = %for.body16
  %17 = load i64, ptr %i, align 8
  %inc18 = add nsw i64 %17, 1
  store i64 %inc18, ptr %i, align 8
  br label %for.cond9, !llvm.loop !13

for.end19:                                        ; preds = %land.end
  %18 = load ptr, ptr %tokenType.addr, align 8
  store i32 0, ptr %18, align 4
  %19 = load i64, ptr %i, align 8
  store i64 %19, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %sw.bb5
  %20 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %20, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %entry
  %21 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %21, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %entry
  %22 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %22, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %entry
  %23 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %23, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %entry
  %24 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %24, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %entry
  %25 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %25, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %entry
  %26 = load ptr, ptr %z.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %27 to i32
  %cmp28 = icmp ne i32 %conv27, 42
  br i1 %cmp28, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb25
  %28 = load ptr, ptr %z.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false, %sw.bb25
  %30 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %30, align 4
  store i64 1, ptr %retval, align 8
  br label %return

if.end35:                                         ; preds = %lor.lhs.false
  store i64 3, ptr %i, align 8
  %31 = load ptr, ptr %z.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %32 to i32
  store i32 %conv37, ptr %c, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc53, %if.end35
  %33 = load i32, ptr %c, align 4
  %cmp39 = icmp ne i32 %33, 42
  br i1 %cmp39, label %land.rhs46, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %for.cond38
  %34 = load ptr, ptr %z.addr, align 8
  %35 = load i64, ptr %i, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %34, i64 %35
  %36 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %36 to i32
  %cmp44 = icmp ne i32 %conv43, 47
  br i1 %cmp44, label %land.rhs46, label %land.end51

land.rhs46:                                       ; preds = %lor.lhs.false41, %for.cond38
  %37 = load ptr, ptr %z.addr, align 8
  %38 = load i64, ptr %i, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %37, i64 %38
  %39 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %39 to i32
  store i32 %conv48, ptr %c, align 4
  %cmp49 = icmp ne i32 %conv48, 0
  br label %land.end51

land.end51:                                       ; preds = %land.rhs46, %lor.lhs.false41
  %40 = phi i1 [ false, %lor.lhs.false41 ], [ %cmp49, %land.rhs46 ]
  br i1 %40, label %for.body52, label %for.end55

for.body52:                                       ; preds = %land.end51
  br label %for.inc53

for.inc53:                                        ; preds = %for.body52
  %41 = load i64, ptr %i, align 8
  %inc54 = add nsw i64 %41, 1
  store i64 %inc54, ptr %i, align 8
  br label %for.cond38, !llvm.loop !14

for.end55:                                        ; preds = %land.end51
  %42 = load i32, ptr %c, align 4
  %tobool56 = icmp ne i32 %42, 0
  br i1 %tobool56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %for.end55
  %43 = load i64, ptr %i, align 8
  %inc58 = add nsw i64 %43, 1
  store i64 %inc58, ptr %i, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.end55
  %44 = load ptr, ptr %tokenType.addr, align 8
  store i32 0, ptr %44, align 4
  %45 = load i64, ptr %i, align 8
  store i64 %45, ptr %retval, align 8
  br label %return

sw.bb60:                                          ; preds = %entry
  %46 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %46, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb61:                                          ; preds = %entry
  %47 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %47, align 4
  %48 = load ptr, ptr %z.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %49 to i32
  %cmp64 = icmp eq i32 %conv63, 61
  %conv65 = zext i1 %cmp64 to i32
  %add = add nsw i32 1, %conv65
  %conv66 = sext i32 %add to i64
  store i64 %conv66, ptr %retval, align 8
  br label %return

sw.bb67:                                          ; preds = %entry
  %50 = load ptr, ptr %z.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %50, i64 1
  %51 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %51 to i32
  store i32 %conv69, ptr %c, align 4
  %cmp70 = icmp eq i32 %conv69, 61
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %sw.bb67
  %52 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %52, align 4
  store i64 2, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %sw.bb67
  %53 = load i32, ptr %c, align 4
  %cmp73 = icmp eq i32 %53, 62
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else
  %54 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %54, align 4
  store i64 2, ptr %retval, align 8
  br label %return

if.else76:                                        ; preds = %if.else
  %55 = load i32, ptr %c, align 4
  %cmp77 = icmp eq i32 %55, 60
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else76
  %56 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %56, align 4
  store i64 2, ptr %retval, align 8
  br label %return

if.else80:                                        ; preds = %if.else76
  %57 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %57, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb81:                                          ; preds = %entry
  %58 = load ptr, ptr %z.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %58, i64 1
  %59 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %59 to i32
  store i32 %conv83, ptr %c, align 4
  %cmp84 = icmp eq i32 %conv83, 61
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %sw.bb81
  %60 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %60, align 4
  store i64 2, ptr %retval, align 8
  br label %return

if.else87:                                        ; preds = %sw.bb81
  %61 = load i32, ptr %c, align 4
  %cmp88 = icmp eq i32 %61, 62
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.else87
  %62 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %62, align 4
  store i64 2, ptr %retval, align 8
  br label %return

if.else91:                                        ; preds = %if.else87
  %63 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %63, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb92:                                          ; preds = %entry
  %64 = load ptr, ptr %z.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %64, i64 1
  %65 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %65 to i32
  %cmp95 = icmp ne i32 %conv94, 61
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %sw.bb92
  %66 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %66, align 4
  store i64 1, ptr %retval, align 8
  br label %return

if.else98:                                        ; preds = %sw.bb92
  %67 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %67, align 4
  store i64 2, ptr %retval, align 8
  br label %return

sw.bb99:                                          ; preds = %entry
  %68 = load ptr, ptr %z.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %68, i64 1
  %69 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %69 to i32
  %cmp102 = icmp ne i32 %conv101, 124
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %sw.bb99
  %70 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %70, align 4
  store i64 1, ptr %retval, align 8
  br label %return

if.else105:                                       ; preds = %sw.bb99
  %71 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %71, align 4
  store i64 2, ptr %retval, align 8
  br label %return

sw.bb106:                                         ; preds = %entry
  %72 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %72, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb107:                                         ; preds = %entry
  %73 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %73, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb108:                                         ; preds = %entry
  %74 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %74, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.bb109:                                         ; preds = %entry
  %75 = load ptr, ptr %z.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %76 to i32
  store i32 %conv111, ptr %delim, align 4
  store i64 1, ptr %i, align 8
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc131, %sw.bb109
  %77 = load ptr, ptr %z.addr, align 8
  %78 = load i64, ptr %i, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %77, i64 %78
  %79 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %79 to i32
  store i32 %conv114, ptr %c, align 4
  %cmp115 = icmp ne i32 %conv114, 0
  br i1 %cmp115, label %for.body117, label %for.end133

for.body117:                                      ; preds = %for.cond112
  %80 = load i32, ptr %c, align 4
  %81 = load i32, ptr %delim, align 4
  %cmp118 = icmp eq i32 %80, %81
  br i1 %cmp118, label %if.then120, label %if.end130

if.then120:                                       ; preds = %for.body117
  %82 = load ptr, ptr %z.addr, align 8
  %83 = load i64, ptr %i, align 8
  %add121 = add nsw i64 %83, 1
  %arrayidx122 = getelementptr inbounds i8, ptr %82, i64 %add121
  %84 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %84 to i32
  %85 = load i32, ptr %delim, align 4
  %cmp124 = icmp eq i32 %conv123, %85
  br i1 %cmp124, label %if.then126, label %if.else128

if.then126:                                       ; preds = %if.then120
  %86 = load i64, ptr %i, align 8
  %inc127 = add nsw i64 %86, 1
  store i64 %inc127, ptr %i, align 8
  br label %if.end129

if.else128:                                       ; preds = %if.then120
  br label %for.end133

if.end129:                                        ; preds = %if.then126
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %for.body117
  br label %for.inc131

for.inc131:                                       ; preds = %if.end130
  %87 = load i64, ptr %i, align 8
  %inc132 = add nsw i64 %87, 1
  store i64 %inc132, ptr %i, align 8
  br label %for.cond112, !llvm.loop !15

for.end133:                                       ; preds = %if.else128, %for.cond112
  %88 = load i32, ptr %c, align 4
  %cmp134 = icmp eq i32 %88, 39
  br i1 %cmp134, label %if.then136, label %if.else138

if.then136:                                       ; preds = %for.end133
  %89 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %89, align 4
  %90 = load i64, ptr %i, align 8
  %add137 = add nsw i64 %90, 1
  store i64 %add137, ptr %retval, align 8
  br label %return

if.else138:                                       ; preds = %for.end133
  %91 = load i32, ptr %c, align 4
  %cmp139 = icmp ne i32 %91, 0
  br i1 %cmp139, label %if.then141, label %if.else143

if.then141:                                       ; preds = %if.else138
  %92 = load ptr, ptr %tokenType.addr, align 8
  store i32 1, ptr %92, align 4
  %93 = load i64, ptr %i, align 8
  %add142 = add nsw i64 %93, 1
  store i64 %add142, ptr %retval, align 8
  br label %return

if.else143:                                       ; preds = %if.else138
  %94 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %94, align 4
  %95 = load i64, ptr %i, align 8
  store i64 %95, ptr %retval, align 8
  br label %return

sw.bb144:                                         ; preds = %entry
  %96 = load ptr, ptr %z.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %96, i64 1
  %97 = load i8, ptr %arrayidx145, align 1
  %idxprom146 = zext i8 %97 to i64
  %arrayidx147 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom146
  %98 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %98 to i32
  %and149 = and i32 %conv148, 4
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.end152, label %if.then151

if.then151:                                       ; preds = %sw.bb144
  %99 = load ptr, ptr %tokenType.addr, align 8
  store i32 3, ptr %99, align 4
  store i64 1, ptr %retval, align 8
  br label %return

if.end152:                                        ; preds = %sw.bb144
  br label %sw.bb153

sw.bb153:                                         ; preds = %entry, %if.end152
  %100 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %100, align 4
  %101 = load ptr, ptr %z.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %102 to i32
  %cmp156 = icmp eq i32 %conv155, 48
  br i1 %cmp156, label %land.lhs.true, label %if.end186

land.lhs.true:                                    ; preds = %sw.bb153
  %103 = load ptr, ptr %z.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %103, i64 1
  %104 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %104 to i32
  %cmp160 = icmp eq i32 %conv159, 120
  br i1 %cmp160, label %land.lhs.true167, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %land.lhs.true
  %105 = load ptr, ptr %z.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %105, i64 1
  %106 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %106 to i32
  %cmp165 = icmp eq i32 %conv164, 88
  br i1 %cmp165, label %land.lhs.true167, label %if.end186

land.lhs.true167:                                 ; preds = %lor.lhs.false162, %land.lhs.true
  %107 = load ptr, ptr %z.addr, align 8
  %arrayidx168 = getelementptr inbounds i8, ptr %107, i64 2
  %108 = load i8, ptr %arrayidx168, align 1
  %idxprom169 = zext i8 %108 to i64
  %arrayidx170 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom169
  %109 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %109 to i32
  %and172 = and i32 %conv171, 8
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then174, label %if.end186

if.then174:                                       ; preds = %land.lhs.true167
  store i64 3, ptr %i, align 8
  br label %for.cond175

for.cond175:                                      ; preds = %for.inc183, %if.then174
  %110 = load ptr, ptr %z.addr, align 8
  %111 = load i64, ptr %i, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %110, i64 %111
  %112 = load i8, ptr %arrayidx176, align 1
  %idxprom177 = zext i8 %112 to i64
  %arrayidx178 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom177
  %113 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %113 to i32
  %and180 = and i32 %conv179, 8
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %for.body182, label %for.end185

for.body182:                                      ; preds = %for.cond175
  br label %for.inc183

for.inc183:                                       ; preds = %for.body182
  %114 = load i64, ptr %i, align 8
  %inc184 = add nsw i64 %114, 1
  store i64 %inc184, ptr %i, align 8
  br label %for.cond175, !llvm.loop !16

for.end185:                                       ; preds = %for.cond175
  %115 = load i64, ptr %i, align 8
  store i64 %115, ptr %retval, align 8
  br label %return

if.end186:                                        ; preds = %land.lhs.true167, %lor.lhs.false162, %sw.bb153
  store i64 0, ptr %i, align 8
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc195, %if.end186
  %116 = load ptr, ptr %z.addr, align 8
  %117 = load i64, ptr %i, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %116, i64 %117
  %118 = load i8, ptr %arrayidx188, align 1
  %idxprom189 = zext i8 %118 to i64
  %arrayidx190 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom189
  %119 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %119 to i32
  %and192 = and i32 %conv191, 4
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %for.body194, label %for.end197

for.body194:                                      ; preds = %for.cond187
  br label %for.inc195

for.inc195:                                       ; preds = %for.body194
  %120 = load i64, ptr %i, align 8
  %inc196 = add nsw i64 %120, 1
  store i64 %inc196, ptr %i, align 8
  br label %for.cond187, !llvm.loop !17

for.end197:                                       ; preds = %for.cond187
  %121 = load ptr, ptr %z.addr, align 8
  %122 = load i64, ptr %i, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %121, i64 %122
  %123 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %123 to i32
  %cmp200 = icmp eq i32 %conv199, 46
  br i1 %cmp200, label %if.then202, label %if.end211

if.then202:                                       ; preds = %for.end197
  %124 = load i64, ptr %i, align 8
  %inc203 = add nsw i64 %124, 1
  store i64 %inc203, ptr %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then202
  %125 = load ptr, ptr %z.addr, align 8
  %126 = load i64, ptr %i, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %125, i64 %126
  %127 = load i8, ptr %arrayidx204, align 1
  %idxprom205 = zext i8 %127 to i64
  %arrayidx206 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom205
  %128 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %128 to i32
  %and208 = and i32 %conv207, 4
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %129 = load i64, ptr %i, align 8
  %inc210 = add nsw i64 %129, 1
  store i64 %inc210, ptr %i, align 8
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %130 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %130, align 4
  br label %if.end211

if.end211:                                        ; preds = %while.end, %for.end197
  %131 = load ptr, ptr %z.addr, align 8
  %132 = load i64, ptr %i, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %131, i64 %132
  %133 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %133 to i32
  %cmp214 = icmp eq i32 %conv213, 101
  br i1 %cmp214, label %land.lhs.true221, label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %if.end211
  %134 = load ptr, ptr %z.addr, align 8
  %135 = load i64, ptr %i, align 8
  %arrayidx217 = getelementptr inbounds i8, ptr %134, i64 %135
  %136 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %136 to i32
  %cmp219 = icmp eq i32 %conv218, 69
  br i1 %cmp219, label %land.lhs.true221, label %if.end261

land.lhs.true221:                                 ; preds = %lor.lhs.false216, %if.end211
  %137 = load ptr, ptr %z.addr, align 8
  %138 = load i64, ptr %i, align 8
  %add222 = add nsw i64 %138, 1
  %arrayidx223 = getelementptr inbounds i8, ptr %137, i64 %add222
  %139 = load i8, ptr %arrayidx223, align 1
  %idxprom224 = zext i8 %139 to i64
  %arrayidx225 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom224
  %140 = load i8, ptr %arrayidx225, align 1
  %conv226 = zext i8 %140 to i32
  %and227 = and i32 %conv226, 4
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then249, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %land.lhs.true221
  %141 = load ptr, ptr %z.addr, align 8
  %142 = load i64, ptr %i, align 8
  %add230 = add nsw i64 %142, 1
  %arrayidx231 = getelementptr inbounds i8, ptr %141, i64 %add230
  %143 = load i8, ptr %arrayidx231, align 1
  %conv232 = zext i8 %143 to i32
  %cmp233 = icmp eq i32 %conv232, 43
  br i1 %cmp233, label %land.lhs.true241, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false229
  %144 = load ptr, ptr %z.addr, align 8
  %145 = load i64, ptr %i, align 8
  %add236 = add nsw i64 %145, 1
  %arrayidx237 = getelementptr inbounds i8, ptr %144, i64 %add236
  %146 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %146 to i32
  %cmp239 = icmp eq i32 %conv238, 45
  br i1 %cmp239, label %land.lhs.true241, label %if.end261

land.lhs.true241:                                 ; preds = %lor.lhs.false235, %lor.lhs.false229
  %147 = load ptr, ptr %z.addr, align 8
  %148 = load i64, ptr %i, align 8
  %add242 = add nsw i64 %148, 2
  %arrayidx243 = getelementptr inbounds i8, ptr %147, i64 %add242
  %149 = load i8, ptr %arrayidx243, align 1
  %idxprom244 = zext i8 %149 to i64
  %arrayidx245 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom244
  %150 = load i8, ptr %arrayidx245, align 1
  %conv246 = zext i8 %150 to i32
  %and247 = and i32 %conv246, 4
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %if.then249, label %if.end261

if.then249:                                       ; preds = %land.lhs.true241, %land.lhs.true221
  %151 = load i64, ptr %i, align 8
  %add250 = add nsw i64 %151, 2
  store i64 %add250, ptr %i, align 8
  br label %while.cond251

while.cond251:                                    ; preds = %while.body258, %if.then249
  %152 = load ptr, ptr %z.addr, align 8
  %153 = load i64, ptr %i, align 8
  %arrayidx252 = getelementptr inbounds i8, ptr %152, i64 %153
  %154 = load i8, ptr %arrayidx252, align 1
  %idxprom253 = zext i8 %154 to i64
  %arrayidx254 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom253
  %155 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %155 to i32
  %and256 = and i32 %conv255, 4
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %while.body258, label %while.end260

while.body258:                                    ; preds = %while.cond251
  %156 = load i64, ptr %i, align 8
  %inc259 = add nsw i64 %156, 1
  store i64 %inc259, ptr %i, align 8
  br label %while.cond251, !llvm.loop !19

while.end260:                                     ; preds = %while.cond251
  %157 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %157, align 4
  br label %if.end261

if.end261:                                        ; preds = %while.end260, %land.lhs.true241, %lor.lhs.false235, %lor.lhs.false216
  br label %while.cond262

while.cond262:                                    ; preds = %while.body270, %if.end261
  %158 = load ptr, ptr %z.addr, align 8
  %159 = load i64, ptr %i, align 8
  %arrayidx263 = getelementptr inbounds i8, ptr %158, i64 %159
  %160 = load i8, ptr %arrayidx263, align 1
  %idxprom264 = zext i8 %160 to i64
  %arrayidx265 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom264
  %161 = load i8, ptr %arrayidx265, align 1
  %conv266 = zext i8 %161 to i32
  %and267 = and i32 %conv266, 70
  %cmp268 = icmp ne i32 %and267, 0
  br i1 %cmp268, label %while.body270, label %while.end272

while.body270:                                    ; preds = %while.cond262
  %162 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %162, align 4
  %163 = load i64, ptr %i, align 8
  %inc271 = add nsw i64 %163, 1
  store i64 %inc271, ptr %i, align 8
  br label %while.cond262, !llvm.loop !20

while.end272:                                     ; preds = %while.cond262
  %164 = load i64, ptr %i, align 8
  store i64 %164, ptr %retval, align 8
  br label %return

sw.bb273:                                         ; preds = %entry
  store i64 1, ptr %i, align 8
  %165 = load ptr, ptr %z.addr, align 8
  %arrayidx274 = getelementptr inbounds i8, ptr %165, i64 0
  %166 = load i8, ptr %arrayidx274, align 1
  %conv275 = zext i8 %166 to i32
  store i32 %conv275, ptr %c, align 4
  br label %for.cond276

for.cond276:                                      ; preds = %for.inc286, %sw.bb273
  %167 = load i32, ptr %c, align 4
  %cmp277 = icmp ne i32 %167, 93
  br i1 %cmp277, label %land.rhs279, label %land.end284

land.rhs279:                                      ; preds = %for.cond276
  %168 = load ptr, ptr %z.addr, align 8
  %169 = load i64, ptr %i, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %168, i64 %169
  %170 = load i8, ptr %arrayidx280, align 1
  %conv281 = zext i8 %170 to i32
  store i32 %conv281, ptr %c, align 4
  %cmp282 = icmp ne i32 %conv281, 0
  br label %land.end284

land.end284:                                      ; preds = %land.rhs279, %for.cond276
  %171 = phi i1 [ false, %for.cond276 ], [ %cmp282, %land.rhs279 ]
  br i1 %171, label %for.body285, label %for.end288

for.body285:                                      ; preds = %land.end284
  br label %for.inc286

for.inc286:                                       ; preds = %for.body285
  %172 = load i64, ptr %i, align 8
  %inc287 = add nsw i64 %172, 1
  store i64 %inc287, ptr %i, align 8
  br label %for.cond276, !llvm.loop !21

for.end288:                                       ; preds = %land.end284
  %173 = load i32, ptr %c, align 4
  %cmp289 = icmp eq i32 %173, 93
  %174 = zext i1 %cmp289 to i64
  %cond = select i1 %cmp289, i32 1, i32 4
  %175 = load ptr, ptr %tokenType.addr, align 8
  store i32 %cond, ptr %175, align 4
  %176 = load i64, ptr %i, align 8
  store i64 %176, ptr %retval, align 8
  br label %return

sw.bb291:                                         ; preds = %entry
  %177 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %177, align 4
  store i64 1, ptr %i, align 8
  br label %for.cond292

for.cond292:                                      ; preds = %for.inc300, %sw.bb291
  %178 = load ptr, ptr %z.addr, align 8
  %179 = load i64, ptr %i, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %178, i64 %179
  %180 = load i8, ptr %arrayidx293, align 1
  %idxprom294 = zext i8 %180 to i64
  %arrayidx295 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom294
  %181 = load i8, ptr %arrayidx295, align 1
  %conv296 = zext i8 %181 to i32
  %and297 = and i32 %conv296, 4
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %for.body299, label %for.end302

for.body299:                                      ; preds = %for.cond292
  br label %for.inc300

for.inc300:                                       ; preds = %for.body299
  %182 = load i64, ptr %i, align 8
  %inc301 = add nsw i64 %182, 1
  store i64 %inc301, ptr %i, align 8
  br label %for.cond292, !llvm.loop !22

for.end302:                                       ; preds = %for.cond292
  %183 = load i64, ptr %i, align 8
  store i64 %183, ptr %retval, align 8
  br label %return

sw.bb303:                                         ; preds = %entry, %entry
  store i32 0, ptr %n, align 4
  %184 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %184, align 4
  store i64 1, ptr %i, align 8
  br label %for.cond304

for.cond304:                                      ; preds = %for.inc363, %sw.bb303
  %185 = load ptr, ptr %z.addr, align 8
  %186 = load i64, ptr %i, align 8
  %arrayidx305 = getelementptr inbounds i8, ptr %185, i64 %186
  %187 = load i8, ptr %arrayidx305, align 1
  %conv306 = zext i8 %187 to i32
  store i32 %conv306, ptr %c, align 4
  %cmp307 = icmp ne i32 %conv306, 0
  br i1 %cmp307, label %for.body309, label %for.end365

for.body309:                                      ; preds = %for.cond304
  %188 = load i32, ptr %c, align 4
  %conv310 = trunc i32 %188 to i8
  %idxprom311 = zext i8 %conv310 to i64
  %arrayidx312 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom311
  %189 = load i8, ptr %arrayidx312, align 1
  %conv313 = zext i8 %189 to i32
  %and314 = and i32 %conv313, 70
  %cmp315 = icmp ne i32 %and314, 0
  br i1 %cmp315, label %if.then317, label %if.else319

if.then317:                                       ; preds = %for.body309
  %190 = load i32, ptr %n, align 4
  %inc318 = add nsw i32 %190, 1
  store i32 %inc318, ptr %n, align 4
  br label %if.end362

if.else319:                                       ; preds = %for.body309
  %191 = load i32, ptr %c, align 4
  %cmp320 = icmp eq i32 %191, 40
  br i1 %cmp320, label %land.lhs.true322, label %if.else348

land.lhs.true322:                                 ; preds = %if.else319
  %192 = load i32, ptr %n, align 4
  %cmp323 = icmp sgt i32 %192, 0
  br i1 %cmp323, label %if.then325, label %if.else348

if.then325:                                       ; preds = %land.lhs.true322
  br label %do.body

do.body:                                          ; preds = %land.end341, %if.then325
  %193 = load i64, ptr %i, align 8
  %inc326 = add nsw i64 %193, 1
  store i64 %inc326, ptr %i, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %194 = load ptr, ptr %z.addr, align 8
  %195 = load i64, ptr %i, align 8
  %arrayidx327 = getelementptr inbounds i8, ptr %194, i64 %195
  %196 = load i8, ptr %arrayidx327, align 1
  %conv328 = zext i8 %196 to i32
  store i32 %conv328, ptr %c, align 4
  %cmp329 = icmp ne i32 %conv328, 0
  br i1 %cmp329, label %land.lhs.true331, label %land.end341

land.lhs.true331:                                 ; preds = %do.cond
  %197 = load i32, ptr %c, align 4
  %conv332 = trunc i32 %197 to i8
  %idxprom333 = zext i8 %conv332 to i64
  %arrayidx334 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom333
  %198 = load i8, ptr %arrayidx334, align 1
  %conv335 = zext i8 %198 to i32
  %and336 = and i32 %conv335, 1
  %tobool337 = icmp ne i32 %and336, 0
  br i1 %tobool337, label %land.end341, label %land.rhs338

land.rhs338:                                      ; preds = %land.lhs.true331
  %199 = load i32, ptr %c, align 4
  %cmp339 = icmp ne i32 %199, 41
  br label %land.end341

land.end341:                                      ; preds = %land.rhs338, %land.lhs.true331, %do.cond
  %200 = phi i1 [ false, %land.lhs.true331 ], [ false, %do.cond ], [ %cmp339, %land.rhs338 ]
  br i1 %200, label %do.body, label %do.end, !llvm.loop !23

do.end:                                           ; preds = %land.end341
  %201 = load i32, ptr %c, align 4
  %cmp342 = icmp eq i32 %201, 41
  br i1 %cmp342, label %if.then344, label %if.else346

if.then344:                                       ; preds = %do.end
  %202 = load i64, ptr %i, align 8
  %inc345 = add nsw i64 %202, 1
  store i64 %inc345, ptr %i, align 8
  br label %if.end347

if.else346:                                       ; preds = %do.end
  %203 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %203, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.else346, %if.then344
  br label %for.end365

if.else348:                                       ; preds = %land.lhs.true322, %if.else319
  %204 = load i32, ptr %c, align 4
  %cmp349 = icmp eq i32 %204, 58
  br i1 %cmp349, label %land.lhs.true351, label %if.else359

land.lhs.true351:                                 ; preds = %if.else348
  %205 = load ptr, ptr %z.addr, align 8
  %206 = load i64, ptr %i, align 8
  %add352 = add nsw i64 %206, 1
  %arrayidx353 = getelementptr inbounds i8, ptr %205, i64 %add352
  %207 = load i8, ptr %arrayidx353, align 1
  %conv354 = zext i8 %207 to i32
  %cmp355 = icmp eq i32 %conv354, 58
  br i1 %cmp355, label %if.then357, label %if.else359

if.then357:                                       ; preds = %land.lhs.true351
  %208 = load i64, ptr %i, align 8
  %inc358 = add nsw i64 %208, 1
  store i64 %inc358, ptr %i, align 8
  br label %if.end360

if.else359:                                       ; preds = %land.lhs.true351, %if.else348
  br label %for.end365

if.end360:                                        ; preds = %if.then357
  br label %if.end361

if.end361:                                        ; preds = %if.end360
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.then317
  br label %for.inc363

for.inc363:                                       ; preds = %if.end362
  %209 = load i64, ptr %i, align 8
  %inc364 = add nsw i64 %209, 1
  store i64 %inc364, ptr %i, align 8
  br label %for.cond304, !llvm.loop !24

for.end365:                                       ; preds = %if.else359, %if.end347, %for.cond304
  %210 = load i32, ptr %n, align 4
  %cmp366 = icmp eq i32 %210, 0
  br i1 %cmp366, label %if.then368, label %if.end369

if.then368:                                       ; preds = %for.end365
  %211 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %211, align 4
  br label %if.end369

if.end369:                                        ; preds = %if.then368, %for.end365
  %212 = load i64, ptr %i, align 8
  store i64 %212, ptr %retval, align 8
  br label %return

sw.bb370:                                         ; preds = %entry
  store i64 1, ptr %i, align 8
  br label %for.cond371

for.cond371:                                      ; preds = %for.inc379, %sw.bb370
  %213 = load ptr, ptr %z.addr, align 8
  %214 = load i64, ptr %i, align 8
  %arrayidx372 = getelementptr inbounds i8, ptr %213, i64 %214
  %215 = load i8, ptr %arrayidx372, align 1
  %idxprom373 = zext i8 %215 to i64
  %arrayidx374 = getelementptr inbounds [256 x i8], ptr @aiClass, i64 0, i64 %idxprom373
  %216 = load i8, ptr %arrayidx374, align 1
  %conv375 = zext i8 %216 to i32
  %cmp376 = icmp sle i32 %conv375, 1
  br i1 %cmp376, label %for.body378, label %for.end381

for.body378:                                      ; preds = %for.cond371
  br label %for.inc379

for.inc379:                                       ; preds = %for.body378
  %217 = load i64, ptr %i, align 8
  %inc380 = add nsw i64 %217, 1
  store i64 %inc380, ptr %i, align 8
  br label %for.cond371, !llvm.loop !25

for.end381:                                       ; preds = %for.cond371
  %218 = load ptr, ptr %z.addr, align 8
  %219 = load i64, ptr %i, align 8
  %arrayidx382 = getelementptr inbounds i8, ptr %218, i64 %219
  %220 = load i8, ptr %arrayidx382, align 1
  %idxprom383 = zext i8 %220 to i64
  %arrayidx384 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom383
  %221 = load i8, ptr %arrayidx384, align 1
  %conv385 = zext i8 %221 to i32
  %and386 = and i32 %conv385, 70
  %cmp387 = icmp ne i32 %and386, 0
  br i1 %cmp387, label %if.then389, label %if.end391

if.then389:                                       ; preds = %for.end381
  %222 = load i64, ptr %i, align 8
  %inc390 = add nsw i64 %222, 1
  store i64 %inc390, ptr %i, align 8
  br label %sw.epilog

if.end391:                                        ; preds = %for.end381
  %223 = load ptr, ptr %tokenType.addr, align 8
  store i32 1, ptr %223, align 4
  %224 = load i64, ptr %i, align 8
  store i64 %224, ptr %retval, align 8
  br label %return

sw.bb392:                                         ; preds = %entry
  %225 = load ptr, ptr %z.addr, align 8
  %arrayidx393 = getelementptr inbounds i8, ptr %225, i64 1
  %226 = load i8, ptr %arrayidx393, align 1
  %conv394 = zext i8 %226 to i32
  %cmp395 = icmp eq i32 %conv394, 39
  br i1 %cmp395, label %if.then397, label %if.end435

if.then397:                                       ; preds = %sw.bb392
  %227 = load ptr, ptr %tokenType.addr, align 8
  store i32 2, ptr %227, align 4
  store i64 2, ptr %i, align 8
  br label %for.cond398

for.cond398:                                      ; preds = %for.inc406, %if.then397
  %228 = load ptr, ptr %z.addr, align 8
  %229 = load i64, ptr %i, align 8
  %arrayidx399 = getelementptr inbounds i8, ptr %228, i64 %229
  %230 = load i8, ptr %arrayidx399, align 1
  %idxprom400 = zext i8 %230 to i64
  %arrayidx401 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom400
  %231 = load i8, ptr %arrayidx401, align 1
  %conv402 = zext i8 %231 to i32
  %and403 = and i32 %conv402, 8
  %tobool404 = icmp ne i32 %and403, 0
  br i1 %tobool404, label %for.body405, label %for.end408

for.body405:                                      ; preds = %for.cond398
  br label %for.inc406

for.inc406:                                       ; preds = %for.body405
  %232 = load i64, ptr %i, align 8
  %inc407 = add nsw i64 %232, 1
  store i64 %inc407, ptr %i, align 8
  br label %for.cond398, !llvm.loop !26

for.end408:                                       ; preds = %for.cond398
  %233 = load ptr, ptr %z.addr, align 8
  %234 = load i64, ptr %i, align 8
  %arrayidx409 = getelementptr inbounds i8, ptr %233, i64 %234
  %235 = load i8, ptr %arrayidx409, align 1
  %conv410 = zext i8 %235 to i32
  %cmp411 = icmp ne i32 %conv410, 39
  br i1 %cmp411, label %if.then415, label %lor.lhs.false413

lor.lhs.false413:                                 ; preds = %for.end408
  %236 = load i64, ptr %i, align 8
  %rem = srem i64 %236, 2
  %tobool414 = icmp ne i64 %rem, 0
  br i1 %tobool414, label %if.then415, label %if.end429

if.then415:                                       ; preds = %lor.lhs.false413, %for.end408
  %237 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %237, align 4
  br label %while.cond416

while.cond416:                                    ; preds = %while.body426, %if.then415
  %238 = load ptr, ptr %z.addr, align 8
  %239 = load i64, ptr %i, align 8
  %arrayidx417 = getelementptr inbounds i8, ptr %238, i64 %239
  %240 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %240 to i32
  %tobool419 = icmp ne i32 %conv418, 0
  br i1 %tobool419, label %land.rhs420, label %land.end425

land.rhs420:                                      ; preds = %while.cond416
  %241 = load ptr, ptr %z.addr, align 8
  %242 = load i64, ptr %i, align 8
  %arrayidx421 = getelementptr inbounds i8, ptr %241, i64 %242
  %243 = load i8, ptr %arrayidx421, align 1
  %conv422 = zext i8 %243 to i32
  %cmp423 = icmp ne i32 %conv422, 39
  br label %land.end425

land.end425:                                      ; preds = %land.rhs420, %while.cond416
  %244 = phi i1 [ false, %while.cond416 ], [ %cmp423, %land.rhs420 ]
  br i1 %244, label %while.body426, label %while.end428

while.body426:                                    ; preds = %land.end425
  %245 = load i64, ptr %i, align 8
  %inc427 = add nsw i64 %245, 1
  store i64 %inc427, ptr %i, align 8
  br label %while.cond416, !llvm.loop !27

while.end428:                                     ; preds = %land.end425
  br label %if.end429

if.end429:                                        ; preds = %while.end428, %lor.lhs.false413
  %246 = load ptr, ptr %z.addr, align 8
  %247 = load i64, ptr %i, align 8
  %arrayidx430 = getelementptr inbounds i8, ptr %246, i64 %247
  %248 = load i8, ptr %arrayidx430, align 1
  %tobool431 = icmp ne i8 %248, 0
  br i1 %tobool431, label %if.then432, label %if.end434

if.then432:                                       ; preds = %if.end429
  %249 = load i64, ptr %i, align 8
  %inc433 = add nsw i64 %249, 1
  store i64 %inc433, ptr %i, align 8
  br label %if.end434

if.end434:                                        ; preds = %if.then432, %if.end429
  %250 = load i64, ptr %i, align 8
  store i64 %250, ptr %retval, align 8
  br label %return

if.end435:                                        ; preds = %sw.bb392
  br label %sw.bb436

sw.bb436:                                         ; preds = %entry, %if.end435
  store i64 1, ptr %i, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %251 = load ptr, ptr %tokenType.addr, align 8
  store i32 4, ptr %251, align 4
  store i64 1, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %sw.bb436, %if.then389
  br label %while.cond437

while.cond437:                                    ; preds = %while.body445, %sw.epilog
  %252 = load ptr, ptr %z.addr, align 8
  %253 = load i64, ptr %i, align 8
  %arrayidx438 = getelementptr inbounds i8, ptr %252, i64 %253
  %254 = load i8, ptr %arrayidx438, align 1
  %idxprom439 = zext i8 %254 to i64
  %arrayidx440 = getelementptr inbounds [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom439
  %255 = load i8, ptr %arrayidx440, align 1
  %conv441 = zext i8 %255 to i32
  %and442 = and i32 %conv441, 70
  %cmp443 = icmp ne i32 %and442, 0
  br i1 %cmp443, label %while.body445, label %while.end447

while.body445:                                    ; preds = %while.cond437
  %256 = load i64, ptr %i, align 8
  %inc446 = add nsw i64 %256, 1
  store i64 %inc446, ptr %i, align 8
  br label %while.cond437, !llvm.loop !28

while.end447:                                     ; preds = %while.cond437
  %257 = load ptr, ptr %tokenType.addr, align 8
  store i32 1, ptr %257, align 4
  %258 = load i64, ptr %i, align 8
  store i64 %258, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end447, %sw.default, %if.end434, %if.end391, %if.end369, %for.end302, %for.end288, %while.end272, %for.end185, %if.then151, %if.else143, %if.then141, %if.then136, %sw.bb108, %sw.bb107, %sw.bb106, %if.else105, %if.then104, %if.else98, %if.then97, %if.else91, %if.then90, %if.then86, %if.else80, %if.then79, %if.then75, %if.then72, %sw.bb61, %sw.bb60, %if.end59, %if.then34, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %if.end, %for.end19, %for.end
  %259 = load i64, ptr %retval, align 8
  ret i64 %259
}

declare void @sqlite3_free(ptr noundef) #1

declare i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @strstr(ptr noundef, ptr noundef) #1

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
