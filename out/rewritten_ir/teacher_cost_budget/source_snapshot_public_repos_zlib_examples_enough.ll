; ModuleID = './out/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_zlib_examples_enough.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/examples/enough.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { i32, i32, i32, i64, i64, %struct.string_t, ptr, ptr, ptr }
%struct.string_t = type { ptr, i64, i64 }
%struct.tab = type { i64, ptr }

@g = global %struct.anon zeroinitializer, align 8
@.str = private unnamed_addr constant [60 x i8] c"invalid arguments, need: [sym >= 2 [root >= 1 [max >= 1]]]\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"abort: code length too long for internal types\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%d symbols cannot be coded in %d bits\0A\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"enough.c\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"g.code != NULL && \22out of memory\22\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"g.size <= (size_t)-1 / n && \22overflow\22\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"g.num != NULL && \22out of memory\22\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"got != (big_t)-1 && sum >= got && \22overflow\22\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%llu total codes for 2 to %d symbols\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c" (%d-bit length limit)\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" (no length limit)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"g.done != NULL && \22out of memory\22\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"cannot handle minimum code lengths > root\00", align 1
@__func__.string_init = private unnamed_addr constant [12 x i8] c"string_init\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"s->str != NULL && \22out of memory\22\00", align 1
@__func__.count = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"syms > left && left > 0 && len < g.max\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"sum != 0\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"maximum of %d table entries for root = %d\0A\00", align 1
@__stdoutp = external global ptr, align 8
@__func__.examine = private unnamed_addr constant [8 x i8] c"examine\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"rem == left\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"(left & 1) == 0\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"<%u, %u, %u>:\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" %d[%d]\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.string_printf = private unnamed_addr constant [14 x i8] c"string_printf\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"ret >= 0 && \22out of memory\22\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"s->size != 0 && \22overflow\22\00", align 1
@__func__.been_here = private unnamed_addr constant [10 x i8] c"been_here\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"vector != NULL && \22out of memory\22\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %syms = alloca i32, align 4
  %bits = alloca i32, align 4
  %word = alloca i64, align 8
  %n = alloca i32, align 4
  %sum = alloca i64, align 8
  %n98 = alloca i32, align 4
  %got = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  call void @string_init(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5))
  store i32 286, ptr %syms, align 4
  store i32 9, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  store i32 15, ptr @g, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr nocapture noundef %2) #10
  store i32 %call, ptr %syms, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr nocapture noundef %5) #10
  store i32 %call4, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %6 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp sgt i32 %6, 3
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then2
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 3
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @atoi(ptr nocapture noundef %8) #10
  store i32 %call8, ptr @g, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then6, %if.then2, %entry
  %9 = load i32, ptr %argc.addr, align 4
  %cmp11 = icmp sgt i32 %9, 4
  %10 = load i32, ptr %syms, align 4
  %cmp12 = icmp slt i32 %10, 2
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  %11 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %cmp14 = icmp slt i32 %11, 1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %cmp14
  %12 = load i32, ptr @g, align 8
  %cmp16 = icmp slt i32 %12, 1
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %cmp16
  br i1 %or.cond6, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  %13 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 @"\01_fputs"(ptr noundef nonnull @.str, ptr noundef %13) #10
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end10
  %14 = load i32, ptr @g, align 8
  %15 = load i32, ptr %syms, align 4
  %cmp20.not = icmp slt i32 %14, %15
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  %16 = load i32, ptr %syms, align 4
  %sub22 = add nsw i32 %16, -1
  store i32 %sub22, ptr @g, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  store i32 0, ptr %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end23
  %storemerge = phi i64 [ 1, %if.end23 ], [ %shl, %for.body ]
  store i64 %storemerge, ptr %word, align 8
  %tobool.not = icmp eq i64 %storemerge, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %17 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %bits, align 4
  %18 = load i64, ptr %word, align 8
  %shl = shl i64 %18, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr @g, align 8
  %20 = load i32, ptr %bits, align 4
  %cmp24 = icmp sgt i32 %19, %20
  br i1 %cmp24, label %if.then30, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %for.end
  %21 = load i32, ptr %syms, align 4
  %sub26 = add nsw i32 %21, -2
  %conv = sext i32 %sub26 to i64
  %22 = load i32, ptr @g, align 8
  %sub27 = add nsw i32 %22, -1
  %sh_prom = zext i32 %sub27 to i64
  %shr = lshr i64 -1, %sh_prom
  %cmp28.not = icmp ugt i64 %shr, %conv
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false25, %for.end
  %23 = load ptr, ptr @__stderrp, align 8
  %call31 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.1, ptr noundef %23) #10
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false25
  %24 = load i32, ptr %syms, align 4
  %sub33 = add nsw i32 %24, -1
  %conv34 = sext i32 %sub33 to i64
  %25 = load i32, ptr @g, align 8
  %sh_prom35 = zext i32 %25 to i64
  %conv34.highbits = lshr i64 %conv34, %sh_prom35
  %cmp38.not = icmp eq i64 %conv34.highbits, 0
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end32
  %26 = load ptr, ptr @__stderrp, align 8
  %27 = load i32, ptr %syms, align 4
  %28 = load i32, ptr @g, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %27, i32 noundef %28) #10
  store i32 1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end32
  %29 = load i32, ptr @g, align 8
  %add = add nsw i32 %29, 1
  %conv43 = sext i32 %add to i64
  %call44 = call ptr @calloc(i64 noundef %conv43, i64 noundef 4) #11
  store ptr %call44, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %cmp45.not = icmp eq ptr %call44, null
  br i1 %cmp45.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end42
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 547, ptr noundef nonnull @.str.5) #12
  unreachable

cond.end:                                         ; preds = %if.end42
  %30 = load i32, ptr %syms, align 4
  %cmp49 = icmp eq i32 %30, 2
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %cond.end
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  br label %if.end97

