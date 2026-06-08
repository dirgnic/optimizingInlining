; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_zlib_examples_enough.prepared.ll'
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
  %n.i3 = alloca i64, align 8
  %syms.addr.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  %n2.i = alloca i32, align 4
  %left.i = alloca i32, align 4
  %index.i = alloca i64, align 8
  %s.addr.i = alloca ptr, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s.addr.i)
  store ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr %s.addr.i, align 8
  store i64 16, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5, i32 1), align 8
  %call.i = call dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11
  store ptr %call.i, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %cond.true.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_enough_0.exit

cond.true.i:                                      ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.string_init, ptr noundef nonnull @.str.4, i32 noundef 190, ptr noundef nonnull @.str.15) #12
  unreachable

pc_inline_source_snapshot_public_repos_zlib_examples_enough_0.exit: ; preds = %entry
  %0 = load ptr, ptr %s.addr.i, align 8
  call void @string_clear(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s.addr.i)
  store i32 286, ptr %syms, align 4
  store i32 9, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  store i32 15, ptr @g, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_enough_0.exit
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr nocapture noundef %3) #13
  store i32 %call, ptr %syms, align 4
  %4 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %4, 2
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr nocapture noundef %6) #13
  store i32 %call4, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp sgt i32 %7, 3
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then2
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 3
  %9 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @atoi(ptr nocapture noundef %9) #13
  store i32 %call8, ptr @g, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then6, %if.then2, %pc_inline_source_snapshot_public_repos_zlib_examples_enough_0.exit
  %10 = load i32, ptr %argc.addr, align 4
  %cmp11 = icmp sgt i32 %10, 4
  %11 = load i32, ptr %syms, align 4
  %cmp12 = icmp slt i32 %11, 2
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp12
  %12 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %cmp14 = icmp slt i32 %12, 1
  %or.cond22 = select i1 %or.cond, i1 true, i1 %cmp14
  %13 = load i32, ptr @g, align 8
  %cmp16 = icmp slt i32 %13, 1
  %or.cond23 = select i1 %or.cond22, i1 true, i1 %cmp16
  br i1 %or.cond23, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  %14 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 @"\01_fputs"(ptr noundef nonnull @.str, ptr noundef %14) #13
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end10
  %15 = load i32, ptr @g, align 8
  %16 = load i32, ptr %syms, align 4
  %cmp20.not = icmp slt i32 %15, %16
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  %17 = load i32, ptr %syms, align 4
  %sub22 = add nsw i32 %17, -1
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
  %18 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %bits, align 4
  %19 = load i64, ptr %word, align 8
  %shl = shl i64 %19, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr @g, align 8
  %21 = load i32, ptr %bits, align 4
  %cmp24 = icmp sgt i32 %20, %21
  br i1 %cmp24, label %if.then30, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %for.end
  %22 = load i32, ptr %syms, align 4
  %sub26 = add nsw i32 %22, -2
  %conv = sext i32 %sub26 to i64
  %23 = load i32, ptr @g, align 8
  %sub27 = add nsw i32 %23, -1
  %sh_prom = zext i32 %sub27 to i64
  %shr = lshr i64 -1, %sh_prom
  %cmp28.not = icmp ugt i64 %shr, %conv
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false25, %for.end
  %24 = load ptr, ptr @__stderrp, align 8
  %call31 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.1, ptr noundef %24) #13
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false25
  %25 = load i32, ptr %syms, align 4
  %sub33 = add nsw i32 %25, -1
  %conv34 = sext i32 %sub33 to i64
  %26 = load i32, ptr @g, align 8
  %sh_prom35 = zext i32 %26 to i64
  %conv34.highbits = lshr i64 %conv34, %sh_prom35
  %cmp38.not = icmp eq i64 %conv34.highbits, 0
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end32
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = load i32, ptr %syms, align 4
  %29 = load i32, ptr @g, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef %28, i32 noundef %29) #13
  store i32 1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end32
  %30 = load i32, ptr @g, align 8
  %add = add nsw i32 %30, 1
  %conv43 = sext i32 %add to i64
  %call44 = call ptr @calloc(i64 noundef %conv43, i64 noundef 4) #14
  store ptr %call44, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %cmp45.not = icmp eq ptr %call44, null
  br i1 %cmp45.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end42
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 547, ptr noundef nonnull @.str.5) #12
  unreachable

cond.end:                                         ; preds = %if.end42
  %31 = load i32, ptr %syms, align 4
  %cmp49 = icmp eq i32 %31, 2
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %cond.end
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  br label %if.end97

if.else:                                          ; preds = %cond.end
  %32 = load i32, ptr %syms, align 4
  %shr52 = ashr i32 %32, 1
  %conv53 = sext i32 %shr52 to i64
  store i64 %conv53, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %sub54 = add nsw i32 %32, -1
  %shr55 = ashr i32 %sub54, 1
  store i32 %shr55, ptr %n, align 4
  %conv56 = sext i32 %shr55 to i64
  %mul14 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv56, i64 %conv53)
  %mul.ov = extractvalue { i64, i1 } %mul14, 1
  br i1 %mul.ov, label %cond.true65, label %cond.end67

cond.true65:                                      ; preds = %if.else
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 556, ptr noundef nonnull @.str.7) #12
  unreachable

