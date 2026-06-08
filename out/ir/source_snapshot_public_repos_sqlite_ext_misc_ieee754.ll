; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/ieee754.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/ieee754.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { ptr, i32, i32, ptr }

@sqlite3_ieee_init.aFunc = internal constant [9 x %struct.anon] [%struct.anon { ptr @.str, i32 1, i32 0, ptr @ieee754func }, %struct.anon { ptr @.str, i32 2, i32 0, ptr @ieee754func }, %struct.anon { ptr @.str.1, i32 1, i32 1, ptr @ieee754func }, %struct.anon { ptr @.str.2, i32 1, i32 2, ptr @ieee754func }, %struct.anon { ptr @.str.3, i32 1, i32 0, ptr @ieee754func_to_blob }, %struct.anon { ptr @.str.4, i32 1, i32 0, ptr @ieee754func_from_blob }, %struct.anon { ptr @.str.5, i32 1, i32 0, ptr @ieee754func_to_int }, %struct.anon { ptr @.str.6, i32 1, i32 0, ptr @ieee754func_from_int }, %struct.anon { ptr @.str.7, i32 2, i32 0, ptr @ieee754inc }], align 8
@.str = private unnamed_addr constant [8 x i8] c"ieee754\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ieee754_mantissa\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ieee754_exponent\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ieee754_to_blob\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ieee754_from_blob\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ieee754_to_int\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ieee754_from_int\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ieee754_inc\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ieee754(%lld,%d)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_ieee_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %pzErrMsg.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %conv = zext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_ieee_init.aFunc, i64 0, i64 %idxprom
  %zFName = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %7 = load ptr, ptr %zFName, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_ieee_init.aFunc, i64 0, i64 %idxprom4
  %nArg = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 1
  %9 = load i32, ptr %nArg, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_ieee_init.aFunc, i64 0, i64 %idxprom6
  %iAux = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 2
  %11 = load i32, ptr %i, align 4
  %idxprom8 = zext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [9 x %struct.anon], ptr @sqlite3_ieee_init.aFunc, i64 0, i64 %idxprom8
  %xFunc = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 3
  %12 = load ptr, ptr %xFunc, align 8
  %call = call i32 @sqlite3_create_function(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 2097153, ptr noundef %iAux, ptr noundef %12, ptr noundef null, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ieee754func(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %m = alloca i64, align 8
  %a = alloca i64, align 8
  %r = alloca double, align 8
  %e = alloca i32, align 4
  %isNeg = alloca i32, align 4
  %zResult = alloca [100 x i8], align 1
  %x = alloca ptr, align 8
  %i = alloca i32, align 4
  %v = alloca i64, align 8
  %m59 = alloca i64, align 8
  %e60 = alloca i64, align 8
  %a61 = alloca i64, align 8
  %r62 = alloca double, align 8
  %isNeg63 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else58

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp1 = icmp eq i32 %call, 4
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @sqlite3_value_bytes(ptr noundef %4)
  %conv = sext i32 %call3 to i64
  %cmp4 = icmp eq i64 %conv, 8
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @sqlite3_value_blob(ptr noundef %6)
  store ptr %call8, ptr %x, align 8
  store i64 0, ptr %v, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %7 = load i32, ptr %i, align 4
  %conv9 = zext i32 %7 to i64
  %cmp10 = icmp ult i64 %conv9, 8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %v, align 8
  %shl = shl i64 %8, 8
  %9 = load ptr, ptr %x, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %11 to i64
  %or = or i64 %shl, %conv13
  store i64 %or, ptr %v, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %v, i64 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx14, align 8
  %call15 = call double @sqlite3_value_double(ptr noundef %14)
  store double %call15, ptr %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %15 = load double, ptr %r, align 8
  %cmp16 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end
  store i32 1, ptr %isNeg, align 4
  %16 = load double, ptr %r, align 8
  %fneg = fneg double %16
  store double %fneg, ptr %r, align 8
  br label %if.end20

if.else19:                                        ; preds = %if.end
  store i32 0, ptr %isNeg, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %a, ptr align 8 %r, i64 8, i1 false)
  %17 = load i64, ptr %a, align 8
  %cmp21 = icmp eq i64 %17, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end20
  store i32 0, ptr %e, align 4
  store i64 0, ptr %m, align 8
  br label %if.end50

if.else24:                                        ; preds = %if.end20
  %18 = load i64, ptr %a, align 8
  %cmp25 = icmp eq i64 %18, -9223372036854775808
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 -1996, ptr %e, align 4
  store i64 -1, ptr %m, align 8
  br label %if.end49

if.else28:                                        ; preds = %if.else24
  %19 = load i64, ptr %a, align 8
  %shr = ashr i64 %19, 52
  %conv29 = trunc i64 %shr to i32
  store i32 %conv29, ptr %e, align 4
  %20 = load i64, ptr %a, align 8
  %and = and i64 %20, 4503599627370495
  store i64 %and, ptr %m, align 8
  %21 = load i32, ptr %e, align 4
  %cmp30 = icmp eq i32 %21, 0
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else28
  %22 = load i64, ptr %m, align 8
  %shl33 = shl i64 %22, 1
  store i64 %shl33, ptr %m, align 8
  br label %if.end36

if.else34:                                        ; preds = %if.else28
  %23 = load i64, ptr %m, align 8
  %or35 = or i64 %23, 4503599627370496
  store i64 %or35, ptr %m, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end36
  %24 = load i32, ptr %e, align 4
  %cmp37 = icmp slt i32 %24, 1075
  br i1 %cmp37, label %land.lhs.true39, label %land.end

land.lhs.true39:                                  ; preds = %while.cond
  %25 = load i64, ptr %m, align 8
  %cmp40 = icmp sgt i64 %25, 0
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true39
  %26 = load i64, ptr %m, align 8
  %and42 = and i64 %26, 1
  %cmp43 = icmp eq i64 %and42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true39, %while.cond
  %27 = phi i1 [ false, %land.lhs.true39 ], [ false, %while.cond ], [ %cmp43, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, ptr %m, align 8
  %shr45 = ashr i64 %28, 1
  store i64 %shr45, ptr %m, align 8
  %29 = load i32, ptr %e, align 4
  %inc46 = add nsw i32 %29, 1
  store i32 %inc46, ptr %e, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %30 = load i32, ptr %isNeg, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then47, label %if.end48

if.then47:                                        ; preds = %while.end
  %31 = load i64, ptr %m, align 8
  %sub = sub nsw i64 0, %31
  store i64 %sub, ptr %m, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %while.end
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then27
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then23
  %32 = load ptr, ptr %context.addr, align 8
  %call51 = call ptr @sqlite3_user_data(ptr noundef %32)
  %33 = load i32, ptr %call51, align 4
  switch i32 %33, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
    i32 2, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end50
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zResult, i64 0, i64 0
  %34 = load i64, ptr %m, align 8
  %35 = load i32, ptr %e, align 4
  %sub52 = sub nsw i32 %35, 1075
  %call53 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef %arraydecay, ptr noundef @.str.8, i64 noundef %34, i32 noundef %sub52)
  %36 = load ptr, ptr %context.addr, align 8
  %arraydecay54 = getelementptr inbounds [100 x i8], ptr %zResult, i64 0, i64 0
  call void @sqlite3_result_text(ptr noundef %36, ptr noundef %arraydecay54, i32 noundef -1, ptr noundef inttoptr (i64 -1 to ptr))
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end50
  %37 = load ptr, ptr %context.addr, align 8
  %38 = load i64, ptr %m, align 8
  call void @sqlite3_result_int64(ptr noundef %37, i64 noundef %38)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end50
  %39 = load ptr, ptr %context.addr, align 8
  %40 = load i32, ptr %e, align 4
  %sub57 = sub nsw i32 %40, 1075
  call void @sqlite3_result_int(ptr noundef %39, i32 noundef %sub57)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end50, %sw.bb56, %sw.bb55, %sw.bb
  br label %if.end141

if.else58:                                        ; preds = %entry
  store i32 0, ptr %isNeg63, align 4
  %41 = load ptr, ptr %argv.addr, align 8
  %arrayidx64 = getelementptr inbounds ptr, ptr %41, i64 0
  %42 = load ptr, ptr %arrayidx64, align 8
  %call65 = call i64 @sqlite3_value_int64(ptr noundef %42)
  store i64 %call65, ptr %m59, align 8
  %43 = load ptr, ptr %argv.addr, align 8
  %arrayidx66 = getelementptr inbounds ptr, ptr %43, i64 1
  %44 = load ptr, ptr %arrayidx66, align 8
  %call67 = call i64 @sqlite3_value_int64(ptr noundef %44)
  store i64 %call67, ptr %e60, align 8
  %45 = load i64, ptr %e60, align 8
  %cmp68 = icmp sgt i64 %45, 10000
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.else58
  store i64 10000, ptr %e60, align 8
  br label %if.end76

if.else71:                                        ; preds = %if.else58
  %46 = load i64, ptr %e60, align 8
  %cmp72 = icmp slt i64 %46, -10000
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.else71
  store i64 -10000, ptr %e60, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.else71
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then70
  %47 = load i64, ptr %m59, align 8
  %cmp77 = icmp slt i64 %47, 0
  br i1 %cmp77, label %if.then79, label %if.else85

if.then79:                                        ; preds = %if.end76
  %48 = load i64, ptr %m59, align 8
  %cmp80 = icmp slt i64 %48, -9223372036854775807
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  br label %if.end141

if.end83:                                         ; preds = %if.then79
  store i32 1, ptr %isNeg63, align 4
  %49 = load i64, ptr %m59, align 8
  %sub84 = sub nsw i64 0, %49
  store i64 %sub84, ptr %m59, align 8
  br label %if.end96

if.else85:                                        ; preds = %if.end76
  %50 = load i64, ptr %m59, align 8
  %cmp86 = icmp eq i64 %50, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.end95

land.lhs.true88:                                  ; preds = %if.else85
  %51 = load i64, ptr %e60, align 8
  %cmp89 = icmp sgt i64 %51, -1000
  br i1 %cmp89, label %land.lhs.true91, label %if.end95

land.lhs.true91:                                  ; preds = %land.lhs.true88
  %52 = load i64, ptr %e60, align 8
  %cmp92 = icmp slt i64 %52, 1000
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %land.lhs.true91
  %53 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_double(ptr noundef %53, double noundef 0.000000e+00)
  br label %if.end141

if.end95:                                         ; preds = %land.lhs.true91, %land.lhs.true88, %if.else85
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end83
  br label %while.cond97

while.cond97:                                     ; preds = %while.body101, %if.end96
  %54 = load i64, ptr %m59, align 8
  %shr98 = ashr i64 %54, 32
  %and99 = and i64 %shr98, 4292870144
  %tobool100 = icmp ne i64 %and99, 0
  br i1 %tobool100, label %while.body101, label %while.end104

while.body101:                                    ; preds = %while.cond97
  %55 = load i64, ptr %m59, align 8
  %shr102 = ashr i64 %55, 1
  store i64 %shr102, ptr %m59, align 8
  %56 = load i64, ptr %e60, align 8
  %inc103 = add nsw i64 %56, 1
  store i64 %inc103, ptr %e60, align 8
  br label %while.cond97, !llvm.loop !10

while.end104:                                     ; preds = %while.cond97
  br label %while.cond105

while.cond105:                                    ; preds = %while.body114, %while.end104
  %57 = load i64, ptr %m59, align 8
  %cmp106 = icmp ne i64 %57, 0
  br i1 %cmp106, label %land.rhs108, label %land.end113

land.rhs108:                                      ; preds = %while.cond105
  %58 = load i64, ptr %m59, align 8
  %shr109 = ashr i64 %58, 32
  %and110 = and i64 %shr109, 4293918720
  %cmp111 = icmp eq i64 %and110, 0
  br label %land.end113

land.end113:                                      ; preds = %land.rhs108, %while.cond105
  %59 = phi i1 [ false, %while.cond105 ], [ %cmp111, %land.rhs108 ]
  br i1 %59, label %while.body114, label %while.end116

while.body114:                                    ; preds = %land.end113
  %60 = load i64, ptr %m59, align 8
  %shl115 = shl i64 %60, 1
  store i64 %shl115, ptr %m59, align 8
  %61 = load i64, ptr %e60, align 8
  %dec = add nsw i64 %61, -1
  store i64 %dec, ptr %e60, align 8
  br label %while.cond105, !llvm.loop !11

while.end116:                                     ; preds = %land.end113
  %62 = load i64, ptr %e60, align 8
  %add = add nsw i64 %62, 1075
  store i64 %add, ptr %e60, align 8
  %63 = load i64, ptr %e60, align 8
  %cmp117 = icmp sle i64 %63, 0
  br i1 %cmp117, label %if.then119, label %if.else128

if.then119:                                       ; preds = %while.end116
  %64 = load i64, ptr %e60, align 8
  %sub120 = sub nsw i64 1, %64
  %cmp121 = icmp sge i64 %sub120, 64
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.then119
  store i64 0, ptr %m59, align 8
  br label %if.end127

if.else124:                                       ; preds = %if.then119
  %65 = load i64, ptr %e60, align 8
  %sub125 = sub nsw i64 1, %65
  %66 = load i64, ptr %m59, align 8
  %shr126 = ashr i64 %66, %sub125
  store i64 %shr126, ptr %m59, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.else124, %if.then123
  store i64 0, ptr %e60, align 8
  br label %if.end133

if.else128:                                       ; preds = %while.end116
  %67 = load i64, ptr %e60, align 8
  %cmp129 = icmp sgt i64 %67, 2047
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.else128
  store i64 2047, ptr %e60, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.else128
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end127
  %68 = load i64, ptr %m59, align 8
  %and134 = and i64 %68, 4503599627370495
  store i64 %and134, ptr %a61, align 8
  %69 = load i64, ptr %e60, align 8
  %shl135 = shl i64 %69, 52
  %70 = load i64, ptr %a61, align 8
  %or136 = or i64 %70, %shl135
  store i64 %or136, ptr %a61, align 8
  %71 = load i32, ptr %isNeg63, align 4
  %tobool137 = icmp ne i32 %71, 0
  br i1 %tobool137, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.end133
  %72 = load i64, ptr %a61, align 8
  %or139 = or i64 %72, -9223372036854775808
  store i64 %or139, ptr %a61, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end133
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r62, ptr align 8 %a61, i64 8, i1 false)
  %73 = load ptr, ptr %context.addr, align 8
  %74 = load double, ptr %r62, align 8
  call void @sqlite3_result_double(ptr noundef %73, double noundef %74)
  br label %if.end141