if.else:                                          ; preds = %cond.end
  %31 = load i32, ptr %syms, align 4
  %shr52 = ashr i32 %31, 1
  %conv53 = sext i32 %shr52 to i64
  store i64 %conv53, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %sub54 = add nsw i32 %31, -1
  %shr55 = ashr i32 %sub54, 1
  store i32 %shr55, ptr %n, align 4
  %conv56 = sext i32 %shr55 to i64
  %mul1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv56, i64 %conv53)
  %mul.ov = extractvalue { i64, i1 } %mul1, 1
  br i1 %mul.ov, label %cond.true65, label %cond.end67

cond.true65:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 556, ptr noundef nonnull @.str.7) #12
  unreachable

cond.end67:                                       ; preds = %if.else
  %32 = load i32, ptr %n, align 4
  %conv68 = sext i32 %32 to i64
  %33 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %mul = mul i64 %33, %conv68
  store i64 %mul, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %34 = load i32, ptr @g, align 8
  %sub69 = add nsw i32 %34, -1
  store i32 %sub69, ptr %n, align 4
  %conv70 = sext i32 %sub69 to i64
  %mul2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv70, i64 %mul)
  %mul.ov3 = extractvalue { i64, i1 } %mul2, 1
  br i1 %mul.ov3, label %cond.true80, label %cond.end82

cond.true80:                                      ; preds = %cond.end67
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 559, ptr noundef nonnull @.str.7) #12
  unreachable

cond.end82:                                       ; preds = %cond.end67
  %35 = load i32, ptr %n, align 4
  %conv83 = sext i32 %35 to i64
  %36 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %mul84 = mul i64 %36, %conv83
  store i64 %mul84, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %call85 = call ptr @calloc(i64 noundef %mul84, i64 noundef 8) #11
  store ptr %call85, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %cmp86.not = icmp eq ptr %call85, null
  br i1 %cmp86.not, label %cond.true94, label %if.end97

cond.true94:                                      ; preds = %cond.end82
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 562, ptr noundef nonnull @.str.8) #12
  unreachable

if.end97:                                         ; preds = %cond.end82, %if.then51
  store i64 0, ptr %sum, align 8
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc118, %if.end97
  %storemerge4 = phi i32 [ 2, %if.end97 ], [ %inc119, %for.inc118 ]
  store i32 %storemerge4, ptr %n98, align 4
  %37 = load i32, ptr %syms, align 4
  %cmp100.not = icmp sgt i32 %storemerge4, %37
  br i1 %cmp100.not, label %for.end120, label %for.body102

for.body102:                                      ; preds = %for.cond99
  %38 = load i32, ptr %n98, align 4
  %call103 = call i64 @count(i32 noundef %38, i32 noundef 2, i32 noundef 1)
  store i64 %call103, ptr %got, align 8
  %39 = load i64, ptr %sum, align 8
  %add104 = add i64 %39, %call103
  store i64 %add104, ptr %sum, align 8
  %cmp105.not = icmp eq i64 %call103, -1
  br i1 %cmp105.not, label %cond.true115, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body102
  %40 = load i64, ptr %sum, align 8
  %41 = load i64, ptr %got, align 8
  %cmp107.not = icmp ult i64 %40, %41
  %spec.select = select i1 %cmp107.not, i1 false, i1 true
  br i1 %spec.select, label %for.inc118, label %cond.true115

cond.true115:                                     ; preds = %for.body102, %land.lhs.true
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 570, ptr noundef nonnull @.str.9) #12
  unreachable

for.inc118:                                       ; preds = %land.lhs.true
  %42 = load i32, ptr %n98, align 4
  %inc119 = add nsw i32 %42, 1
  br label %for.cond99, !llvm.loop !8

for.end120:                                       ; preds = %for.cond99
  %43 = load i64, ptr %sum, align 8
  %44 = load i32, ptr %syms, align 4
  %call121 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %43, i32 noundef %44) #10
  %45 = load i32, ptr @g, align 8
  %sub122 = add nsw i32 %44, -1
  %cmp123 = icmp slt i32 %45, %sub122
  br i1 %cmp123, label %if.then125, label %if.else127

if.then125:                                       ; preds = %for.end120
  %46 = load i32, ptr @g, align 8
  %call126 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %46) #10
  br label %if.end129

if.else127:                                       ; preds = %for.end120
  %call128 = call i32 @puts(ptr noundef nonnull @.str.12) #10
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.then125
  %47 = load i32, ptr %syms, align 4
  %cmp130 = icmp eq i32 %47, 2
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.end129
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  br label %if.end146

if.else133:                                       ; preds = %if.end129
  %48 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %call134 = call ptr @calloc(i64 noundef %48, i64 noundef 16) #11
  store ptr %call134, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %cmp135.not = icmp eq ptr %call134, null
  br i1 %cmp135.not, label %cond.true143, label %if.end146

cond.true143:                                     ; preds = %if.else133
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 583, ptr noundef nonnull @.str.13) #12
  unreachable

if.end146:                                        ; preds = %if.else133, %if.then132
  %49 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %50 = load i32, ptr @g, align 8
  %cmp147 = icmp sgt i32 %49, %50
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end146
  %51 = load i32, ptr @g, align 8
  store i32 %51, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end146
  %52 = load i32, ptr %syms, align 4
  %conv151 = sext i32 %52 to i64
  %53 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add152 = add nsw i32 %53, 1
  %sh_prom153 = zext i32 %add152 to i64
  %conv151.highbits = lshr i64 %conv151, %sh_prom153
  %cmp155 = icmp eq i64 %conv151.highbits, 0
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.end150
  %54 = load i32, ptr %syms, align 4
  call void @enough(i32 noundef %54)
  br label %if.end160

if.else158:                                       ; preds = %if.end150
  %55 = load ptr, ptr @__stderrp, align 8
  %call159 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.14, ptr noundef %55) #10
  br label %if.end160