cond.end67:                                       ; preds = %if.else
  %33 = load i32, ptr %n, align 4
  %conv68 = sext i32 %33 to i64
  %34 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %mul = mul i64 %34, %conv68
  store i64 %mul, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %35 = load i32, ptr @g, align 8
  %sub69 = add nsw i32 %35, -1
  store i32 %sub69, ptr %n, align 4
  %conv70 = sext i32 %sub69 to i64
  %mul15 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv70, i64 %mul)
  %mul.ov16 = extractvalue { i64, i1 } %mul15, 1
  br i1 %mul.ov16, label %cond.true80, label %cond.end82

cond.true80:                                      ; preds = %cond.end67
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 559, ptr noundef nonnull @.str.7) #12
  unreachable

cond.end82:                                       ; preds = %cond.end67
  %36 = load i32, ptr %n, align 4
  %conv83 = sext i32 %36 to i64
  %37 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %mul84 = mul i64 %37, %conv83
  store i64 %mul84, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %call85 = call ptr @calloc(i64 noundef %mul84, i64 noundef 8) #14
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
  %storemerge17 = phi i32 [ 2, %if.end97 ], [ %inc119, %for.inc118 ]
  store i32 %storemerge17, ptr %n98, align 4
  %38 = load i32, ptr %syms, align 4
  %cmp100.not = icmp sgt i32 %storemerge17, %38
  br i1 %cmp100.not, label %for.end120, label %for.body102

for.body102:                                      ; preds = %for.cond99
  %39 = load i32, ptr %n98, align 4
  %call103 = call i64 @count(i32 noundef %39, i32 noundef 2, i32 noundef 1)
  store i64 %call103, ptr %got, align 8
  %40 = load i64, ptr %sum, align 8
  %add104 = add i64 %40, %call103
  store i64 %add104, ptr %sum, align 8
  %cmp105.not = icmp eq i64 %call103, -1
  br i1 %cmp105.not, label %cond.true115, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body102
  %41 = load i64, ptr %sum, align 8
  %42 = load i64, ptr %got, align 8
  %cmp107.not = icmp ult i64 %41, %42
  %spec.select = select i1 %cmp107.not, i1 false, i1 true
  br i1 %spec.select, label %for.inc118, label %cond.true115

cond.true115:                                     ; preds = %for.body102, %land.lhs.true
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 570, ptr noundef nonnull @.str.9) #12
  unreachable

for.inc118:                                       ; preds = %land.lhs.true
  %43 = load i32, ptr %n98, align 4
  %inc119 = add nsw i32 %43, 1
  br label %for.cond99, !llvm.loop !8

for.end120:                                       ; preds = %for.cond99
  %44 = load i64, ptr %sum, align 8
  %45 = load i32, ptr %syms, align 4
  %call121 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %44, i32 noundef %45) #13
  %46 = load i32, ptr @g, align 8
  %sub122 = add nsw i32 %45, -1
  %cmp123 = icmp slt i32 %46, %sub122
  br i1 %cmp123, label %if.then125, label %if.else127

if.then125:                                       ; preds = %for.end120
  %47 = load i32, ptr @g, align 8
  %call126 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i32 noundef %47) #13
  br label %if.end129

if.else127:                                       ; preds = %for.end120
  %call128 = call i32 @puts(ptr noundef nonnull @.str.12) #13
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.then125
  %48 = load i32, ptr %syms, align 4
  %cmp130 = icmp eq i32 %48, 2
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.end129
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  br label %if.end146

if.else133:                                       ; preds = %if.end129
  %49 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %call134 = call ptr @calloc(i64 noundef %49, i64 noundef 16) #14
  store ptr %call134, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %cmp135.not = icmp eq ptr %call134, null
  br i1 %cmp135.not, label %cond.true143, label %if.end146

cond.true143:                                     ; preds = %if.else133
  call void @__assert_rtn(ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.4, i32 noundef 583, ptr noundef nonnull @.str.13) #12
  unreachable

if.end146:                                        ; preds = %if.else133, %if.then132
  %50 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %51 = load i32, ptr @g, align 8
  %cmp147 = icmp sgt i32 %50, %51
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end146
  %52 = load i32, ptr @g, align 8
  store i32 %52, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end146
  %53 = load i32, ptr %syms, align 4
  %conv151 = sext i32 %53 to i64
  %54 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add152 = add nsw i32 %54, 1
  %sh_prom153 = zext i32 %add152 to i64
  %conv151.highbits = lshr i64 %conv151, %sh_prom153
  %cmp155 = icmp eq i64 %conv151.highbits, 0
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.end150
  %55 = load i32, ptr %syms, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %syms.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n2.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %index.i)
  store i32 %55, ptr %syms.addr.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then157
  %storemerge19 = phi i32 [ 0, %if.then157 ], [ %inc.i, %for.body.i ]
  store i32 %storemerge19, ptr %n.i, align 4
  %56 = load i32, ptr @g, align 8
  %cmp.i1.not = icmp sgt i32 %storemerge19, %56
  br i1 %cmp.i1.not, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %57 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %58 = load i32, ptr %n.i, align 4
  %idxprom.i = sext i32 %58 to i64
  %arrayidx.i = getelementptr inbounds i32, ptr %57, i64 %idxprom.i
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nsw i32 %58, 1
  br label %for.cond.i, !llvm.loop !9