if.end141:                                        ; preds = %if.then82, %if.then94, %if.end140, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ieee754func_to_blob(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %v = alloca i64, align 8
  %a = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_type(ptr noundef %4)
  %cmp3 = icmp eq i32 %call2, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx4, align 8
  %call5 = call double @sqlite3_value_double(ptr noundef %6)
  store double %call5, ptr %r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %r, i64 8, i1 false)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4
  %conv = zext i32 %7 to i64
  %cmp6 = icmp ule i64 %conv, 8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %v, align 8
  %and = and i64 %8, 255
  %conv8 = trunc i64 %and to i8
  %9 = load i32, ptr %i, align 4
  %conv9 = zext i32 %9 to i64
  %sub = sub i64 8, %conv9
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr %a, i64 0, i64 %sub
  store i8 %conv8, ptr %arrayidx10, align 1
  %10 = load i64, ptr %v, align 8
  %shr = lshr i64 %10, 8
  store i64 %shr, ptr %v, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %context.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a, i64 0, i64 0
  call void @sqlite3_result_blob(ptr noundef %12, ptr noundef %arraydecay, i32 noundef 8, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ieee754func_from_blob(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %x = alloca ptr, align 8
  %i = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_bytes(ptr noundef %4)
  %conv = sext i32 %call2 to i64
  %cmp3 = icmp eq i64 %conv, 8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call ptr @sqlite3_value_blob(ptr noundef %6)
  store ptr %call6, ptr %x, align 8
  store i64 0, ptr %v, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4
  %conv7 = zext i32 %7 to i64
  %cmp8 = icmp ult i64 %conv7, 8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %v, align 8
  %shl = shl i64 %8, 8
  %9 = load ptr, ptr %x, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %11 to i64
  %or = or i64 %shl, %conv11
  store i64 %or, ptr %v, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %v, i64 8, i1 false)
  %13 = load ptr, ptr %context.addr, align 8
  %14 = load double, ptr %r, align 8
  call void @sqlite3_result_double(ptr noundef %13, double noundef %14)
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ieee754func_to_int(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %v = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call double @sqlite3_value_double(ptr noundef %4)
  store double %call2, ptr %r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %r, i64 8, i1 false)
  %5 = load ptr, ptr %context.addr, align 8
  %6 = load i64, ptr %v, align 8
  call void @sqlite3_result_int64(ptr noundef %5, i64 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ieee754func_from_int(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %v = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i64 @sqlite3_value_int64(ptr noundef %4)
  store i64 %call2, ptr %v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %v, i64 8, i1 false)
  %5 = load ptr, ptr %context.addr, align 8
  %6 = load double, ptr %r, align 8
  call void @sqlite3_result_double(ptr noundef %5, double noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ieee754inc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %r = alloca double, align 8
  %N = alloca i64, align 8
  %m1 = alloca i64, align 8
  %m2 = alloca i64, align 8
  %r2 = alloca double, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call double @sqlite3_value_double(ptr noundef %2)
  store double %call, ptr %r, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i64 @sqlite3_value_int64(ptr noundef %4)
  store i64 %call2, ptr %N, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %m1, ptr align 8 %r, i64 8, i1 false)
  %5 = load i64, ptr %m1, align 8
  %6 = load i64, ptr %N, align 8
  %add = add i64 %5, %6
  store i64 %add, ptr %m2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r2, ptr align 8 %m2, i64 8, i1 false)
  %7 = load ptr, ptr %context.addr, align 8
  %8 = load double, ptr %r2, align 8
  call void @sqlite3_result_double(ptr noundef %7, double noundef %8)
  ret void
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sqlite3_value_type(ptr noundef) #1

declare i32 @sqlite3_value_bytes(ptr noundef) #1

declare ptr @sqlite3_value_blob(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare double @sqlite3_value_double(ptr noundef) #1

declare ptr @sqlite3_user_data(ptr noundef) #1

declare ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) #1

declare void @sqlite3_result_int(ptr noundef, i32 noundef) #1

declare i64 @sqlite3_value_int64(ptr noundef) #1

declare void @sqlite3_result_double(ptr noundef, double noundef) #1

declare void @sqlite3_result_blob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }

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