if.end160:                                        ; preds = %if.else158, %if.then157
  call void @cleanup()
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end160, %if.then40, %if.then30, %if.then17
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define internal void @string_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %s, i64 0, i32 1
  store i64 16, ptr %size, align 8
  %call = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13
  store ptr %call, ptr %s, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.string_init, ptr noundef nonnull @.str.4, i32 noundef 190, ptr noundef nonnull @.str.15) #12
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store i8 0, ptr %1, align 1
  %len.i = getelementptr inbounds %struct.string_t, ptr %0, i64 0, i32 2
  store i64 0, ptr %len.i, align 8
  ret void
}

declare i32 @atoi(ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @count(i32 noundef %syms, i32 noundef %left, i32 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %syms.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %index = alloca i64, align 8
  %got = alloca i64, align 8
  %least = alloca i32, align 4
  %most = alloca i32, align 4
  %sum = alloca i64, align 8
  %use = alloca i32, align 4
  store i32 %syms, ptr %syms.addr, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %cmp = icmp eq i32 %syms, %left
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %syms.addr, align 4
  %1 = load i32, ptr %left.addr, align 4
  %cmp1 = icmp sgt i32 %0, %1
  %2 = load i32, ptr %left.addr, align 4
  %cmp2 = icmp sgt i32 %2, 0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %land.rhs, label %cond.true

land.rhs:                                         ; preds = %if.end
  %3 = load i32, ptr %len.addr, align 4
  %4 = load i32, ptr @g, align 8
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end, %land.rhs
  call void @__assert_rtn(ptr noundef nonnull @__func__.count, ptr noundef nonnull @.str.4, i32 noundef 267, ptr noundef nonnull @.str.16) #12
  unreachable

cond.end:                                         ; preds = %land.rhs
  %5 = load i32, ptr %syms.addr, align 4
  %6 = load i32, ptr %left.addr, align 4
  %7 = load i32, ptr %len.addr, align 4
  %call = call i64 @map(i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store i64 %call, ptr %index, align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %call
  %9 = load i64, ptr %arrayidx, align 8
  store i64 %9, ptr %got, align 8
  %tobool4.not = icmp eq i64 %9, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %cond.end
  %10 = load i64, ptr %got, align 8
  store i64 %10, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %cond.end
  %11 = load i32, ptr %left.addr, align 4
  %shl = shl i32 %11, 1
  %12 = load i32, ptr %syms.addr, align 4
  %sub = sub nsw i32 %shl, %12
  %cmp7 = icmp slt i32 %sub, 0
  %spec.select = select i1 %cmp7, i32 0, i32 %sub
  store i32 %spec.select, ptr %least, align 4
  %13 = load i32, ptr %left.addr, align 4
  %conv11 = sext i32 %13 to i64
  %14 = load i32, ptr @g, align 8
  %15 = load i32, ptr %len.addr, align 4
  %sub12 = sub nsw i32 %14, %15
  %sh_prom = zext i32 %sub12 to i64
  %shl13 = shl i64 %conv11, %sh_prom
  %16 = load i32, ptr %syms.addr, align 4
  %conv14 = sext i32 %16 to i64
  %sub15 = sub i64 %shl13, %conv14
  %17 = load i32, ptr @g, align 8
  %18 = load i32, ptr %len.addr, align 4
  %sub16 = sub nsw i32 %17, %18
  %sh_prom17 = zext i32 %sub16 to i64
  %notmask = shl nsw i64 -1, %sh_prom17
  %sub19 = xor i64 %notmask, -1
  %div = udiv i64 %sub15, %sub19
  %conv20 = trunc i64 %div to i32
  store i32 %conv20, ptr %most, align 4
  store i64 0, ptr %sum, align 8
  %19 = load i32, ptr %least, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %storemerge = phi i32 [ %19, %if.end6 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %use, align 4
  %20 = load i32, ptr %most, align 4
  %cmp21.not = icmp sgt i32 %storemerge, %20
  br i1 %cmp21.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %21 = load i32, ptr %syms.addr, align 4
  %22 = load i32, ptr %use, align 4
  %sub23 = sub nsw i32 %21, %22
  %23 = load i32, ptr %left.addr, align 4
  %sub24 = sub nsw i32 %23, %22
  %shl25 = shl i32 %sub24, 1
  %24 = load i32, ptr %len.addr, align 4
  %add = add nsw i32 %24, 1
  %call26 = call i64 @count(i32 noundef %sub23, i32 noundef %shl25, i32 noundef %add)
  store i64 %call26, ptr %got, align 8
  %25 = load i64, ptr %sum, align 8
  %add27 = add i64 %25, %call26
  store i64 %add27, ptr %sum, align 8
  %cmp28 = icmp eq i64 %call26, -1
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %26 = load i64, ptr %sum, align 8
  %27 = load i64, ptr %got, align 8
  %cmp30 = icmp ult i64 %26, %27
  br i1 %cmp30, label %if.then32, label %for.inc

if.then32:                                        ; preds = %lor.lhs.false, %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %lor.lhs.false
  %28 = load i32, ptr %use, align 4
  %inc = add nsw i32 %28, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %29 = load i64, ptr %sum, align 8
  %cmp34.not = icmp eq i64 %29, 0
  br i1 %cmp34.not, label %cond.true40, label %cond.end42

cond.true40:                                      ; preds = %for.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.count, ptr noundef nonnull @.str.4, i32 noundef 297, ptr noundef nonnull @.str.17) #12
  unreachable

cond.end42:                                       ; preds = %for.end
  %30 = load i64, ptr %sum, align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %32 = load i64, ptr %index, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %31, i64 %32
  store i64 %30, ptr %arrayidx43, align 8
  store i64 %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end42, %if.then32, %if.then5, %if.then
  %33 = load i64, ptr %retval, align 8
  ret i64 %33
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @enough(i32 noundef %syms) #0 {
entry:
  %syms.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %left = alloca i32, align 4
  %index = alloca i64, align 8
  store i32 %syms, ptr %syms.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %0 = load i32, ptr @g, align 8
  %cmp.not = icmp sgt i32 %storemerge, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %2 = load i32, ptr %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  store i8 0, ptr %4, align 1
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5, i32 2), align 8
  %5 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %shl = shl i32 1, %5
  store i32 %shl, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %6 = load i32, ptr @g, align 8
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.cond3, label %if.end34

for.cond3:                                        ; preds = %for.end, %for.inc31
  %storemerge1 = phi i32 [ %inc32, %for.inc31 ], [ 3, %for.end ]
  store i32 %storemerge1, ptr %n2, align 4
  %7 = load i32, ptr %syms.addr, align 4
  %cmp4.not = icmp sgt i32 %storemerge1, %7
  br i1 %cmp4.not, label %if.end34, label %for.cond6

for.cond6:                                        ; preds = %for.cond3, %for.inc28
  %storemerge2 = phi i32 [ %add29, %for.inc28 ], [ 2, %for.cond3 ]
  store i32 %storemerge2, ptr %left, align 4
  %8 = load i32, ptr %n2, align 4
  %cmp7 = icmp slt i32 %storemerge2, %8
  br i1 %cmp7, label %for.body8, label %for.inc31

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, ptr %n2, align 4
  %10 = load i32, ptr %left, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add = add nsw i32 %11, 1
  %call = call i64 @map(i32 noundef %9, i32 noundef %10, i32 noundef %add)
  store i64 %call, ptr %index, align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add9 = add nsw i32 %12, 1
  %13 = load i32, ptr @g, align 8
  %cmp10 = icmp slt i32 %add9, %13
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %14 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %15 = load i64, ptr %index, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %14, i64 %15
  %16 = load i64, ptr %arrayidx11, align 8
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %if.end, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %17 = load i32, ptr %n2, align 4
  %18 = load i32, ptr %left, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add13 = add nsw i32 %19, 1
  %shl14 = shl i32 1, %19
  call void @examine(i32 noundef %17, i32 noundef %18, i32 noundef %add13, i32 noundef %shl14, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true, %for.body8
  %20 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %21 = load i64, ptr %index, align 8
  %sub = add i64 %21, -1
  %arrayidx15 = getelementptr inbounds i64, ptr %20, i64 %sub
  %22 = load i64, ptr %arrayidx15, align 8
  %tobool16.not = icmp eq i64 %22, 0
  br i1 %tobool16.not, label %for.inc28, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end
  %23 = load i32, ptr %n2, align 4
  %24 = load i32, ptr %left, align 4
  %shl18 = shl i32 %24, 1
  %cmp19.not = icmp sgt i32 %23, %shl18
  br i1 %cmp19.not, label %for.inc28, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  %25 = load i32, ptr %n2, align 4
  %26 = load i32, ptr %left, align 4
  %sub21 = sub nsw i32 %25, %26
  %shl22 = shl i32 %sub21, 1
  %sub23 = sub nsw i32 %25, %26
  %shl24 = shl i32 %sub23, 1
  %27 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add25 = add nsw i32 %27, 1
  %shl26 = shl i32 1, %27
  call void @examine(i32 noundef %shl22, i32 noundef %shl24, i32 noundef %add25, i32 noundef %shl26, i32 noundef 0)
  br label %for.inc28

for.inc28:                                        ; preds = %if.end, %land.lhs.true17, %if.then20
  %28 = load i32, ptr %left, align 4
  %add29 = add nsw i32 %28, 2
  br label %for.cond6, !llvm.loop !11

for.inc31:                                        ; preds = %for.cond6
  %29 = load i32, ptr %n2, align 4
  %inc32 = add nsw i32 %29, 1
  br label %for.cond3, !llvm.loop !12

if.end34:                                         ; preds = %for.cond3, %for.end
  %30 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %31 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, i32 noundef %30, i32 noundef %31) #10
  %32 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  %33 = load ptr, ptr @__stdoutp, align 8
  %call36 = call i32 @"\01_fputs"(ptr noundef %32, ptr noundef %33) #10
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @cleanup() #0 {
entry:
  %n = alloca i64, align 8
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end4, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  store i64 %storemerge, ptr %n, align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %cmp1 = icmp ult i64 %storemerge, %1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %3 = load i64, ptr %n, align 8
  %arrayidx = getelementptr inbounds %struct.tab, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %6 = load i64, ptr %n, align 8
  %vec = getelementptr inbounds %struct.tab, ptr %5, i64 %6, i32 1
  %7 = load ptr, ptr %vec, align 8
  call void @free(ptr noundef %7) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then2
  %8 = load i64, ptr %n, align 8
  %inc = add i64 %8, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  call void @free(ptr noundef %9) #10
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry
  %10 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  call void @free(ptr noundef %10) #10
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  call void @free(ptr noundef %11) #10
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  call void @free(ptr noundef %12) #10
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5, i32 1), align 8
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5, i32 2), align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal i64 @map(i32 noundef %syms, i32 noundef %left, i32 noundef %len) #0 {
entry:
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %sub = add nsw i32 %syms, -1
  %shr = ashr i32 %sub, 1
  %conv = sext i32 %shr to i64
  %sub1 = add nsw i32 %syms, -2
  %shr2 = ashr i32 %sub1, 1
  %conv3 = sext i32 %shr2 to i64
  %mul = mul nsw i64 %conv, %conv3
  %0 = load i32, ptr %left.addr, align 4
  %shr4 = ashr i32 %0, 1
  %conv5 = sext i32 %shr4 to i64
  %add = add nsw i64 %mul, %conv5
  %sub6 = add nsw i64 %add, -1
  %1 = load i32, ptr @g, align 8
  %sub7 = add nsw i32 %1, -1
  %conv8 = sext i32 %sub7 to i64
  %mul9 = mul i64 %sub6, %conv8
  %2 = load i32, ptr %len.addr, align 4
  %conv10 = sext i32 %2 to i64
  %add11 = add i64 %mul9, %conv10
  %sub12 = add i64 %add11, -1
  ret i64 %sub12
}