for.end.i:                                        ; preds = %for.cond.i
  call void @string_clear(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5))
  %59 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %shl.i = shl i32 1, %59
  store i32 %shl.i, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %60 = load i32, ptr @g, align 8
  %cmp1.i = icmp slt i32 %59, %60
  br i1 %cmp1.i, label %for.cond3.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_enough_2.exit

for.cond3.i:                                      ; preds = %for.end.i, %for.end30.i
  %storemerge20 = phi i32 [ %inc32.i, %for.end30.i ], [ 3, %for.end.i ]
  store i32 %storemerge20, ptr %n2.i, align 4
  %61 = load i32, ptr %syms.addr.i, align 4
  %cmp4.i.not = icmp sgt i32 %storemerge20, %61
  br i1 %cmp4.i.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_enough_2.exit, label %for.cond6.i

for.cond6.i:                                      ; preds = %for.cond3.i, %if.end27.i
  %storemerge21 = phi i32 [ %add29.i, %if.end27.i ], [ 2, %for.cond3.i ]
  store i32 %storemerge21, ptr %left.i, align 4
  %62 = load i32, ptr %n2.i, align 4
  %cmp7.i = icmp slt i32 %storemerge21, %62
  br i1 %cmp7.i, label %for.body8.i, label %for.end30.i

for.body8.i:                                      ; preds = %for.cond6.i
  %63 = load i32, ptr %n2.i, align 4
  %64 = load i32, ptr %left.i, align 4
  %65 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add.i = add nsw i32 %65, 1
  %call.i2 = call i64 @map(i32 noundef %63, i32 noundef %64, i32 noundef %add.i)
  store i64 %call.i2, ptr %index.i, align 8
  %66 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add9.i = add nsw i32 %66, 1
  %67 = load i32, ptr @g, align 8
  %cmp10.i = icmp slt i32 %add9.i, %67
  br i1 %cmp10.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body8.i
  %68 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %69 = load i64, ptr %index.i, align 8
  %arrayidx11.i = getelementptr inbounds i64, ptr %68, i64 %69
  %70 = load i64, ptr %arrayidx11.i, align 8
  %tobool.i.not = icmp eq i64 %70, 0
  br i1 %tobool.i.not, label %if.end.i, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %71 = load i32, ptr %n2.i, align 4
  %72 = load i32, ptr %left.i, align 4
  %73 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add13.i = add nsw i32 %73, 1
  %shl14.i = shl i32 1, %73
  call void @examine(i32 noundef %71, i32 noundef %72, i32 noundef %add13.i, i32 noundef %shl14.i, i32 noundef 0)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %land.lhs.true.i, %for.body8.i
  %74 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %75 = load i64, ptr %index.i, align 8
  %sub.i = add i64 %75, -1
  %arrayidx15.i = getelementptr inbounds i64, ptr %74, i64 %sub.i
  %76 = load i64, ptr %arrayidx15.i, align 8
  %tobool16.i.not = icmp eq i64 %76, 0
  br i1 %tobool16.i.not, label %if.end27.i, label %land.lhs.true17.i

land.lhs.true17.i:                                ; preds = %if.end.i
  %77 = load i32, ptr %n2.i, align 4
  %78 = load i32, ptr %left.i, align 4
  %shl18.i = shl i32 %78, 1
  %cmp19.i.not = icmp sgt i32 %77, %shl18.i
  br i1 %cmp19.i.not, label %if.end27.i, label %if.then20.i

if.then20.i:                                      ; preds = %land.lhs.true17.i
  %79 = load i32, ptr %n2.i, align 4
  %80 = load i32, ptr %left.i, align 4
  %sub21.i = sub nsw i32 %79, %80
  %shl22.i = shl i32 %sub21.i, 1
  %sub23.i = sub nsw i32 %79, %80
  %shl24.i = shl i32 %sub23.i, 1
  %81 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %add25.i = add nsw i32 %81, 1
  %shl26.i = shl i32 1, %81
  call void @examine(i32 noundef %shl22.i, i32 noundef %shl24.i, i32 noundef %add25.i, i32 noundef %shl26.i, i32 noundef 0)
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then20.i, %land.lhs.true17.i, %if.end.i
  %82 = load i32, ptr %left.i, align 4
  %add29.i = add nsw i32 %82, 2
  br label %for.cond6.i, !llvm.loop !10

for.end30.i:                                      ; preds = %for.cond6.i
  %83 = load i32, ptr %n2.i, align 4
  %inc32.i = add nsw i32 %83, 1
  br label %for.cond3.i, !llvm.loop !11

pc_inline_source_snapshot_public_repos_zlib_examples_enough_2.exit: ; preds = %for.cond3.i, %for.end.i
  %84 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 2), align 8
  %85 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %call35.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, i32 noundef %84, i32 noundef %85) #13
  %86 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), align 8
  %87 = load ptr, ptr @__stdoutp, align 8
  %call36.i = call i32 @"\01_fputs"(ptr noundef %86, ptr noundef %87) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %syms.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n2.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %index.i)
  br label %if.end160

if.else158:                                       ; preds = %if.end150
  %88 = load ptr, ptr @__stderrp, align 8
  %call159 = call i32 @"\01_fputs"(ptr noundef nonnull @.str.14, ptr noundef %88) #13
  br label %if.end160