; Function Attrs: nounwind ssp uwtable
define internal void @examine(i32 noundef %syms, i32 noundef %left, i32 noundef %len, i32 noundef %mem, i32 noundef %rem) #0 {
entry:
  %syms.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %mem.addr = alloca i32, align 4
  %rem.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %bits32 = alloca i32, align 4
  %least = alloca i32, align 4
  %most = alloca i32, align 4
  %use = alloca i32, align 4
  store i32 %syms, ptr %syms.addr, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %mem, ptr %mem.addr, align 4
  store i32 %rem, ptr %rem.addr, align 4
  %cmp = icmp eq i32 %syms, %left
  br i1 %cmp, label %if.then, label %if.end50

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %left.addr, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %2 = load i32, ptr %len.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i32, ptr %rem.addr, align 4
  %4 = load i32, ptr %left.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %rem.addr, align 4
  %6 = load i32, ptr %left.addr, align 4
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %left.addr, align 4
  %7 = load i32, ptr %len.addr, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub2 = sub nsw i32 %7, %8
  %shl = shl i32 1, %sub2
  store i32 %shl, ptr %rem.addr, align 4
  %9 = load i32, ptr %mem.addr, align 4
  %add = add nsw i32 %9, %shl
  store i32 %add, ptr %mem.addr, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %rem.addr, align 4
  %11 = load i32, ptr %left.addr, align 4
  %cmp3.not = icmp eq i32 %10, %11
  br i1 %cmp3.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %while.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.examine, ptr noundef nonnull @.str.4, i32 noundef 373, ptr noundef nonnull @.str.19) #12
  unreachable

cond.end:                                         ; preds = %while.end
  %12 = load i32, ptr %mem.addr, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %cmp4.not = icmp slt i32 %12, %13
  br i1 %cmp4.not, label %if.end47, label %if.then6

if.then6:                                         ; preds = %cond.end
  %14 = load i32, ptr %mem.addr, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %cmp7 = icmp sgt i32 %14, %15
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %16 = load i32, ptr %mem.addr, align 4
  store i32 %16, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %17 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  store i8 0, ptr %17, align 1
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5, i32 2), align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  store i32 0, ptr %syms.addr, align 4
  %18 = load i32, ptr @g, align 8
  %shl10 = shl i32 1, %18
  store i32 %shl10, ptr %left.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end27, %if.end
  %storemerge2 = phi i32 [ %18, %if.end ], [ %dec, %cond.end27 ]
  store i32 %storemerge2, ptr %bits, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %cmp11 = icmp sgt i32 %storemerge2, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %21 = load i32, ptr %bits, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 %idxprom13
  %22 = load i32, ptr %arrayidx14, align 4
  %23 = load i32, ptr %syms.addr, align 4
  %add15 = add nsw i32 %23, %22
  store i32 %add15, ptr %syms.addr, align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %25 = load i32, ptr %bits, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %24, i64 %idxprom16
  %26 = load i32, ptr %arrayidx17, align 4
  %27 = load i32, ptr %left.addr, align 4
  %sub18 = sub nsw i32 %27, %26
  store i32 %sub18, ptr %left.addr, align 4
  %and = and i32 %sub18, 1
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %cond.end27, label %cond.true25

cond.true25:                                      ; preds = %for.body
  call void @__assert_rtn(ptr noundef nonnull @__func__.examine, ptr noundef nonnull @.str.4, i32 noundef 390, ptr noundef nonnull @.str.20) #12
  unreachable

cond.end27:                                       ; preds = %for.body
  %28 = load i32, ptr %left.addr, align 4
  %shr = ashr i32 %28, 1
  store i32 %shr, ptr %left.addr, align 4
  %29 = load i32, ptr %bits, align 4
  %dec = add nsw i32 %29, -1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %syms.addr, align 4
  %31 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add28 = add nsw i32 %31, 1
  %shl29 = shl i32 1, %31
  %32 = load i32, ptr %left.addr, align 4
  %sub30 = sub nsw i32 %shl29, %32
  %shl31 = shl i32 %sub30, 1
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr noundef nonnull @.str.21, i32 noundef %30, i32 noundef %add28, i32 noundef %shl31)
  %33 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %for.end
  %storemerge3.in = phi i32 [ %33, %for.end ], [ %41, %for.inc45 ]
  %storemerge3 = add nsw i32 %storemerge3.in, 1
  store i32 %storemerge3, ptr %bits32, align 4
  %34 = load i32, ptr @g, align 8
  %cmp35.not.not = icmp slt i32 %storemerge3.in, %34
  br i1 %cmp35.not.not, label %for.body37, label %for.end46

for.body37:                                       ; preds = %for.cond34
  %35 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %36 = load i32, ptr %bits32, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %35, i64 %idxprom38
  %37 = load i32, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq i32 %37, 0
  br i1 %tobool40.not, label %for.inc45, label %if.then41

if.then41:                                        ; preds = %for.body37
  %38 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %39 = load i32, ptr %bits32, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %38, i64 %idxprom42
  %40 = load i32, ptr %arrayidx43, align 4
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr noundef nonnull @.str.22, i32 noundef %40, i32 noundef %39)
  br label %for.inc45

for.inc45:                                        ; preds = %for.body37, %if.then41
  %41 = load i32, ptr %bits32, align 4
  br label %for.cond34, !llvm.loop !16

for.end46:                                        ; preds = %for.cond34
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr noundef nonnull @.str.23)
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %cond.end
  %42 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %43 = load i32, ptr %len.addr, align 4
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %42, i64 %idxprom48
  store i32 0, ptr %arrayidx49, align 4
  br label %return