if.end160:                                        ; preds = %if.else158, %pc_inline_source_snapshot_public_repos_zlib_examples_enough_2.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.i3)
  %89 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %cmp.i4.not = icmp eq ptr %89, null
  br i1 %cmp.i4.not, label %pc_inline_source_snapshot_public_repos_zlib_examples_enough_3.exit, label %for.cond.i7

for.cond.i7:                                      ; preds = %if.end160, %if.end.i11
  %storemerge18 = phi i64 [ %inc.i12, %if.end.i11 ], [ 0, %if.end160 ]
  store i64 %storemerge18, ptr %n.i3, align 8
  %90 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %cmp1.i6 = icmp ult i64 %storemerge18, %90
  br i1 %cmp1.i6, label %for.body.i10, label %for.end.i13

for.body.i10:                                     ; preds = %for.cond.i7
  %91 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %92 = load i64, ptr %n.i3, align 8
  %arrayidx.i8 = getelementptr inbounds %struct.tab, ptr %91, i64 %92
  %93 = load i64, ptr %arrayidx.i8, align 8
  %tobool.i9.not = icmp eq i64 %93, 0
  br i1 %tobool.i9.not, label %if.end.i11, label %if.then2.i

if.then2.i:                                       ; preds = %for.body.i10
  %94 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %95 = load i64, ptr %n.i3, align 8
  %vec.i = getelementptr inbounds %struct.tab, ptr %94, i64 %95, i32 1
  %96 = load ptr, ptr %vec.i, align 8
  call void @free(ptr noundef %96) #13
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then2.i, %for.body.i10
  %97 = load i64, ptr %n.i3, align 8
  %inc.i12 = add i64 %97, 1
  br label %for.cond.i7, !llvm.loop !12

for.end.i13:                                      ; preds = %for.cond.i7
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 3), align 8
  %98 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  call void @free(ptr noundef %98) #13
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  br label %pc_inline_source_snapshot_public_repos_zlib_examples_enough_3.exit

pc_inline_source_snapshot_public_repos_zlib_examples_enough_3.exit: ; preds = %if.end160, %for.end.i13
  %99 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  call void @free(ptr noundef %99) #13
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %100 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  call void @free(ptr noundef %100) #13
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  call void @string_free(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5))
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i3)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %pc_inline_source_snapshot_public_repos_zlib_examples_enough_3.exit, %if.then40, %if.then30, %if.then17
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
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
  %left.addr.i = alloca i32, align 4
  %len.addr.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.addr.i)
  store i32 %6, ptr %left.addr.i, align 4
  store i32 %7, ptr %len.addr.i, align 4
  %sub.i = add nsw i32 %5, -1
  %shr.i = ashr i32 %sub.i, 1
  %conv.i = sext i32 %shr.i to i64
  %sub1.i = add nsw i32 %5, -2
  %shr2.i = ashr i32 %sub1.i, 1
  %conv3.i = sext i32 %shr2.i to i64
  %mul.i = mul nsw i64 %conv.i, %conv3.i
  %8 = load i32, ptr %left.addr.i, align 4
  %shr4.i = ashr i32 %8, 1
  %conv5.i = sext i32 %shr4.i to i64
  %add.i = add nsw i64 %mul.i, %conv5.i
  %sub6.i = add nsw i64 %add.i, -1
  %9 = load i32, ptr @g, align 8
  %sub7.i = add nsw i32 %9, -1
  %conv8.i = sext i32 %sub7.i to i64
  %mul9.i = mul i64 %sub6.i, %conv8.i
  %10 = load i32, ptr %len.addr.i, align 4
  %conv10.i = sext i32 %10 to i64
  %add11.i = add i64 %mul9.i, %conv10.i
  %sub12.i = add i64 %add11.i, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.addr.i)
  store i64 %sub12.i, ptr %index, align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %sub12.i
  %12 = load i64, ptr %arrayidx, align 8
  store i64 %12, ptr %got, align 8
  %tobool4.not = icmp eq i64 %12, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %cond.end
  %13 = load i64, ptr %got, align 8
  store i64 %13, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %cond.end
  %14 = load i32, ptr %left.addr, align 4
  %shl = shl i32 %14, 1
  %15 = load i32, ptr %syms.addr, align 4
  %sub = sub nsw i32 %shl, %15
  %cmp7 = icmp slt i32 %sub, 0
  %spec.select = select i1 %cmp7, i32 0, i32 %sub
  store i32 %spec.select, ptr %least, align 4
  %16 = load i32, ptr %left.addr, align 4
  %conv11 = sext i32 %16 to i64
  %17 = load i32, ptr @g, align 8
  %18 = load i32, ptr %len.addr, align 4
  %sub12 = sub nsw i32 %17, %18
  %sh_prom = zext i32 %sub12 to i64
  %shl13 = shl i64 %conv11, %sh_prom
  %19 = load i32, ptr %syms.addr, align 4
  %conv14 = sext i32 %19 to i64
  %sub15 = sub i64 %shl13, %conv14
  %20 = load i32, ptr @g, align 8
  %21 = load i32, ptr %len.addr, align 4
  %sub16 = sub nsw i32 %20, %21
  %sh_prom17 = zext i32 %sub16 to i64
  %notmask = shl nsw i64 -1, %sh_prom17
  %sub19 = xor i64 %notmask, -1
  %div = udiv i64 %sub15, %sub19
  %conv20 = trunc i64 %div to i32
  store i32 %conv20, ptr %most, align 4
  store i64 0, ptr %sum, align 8
  %22 = load i32, ptr %least, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %storemerge = phi i32 [ %22, %if.end6 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %use, align 4
  %23 = load i32, ptr %most, align 4
  %cmp21.not = icmp sgt i32 %storemerge, %23
  br i1 %cmp21.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr %syms.addr, align 4
  %25 = load i32, ptr %use, align 4
  %sub23 = sub nsw i32 %24, %25
  %26 = load i32, ptr %left.addr, align 4
  %sub24 = sub nsw i32 %26, %25
  %shl25 = shl i32 %sub24, 1
  %27 = load i32, ptr %len.addr, align 4
  %add = add nsw i32 %27, 1
  %call26 = call i64 @count(i32 noundef %sub23, i32 noundef %shl25, i32 noundef %add)
  store i64 %call26, ptr %got, align 8
  %28 = load i64, ptr %sum, align 8
  %add27 = add i64 %28, %call26
  store i64 %add27, ptr %sum, align 8
  %cmp28 = icmp eq i64 %call26, -1
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %29 = load i64, ptr %sum, align 8
  %30 = load i64, ptr %got, align 8
  %cmp30 = icmp ult i64 %29, %30
  br i1 %cmp30, label %if.then32, label %for.inc

if.then32:                                        ; preds = %lor.lhs.false, %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

for.inc:                                          ; preds = %lor.lhs.false
  %31 = load i32, ptr %use, align 4
  %inc = add nsw i32 %31, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %32 = load i64, ptr %sum, align 8
  %cmp34.not = icmp eq i64 %32, 0
  br i1 %cmp34.not, label %cond.true40, label %cond.end42

cond.true40:                                      ; preds = %for.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.count, ptr noundef nonnull @.str.4, i32 noundef 297, ptr noundef nonnull @.str.17) #12
  unreachable