if.end50:                                         ; preds = %entry
  %44 = load i32, ptr %syms.addr, align 4
  %45 = load i32, ptr %left.addr, align 4
  %46 = load i32, ptr %len.addr, align 4
  %47 = load i32, ptr %mem.addr, align 4
  %48 = load i32, ptr %rem.addr, align 4
  %call = call i32 @been_here(i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %48)
  %tobool51.not = icmp eq i32 %call, 0
  br i1 %tobool51.not, label %if.end53, label %return

if.end53:                                         ; preds = %if.end50
  %49 = load i32, ptr %left.addr, align 4
  %shl54 = shl i32 %49, 1
  %50 = load i32, ptr %syms.addr, align 4
  %sub55 = sub nsw i32 %shl54, %50
  %cmp56 = icmp slt i32 %sub55, 0
  %spec.select = select i1 %cmp56, i32 0, i32 %sub55
  store i32 %spec.select, ptr %least, align 4
  %51 = load i32, ptr %left.addr, align 4
  %conv60 = sext i32 %51 to i64
  %52 = load i32, ptr @g, align 8
  %53 = load i32, ptr %len.addr, align 4
  %sub61 = sub nsw i32 %52, %53
  %sh_prom = zext i32 %sub61 to i64
  %shl62 = shl i64 %conv60, %sh_prom
  %54 = load i32, ptr %syms.addr, align 4
  %conv63 = sext i32 %54 to i64
  %sub64 = sub i64 %shl62, %conv63
  %55 = load i32, ptr @g, align 8
  %56 = load i32, ptr %len.addr, align 4
  %sub65 = sub nsw i32 %55, %56
  %sh_prom66 = zext i32 %sub65 to i64
  %notmask = shl nsw i64 -1, %sh_prom66
  %sub68 = xor i64 %notmask, -1
  %div = udiv i64 %sub64, %sub68
  %conv69 = trunc i64 %div to i32
  store i32 %conv69, ptr %most, align 4
  %57 = load i32, ptr %least, align 4
  store i32 %57, ptr %use, align 4
  br label %while.cond70

while.cond70:                                     ; preds = %while.body73, %if.end53
  %58 = load i32, ptr %rem.addr, align 4
  %59 = load i32, ptr %use, align 4
  %cmp71 = icmp slt i32 %58, %59
  br i1 %cmp71, label %while.body73, label %while.end78

while.body73:                                     ; preds = %while.cond70
  %60 = load i32, ptr %rem.addr, align 4
  %61 = load i32, ptr %use, align 4
  %sub74 = sub nsw i32 %61, %60
  store i32 %sub74, ptr %use, align 4
  %62 = load i32, ptr %len.addr, align 4
  %63 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub75 = sub nsw i32 %62, %63
  %shl76 = shl i32 1, %sub75
  store i32 %shl76, ptr %rem.addr, align 4
  %64 = load i32, ptr %mem.addr, align 4
  %add77 = add nsw i32 %64, %shl76
  store i32 %add77, ptr %mem.addr, align 4
  br label %while.cond70, !llvm.loop !17

while.end78:                                      ; preds = %while.cond70
  %65 = load i32, ptr %use, align 4
  %66 = load i32, ptr %rem.addr, align 4
  %sub79 = sub nsw i32 %66, %65
  store i32 %sub79, ptr %rem.addr, align 4
  %67 = load i32, ptr %least, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %if.end104, %while.end78
  %storemerge = phi i32 [ %67, %while.end78 ], [ %inc107, %if.end104 ]
  store i32 %storemerge, ptr %use, align 4
  %68 = load i32, ptr %most, align 4
  %cmp81.not = icmp sgt i32 %storemerge, %68
  br i1 %cmp81.not, label %for.end108, label %for.body83

for.body83:                                       ; preds = %for.cond80
  %69 = load i32, ptr %use, align 4
  %70 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %71 = load i32, ptr %len.addr, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %70, i64 %idxprom84
  store i32 %69, ptr %arrayidx85, align 4
  %72 = load i32, ptr %syms.addr, align 4
  %73 = load i32, ptr %use, align 4
  %sub86 = sub nsw i32 %72, %73
  %74 = load i32, ptr %left.addr, align 4
  %sub87 = sub nsw i32 %74, %73
  %shl88 = shl i32 %sub87, 1
  %75 = load i32, ptr %len.addr, align 4
  %add89 = add nsw i32 %75, 1
  %76 = load i32, ptr %mem.addr, align 4
  %77 = load i32, ptr %rem.addr, align 4
  %tobool90.not = icmp eq i32 %77, 0
  %78 = load i32, ptr %len.addr, align 4
  %79 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub92 = sub nsw i32 %78, %79
  %shl93 = shl i32 1, %sub92
  %cond = select i1 %tobool90.not, i32 0, i32 %shl93
  %add96 = add nsw i32 %76, %cond
  %80 = load i32, ptr %rem.addr, align 4
  %shl97 = shl i32 %80, 1
  call void @examine(i32 noundef %sub86, i32 noundef %shl88, i32 noundef %add89, i32 noundef %add96, i32 noundef %shl97)
  %cmp98 = icmp eq i32 %80, 0
  br i1 %cmp98, label %if.then100, label %if.end104

if.then100:                                       ; preds = %for.body83
  %81 = load i32, ptr %len.addr, align 4
  %82 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub101 = sub nsw i32 %81, %82
  %shl102 = shl i32 1, %sub101
  store i32 %shl102, ptr %rem.addr, align 4
  %83 = load i32, ptr %mem.addr, align 4
  %add103 = add nsw i32 %83, %shl102
  store i32 %add103, ptr %mem.addr, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %for.body83
  %84 = load i32, ptr %rem.addr, align 4
  %dec105 = add nsw i32 %84, -1
  store i32 %dec105, ptr %rem.addr, align 4
  %85 = load i32, ptr %use, align 4
  %inc107 = add nsw i32 %85, 1
  br label %for.cond80, !llvm.loop !18