cond.end42:                                       ; preds = %for.end
  %33 = load i64, ptr %sum, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 7), align 8
  %35 = load i64, ptr %index, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %34, i64 %35
  store i64 %33, ptr %arrayidx43, align 8
  store i64 %33, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end42, %if.then32, %if.then5, %if.then
  %36 = load i64, ptr %retval, align 8
  ret i64 %36
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal void @string_clear(ptr noundef %s) #0 {
entry:
  %0 = load ptr, ptr %s, align 8
  store i8 0, ptr %0, align 1
  %len = getelementptr inbounds %struct.string_t, ptr %s, i64 0, i32 2
  store i64 0, ptr %len, align 8
  ret void
}

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
  %mem.addr.i = alloca i32, align 4
  %rem.addr.i = alloca i32, align 4
  %index.i = alloca i64, align 8
  %offset.i = alloca i64, align 8
  %bit.i = alloca i32, align 4
  %length.i = alloca i64, align 8
  %vector.i = alloca ptr, align 8
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
  %storemerge4 = phi i32 [ %18, %if.end ], [ %dec, %cond.end27 ]
  store i32 %storemerge4, ptr %bits, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %cmp11 = icmp sgt i32 %storemerge4, %19
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
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_zlib_examples_enough_13(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr noundef nonnull @.str.21, i32 noundef %30, i32 noundef %add28, i32 noundef %shl31)
  %33 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %for.end
  %storemerge5.in = phi i32 [ %33, %for.end ], [ %41, %for.inc45 ]
  %storemerge5 = add nsw i32 %storemerge5.in, 1
  store i32 %storemerge5, ptr %bits32, align 4
  %34 = load i32, ptr @g, align 8
  %cmp35.not.not = icmp slt i32 %storemerge5.in, %34
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
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_zlib_examples_enough_14(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr noundef nonnull @.str.22, i32 noundef %40, i32 noundef %39)
  br label %for.inc45

for.inc45:                                        ; preds = %for.body37, %if.then41
  %41 = load i32, ptr %bits32, align 4
  br label %for.cond34, !llvm.loop !16

for.end46:                                        ; preds = %for.cond34
  call void (ptr, ptr, ...) @pc_inline_source_snapshot_public_repos_zlib_examples_enough_15(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 5), ptr noundef nonnull @.str.23)
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %index.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vector.i)
  store i32 %47, ptr %mem.addr.i, align 4
  store i32 %48, ptr %rem.addr.i, align 4
  %call.i = call i64 @map(i32 noundef %44, i32 noundef %45, i32 noundef %46)
  store i64 %call.i, ptr %index.i, align 8
  %49 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %shl.i.neg = shl i32 -1, %49
  %sub.i = add i32 %shl.i.neg, %47
  %shr.i = ashr i32 %sub.i, 1
  store i32 %shr.i, ptr %mem.addr.i, align 4
  %50 = load i32, ptr %rem.addr.i, align 4
  %shr1.i = ashr i32 %50, 1
  store i32 %shr1.i, ptr %rem.addr.i, align 4
  %shr2.i = ashr i32 %sub.i, 4
  %add.i = add nsw i32 %shr2.i, %shr1.i
  %conv.i = sext i32 %add.i to i64
  store i64 %conv.i, ptr %offset.i, align 8
  %add3.i = add nsw i64 %conv.i, 1
  %mul.i = mul i64 %add3.i, %conv.i
  %shr4.i = lshr i64 %mul.i, 1
  %51 = load i32, ptr %rem.addr.i, align 4
  %conv5.i = sext i32 %51 to i64
  %add6.i = add i64 %shr4.i, %conv5.i
  store i64 %add6.i, ptr %offset.i, align 8
  %52 = load i32, ptr %mem.addr.i, align 4
  %and.i = and i32 %52, 7
  %shl7.i = shl i32 1, %and.i
  store i32 %shl7.i, ptr %bit.i, align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %54 = load i64, ptr %index.i, align 8
  %arrayidx.i = getelementptr inbounds %struct.tab, ptr %53, i64 %54
  %55 = load i64, ptr %arrayidx.i, align 8
  store i64 %55, ptr %length.i, align 8
  %56 = load i64, ptr %offset.i, align 8
  %cmp.i = icmp ult i64 %56, %55
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end50
  %57 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %58 = load i64, ptr %index.i, align 8
  %vec.i = getelementptr inbounds %struct.tab, ptr %57, i64 %58, i32 1
  %59 = load ptr, ptr %vec.i, align 8
  %60 = load i64, ptr %offset.i, align 8
  %arrayidx11.i = getelementptr inbounds i8, ptr %59, i64 %60
  %61 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = sext i8 %61 to i32
  %62 = load i32, ptr %bit.i, align 4
  %and13.i = and i32 %62, %conv12.i
  %cmp14.i.not = icmp eq i32 %and13.i, 0
  br i1 %cmp14.i.not, label %if.end.i, label %pc_inline_source_snapshot_public_repos_zlib_examples_enough_16.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end50
  %63 = load i64, ptr %length.i, align 8
  %64 = load i64, ptr %offset.i, align 8
  %cmp16.i.not = icmp ugt i64 %63, %64
  br i1 %cmp16.i.not, label %if.end59.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i
  %65 = load i64, ptr %length.i, align 8
  %tobool.i.not = icmp eq i64 %65, 0
  br i1 %tobool.i.not, label %while.cond.i, label %do.body.i

do.body.i:                                        ; preds = %if.then18.i, %do.body.i
  %66 = load i64, ptr %length.i, align 8
  %shl20.i = shl i64 %66, 1
  store i64 %shl20.i, ptr %length.i, align 8
  %67 = load i64, ptr %offset.i, align 8
  %cmp21.i.not = icmp ugt i64 %shl20.i, %67
  br i1 %cmp21.i.not, label %do.end.i, label %do.body.i, !llvm.loop !17

do.end.i:                                         ; preds = %do.body.i
  %68 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %69 = load i64, ptr %index.i, align 8
  %vec24.i = getelementptr inbounds %struct.tab, ptr %68, i64 %69, i32 1
  %70 = load ptr, ptr %vec24.i, align 8
  %71 = load i64, ptr %length.i, align 8
  %call25.i = call ptr @realloc(ptr noundef %70, i64 noundef %71) #15
  store ptr %call25.i, ptr %vector.i, align 8
  %cmp26.i.not = icmp eq ptr %call25.i, null
  br i1 %cmp26.i.not, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__assert_rtn(ptr noundef nonnull @__func__.been_here, ptr noundef nonnull @.str.4, i32 noundef 334, ptr noundef nonnull @.str.26) #12
  unreachable

cond.false.i:                                     ; preds = %do.end.i
  %72 = load ptr, ptr %vector.i, align 8
  %73 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %74 = load i64, ptr %index.i, align 8
  %arrayidx30.i = getelementptr inbounds %struct.tab, ptr %73, i64 %74
  %75 = load i64, ptr %arrayidx30.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %72, i64 %75
  %76 = load i64, ptr %length.i, align 8
  %sub34.i = sub i64 %76, %75
  %77 = load ptr, ptr %vector.i, align 8
  %78 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %79 = load i64, ptr %index.i, align 8
  %arrayidx35.i = getelementptr inbounds %struct.tab, ptr %78, i64 %79
  %80 = load i64, ptr %arrayidx35.i, align 8
  %add.ptr37.i = getelementptr inbounds i8, ptr %77, i64 %80
  %81 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr37.i, i1 false, i1 true, i1 false)
  %call38.i = call ptr @__memset_chk(ptr noundef %add.ptr.i, i32 noundef 0, i64 noundef %sub34.i, i64 noundef %81) #13
  br label %if.end54.i

while.cond.i:                                     ; preds = %if.then18.i, %while.body.i
  %storemerge3 = phi i64 [ %shl41.i, %while.body.i ], [ 16, %if.then18.i ]
  store i64 %storemerge3, ptr %length.i, align 8
  %82 = load i64, ptr %offset.i, align 8
  %cmp39.i.not = icmp ugt i64 %storemerge3, %82
  br i1 %cmp39.i.not, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %83 = load i64, ptr %length.i, align 8
  %shl41.i = shl i64 %83, 1
  br label %while.cond.i, !llvm.loop !18