for.end108:                                       ; preds = %for.cond80
  %86 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %87 = load i32, ptr %len.addr, align 4
  %idxprom109 = sext i32 %87 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %86, i64 %idxprom109
  store i32 0, ptr %arrayidx110, align 4
  br label %return

return:                                           ; preds = %if.end50, %for.end108, %if.end47
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @string_printf(ptr noundef %s, ptr noundef %fmt, ...) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %len = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.va_start(ptr nonnull %ap)
  %len1 = getelementptr inbounds %struct.string_t, ptr %s, i64 0, i32 2
  %0 = load i64, ptr %len1, align 8
  store i64 %0, ptr %len, align 8
  %1 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %0
  %2 = load ptr, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %2, i64 0, i32 1
  %3 = load i64, ptr %size, align 8
  %sub = sub i64 %3, %0
  %4 = load ptr, ptr %2, align 8
  %5 = load i64, ptr %len, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr3, i1 false, i1 true, i1 false)
  %7 = load ptr, ptr %fmt.addr, align 8
  %8 = load ptr, ptr %ap, align 8
  %call = call i32 @__vsnprintf_chk(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef 0, i64 noundef %6, ptr noundef %7, ptr noundef %8) #10
  store i32 %call, ptr %ret, align 4
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.string_printf, ptr noundef nonnull @.str.4, i32 noundef 209, ptr noundef nonnull @.str.24) #12
  unreachable

cond.end:                                         ; preds = %entry
  %9 = load i32, ptr %ret, align 4
  %conv4 = sext i32 %9 to i64
  %10 = load ptr, ptr %s.addr, align 8
  %len5 = getelementptr inbounds %struct.string_t, ptr %10, i64 0, i32 2
  %11 = load i64, ptr %len5, align 8
  %add = add i64 %11, %conv4
  store i64 %add, ptr %len5, align 8
  %size6 = getelementptr inbounds %struct.string_t, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %size6, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %len7 = getelementptr inbounds %struct.string_t, ptr %13, i64 0, i32 2
  %14 = load i64, ptr %len7, align 8
  %add8 = add i64 %14, 1
  %cmp9 = icmp ult i64 %12, %add8
  br i1 %cmp9, label %do.body, label %if.end

do.body:                                          ; preds = %cond.end, %do.cond
  %15 = load ptr, ptr %s.addr, align 8
  %size11 = getelementptr inbounds %struct.string_t, ptr %15, i64 0, i32 1
  %16 = load i64, ptr %size11, align 8
  %shl = shl i64 %16, 1
  store i64 %shl, ptr %size11, align 8
  %cmp13.not = icmp eq i64 %shl, 0
  br i1 %cmp13.not, label %cond.true21, label %do.cond

cond.true21:                                      ; preds = %do.body
  call void @__assert_rtn(ptr noundef nonnull @__func__.string_printf, ptr noundef nonnull @.str.4, i32 noundef 214, ptr noundef nonnull @.str.25) #12
  unreachable

do.cond:                                          ; preds = %do.body
  %17 = load ptr, ptr %s.addr, align 8
  %size24 = getelementptr inbounds %struct.string_t, ptr %17, i64 0, i32 1
  %18 = load i64, ptr %size24, align 8
  %len25 = getelementptr inbounds %struct.string_t, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %len25, align 8
  %add26 = add i64 %19, 1
  %cmp27 = icmp ult i64 %18, %add26
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %size30 = getelementptr inbounds %struct.string_t, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %size30, align 8
  %call31 = call ptr @realloc(ptr noundef %21, i64 noundef %22) #14
  store ptr %call31, ptr %20, align 8
  %cmp34.not = icmp eq ptr %call31, null
  br i1 %cmp34.not, label %cond.true42, label %cond.end44

cond.true42:                                      ; preds = %do.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.string_printf, ptr noundef nonnull @.str.4, i32 noundef 217, ptr noundef nonnull @.str.15) #12
  unreachable

cond.end44:                                       ; preds = %do.end
  %23 = load ptr, ptr %s.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = load i64, ptr %len, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %24, i64 %25
  %size47 = getelementptr inbounds %struct.string_t, ptr %23, i64 0, i32 1
  %26 = load i64, ptr %size47, align 8
  %sub48 = sub i64 %26, %25
  %27 = load ptr, ptr %s.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = load i64, ptr %len, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %28, i64 %29
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr50, i1 false, i1 true, i1 false)
  %31 = load ptr, ptr %fmt.addr, align 8
  %32 = load ptr, ptr %ap, align 8
  %call51 = call i32 @__vsnprintf_chk(ptr noundef %add.ptr46, i64 noundef %sub48, i32 noundef 0, i64 noundef %30, ptr noundef %31, ptr noundef %32) #10
  br label %if.end