while.end.i:                                      ; preds = %while.cond.i
  %84 = load i64, ptr %length.i, align 8
  %call42.i = call ptr @calloc(i64 noundef %84, i64 noundef 1) #14
  store ptr %call42.i, ptr %vector.i, align 8
  %cmp43.i.not = icmp eq ptr %call42.i, null
  br i1 %cmp43.i.not, label %cond.true51.i, label %if.end54.i

cond.true51.i:                                    ; preds = %while.end.i
  call void @__assert_rtn(ptr noundef nonnull @__func__.been_here, ptr noundef nonnull @.str.4, i32 noundef 344, ptr noundef nonnull @.str.26) #12
  unreachable

if.end54.i:                                       ; preds = %while.end.i, %cond.false.i
  %85 = load i64, ptr %length.i, align 8
  %86 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %87 = load i64, ptr %index.i, align 8
  %arrayidx55.i = getelementptr inbounds %struct.tab, ptr %86, i64 %87
  store i64 %85, ptr %arrayidx55.i, align 8
  %88 = load ptr, ptr %vector.i, align 8
  %89 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %vec58.i = getelementptr inbounds %struct.tab, ptr %89, i64 %87, i32 1
  store ptr %88, ptr %vec58.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end54.i, %if.end.i
  %90 = load i32, ptr %bit.i, align 4
  %91 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 8), align 8
  %92 = load i64, ptr %index.i, align 8
  %vec61.i = getelementptr inbounds %struct.tab, ptr %91, i64 %92, i32 1
  %93 = load ptr, ptr %vec61.i, align 8
  %94 = load i64, ptr %offset.i, align 8
  %arrayidx62.i = getelementptr inbounds i8, ptr %93, i64 %94
  %95 = load i8, ptr %arrayidx62.i, align 1
  %96 = trunc i32 %90 to i8
  %conv64.i = or i8 %95, %96
  store i8 %conv64.i, ptr %arrayidx62.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %index.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vector.i)
  %97 = load i32, ptr %left.addr, align 4
  %shl54 = shl i32 %97, 1
  %98 = load i32, ptr %syms.addr, align 4
  %sub55 = sub nsw i32 %shl54, %98
  %cmp56 = icmp slt i32 %sub55, 0
  %storemerge2 = select i1 %cmp56, i32 0, i32 %sub55
  store i32 %storemerge2, ptr %least, align 4
  %99 = load i32, ptr %left.addr, align 4
  %conv60 = sext i32 %99 to i64
  %100 = load i32, ptr @g, align 8
  %101 = load i32, ptr %len.addr, align 4
  %sub61 = sub nsw i32 %100, %101
  %sh_prom = zext i32 %sub61 to i64
  %shl62 = shl i64 %conv60, %sh_prom
  %102 = load i32, ptr %syms.addr, align 4
  %conv63 = sext i32 %102 to i64
  %sub64 = sub i64 %shl62, %conv63
  %103 = load i32, ptr @g, align 8
  %104 = load i32, ptr %len.addr, align 4
  %sub65 = sub nsw i32 %103, %104
  %sh_prom66 = zext i32 %sub65 to i64
  %notmask = shl nsw i64 -1, %sh_prom66
  %sub68 = xor i64 %notmask, -1
  %div = udiv i64 %sub64, %sub68
  %conv69 = trunc i64 %div to i32
  store i32 %conv69, ptr %most, align 4
  %105 = load i32, ptr %least, align 4
  store i32 %105, ptr %use, align 4
  br label %while.cond70

pc_inline_source_snapshot_public_repos_zlib_examples_enough_16.exit: ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %index.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vector.i)
  br label %return

while.cond70:                                     ; preds = %while.body73, %if.end59.i
  %106 = load i32, ptr %rem.addr, align 4
  %107 = load i32, ptr %use, align 4
  %cmp71 = icmp slt i32 %106, %107
  br i1 %cmp71, label %while.body73, label %while.end78

while.body73:                                     ; preds = %while.cond70
  %108 = load i32, ptr %rem.addr, align 4
  %109 = load i32, ptr %use, align 4
  %sub74 = sub nsw i32 %109, %108
  store i32 %sub74, ptr %use, align 4
  %110 = load i32, ptr %len.addr, align 4
  %111 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub75 = sub nsw i32 %110, %111
  %shl76 = shl i32 1, %sub75
  store i32 %shl76, ptr %rem.addr, align 4
  %112 = load i32, ptr %mem.addr, align 4
  %add77 = add nsw i32 %112, %shl76
  store i32 %add77, ptr %mem.addr, align 4
  br label %while.cond70, !llvm.loop !19

while.end78:                                      ; preds = %while.cond70
  %113 = load i32, ptr %use, align 4
  %114 = load i32, ptr %rem.addr, align 4
  %sub79 = sub nsw i32 %114, %113
  store i32 %sub79, ptr %rem.addr, align 4
  %115 = load i32, ptr %least, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %if.end104, %while.end78
  %storemerge = phi i32 [ %115, %while.end78 ], [ %inc107, %if.end104 ]
  store i32 %storemerge, ptr %use, align 4
  %116 = load i32, ptr %most, align 4
  %cmp81.not = icmp sgt i32 %storemerge, %116
  br i1 %cmp81.not, label %for.end108, label %for.body83

for.body83:                                       ; preds = %for.cond80
  %117 = load i32, ptr %use, align 4
  %118 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %119 = load i32, ptr %len.addr, align 4
  %idxprom84 = sext i32 %119 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %118, i64 %idxprom84
  store i32 %117, ptr %arrayidx85, align 4
  %120 = load i32, ptr %syms.addr, align 4
  %121 = load i32, ptr %use, align 4
  %sub86 = sub nsw i32 %120, %121
  %122 = load i32, ptr %left.addr, align 4
  %sub87 = sub nsw i32 %122, %121
  %shl88 = shl i32 %sub87, 1
  %123 = load i32, ptr %len.addr, align 4
  %add89 = add nsw i32 %123, 1
  %124 = load i32, ptr %mem.addr, align 4
  %125 = load i32, ptr %rem.addr, align 4
  %tobool90.not = icmp eq i32 %125, 0
  %126 = load i32, ptr %len.addr, align 4
  %127 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub92 = sub nsw i32 %126, %127
  %shl93 = shl i32 1, %sub92
  %cond = select i1 %tobool90.not, i32 0, i32 %shl93
  %add96 = add nsw i32 %124, %cond
  %128 = load i32, ptr %rem.addr, align 4
  %shl97 = shl i32 %128, 1
  call void @examine(i32 noundef %sub86, i32 noundef %shl88, i32 noundef %add89, i32 noundef %add96, i32 noundef %shl97)
  %cmp98 = icmp eq i32 %128, 0
  br i1 %cmp98, label %if.then100, label %if.end104

if.then100:                                       ; preds = %for.body83
  %129 = load i32, ptr %len.addr, align 4
  %130 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 1), align 4
  %sub101 = sub nsw i32 %129, %130
  %shl102 = shl i32 1, %sub101
  store i32 %shl102, ptr %rem.addr, align 4
  %131 = load i32, ptr %mem.addr, align 4
  %add103 = add nsw i32 %131, %shl102
  store i32 %add103, ptr %mem.addr, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %for.body83
  %132 = load i32, ptr %rem.addr, align 4
  %dec105 = add nsw i32 %132, -1
  store i32 %dec105, ptr %rem.addr, align 4
  %133 = load i32, ptr %use, align 4
  %inc107 = add nsw i32 %133, 1
  br label %for.cond80, !llvm.loop !20

for.end108:                                       ; preds = %for.cond80
  %134 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i64 0, i32 6), align 8
  %135 = load i32, ptr %len.addr, align 4
  %idxprom109 = sext i32 %135 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %134, i64 %idxprom109
  store i32 0, ptr %arrayidx110, align 4
  br label %return

return:                                           ; preds = %for.end108, %pc_inline_source_snapshot_public_repos_zlib_examples_enough_16.exit, %if.end47
  ret void
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

; Function Attrs: nounwind ssp uwtable
define internal void @string_free(ptr noundef %s) #0 {
entry:
  %0 = load ptr, ptr %s, align 8
  call void @free(ptr noundef %0) #13
  store ptr null, ptr %s, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %s, i64 0, i32 1
  store i64 0, ptr %size, align 8
  %len = getelementptr inbounds %struct.string_t, ptr %s, i64 0, i32 2
  store i64 0, ptr %len, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_13(ptr noundef %s, ptr noundef %fmt, ...) #9 {
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
  %call = call i32 @__vsnprintf_chk(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef 0, i64 noundef %6, ptr noundef %7, ptr noundef %8) #13
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
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %size30 = getelementptr inbounds %struct.string_t, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %size30, align 8
  %call31 = call ptr @realloc(ptr noundef %21, i64 noundef %22) #15
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
  %call51 = call i32 @__vsnprintf_chk(ptr noundef %add.ptr46, i64 noundef %sub48, i32 noundef 0, i64 noundef %30, ptr noundef %31, ptr noundef %32) #13
  br label %if.end

if.end:                                           ; preds = %cond.end44, %cond.end
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_14(ptr noundef %s, ptr noundef %fmt, ...) #9 {
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
  %call = call i32 @__vsnprintf_chk(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef 0, i64 noundef %6, ptr noundef %7, ptr noundef %8) #13
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
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %size30 = getelementptr inbounds %struct.string_t, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %size30, align 8
  %call31 = call ptr @realloc(ptr noundef %21, i64 noundef %22) #15
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
  %call51 = call i32 @__vsnprintf_chk(ptr noundef %add.ptr46, i64 noundef %sub48, i32 noundef 0, i64 noundef %30, ptr noundef %31, ptr noundef %32) #13
  br label %if.end

if.end:                                           ; preds = %cond.end44, %cond.end
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_15(ptr noundef %s, ptr noundef %fmt, ...) #9 {
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
  %call = call i32 @__vsnprintf_chk(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef 0, i64 noundef %6, ptr noundef %7, ptr noundef %8) #13
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
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %size30 = getelementptr inbounds %struct.string_t, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %size30, align 8
  %call31 = call ptr @realloc(ptr noundef %21, i64 noundef %22) #15
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
  %call51 = call i32 @__vsnprintf_chk(ptr noundef %add.ptr46, i64 noundef %sub48, i32 noundef 0, i64 noundef %30, ptr noundef %31, ptr noundef %32) #13
  br label %if.end

if.end:                                           ; preds = %cond.end44, %cond.end
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

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
attributes #9 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind allocsize(1) }

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