if.end:                                           ; preds = %cond.end44, %cond.end
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @been_here(i32 noundef %syms, i32 noundef %left, i32 noundef %len, i32 noundef %mem, i32 noundef %rem) #0 {
entry:
  %mem.addr = alloca i32, align 4
  %rem.addr = alloca i32, align 4
  %index = alloca i64, align 8
  %offset = alloca i64, align 8
  %bit = alloca i32, align 4
  %length = alloca i64, align 8
  %vector = alloca ptr, align 8
  store i32 %mem, ptr %mem.addr, align 4
  store i32 %rem, ptr %rem.addr, align 4
  %call = call i64 @map(i32 noundef %syms, i32 noundef %left, i32 noundef %len)
  store i64 %call, ptr %index, align 8
  %0 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %shl.neg = shl i32 -1, %0
  %sub = add i32 %shl.neg, %mem
  %shr = ashr i32 %sub, 1
  store i32 %shr, ptr %mem.addr, align 4
  %1 = load i32, ptr %rem.addr, align 4
  %shr1 = ashr i32 %1, 1
  store i32 %shr1, ptr %rem.addr, align 4
  %shr2 = ashr i32 %sub, 4
  %add = add nsw i32 %shr2, %shr1
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %offset, align 8
  %add3 = add nsw i64 %conv, 1
  %mul = mul i64 %add3, %conv
  %shr4 = lshr i64 %mul, 1
  %2 = load i32, ptr %rem.addr, align 4
  %conv5 = sext i32 %2 to i64
  %add6 = add i64 %shr4, %conv5
  store i64 %add6, ptr %offset, align 8
  %3 = load i32, ptr %mem.addr, align 4
  %and = and i32 %3, 7
  %shl7 = shl i32 1, %and
  store i32 %shl7, ptr %bit, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %5 = load i64, ptr %index, align 8
  %arrayidx = getelementptr inbounds %struct.tab, ptr %4, i64 %5
  %6 = load i64, ptr %arrayidx, align 8
  store i64 %6, ptr %length, align 8
  %7 = load i64, ptr %offset, align 8
  %cmp = icmp ult i64 %7, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %9 = load i64, ptr %index, align 8
  %vec = getelementptr inbounds %struct.tab, ptr %8, i64 %9, i32 1
  %10 = load ptr, ptr %vec, align 8
  %11 = load i64, ptr %offset, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %13 = load i32, ptr %bit, align 4
  %and13 = and i32 %13, %conv12
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %length, align 8
  %15 = load i64, ptr %offset, align 8
  %cmp16.not = icmp ugt i64 %14, %15
  br i1 %cmp16.not, label %if.end59, label %if.then18

if.then18:                                        ; preds = %if.end
  %16 = load i64, ptr %length, align 8
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %while.cond, label %do.body

do.body:                                          ; preds = %if.then18, %do.body
  %17 = load i64, ptr %length, align 8
  %shl20 = shl i64 %17, 1
  store i64 %shl20, ptr %length, align 8
  %18 = load i64, ptr %length, align 8
  %19 = load i64, ptr %offset, align 8
  %cmp21.not = icmp ugt i64 %18, %19
  br i1 %cmp21.not, label %do.end, label %do.body, !llvm.loop !20

do.end:                                           ; preds = %do.body
  %20 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %21 = load i64, ptr %index, align 8
  %vec24 = getelementptr inbounds %struct.tab, ptr %20, i64 %21, i32 1
  %22 = load ptr, ptr %vec24, align 8
  %23 = load i64, ptr %length, align 8
  %call25 = call ptr @realloc(ptr noundef %22, i64 noundef %23) #14
  store ptr %call25, ptr %vector, align 8
  %cmp26.not = icmp eq ptr %call25, null
  br i1 %cmp26.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.been_here, ptr noundef nonnull @.str.4, i32 noundef 334, ptr noundef nonnull @.str.26) #12
  unreachable

cond.end:                                         ; preds = %do.end
  %24 = load ptr, ptr %vector, align 8
  %25 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %26 = load i64, ptr %index, align 8
  %arrayidx30 = getelementptr inbounds %struct.tab, ptr %25, i64 %26
  %27 = load i64, ptr %arrayidx30, align 8
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %27
  %28 = load i64, ptr %length, align 8
  %sub34 = sub i64 %28, %27
  %29 = load ptr, ptr %vector, align 8
  %30 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %31 = load i64, ptr %index, align 8
  %arrayidx35 = getelementptr inbounds %struct.tab, ptr %30, i64 %31
  %32 = load i64, ptr %arrayidx35, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %29, i64 %32
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr37, i1 false, i1 true, i1 false)
  %call38 = call ptr @__memset_chk(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %sub34, i64 noundef %33) #10
  br label %if.end54

while.cond:                                       ; preds = %if.then18, %while.body
  %storemerge2 = phi i64 [ %shl41, %while.body ], [ 16, %if.then18 ]
  store i64 %storemerge2, ptr %length, align 8
  %34 = load i64, ptr %offset, align 8
  %cmp39.not = icmp ugt i64 %storemerge2, %34
  br i1 %cmp39.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %35 = load i64, ptr %length, align 8
  %shl41 = shl i64 %35, 1
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %36 = load i64, ptr %length, align 8
  %call42 = call ptr @calloc(i64 noundef %36, i64 noundef 1) #11
  store ptr %call42, ptr %vector, align 8
  %cmp43.not = icmp eq ptr %call42, null
  br i1 %cmp43.not, label %cond.true51, label %if.end54

cond.true51:                                      ; preds = %while.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.been_here, ptr noundef nonnull @.str.4, i32 noundef 344, ptr noundef nonnull @.str.26) #12
  unreachable

if.end54:                                         ; preds = %while.end, %cond.end
  %37 = load i64, ptr %length, align 8
  %38 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %39 = load i64, ptr %index, align 8
  %arrayidx55 = getelementptr inbounds %struct.tab, ptr %38, i64 %39
  store i64 %37, ptr %arrayidx55, align 8
  %40 = load ptr, ptr %vector, align 8
  %41 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %vec58 = getelementptr inbounds %struct.tab, ptr %41, i64 %39, i32 1
  store ptr %40, ptr %vec58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.end
  %42 = load i32, ptr %bit, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %44 = load i64, ptr %index, align 8
  %vec61 = getelementptr inbounds %struct.tab, ptr %43, i64 %44, i32 1
  %45 = load ptr, ptr %vec61, align 8
  %46 = load i64, ptr %offset, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %45, i64 %46
  %47 = load i8, ptr %arrayidx62, align 1
  %48 = trunc i32 %42 to i8
  %conv64 = or i8 %47, %48
  store i8 %conv64, ptr %arrayidx62, align 1
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end59
  %storemerge = phi i32 [ 0, %if.end59 ], [ 1, %land.lhs.true ]
  ret i32 %storemerge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #8

declare void @free(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }

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
